
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity controller_rom2 is
generic
	(
		ADDR_WIDTH : integer := 15 -- Specify your actual ROM size to save LEs and unnecessary block RAM usage.
	);
port (
	clk : in std_logic;
	reset_n : in std_logic := '1';
	addr : in std_logic_vector(ADDR_WIDTH-1 downto 0);
	q : out std_logic_vector(31 downto 0);
	-- Allow writes - defaults supplied to simplify projects that don't need to write.
	d : in std_logic_vector(31 downto 0) := X"00000000";
	we : in std_logic := '0';
	bytesel : in std_logic_vector(3 downto 0) := "1111"
);
end entity;

architecture rtl of controller_rom2 is

	signal addr1 : integer range 0 to 2**ADDR_WIDTH-1;

	--  build up 2D array to hold the memory
	type word_t is array (0 to 3) of std_logic_vector(7 downto 0);
	type ram_t is array (0 to 2 ** ADDR_WIDTH - 1) of word_t;

	signal ram : ram_t:=
	(

     0 => (x"59",x"7f",x"3e",x"00"),
     1 => (x"00",x"3e",x"7f",x"4d"),
     2 => (x"7f",x"06",x"04",x"00"),
     3 => (x"00",x"00",x"00",x"7f"),
     4 => (x"71",x"63",x"42",x"00"),
     5 => (x"00",x"46",x"4f",x"59"),
     6 => (x"49",x"63",x"22",x"00"),
     7 => (x"00",x"36",x"7f",x"49"),
     8 => (x"13",x"16",x"1c",x"18"),
     9 => (x"00",x"10",x"7f",x"7f"),
    10 => (x"45",x"67",x"27",x"00"),
    11 => (x"00",x"39",x"7d",x"45"),
    12 => (x"4b",x"7e",x"3c",x"00"),
    13 => (x"00",x"30",x"79",x"49"),
    14 => (x"71",x"01",x"01",x"00"),
    15 => (x"00",x"07",x"0f",x"79"),
    16 => (x"49",x"7f",x"36",x"00"),
    17 => (x"00",x"36",x"7f",x"49"),
    18 => (x"49",x"4f",x"06",x"00"),
    19 => (x"00",x"1e",x"3f",x"69"),
    20 => (x"66",x"00",x"00",x"00"),
    21 => (x"00",x"00",x"00",x"66"),
    22 => (x"e6",x"80",x"00",x"00"),
    23 => (x"00",x"00",x"00",x"66"),
    24 => (x"14",x"08",x"08",x"00"),
    25 => (x"00",x"22",x"22",x"14"),
    26 => (x"14",x"14",x"14",x"00"),
    27 => (x"00",x"14",x"14",x"14"),
    28 => (x"14",x"22",x"22",x"00"),
    29 => (x"00",x"08",x"08",x"14"),
    30 => (x"51",x"03",x"02",x"00"),
    31 => (x"00",x"06",x"0f",x"59"),
    32 => (x"5d",x"41",x"7f",x"3e"),
    33 => (x"00",x"1e",x"1f",x"55"),
    34 => (x"09",x"7f",x"7e",x"00"),
    35 => (x"00",x"7e",x"7f",x"09"),
    36 => (x"49",x"7f",x"7f",x"00"),
    37 => (x"00",x"36",x"7f",x"49"),
    38 => (x"63",x"3e",x"1c",x"00"),
    39 => (x"00",x"41",x"41",x"41"),
    40 => (x"41",x"7f",x"7f",x"00"),
    41 => (x"00",x"1c",x"3e",x"63"),
    42 => (x"49",x"7f",x"7f",x"00"),
    43 => (x"00",x"41",x"41",x"49"),
    44 => (x"09",x"7f",x"7f",x"00"),
    45 => (x"00",x"01",x"01",x"09"),
    46 => (x"41",x"7f",x"3e",x"00"),
    47 => (x"00",x"7a",x"7b",x"49"),
    48 => (x"08",x"7f",x"7f",x"00"),
    49 => (x"00",x"7f",x"7f",x"08"),
    50 => (x"7f",x"41",x"00",x"00"),
    51 => (x"00",x"00",x"41",x"7f"),
    52 => (x"40",x"60",x"20",x"00"),
    53 => (x"00",x"3f",x"7f",x"40"),
    54 => (x"1c",x"08",x"7f",x"7f"),
    55 => (x"00",x"41",x"63",x"36"),
    56 => (x"40",x"7f",x"7f",x"00"),
    57 => (x"00",x"40",x"40",x"40"),
    58 => (x"0c",x"06",x"7f",x"7f"),
    59 => (x"00",x"7f",x"7f",x"06"),
    60 => (x"0c",x"06",x"7f",x"7f"),
    61 => (x"00",x"7f",x"7f",x"18"),
    62 => (x"41",x"7f",x"3e",x"00"),
    63 => (x"00",x"3e",x"7f",x"41"),
    64 => (x"09",x"7f",x"7f",x"00"),
    65 => (x"00",x"06",x"0f",x"09"),
    66 => (x"61",x"41",x"7f",x"3e"),
    67 => (x"00",x"40",x"7e",x"7f"),
    68 => (x"09",x"7f",x"7f",x"00"),
    69 => (x"00",x"66",x"7f",x"19"),
    70 => (x"4d",x"6f",x"26",x"00"),
    71 => (x"00",x"32",x"7b",x"59"),
    72 => (x"7f",x"01",x"01",x"00"),
    73 => (x"00",x"01",x"01",x"7f"),
    74 => (x"40",x"7f",x"3f",x"00"),
    75 => (x"00",x"3f",x"7f",x"40"),
    76 => (x"70",x"3f",x"0f",x"00"),
    77 => (x"00",x"0f",x"3f",x"70"),
    78 => (x"18",x"30",x"7f",x"7f"),
    79 => (x"00",x"7f",x"7f",x"30"),
    80 => (x"1c",x"36",x"63",x"41"),
    81 => (x"41",x"63",x"36",x"1c"),
    82 => (x"7c",x"06",x"03",x"01"),
    83 => (x"01",x"03",x"06",x"7c"),
    84 => (x"4d",x"59",x"71",x"61"),
    85 => (x"00",x"41",x"43",x"47"),
    86 => (x"7f",x"7f",x"00",x"00"),
    87 => (x"00",x"00",x"41",x"41"),
    88 => (x"0c",x"06",x"03",x"01"),
    89 => (x"40",x"60",x"30",x"18"),
    90 => (x"41",x"41",x"00",x"00"),
    91 => (x"00",x"00",x"7f",x"7f"),
    92 => (x"03",x"06",x"0c",x"08"),
    93 => (x"00",x"08",x"0c",x"06"),
    94 => (x"80",x"80",x"80",x"80"),
    95 => (x"00",x"80",x"80",x"80"),
    96 => (x"03",x"00",x"00",x"00"),
    97 => (x"00",x"00",x"04",x"07"),
    98 => (x"54",x"74",x"20",x"00"),
    99 => (x"00",x"78",x"7c",x"54"),
   100 => (x"44",x"7f",x"7f",x"00"),
   101 => (x"00",x"38",x"7c",x"44"),
   102 => (x"44",x"7c",x"38",x"00"),
   103 => (x"00",x"00",x"44",x"44"),
   104 => (x"44",x"7c",x"38",x"00"),
   105 => (x"00",x"7f",x"7f",x"44"),
   106 => (x"54",x"7c",x"38",x"00"),
   107 => (x"00",x"18",x"5c",x"54"),
   108 => (x"7f",x"7e",x"04",x"00"),
   109 => (x"00",x"00",x"05",x"05"),
   110 => (x"a4",x"bc",x"18",x"00"),
   111 => (x"00",x"7c",x"fc",x"a4"),
   112 => (x"04",x"7f",x"7f",x"00"),
   113 => (x"00",x"78",x"7c",x"04"),
   114 => (x"3d",x"00",x"00",x"00"),
   115 => (x"00",x"00",x"40",x"7d"),
   116 => (x"80",x"80",x"80",x"00"),
   117 => (x"00",x"00",x"7d",x"fd"),
   118 => (x"10",x"7f",x"7f",x"00"),
   119 => (x"00",x"44",x"6c",x"38"),
   120 => (x"3f",x"00",x"00",x"00"),
   121 => (x"00",x"00",x"40",x"7f"),
   122 => (x"18",x"0c",x"7c",x"7c"),
   123 => (x"00",x"78",x"7c",x"0c"),
   124 => (x"04",x"7c",x"7c",x"00"),
   125 => (x"00",x"78",x"7c",x"04"),
   126 => (x"44",x"7c",x"38",x"00"),
   127 => (x"00",x"38",x"7c",x"44"),
   128 => (x"24",x"fc",x"fc",x"00"),
   129 => (x"00",x"18",x"3c",x"24"),
   130 => (x"24",x"3c",x"18",x"00"),
   131 => (x"00",x"fc",x"fc",x"24"),
   132 => (x"04",x"7c",x"7c",x"00"),
   133 => (x"00",x"08",x"0c",x"04"),
   134 => (x"54",x"5c",x"48",x"00"),
   135 => (x"00",x"20",x"74",x"54"),
   136 => (x"7f",x"3f",x"04",x"00"),
   137 => (x"00",x"00",x"44",x"44"),
   138 => (x"40",x"7c",x"3c",x"00"),
   139 => (x"00",x"7c",x"7c",x"40"),
   140 => (x"60",x"3c",x"1c",x"00"),
   141 => (x"00",x"1c",x"3c",x"60"),
   142 => (x"30",x"60",x"7c",x"3c"),
   143 => (x"00",x"3c",x"7c",x"60"),
   144 => (x"10",x"38",x"6c",x"44"),
   145 => (x"00",x"44",x"6c",x"38"),
   146 => (x"e0",x"bc",x"1c",x"00"),
   147 => (x"00",x"1c",x"3c",x"60"),
   148 => (x"74",x"64",x"44",x"00"),
   149 => (x"00",x"44",x"4c",x"5c"),
   150 => (x"3e",x"08",x"08",x"00"),
   151 => (x"00",x"41",x"41",x"77"),
   152 => (x"7f",x"00",x"00",x"00"),
   153 => (x"00",x"00",x"00",x"7f"),
   154 => (x"77",x"41",x"41",x"00"),
   155 => (x"00",x"08",x"08",x"3e"),
   156 => (x"03",x"01",x"01",x"02"),
   157 => (x"00",x"01",x"02",x"02"),
   158 => (x"7f",x"7f",x"7f",x"7f"),
   159 => (x"00",x"7f",x"7f",x"7f"),
   160 => (x"1c",x"1c",x"08",x"08"),
   161 => (x"7f",x"7f",x"3e",x"3e"),
   162 => (x"3e",x"3e",x"7f",x"7f"),
   163 => (x"08",x"08",x"1c",x"1c"),
   164 => (x"7c",x"18",x"10",x"00"),
   165 => (x"00",x"10",x"18",x"7c"),
   166 => (x"7c",x"30",x"10",x"00"),
   167 => (x"00",x"10",x"30",x"7c"),
   168 => (x"60",x"60",x"30",x"10"),
   169 => (x"00",x"06",x"1e",x"78"),
   170 => (x"18",x"3c",x"66",x"42"),
   171 => (x"00",x"42",x"66",x"3c"),
   172 => (x"c2",x"6a",x"38",x"78"),
   173 => (x"00",x"38",x"6c",x"c6"),
   174 => (x"60",x"00",x"00",x"60"),
   175 => (x"00",x"60",x"00",x"00"),
   176 => (x"5c",x"5b",x"5e",x"0e"),
   177 => (x"86",x"fc",x"0e",x"5d"),
   178 => (x"f4",x"c2",x"7e",x"71"),
   179 => (x"c0",x"4c",x"bf",x"c0"),
   180 => (x"c4",x"1e",x"c0",x"4b"),
   181 => (x"c4",x"02",x"ab",x"66"),
   182 => (x"c2",x"4d",x"c0",x"87"),
   183 => (x"75",x"4d",x"c1",x"87"),
   184 => (x"ee",x"49",x"73",x"1e"),
   185 => (x"86",x"c8",x"87",x"e1"),
   186 => (x"ef",x"49",x"e0",x"c0"),
   187 => (x"a4",x"c4",x"87",x"ea"),
   188 => (x"f0",x"49",x"6a",x"4a"),
   189 => (x"c8",x"f1",x"87",x"f1"),
   190 => (x"c1",x"84",x"cc",x"87"),
   191 => (x"ab",x"b7",x"c8",x"83"),
   192 => (x"87",x"cd",x"ff",x"04"),
   193 => (x"4d",x"26",x"8e",x"fc"),
   194 => (x"4b",x"26",x"4c",x"26"),
   195 => (x"71",x"1e",x"4f",x"26"),
   196 => (x"c4",x"f4",x"c2",x"4a"),
   197 => (x"c4",x"f4",x"c2",x"5a"),
   198 => (x"49",x"78",x"c7",x"48"),
   199 => (x"26",x"87",x"e1",x"fe"),
   200 => (x"1e",x"73",x"1e",x"4f"),
   201 => (x"b7",x"c0",x"4a",x"71"),
   202 => (x"87",x"d3",x"03",x"aa"),
   203 => (x"bf",x"c4",x"d9",x"c2"),
   204 => (x"c1",x"87",x"c4",x"05"),
   205 => (x"c0",x"87",x"c2",x"4b"),
   206 => (x"c8",x"d9",x"c2",x"4b"),
   207 => (x"c2",x"87",x"c4",x"5b"),
   208 => (x"fc",x"5a",x"c8",x"d9"),
   209 => (x"c4",x"d9",x"c2",x"48"),
   210 => (x"c1",x"4a",x"78",x"bf"),
   211 => (x"a2",x"c0",x"c1",x"9a"),
   212 => (x"87",x"e6",x"ec",x"49"),
   213 => (x"4f",x"26",x"4b",x"26"),
   214 => (x"c4",x"4a",x"71",x"1e"),
   215 => (x"49",x"72",x"1e",x"66"),
   216 => (x"fc",x"87",x"f0",x"eb"),
   217 => (x"1e",x"4f",x"26",x"8e"),
   218 => (x"c3",x"48",x"d4",x"ff"),
   219 => (x"d0",x"ff",x"78",x"ff"),
   220 => (x"78",x"e1",x"c0",x"48"),
   221 => (x"c1",x"48",x"d4",x"ff"),
   222 => (x"c4",x"48",x"71",x"78"),
   223 => (x"08",x"d4",x"ff",x"30"),
   224 => (x"48",x"d0",x"ff",x"78"),
   225 => (x"26",x"78",x"e0",x"c0"),
   226 => (x"5b",x"5e",x"0e",x"4f"),
   227 => (x"f0",x"0e",x"5d",x"5c"),
   228 => (x"48",x"a6",x"c8",x"86"),
   229 => (x"ec",x"4d",x"78",x"c0"),
   230 => (x"80",x"fc",x"7e",x"bf"),
   231 => (x"bf",x"c0",x"f4",x"c2"),
   232 => (x"4c",x"bf",x"e8",x"78"),
   233 => (x"bf",x"c4",x"d9",x"c2"),
   234 => (x"87",x"ed",x"e3",x"49"),
   235 => (x"ca",x"49",x"ee",x"cb"),
   236 => (x"4b",x"70",x"87",x"d6"),
   237 => (x"e2",x"e7",x"49",x"c7"),
   238 => (x"05",x"98",x"70",x"87"),
   239 => (x"49",x"6e",x"87",x"c8"),
   240 => (x"c1",x"02",x"99",x"c1"),
   241 => (x"4d",x"c1",x"87",x"c1"),
   242 => (x"c2",x"7e",x"bf",x"ec"),
   243 => (x"49",x"bf",x"c4",x"d9"),
   244 => (x"73",x"87",x"c6",x"e3"),
   245 => (x"87",x"fc",x"c9",x"49"),
   246 => (x"d7",x"02",x"98",x"70"),
   247 => (x"fc",x"d8",x"c2",x"87"),
   248 => (x"b9",x"c1",x"49",x"bf"),
   249 => (x"59",x"c0",x"d9",x"c2"),
   250 => (x"87",x"fb",x"fd",x"71"),
   251 => (x"c9",x"49",x"ee",x"cb"),
   252 => (x"4b",x"70",x"87",x"d6"),
   253 => (x"e2",x"e6",x"49",x"c7"),
   254 => (x"05",x"98",x"70",x"87"),
   255 => (x"6e",x"87",x"c7",x"ff"),
   256 => (x"05",x"99",x"c1",x"49"),
   257 => (x"75",x"87",x"ff",x"fe"),
   258 => (x"e3",x"c0",x"02",x"9d"),
   259 => (x"c4",x"d9",x"c2",x"87"),
   260 => (x"ba",x"c1",x"4a",x"bf"),
   261 => (x"5a",x"c8",x"d9",x"c2"),
   262 => (x"0a",x"7a",x"0a",x"fc"),
   263 => (x"c0",x"c1",x"9a",x"c1"),
   264 => (x"d5",x"e9",x"49",x"a2"),
   265 => (x"49",x"da",x"c1",x"87"),
   266 => (x"c8",x"87",x"f0",x"e5"),
   267 => (x"78",x"c1",x"48",x"a6"),
   268 => (x"bf",x"c4",x"d9",x"c2"),
   269 => (x"87",x"e9",x"c0",x"05"),
   270 => (x"ff",x"c3",x"49",x"74"),
   271 => (x"c0",x"1e",x"71",x"99"),
   272 => (x"87",x"d4",x"fc",x"49"),
   273 => (x"b7",x"c8",x"49",x"74"),
   274 => (x"c1",x"1e",x"71",x"29"),
   275 => (x"87",x"c8",x"fc",x"49"),
   276 => (x"fd",x"c3",x"86",x"c8"),
   277 => (x"87",x"c3",x"e5",x"49"),
   278 => (x"e4",x"49",x"fa",x"c3"),
   279 => (x"d1",x"c7",x"87",x"fd"),
   280 => (x"c3",x"49",x"74",x"87"),
   281 => (x"b7",x"c8",x"99",x"ff"),
   282 => (x"74",x"b4",x"71",x"2c"),
   283 => (x"87",x"df",x"02",x"9c"),
   284 => (x"bf",x"c0",x"d9",x"c2"),
   285 => (x"87",x"dc",x"c7",x"49"),
   286 => (x"c0",x"05",x"98",x"70"),
   287 => (x"4c",x"c0",x"87",x"c4"),
   288 => (x"e0",x"c2",x"87",x"d3"),
   289 => (x"87",x"c0",x"c7",x"49"),
   290 => (x"58",x"c4",x"d9",x"c2"),
   291 => (x"c2",x"87",x"c6",x"c0"),
   292 => (x"c0",x"48",x"c0",x"d9"),
   293 => (x"c8",x"49",x"74",x"78"),
   294 => (x"87",x"ce",x"05",x"99"),
   295 => (x"e3",x"49",x"f5",x"c3"),
   296 => (x"49",x"70",x"87",x"f9"),
   297 => (x"c0",x"02",x"99",x"c2"),
   298 => (x"f4",x"c2",x"87",x"e9"),
   299 => (x"c0",x"02",x"bf",x"c4"),
   300 => (x"c1",x"48",x"87",x"c9"),
   301 => (x"c8",x"f4",x"c2",x"88"),
   302 => (x"c4",x"87",x"d3",x"58"),
   303 => (x"e0",x"c1",x"48",x"66"),
   304 => (x"6e",x"7e",x"70",x"80"),
   305 => (x"c5",x"c0",x"02",x"bf"),
   306 => (x"49",x"ff",x"4b",x"87"),
   307 => (x"a6",x"c8",x"0f",x"73"),
   308 => (x"74",x"78",x"c1",x"48"),
   309 => (x"05",x"99",x"c4",x"49"),
   310 => (x"c3",x"87",x"ce",x"c0"),
   311 => (x"fa",x"e2",x"49",x"f2"),
   312 => (x"c2",x"49",x"70",x"87"),
   313 => (x"f0",x"c0",x"02",x"99"),
   314 => (x"c4",x"f4",x"c2",x"87"),
   315 => (x"c7",x"48",x"7e",x"bf"),
   316 => (x"c0",x"03",x"a8",x"b7"),
   317 => (x"48",x"6e",x"87",x"cb"),
   318 => (x"f4",x"c2",x"80",x"c1"),
   319 => (x"d3",x"c0",x"58",x"c8"),
   320 => (x"48",x"66",x"c4",x"87"),
   321 => (x"70",x"80",x"e0",x"c1"),
   322 => (x"02",x"bf",x"6e",x"7e"),
   323 => (x"4b",x"87",x"c5",x"c0"),
   324 => (x"0f",x"73",x"49",x"fe"),
   325 => (x"c1",x"48",x"a6",x"c8"),
   326 => (x"49",x"fd",x"c3",x"78"),
   327 => (x"70",x"87",x"fc",x"e1"),
   328 => (x"02",x"99",x"c2",x"49"),
   329 => (x"c2",x"87",x"e9",x"c0"),
   330 => (x"02",x"bf",x"c4",x"f4"),
   331 => (x"c2",x"87",x"c9",x"c0"),
   332 => (x"c0",x"48",x"c4",x"f4"),
   333 => (x"87",x"d3",x"c0",x"78"),
   334 => (x"c1",x"48",x"66",x"c4"),
   335 => (x"7e",x"70",x"80",x"e0"),
   336 => (x"c0",x"02",x"bf",x"6e"),
   337 => (x"fd",x"4b",x"87",x"c5"),
   338 => (x"c8",x"0f",x"73",x"49"),
   339 => (x"78",x"c1",x"48",x"a6"),
   340 => (x"e1",x"49",x"fa",x"c3"),
   341 => (x"49",x"70",x"87",x"c5"),
   342 => (x"c0",x"02",x"99",x"c2"),
   343 => (x"f4",x"c2",x"87",x"ea"),
   344 => (x"c7",x"48",x"bf",x"c4"),
   345 => (x"c0",x"03",x"a8",x"b7"),
   346 => (x"f4",x"c2",x"87",x"c9"),
   347 => (x"78",x"c7",x"48",x"c4"),
   348 => (x"c4",x"87",x"d0",x"c0"),
   349 => (x"e0",x"c1",x"4a",x"66"),
   350 => (x"c0",x"02",x"6a",x"82"),
   351 => (x"fc",x"4b",x"87",x"c5"),
   352 => (x"c8",x"0f",x"73",x"49"),
   353 => (x"78",x"c1",x"48",x"a6"),
   354 => (x"f3",x"c2",x"4d",x"c0"),
   355 => (x"50",x"c0",x"48",x"fc"),
   356 => (x"c2",x"49",x"ee",x"cb"),
   357 => (x"4b",x"70",x"87",x"f2"),
   358 => (x"97",x"fc",x"f3",x"c2"),
   359 => (x"dd",x"c1",x"05",x"bf"),
   360 => (x"c3",x"49",x"74",x"87"),
   361 => (x"c0",x"05",x"99",x"f0"),
   362 => (x"da",x"c1",x"87",x"cd"),
   363 => (x"ea",x"df",x"ff",x"49"),
   364 => (x"02",x"98",x"70",x"87"),
   365 => (x"c1",x"87",x"c7",x"c1"),
   366 => (x"4c",x"bf",x"e8",x"4d"),
   367 => (x"99",x"ff",x"c3",x"49"),
   368 => (x"71",x"2c",x"b7",x"c8"),
   369 => (x"c4",x"d9",x"c2",x"b4"),
   370 => (x"db",x"ff",x"49",x"bf"),
   371 => (x"49",x"73",x"87",x"cb"),
   372 => (x"70",x"87",x"c1",x"c2"),
   373 => (x"c6",x"c0",x"02",x"98"),
   374 => (x"fc",x"f3",x"c2",x"87"),
   375 => (x"c2",x"50",x"c1",x"48"),
   376 => (x"bf",x"97",x"fc",x"f3"),
   377 => (x"87",x"d6",x"c0",x"05"),
   378 => (x"f0",x"c3",x"49",x"74"),
   379 => (x"c6",x"ff",x"05",x"99"),
   380 => (x"49",x"da",x"c1",x"87"),
   381 => (x"87",x"e3",x"de",x"ff"),
   382 => (x"fe",x"05",x"98",x"70"),
   383 => (x"9d",x"75",x"87",x"f9"),
   384 => (x"87",x"e0",x"c0",x"02"),
   385 => (x"c2",x"48",x"a6",x"cc"),
   386 => (x"78",x"bf",x"c4",x"f4"),
   387 => (x"cc",x"49",x"66",x"cc"),
   388 => (x"48",x"66",x"c4",x"91"),
   389 => (x"7e",x"70",x"80",x"71"),
   390 => (x"c0",x"02",x"bf",x"6e"),
   391 => (x"cc",x"4b",x"87",x"c6"),
   392 => (x"0f",x"73",x"49",x"66"),
   393 => (x"c0",x"02",x"66",x"c8"),
   394 => (x"f4",x"c2",x"87",x"c8"),
   395 => (x"f2",x"49",x"bf",x"c4"),
   396 => (x"8e",x"f0",x"87",x"ce"),
   397 => (x"4c",x"26",x"4d",x"26"),
   398 => (x"4f",x"26",x"4b",x"26"),
   399 => (x"00",x"00",x"00",x"00"),
   400 => (x"00",x"00",x"00",x"00"),
   401 => (x"00",x"00",x"00",x"00"),
   402 => (x"ff",x"4a",x"71",x"1e"),
   403 => (x"72",x"49",x"bf",x"c8"),
   404 => (x"4f",x"26",x"48",x"a1"),
   405 => (x"bf",x"c8",x"ff",x"1e"),
   406 => (x"c0",x"c0",x"fe",x"89"),
   407 => (x"a9",x"c0",x"c0",x"c0"),
   408 => (x"c0",x"87",x"c4",x"01"),
   409 => (x"c1",x"87",x"c2",x"4a"),
   410 => (x"26",x"48",x"72",x"4a"),
   411 => (x"5b",x"5e",x"0e",x"4f"),
   412 => (x"71",x"0e",x"5d",x"5c"),
   413 => (x"4c",x"d4",x"ff",x"4b"),
   414 => (x"c0",x"48",x"66",x"d0"),
   415 => (x"ff",x"49",x"d6",x"78"),
   416 => (x"c3",x"87",x"d5",x"de"),
   417 => (x"49",x"6c",x"7c",x"ff"),
   418 => (x"71",x"99",x"ff",x"c3"),
   419 => (x"f0",x"c3",x"49",x"4d"),
   420 => (x"a9",x"e0",x"c1",x"99"),
   421 => (x"c3",x"87",x"cb",x"05"),
   422 => (x"48",x"6c",x"7c",x"ff"),
   423 => (x"66",x"d0",x"98",x"c3"),
   424 => (x"ff",x"c3",x"78",x"08"),
   425 => (x"49",x"4a",x"6c",x"7c"),
   426 => (x"ff",x"c3",x"31",x"c8"),
   427 => (x"71",x"4a",x"6c",x"7c"),
   428 => (x"c8",x"49",x"72",x"b2"),
   429 => (x"7c",x"ff",x"c3",x"31"),
   430 => (x"b2",x"71",x"4a",x"6c"),
   431 => (x"31",x"c8",x"49",x"72"),
   432 => (x"6c",x"7c",x"ff",x"c3"),
   433 => (x"ff",x"b2",x"71",x"4a"),
   434 => (x"e0",x"c0",x"48",x"d0"),
   435 => (x"02",x"9b",x"73",x"78"),
   436 => (x"7b",x"72",x"87",x"c2"),
   437 => (x"4d",x"26",x"48",x"75"),
   438 => (x"4b",x"26",x"4c",x"26"),
   439 => (x"26",x"1e",x"4f",x"26"),
   440 => (x"5b",x"5e",x"0e",x"4f"),
   441 => (x"86",x"f8",x"0e",x"5c"),
   442 => (x"a6",x"c8",x"1e",x"76"),
   443 => (x"87",x"fd",x"fd",x"49"),
   444 => (x"4b",x"70",x"86",x"c4"),
   445 => (x"a8",x"c2",x"48",x"6e"),
   446 => (x"87",x"f0",x"c2",x"03"),
   447 => (x"f0",x"c3",x"4a",x"73"),
   448 => (x"aa",x"d0",x"c1",x"9a"),
   449 => (x"c1",x"87",x"c7",x"02"),
   450 => (x"c2",x"05",x"aa",x"e0"),
   451 => (x"49",x"73",x"87",x"de"),
   452 => (x"c3",x"02",x"99",x"c8"),
   453 => (x"87",x"c6",x"ff",x"87"),
   454 => (x"9c",x"c3",x"4c",x"73"),
   455 => (x"c1",x"05",x"ac",x"c2"),
   456 => (x"66",x"c4",x"87",x"c2"),
   457 => (x"71",x"31",x"c9",x"49"),
   458 => (x"4a",x"66",x"c4",x"1e"),
   459 => (x"f4",x"c2",x"92",x"d4"),
   460 => (x"81",x"72",x"49",x"c8"),
   461 => (x"87",x"dc",x"ce",x"fe"),
   462 => (x"db",x"ff",x"49",x"d8"),
   463 => (x"c0",x"c8",x"87",x"da"),
   464 => (x"e0",x"e2",x"c2",x"1e"),
   465 => (x"ce",x"e8",x"fd",x"49"),
   466 => (x"48",x"d0",x"ff",x"87"),
   467 => (x"c2",x"78",x"e0",x"c0"),
   468 => (x"cc",x"1e",x"e0",x"e2"),
   469 => (x"92",x"d4",x"4a",x"66"),
   470 => (x"49",x"c8",x"f4",x"c2"),
   471 => (x"cc",x"fe",x"81",x"72"),
   472 => (x"86",x"cc",x"87",x"e3"),
   473 => (x"c1",x"05",x"ac",x"c1"),
   474 => (x"66",x"c4",x"87",x"c2"),
   475 => (x"71",x"31",x"c9",x"49"),
   476 => (x"4a",x"66",x"c4",x"1e"),
   477 => (x"f4",x"c2",x"92",x"d4"),
   478 => (x"81",x"72",x"49",x"c8"),
   479 => (x"87",x"d4",x"cd",x"fe"),
   480 => (x"1e",x"e0",x"e2",x"c2"),
   481 => (x"d4",x"4a",x"66",x"c8"),
   482 => (x"c8",x"f4",x"c2",x"92"),
   483 => (x"fe",x"81",x"72",x"49"),
   484 => (x"d7",x"87",x"e3",x"ca"),
   485 => (x"ff",x"d9",x"ff",x"49"),
   486 => (x"1e",x"c0",x"c8",x"87"),
   487 => (x"49",x"e0",x"e2",x"c2"),
   488 => (x"87",x"d0",x"e6",x"fd"),
   489 => (x"d0",x"ff",x"86",x"cc"),
   490 => (x"78",x"e0",x"c0",x"48"),
   491 => (x"4c",x"26",x"8e",x"f8"),
   492 => (x"4f",x"26",x"4b",x"26"),
   493 => (x"5c",x"5b",x"5e",x"0e"),
   494 => (x"86",x"fc",x"0e",x"5d"),
   495 => (x"d4",x"ff",x"4d",x"71"),
   496 => (x"7e",x"66",x"d4",x"4c"),
   497 => (x"a8",x"b7",x"c3",x"48"),
   498 => (x"87",x"e2",x"c1",x"01"),
   499 => (x"66",x"c4",x"1e",x"75"),
   500 => (x"c2",x"93",x"d4",x"4b"),
   501 => (x"73",x"83",x"c8",x"f4"),
   502 => (x"d8",x"c4",x"fe",x"49"),
   503 => (x"49",x"a3",x"c8",x"87"),
   504 => (x"d0",x"ff",x"49",x"69"),
   505 => (x"78",x"e1",x"c8",x"48"),
   506 => (x"48",x"71",x"7c",x"dd"),
   507 => (x"70",x"98",x"ff",x"c3"),
   508 => (x"c8",x"4a",x"71",x"7c"),
   509 => (x"48",x"72",x"2a",x"b7"),
   510 => (x"70",x"98",x"ff",x"c3"),
   511 => (x"d0",x"4a",x"71",x"7c"),
   512 => (x"48",x"72",x"2a",x"b7"),
   513 => (x"70",x"98",x"ff",x"c3"),
   514 => (x"d8",x"48",x"71",x"7c"),
   515 => (x"7c",x"70",x"28",x"b7"),
   516 => (x"7c",x"7c",x"7c",x"c0"),
   517 => (x"7c",x"7c",x"7c",x"7c"),
   518 => (x"7c",x"7c",x"7c",x"7c"),
   519 => (x"48",x"d0",x"ff",x"7c"),
   520 => (x"c4",x"78",x"e0",x"c0"),
   521 => (x"49",x"dc",x"1e",x"66"),
   522 => (x"87",x"d1",x"d8",x"ff"),
   523 => (x"8e",x"fc",x"86",x"c8"),
   524 => (x"4c",x"26",x"4d",x"26"),
   525 => (x"4f",x"26",x"4b",x"26"),
   526 => (x"c2",x"1e",x"c0",x"1e"),
   527 => (x"49",x"bf",x"d4",x"e1"),
   528 => (x"c2",x"87",x"f1",x"fd"),
   529 => (x"49",x"bf",x"d8",x"e1"),
   530 => (x"87",x"fa",x"dc",x"fe"),
   531 => (x"8e",x"fc",x"48",x"c0"),
   532 => (x"00",x"00",x"4f",x"26"),
   533 => (x"00",x"00",x"28",x"5c"),
   534 => (x"00",x"00",x"28",x"68"),
   535 => (x"20",x"43",x"42",x"42"),
   536 => (x"20",x"20",x"20",x"20"),
   537 => (x"00",x"44",x"48",x"56"),
   538 => (x"20",x"43",x"42",x"42"),
   539 => (x"20",x"20",x"20",x"20"),
   540 => (x"00",x"4d",x"4f",x"52"),
   541 => (x"00",x"00",x"1b",x"af"),
		others => (others => x"00")
	);
	signal q1_local : word_t;

	-- Altera Quartus attributes
	attribute ramstyle: string;
	attribute ramstyle of ram: signal is "no_rw_check";

begin  -- rtl

	addr1 <= to_integer(unsigned(addr(ADDR_WIDTH-1 downto 0)));

	-- Reorganize the read data from the RAM to match the output
	q(7 downto 0) <= q1_local(3);
	q(15 downto 8) <= q1_local(2);
	q(23 downto 16) <= q1_local(1);
	q(31 downto 24) <= q1_local(0);

	process(clk)
	begin
		if(rising_edge(clk)) then 
			if(we = '1') then
				-- edit this code if using other than four bytes per word
				if (bytesel(3) = '1') then
					ram(addr1)(3) <= d(7 downto 0);
				end if;
				if (bytesel(2) = '1') then
					ram(addr1)(2) <= d(15 downto 8);
				end if;
				if (bytesel(1) = '1') then
					ram(addr1)(1) <= d(23 downto 16);
				end if;
				if (bytesel(0) = '1') then
					ram(addr1)(0) <= d(31 downto 24);
				end if;
			end if;
			q1_local <= ram(addr1);
		end if;
	end process;
  
end rtl;


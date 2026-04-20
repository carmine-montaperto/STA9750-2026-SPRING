 
* Edit the FILE statement to reference the data file on your computer.
 
GET DATA  /TYPE = TXT
 /FILE = "C:\atusrost_0324.dat"
 /DELCASE = LINE
 /DELIMITERS = ","
 /ARRANGEMENT = DELIMITED
 /FIRSTCASE = 2
 /IMPORTCASE = ALL
 /VARIABLES =
TUCASEID A14
TULINENO F8
TERRP F8
TEAGE F8
TESEX F8
.
VARIABLE LABELS
TUCASEID "ATUS Case ID (14-digit identifier)" /
TULINENO "ATUS person line number" /
TERRP "Edited: how is this person related to you?" /
TEAGE "Edited: age" /
TESEX "Edited: sex" /
.
VALUE LABELS
TERRP
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
18 "Self"
19 "Self"
20 "Spouse"
21 "Unmarried partner"
22 "Own household child"
23 "Grandchild"
24 "Parent"
25 "Brother-sister"
26 "Other relative"
27 "Foster child"
28 "Housemate-roommate"
29 "Roomer-boarder"
30 "Other nonrelative"
40 "Own non-household child < 18"
/
TESEX
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Male"
2 "Female"
/
.
 
CACHE.
EXECUTE.

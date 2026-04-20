* NOTE: format names are the same as variable names, except for
        variable names that end in a number.  For these a 1 is replaced
        by an A, a 2 is replaced by a B, and so on.
  Edit the infile statement to reference the data file on your computer.
*;
data atusrost_0324;
infile "c:\atusrost_0324.dat" firstobs=2 dsd missover lrecl=16384 dlm=",";
length
 TUCASEID $14
 TULINENO 8
 TERRP 8
 TEAGE 8
 TESEX 8
;
input
 TUCASEID
 TULINENO
 TERRP
 TEAGE
 TESEX
;
label TUCASEID = "ATUS Case ID (14-digit identifier)";
label TULINENO = "ATUS person line number";
label TERRP = "Edited: how is this person related to you?";
label TEAGE = "Edited: age";
label TESEX = "Edited: sex";
run;
 
proc format;
value TERRP /*TERRP*/
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
18 = "Self"
19 = "Self"
20 = "Spouse"
21 = "Unmarried partner"
22 = "Own household child"
23 = "Grandchild"
24 = "Parent"
25 = "Brother/sister"
26 = "Other relative"
27 = "Foster child"
28 = "Housemate/roommate"
29 = "Roomer/boarder"
30 = "Other nonrelative"
40 = "Own non-household child < 18"
;
value TESEX /*TESEX*/
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
1 = "Male"
2 = "Female"
;
proc contents data=atusrost_0324; run;

* NOTE: format names are the same as variable names, except for
        variable names that end in a number.  For these a 1 is replaced
        by an A, a 2 is replaced by a B, and so on.
  Edit the infile statement to reference the data file on your computer.
*;
data atusact_0324;
infile "c:\atusact_0324.dat" firstobs=2 dsd missover lrecl=16384 dlm=",";
length
TUCASEID $14
TUACTIVITY_N 8
TUACTDUR24 8
TUCC5 8
TUCC5B 8
TRTCCTOT_LN 8
TRTCC_LN 8
TRTCOC_LN 8
TUSTARTTIM $8
TUSTOPTIME $8
TRCODEP $6
TRTIER1P $2
TRTIER2P $4
TUCC8 8
TUCUMDUR 8
TUCUMDUR24 8
TUACTDUR 8
TR_03CC57 8
TRTO_LN 8
TRTONHH_LN 8
TRTOHH_LN 8
TRTHH_LN 8
TRTNOHH_LN 8
TEWHERE 8
TUCC7 8
TRWBELIG 8
TRTEC_LN 8
TUEC24 8
TUDURSTOP 8
;
input
TUCASEID
TUACTIVITY_N
TUACTDUR24
TUCC5
TUCC5B
TRTCCTOT_LN
TRTCC_LN
TRTCOC_LN
TUSTARTTIM
TUSTOPTIME
TRCODEP
TRTIER1P
TRTIER2P
TUCC8
TUCUMDUR
TUCUMDUR24
TUACTDUR
TR_03CC57
TRTO_LN
TRTONHH_LN
TRTOHH_LN
TRTHH_LN
TRTNOHH_LN
TEWHERE
TUCC7
TRWBELIG
TRTEC_LN
TUEC24
TUDURSTOP
;
label TUCASEID = "ATUS Case ID (14-digit identifier)";
label TUACTIVITY_N = "Activity line number";
label TUACTDUR24 = "Duration of activity in minutes (last activity truncated at 4:00 a.m.)";
label TUCC5 = "Was at least one of your own household children < 13 in your care during this activity?";
label TUCC5B = "Was at least one of your non-own household children < 13 in your care during this activity?";
label TRTCCTOT_LN = "Total time spent during activity providing secondary childcare for all children < 13 (in minutes)";
label TRTCC_LN = "Total time spent during activity providing secondary child care for household and own nonhousehold children < 13 (in minutes)";
label TRTCOC_LN = "Total time spent during activity providing secondary child care for nonown, nonhousehold children <13 (in minutes)";
label TUSTARTTIM = "Activity start time";
label TUSTOPTIME = "Activity stop time";
label TRCODEP = "Pooled six-digit activity code";
label TRTIER1P = "Pooled lexicon tier 1: 1st and 2nd digits of 6-digit activity code";
label TRTIER2P = "Pooled lexicon tiers 1 and 2: 1st four digits of 6-digit activity code";
label TUCC8 = "Other than household or own non-household children < 13, was there a child 0-12 in your care during this activity?";
label TUCUMDUR = "Cumulative duration of activity lengths in minutes; last activity not truncated at 4:00am or 1440 minutes (cumulative total of TUACTDUR for each TUCASEID)";
label TUCUMDUR24 = "Cumulative duration of activity lengths in minutes; last activity truncated at 4:00am or 1440 minutes (cumulative total of TUACTDUR24 for each TUCASEID)";
label TUACTDUR = "Duration of activity in minutes (last activity not truncated at 4:00 a.m.)";
label TR_03CC57 = "Was a household or own non-household child < 13 in your care during this activity?";
label TRTO_LN = "Total time spent during activity providing secondary childcare for own children < 13 (in minutes)";
label TRTONHH_LN = "Total time spent during activity providing secondary childcare for own nonhousehold children < 13 (in minutes)";
label TRTOHH_LN = "Total time spent during activity providing secondary childcare for own household children < 13 (in minutes)";
label TRTHH_LN = "Total time spent during activity providing secondary childcare for household children < 13 (in minutes)";
label TRTNOHH_LN = "Total time spent during activity providing secondary childcare for nonown household children < 13 (in minutes)";
label TEWHERE = "Edited: where were you during the activity?";
label TUCC7 = "Was at least one of your own non-household children < 13 in your care during this activity?";
label TRWBELIG = "Flag identifying activities eligible for the Well-Being Module";
label TRTEC_LN = "Time (in minutes) spent providing eldercare by activity";
label TUEC24 = "At which times or during which activities did you provide that care or assistance yesterday?";
label TUDURSTOP = "Method for reporting activity duration";
run;
 
proc format;
value TEWHERE /*TEWHERE*/
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
1 = "Respondent's home or yard"
2 = "Respondent's workplace"
3 = "Someone else's home"
4 = "Restaurant or bar"
5 = "Place of worship"
6 = "Grocery store"
7 = "Other store/mall"
8 = "School"
9 = "Outdoors away from home"
10 = "Library"
11 = "Other place"
12 = "Car, truck, or motorcycle (driver)"
13 = "Car, truck, or motorcycle (passenger)"
14 = "Walking"
15 = "Bus"
16 = "Subway/train"
17 = "Bicycle"
18 = "Boat/ferry"
19 = "Taxi/limousine service"
20 = "Airplane"
21 = "Other mode of transportation"
30 = "Bank"
31 = "Gym/health club"
32 = "Post Office"
89 = "Unspecified place"
99 = "Unspecified mode of transportation"
;
value TUCCE /*altered: TUCC5*/
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
0 = "No"
1 = "Yes"
97 = "No additional activities involved childcare"
;
value TUCC5B /*TUCC5B*/
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
0 = "No"
1 = "Yes"
97 = "No additional activities involved childcare"
;
value TUCCG /*altered: TUCC7*/
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
0 = "No"
1 = "Yes"
97 = "No additional activities involved childcare"
;
value TUCCH /*altered: TUCC8*/
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
0 = "No"
1 = "Yes"
97 = "No additional activities involved childcare"
;
value TR035G /*altered: TR_03CC57*/
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
1 = "At least one child < 13 was in respondent's care during activity"
;
value TRWBELIG /*TRWBELIG*/
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
0 = "Activity not eligible for selection in the Well-Being Module"
1 = "Activity eligible for selection in the Well-Being Module"
;
value TUEC2D /*altered: TUEC24*/
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
1 = "Activity identified as eldercare"
96 = "All day"
97 = "No more activities"
;
value TUDURSTOP /*TUDURSTOP*/
-1 = "Blank"
-2 = "Don't Know"
-3 = "Refused"
1 = "Activity duration was entered"
2 = "Activity stop time was entered"
;

proc contents data=atusact_0324; run;

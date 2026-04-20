 
* Edit the FILE statement to reference the data file on your computer.
 
GET DATA  /TYPE = TXT
 /FILE = "C:\atusact_0324.dat"
 /DELCASE = LINE
 /DELIMITERS = ","
 /ARRANGEMENT = DELIMITED
 /FIRSTCASE = 2
 /IMPORTCASE = ALL
 /VARIABLES =
TUCASEID A14
TUACTIVITY_N F8
TUACTDUR24 F8
TUCC5 F8
TUCC5B F8
TRTCCTOT_LN F8
TRTCC_LN F8
TRTCOC_LN F8
TUSTARTTIM A8
TUSTOPTIME A8
TRCODEP A6
TRTIER1P A2
TRTIER2P A4
TUCC8 F8
TUCUMDUR F8
TUCUMDUR24 F8
TUACTDUR F8
TR_03CC57 F8
TRTO_LN F8
TRTONHH_LN F8
TRTOHH_LN F8
TRTHH_LN F8
TRTNOHH_LN F8
TEWHERE F8
TUCC7 F8
TRWBELIG F8
TRTEC_LN F8
TUEC24 F8
TUDURSTOP F8
.
VARIABLE LABELS
TUCASEID "ATUS Case ID (14-digit identifier)" /
TUACTIVITY_N "Activity line number" /
TUACTDUR24 "Duration of activity in minutes (last activity truncated at 4:00 a.m.)" /
TUCC5 "Was at least one of your own household children < 13 in your care during this activity?" /
TUCC5B "Was at least one of your non-own household children < 13 in your care during this activity?" /
TRTCCTOT_LN "Total time spent during activity providing secondary childcare for all children < 13 (in minutes)" /
TRTCC_LN "Total time spent during activity providing secondary child care for household and own nonhousehold children < 13 (in minutes)" /
TRTCOC_LN "Total time spent during activity providing secondary child care for nonown, nonhousehold children <13 (in minutes)" /
TUSTARTTIM "Activity start time" /
TUSTOPTIME "Activity stop time" /
TRCODEP "Pooled six-digit activity code" /
TRTIER1P "Pooled lexicon tier 1: 1st and 2nd digits of 6-digit activity code" /
TRTIER2P "Pooled lexicon tiers 1 and 2: 1st four digits of 6-digit activity code" /
TUCC8 "Other than household or own non-household children < 13, was there a child 0-12 in your care during this activity?" /
TUCUMDUR "Cumulative duration of activity lengths in minutes / last activity not truncated at 4:00am or 1440 minutes (cumulative total of TUACTDUR for each TUCASEID)" /
TUCUMDUR24 "Cumulative duration of activity lengths in minutes / last activity truncated at 4:00am or 1440 minutes (cumulative total of TUACTDUR24 for each TUCASEID)" /
TUACTDUR "Duration of activity in minutes (last activity not truncated at 4:00 a.m.)" /
TR_03CC57 "Was a household or own non-household child < 13 in your care during this activity?" /
TRTO_LN "Total time spent during activity providing secondary childcare for own children < 13 (in minutes)" /
TRTONHH_LN "Total time spent during activity providing secondary childcare for own nonhousehold children < 13 (in minutes)" /
TRTOHH_LN "Total time spent during activity providing secondary childcare for own household children < 13 (in minutes)" /
TRTHH_LN "Total time spent during activity providing secondary childcare for household children < 13 (in minutes)" /
TRTNOHH_LN "Total time spent during activity providing secondary childcare for nonown household children < 13 (in minutes)" /
TEWHERE "Edited: where were you during the activity?" /
TUCC7 "Was at least one of your own non-household children < 13 in your care during this activity?" /
TRWBELIG "Flag identifying activities eligible for the Well-Being Module" /
TRTEC_LN "Time (in minutes) spent providing eldercare by activity" /
TUEC24 "At which times or during which activities did you provide that care or assistance yesterday?" /
TUDURSTOP "Method for reporting activity duration" /
.
VALUE LABELS
TEWHERE
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Respondent's home or yard"
2 "Respondent's workplace"
3 "Someone else's home"
4 "Restaurant or bar"
5 "Place of worship"
6 "Grocery store"
7 "Other store/mall"
8 "School"
9 "Outdoors away from home"
10 "Library"
11 "Other place"
12 "Car, truck, or motorcycle (driver)"
13 "Car, truck, or motorcycle (passenger)"
14 "Walking"
15 "Bus"
16 "Subway/train"
17 "Bicycle"
18 "Boat/ferry"
19 "Taxi/limousine service"
20 "Airplane"
21 "Other mode of transportation"
30 "Bank"
31 "Gym/health club"
32 "Post Office"
89 "Unspecified place"
99 "Unspecified mode of transportation"
/
TUCC5
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
0 "No"
1 "Yes"
97 "No additional activities involved childcare"
/
TUCC5B
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
0 "No"
1 "Yes"
97 "No additional activities involved childcare"
/
TUCC7
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
0 "No"
1 "Yes"
97 "No additional activities involved childcare"
/
TUCC8
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
0 "No"
1 "Yes"
97 "No additional activities involved childcare"
/
TR_03CC57
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "At least one child < 13 was in respondent's care during activity"
/
TRWBELIG
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
0 "Activity not eligible for selection in the Well-Being Module"
1 "Activity eligible for selection in the Well-Being Module"
/
TUEC24
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Activity identified as eldercare"
96 "All day"
97 "No more activities"
/
TUDURSTOP
-1 "Blank"
-2 "Don't Know"
-3 "Refused"
1 "Activity duration was entered"
2 "Activity stop time was entered"
/
.
 
CACHE.
EXECUTE.

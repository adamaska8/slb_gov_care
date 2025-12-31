
#delimit ;

infix

REALINC    1 - 14
BALLOT    15 - 19
VSTRAT    20 - 24
VPSU    25 - 29
WRKGOVT    30 - 34
OCC10    35 - 39
AGE    40 - 44
EDUC    45 - 48
SEX    49 - 53
RACE    54 - 58
BORN    59 - 63
REGION    64 - 65
PARTYID    66 - 69
RELIG    70 - 73
HEALTH    74 - 78
HELPPOOR    79 - 83
HELPSICK    84 - 88
HELPBLK    89 - 93
PRESTG10    94 - 98
ID_    99 - 103
WTSSNRPS    104 - 119
WTSSPS    120 - 135
YEAR    136 - 140
using GSS.dat;


label variable REALINC   "family income in constant $";
label variable BALLOT   "ballot used for interview";
label variable VSTRAT   "Variance stratum";
label variable VPSU   "Variance primary sampling unit";
label variable WRKGOVT   "govt or private employee";
label variable OCC10   "r's census occupation code (2010)";
label variable AGE   "age of respondent";
label variable EDUC   "highest year of school completed";
label variable SEX   "respondents sex";
label variable RACE   "race of respondent";
label variable BORN   "was r born in this country";
label variable REGION   "region of interview";
label variable PARTYID   "political party affiliation";
label variable RELIG   "r's religious preference";
label variable HEALTH   "condition of health";
label variable HELPPOOR   "should govt improve standard of living?";
label variable HELPSICK   "should govt help pay for medical care?";
label variable HELPBLK   "Should govt aid Black people?";
label variable PRESTG10   "r's occupational prestige score (2010)";
label variable ID_   "Respondent id number";
label variable WTSSNRPS   "Person post-stratification weight, nonrespondents adjusted";
label variable WTSSPS   "person post-stratification weight";
label variable YEAR   "GSS year for this respondent";


label define  GSP002X
1      "Government"
2      "Private"
-100      ".i:  Inapplicable"
-99      ".n:  No answer"
-98      ".d:  Do not Know/Cannot Choose"
-80      ".x:  Not available in this release"
-97      ".s:  Skipped on Web"
-96      ".z:  Variable-specific reserve code"
-95      ".u:  Uncodable"
-90      ".r:  Refused"
-70      ".y:  Not available in this year"
-60      ".j:  I do not have a job"
-50      ".p:  Not applicable (I have not faced this decision)/Not imputable"
-40      ".m:  DK, NA, IAP"
 ;
label define  GSP004X
-97      ".s:  Skipped on Web"
-96      ".z:  Variable-specific reserve code"
-95      ".u:  Uncodable"
-90      ".r:  Refused"
-80      ".x:  Not available in this release"
-70      ".y:  Not available in this year"
-60      ".j:  I do not have a job"
-50      ".p:  Not applicable (I have not faced this decision)/Not imputable"
-40      ".m:  DK, NA, IAP"
89      "89 or older"
-100      ".i:  Inapplicable"
-99      ".n:  No answer"
-98      ".d:  Do not Know/Cannot Choose"
 ;
label define  GSP005X
-100      ".i:  Inapplicable"
-40      ".m:  DK, NA, IAP"
-50      ".p:  Not applicable (I have not faced this decision)/Not imputable"
-60      ".j:  I do not have a job"
-70      ".y:  Not available in this year"
-80      ".x:  Not available in this release"
-90      ".r:  Refused"
-93      ".f:  Missing Birthdate Information"
-94      ".q:  Not imputable"
-95      ".u:  Uncodable"
-96      ".z:  Variable-specific reserve code"
-97      ".s:  Skipped on Web"
-98      ".d:  Do not Know/Cannot Choose"
-99      ".n:  No answer"
0      "No formal schooling"
1      "1st grade"
10      "10th grade"
11      "11th grade"
12      "12th grade"
13      "1 year of college"
14      "2 years of college"
15      "3 years of college"
16      "4 years of college"
17      "5 years of college"
18      "6 years of college"
19      "7 years of college"
2      "2nd grade"
20      "8 or more years of college"
3      "3rd grade"
4      "4th grade"
5      "5th grade"
6      "6th grade"
7      "7th grade"
8      "8th grade"
9      "9th grade"
 ;
label define  GSP006X
-90      ".r:  Refused"
-80      ".x:  Not available in this release"
-70      ".y:  Not available in this year"
-60      ".j:  I do not have a job"
-50      ".p:  Not applicable (I have not faced this decision)/Not imputable"
-40      ".m:  DK, NA, IAP"
2      "FEMALE"
1      "MALE"
-100      ".i:  Inapplicable"
-99      ".n:  No answer"
-97      ".s:  Skipped on Web"
-98      ".d:  Do not Know/Cannot Choose"
-96      ".z:  Variable-specific reserve code"
-95      ".u:  Uncodable"
 ;
label define  GSP007X
-100      ".i:  Inapplicable"
-99      ".n:  No answer"
-98      ".d:  Do not Know/Cannot Choose"
-97      ".s:  Skipped on Web"
-96      ".z:  Variable-specific reserve code"
-95      ".u:  Uncodable"
-90      ".r:  Refused"
-70      ".y:  Not available in this year"
-60      ".j:  I do not have a job"
-50      ".p:  Not applicable (I have not faced this decision)/Not imputable"
-40      ".m:  DK, NA, IAP"
1      "White"
2      "Black"
3      "Other"
-80      ".x:  Not available in this release"
 ;
label define  GSP008X
-96      ".z:  Variable-specific reserve code"
-95      ".u:  Uncodable"
-90      ".r:  Refused"
-80      ".x:  Not available in this release"
-70      ".y:  Not available in this year"
-60      ".j:  I do not have a job"
-50      ".p:  Not applicable (I have not faced this decision)/Not imputable"
-40      ".m:  DK, NA, IAP"
2      "NO"
1      "YES"
-100      ".i:  Inapplicable"
-99      ".n:  No answer"
-98      ".d:  Do not Know/Cannot Choose"
-97      ".s:  Skipped on Web"
 ;
label define  GSP009X
-100      ".i:  Inapplicable"
-40      ".m:  DK, NA, IAP"
-50      ".p:  Not applicable (I have not faced this decision)/Not imputable"
-60      ".j:  I do not have a job"
-70      ".y:  Not available in this year"
-80      ".x:  Not available in this release"
-90      ".r:  Refused"
-93      ".f:  Missing Birthdate Information"
-94      ".q:  Not imputable"
-95      ".u:  Uncodable"
-96      ".z:  Variable-specific reserve code"
-97      ".s:  Skipped on Web"
-98      ".d:  Do not Know/Cannot Choose"
-99      ".n:  No answer"
1      "Northeast"
2      "Midwest"
3      "South"
4      "West"
5      "South Atlantic"
6      "East South Central"
7      "West South Central"
8      "Mountain"
9      "Pacific"
 ;
label define  GSP010X
0      "Strong democrat"
1      "Not very strong democrat"
2      "Independent, close to democrat"
3      "Independent (neither, no response)"
4      "Independent, close to republican"
5      "Not very strong republican"
6      "Strong republican"
7      "Other party"
-99      ".n:  No answer"
-98      ".d:  Do not Know/Cannot Choose"
-100      ".i:  Inapplicable"
-97      ".s:  Skipped on Web"
-96      ".z:  Variable-specific reserve code"
-95      ".u:  Uncodable"
-90      ".r:  Refused"
-80      ".x:  Not available in this release"
-70      ".y:  Not available in this year"
-60      ".j:  I do not have a job"
-50      ".p:  Not applicable (I have not faced this decision)/Not imputable"
-40      ".m:  DK, NA, IAP"
 ;
label define  GSP011X
-100      ".i:  Inapplicable"
-40      ".m:  DK, NA, IAP"
-50      ".p:  Not applicable (I have not faced this decision)/Not imputable"
-60      ".j:  I do not have a job"
-70      ".y:  Not available in this year"
-80      ".x:  Not available in this release"
-90      ".r:  Refused"
-93      ".f:  Missing Birthdate Information"
-94      ".q:  Not imputable"
-95      ".u:  Uncodable"
-96      ".z:  Variable-specific reserve code"
-97      ".s:  Skipped on Web"
-98      ".d:  Do not Know/Cannot Choose"
-99      ".n:  No answer"
1      "Protestant"
10      "Orthodox-Christian"
11      "Christian"
12      "Native American"
13      "Inter-Nondenominational"
2      "Catholic"
3      "Jewish"
4      "None"
5      "Other"
6      "Buddhism"
7      "Hinduism"
8      "Other Eastern religions"
9      "Muslim/Islam"
 ;
label define  GSP012X
-96      ".z:  Variable-specific reserve code"
-95      ".u:  Uncodable"
-90      ".r:  Refused"
-80      ".x:  Not available in this release"
-70      ".y:  Not available in this year"
-60      ".j:  I do not have a job"
-50      ".p:  Not applicable (I have not faced this decision)/Not imputable"
-40      ".m:  DK, NA, IAP"
1      "Excellent"
2      "Good"
3      "Fair"
4      "Poor"
-100      ".i:  Inapplicable"
-99      ".n:  No answer"
-98      ".d:  Do not Know/Cannot Choose"
-97      ".s:  Skipped on Web"
 ;
label define  GSP013X
-96      ".z:  Variable-specific reserve code"
-95      ".u:  Uncodable"
-90      ".r:  Refused"
-80      ".x:  Not available in this release"
-70      ".y:  Not available in this year"
-60      ".j:  I do not have a job"
-50      ".p:  Not applicable (I have not faced this decision)/Not imputable"
-40      ".m:  DK, NA, IAP"
5      "PEOPLE HELP SELVES"
3      "AGREE WITH BOTH"
1      "GOVT ACTION"
-100      ".i:  Inapplicable"
-99      ".n:  No answer"
-98      ".d:  Do not Know/Cannot Choose"
-97      ".s:  Skipped on Web"
 ;
label define  GSP014X
-96      ".z:  Variable-specific reserve code"
-95      ".u:  Uncodable"
-90      ".r:  Refused"
-80      ".x:  Not available in this release"
-70      ".y:  Not available in this year"
-60      ".j:  I do not have a job"
-50      ".p:  Not applicable (I have not faced this decision)/Not imputable"
-40      ".m:  DK, NA, IAP"
5      "PEOPLE HELP SELVES"
3      "AGREE WITH BOTH"
1      "GOVT SHOULD HELP"
-100      ".i:  Inapplicable"
-99      ".n:  No answer"
-98      ".d:  Do not Know/Cannot Choose"
-97      ".s:  Skipped on Web"
 ;
label define  GSP015X
-96      ".z:  Variable-specific reserve code"
-95      ".u:  Uncodable"
-90      ".r:  Refused"
-80      ".x:  Not available in this release"
-70      ".y:  Not available in this year"
-60      ".j:  I do not have a job"
-50      ".p:  Not applicable (I have not faced this decision)/Not imputable"
-40      ".m:  DK, NA, IAP"
1      "Government should help"
3      "Agree with both"
5      "No special treatment"
-100      ".i:  Inapplicable"
-99      ".n:  No answer"
-98      ".d:  Do not Know/Cannot Choose"
-97      ".s:  Skipped on Web"
 ;
label define  GSP017X
-99      ".n:  No answer"
-98      ".d:  Do not Know/Cannot Choose"
-97      ".s:  Skipped on Web"
-96      ".z:  Variable-specific reserve code"
-95      ".u:  Uncodable"
-90      ".r:  Refused"
-80      ".x:  Not available in this release"
-70      ".y:  Not available in this year"
-60      ".j:  I do not have a job"
-50      ".p:  Not applicable (I have not faced this decision)/Not imputable"
-40      ".m:  DK, NA, IAP"
1      "Ballot a"
2      "Ballot b"
3      "Ballot c"
4      "Ballot d"
-100      ".i:  Inapplicable"
 ;
label define  GSP018X
-1      "-1"
1      "1"
2      "2"
 ;
label define  GSP019X
-100      ".i:  Inapplicable"
-40      ".m:  DK, NA, IAP"
-50      ".p:  Not applicable (I have not faced this decision)/Not imputable"
-60      ".j:  I do not have a job"
-70      ".y:  Not available in this year"
-80      ".x:  Not available in this release"
-90      ".r:  Refused"
-93      ".f:  Missing Birthdate Information"
-94      ".q:  Not imputable"
-95      ".u:  Uncodable"
-96      ".z:  Variable-specific reserve code"
-97      ".s:  Skipped on Web"
-98      ".d:  Do not Know/Cannot Choose"
-99      ".n:  No answer"
 ;
label define  GSP020X
-100      ".i:  Inapplicable"
 ;


label values YEAR   GSP001X;
label values WRKGOVT   GSP002X;
label values OCC10   GSP003X;
label values AGE   GSP004X;
label values EDUC   GSP005X;
label values SEX   GSP006X;
label values RACE   GSP007X;
label values BORN   GSP008X;
label values REGION   GSP009X;
label values PARTYID   GSP010X;
label values RELIG   GSP011X;
label values HEALTH   GSP012X;
label values HELPPOOR   GSP013X;
label values HELPSICK   GSP014X;
label values HELPBLK   GSP015X;
label values REALINC   GSP016X;
label values BALLOT   GSP017X;
label values VPSU   GSP018X;
label values PRESTG10   GSP019X;
label values WTSSPS   GSP020X;

recode * (-100=.i)(-99=.n)(-98=.d)(-97=.s)(-96=.z)(-95=.u)(-90=.r)(-80=.x)(-70=.y)(-60=.j)(-50=.p)(-40=.m);

/*

Descriptions of missing codes (for more information, please refer to the Codebook)

.i: Inapplicable (IAP)

.n: No answer (NA)

.d: Don't know (DK)

.s: Skipped on web

.z: See Codebook for more information.

.u: Uncodeable

.r: Refused

.x: Not available in this release

.y: Not available in this year

.j: I don't have a job

.p: Not applicable/not imputable

.m: DK, NA, IAP

*/ 

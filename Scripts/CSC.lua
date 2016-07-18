local Cache = {
	[1] = {100,355,3127,6544,6552,57755,88163,115767,123829,203178,203526,205546,205547,215537,188632,188635,188639,188644,188647,188651,188672,188683,188778,189059,200845,200846,200847,200849,200853,200856,200857,200859,200860,200861,200863,200870,200871,200872,200875,203225,203227,203230,203261,203524,203576,205545,209459,209462,209472,209480,209481,209483,209492,209494,209541,209548,209554,209559,209566,209573,209574,209577,211309,214937,214938,214939,216272,216273,216274,226829,198490,198500,198571,198621,198758,198765,198802,198807,198817,198821,198877,198912,199023,199037,199045,199086,199127,199148,199202,199204,199261,205800,206572,213857,213871,213915,216890,217959,71,845,871,1160,1464,1680,1715,1719,2565,5246,5308,6343,6572,12294,12323,12712,12950,12975,18499,20243,23881,23920,23922,29144,34428,46917,46953,76838,76856,76857,81099,84608,85288,86101,86110,86535,97462,100130,118038,161798,163201,167105,184361,184364,184367,184783,190411,190456,198304,204488,209694,227847,772,7384,12292,29838,46924,46968,103827,103828,107570,107574,118000,122509,152277,152278,197690,202095,202161,202163,202168,202224,202288,202296,202297,202316,202560,202561,202572,202593,202603,202612,202743,202751,202922,203177,203179,203201,205484,206313,206315,206320,207982,208154,215538,215550,215556,215568,215569,215571,215573,223657,223662,227266,228920},
	[2] = {633,642,1044,7328,13819,20271,23214,32223,34767,34769,35395,62124,69820,69826,73629,73630,82242,115675,121183,123830,200654,179546,182234,184759,184778,184843,185086,185368,186773,186788,186927,186934,186941,186944,186945,193058,193108,200294,200296,200298,200302,200311,200315,200316,200326,200327,200373,200407,200421,200430,200474,200482,200652,205273,207604,209202,209216,209217,209218,209220,209223,209224,209225,209226,209229,209285,209341,209376,209389,209474,209539,211309,211912,211913,211914,211915,211916,213428,213570,213571,213572,213573,213574,214081,214923,214924,221841,222648,226829,199324,199325,199330,199422,199424,199428,199441,199452,199454,199456,199542,204898,204914,204927,204934,204939,204979,207028,210256,210294,210323,210341,210378,215652,216327,216331,216853,216855,216860,216868,228049,498,853,1022,4987,6940,19750,20473,25780,26573,31821,31842,31850,31884,31935,53385,53503,53563,53576,53592,53595,53600,76671,76672,82326,85043,85222,85256,86102,86103,86539,86659,96231,105424,105805,161800,183218,183435,183997,183998,184092,184575,184662,190784,203528,203538,203539,212056,213644,219562,227068,20066,53376,105809,114154,114158,114165,115750,152261,152262,156910,183415,183416,183425,183778,196923,196926,197446,197646,198034,198038,198054,200025,202270,202271,202273,203316,203776,203785,203791,203797,204013,204018,204019,204023,204035,204054,204074,204077,204139,204150,205191,205228,205656,210191,210220,213313,213652,213757,214202,215661,217020,218178,223306,223817,224668},
	[3] = {136,883,982,1462,1494,1515,1543,2641,5384,6197,6991,19878,19879,19880,19882,19883,19884,19885,61648,83242,83243,83244,83245,93321,93322,125050,127933,138430,157443,186257,186265,203413,205154,207097,209997,210000,212621,190449,190457,190462,190467,190503,190514,190520,190529,190567,190852,191048,191328,191339,197038,197047,197080,197138,197139,197140,197160,197162,197178,197199,197248,197343,197344,197354,203415,203563,203566,203577,203578,203638,203669,203670,203673,203749,203752,203754,203755,203757,204089,204147,204219,206910,207068,211309,214826,214914,214915,214916,215779,221773,224764,225092,53271,202589,202624,202746,202793,202901,202914,203129,203133,203155,203235,203264,203340,204190,205691,208652,209789,209793,212638,212640,212668,212669,212670,213691,781,2643,5116,19434,19574,34026,34477,35110,53270,56315,76657,109304,115939,120679,147362,164856,185358,185789,185855,185901,185987,186270,186289,186387,187650,187698,187707,187708,190925,190928,191334,191433,193265,193455,193468,193526,193530,194291,195645,202800,212658,19386,19577,53209,53238,87935,109215,109248,120360,130392,131894,155228,162488,191241,191384,193532,193533,194277,194306,194386,194397,194407,194595,194599,194855,198670,199483,199518,199522,199523,199527,199528,199530,199532,199543,199921,200108,200163,201075,201078,201082,201430,204308,204315,206505,206817,212431,212436,213423,214579,217200},
	[4] = {1766,1804,1860,1966,2836,2983,31209,31224,56814,57934,82245,157442,185311,192760,209783,209784,210108,212205,222062,192310,192315,192318,192323,192326,192329,192345,192349,192376,192384,192422,192424,192428,192657,192759,192923,197231,197233,197234,197235,197239,197241,197244,197256,197369,197386,197406,197604,197610,202463,202507,202514,202521,202522,202524,202530,202533,202628,202665,202753,202755,202769,202820,202897,202907,209781,209782,209835,210144,210145,210146,210147,210148,211309,214368,214928,214929,214930,216230,221856,197007,197044,197050,197899,198032,198092,198128,198145,198265,198529,198665,198675,198952,206317,206328,207736,207777,209752,212035,212081,212182,212210,212217,213981,216883,221622,53,408,703,921,1329,1725,1776,1784,1833,1856,1943,2094,2098,2823,3408,5277,6770,8676,8679,13750,13877,14117,14161,14190,32645,35551,36554,51667,51723,58423,61329,76803,76806,76808,79134,79140,79152,84601,114014,121471,185313,185314,185438,185565,185763,193315,193316,195452,196819,196912,197835,199736,199740,199754,199804,212283,5171,14062,14983,16511,31223,31230,51690,79008,108208,108209,108211,108216,114015,131511,137619,152150,152152,154904,185767,193531,193537,193539,193546,193640,195457,196861,196864,196922,196924,196937,196938,196951,196976,196979,199743,200733,200758,200759,200778,200802,200806,206237},
	[5] = {528,585,586,605,2006,9484,32375,81782,207948,215769,193371,193642,193643,193644,193645,193647,194002,194007,194016,194018,194024,194026,194093,194179,194378,196355,196358,196416,196418,196419,196422,196429,196430,196434,196437,196489,196492,196578,196684,196779,197708,197711,197713,197715,197716,197727,197729,197762,197766,197779,197781,197815,198068,198074,205065,207946,208065,211309,213428,214925,214926,214927,215322,216122,216212,219655,222646,108968,195282,196162,196439,196559,196601,196602,196611,196762,197268,197469,197535,197590,197862,197871,199131,199144,199259,199388,199408,199445,199484,199572,209780,211522,211681,213539,213541,213547,213548,213549,213550,213553,213556,213602,213610,213654,215768,215776,215960,215982,228630,17,139,527,589,596,1706,2050,2060,2061,2096,8092,8122,14914,15286,15407,15487,20711,32379,33076,33206,34433,34861,34914,45243,47536,47540,47585,47788,48045,62618,63733,64843,73325,77484,77485,77486,78203,81749,88625,132157,185916,186263,186440,190719,194509,200829,212036,213634,228260,228264,228266,10060,19236,32546,64129,64901,73510,109142,109186,110744,120517,121536,123040,129250,152118,155271,162452,193063,193134,193155,193157,193173,193195,193223,193225,196704,196707,196985,197031,197034,197045,197419,199849,199853,199855,200128,200153,200174,200183,200199,200209,200309,200347,204065,204197,204263,204883,205351,205367,205369,205371,205385,214121,214621},
	[6] = {3714,47528,48707,49576,49998,50977,51986,53343,53344,53428,55078,55095,56222,61999,62158,82246,111673,127344,190780,205224,189080,189086,189092,189097,189144,189147,189154,189164,189179,189180,189184,189185,189186,190778,191419,191442,191485,191488,191494,191565,191584,191592,191593,191594,191637,191721,191731,191741,191747,191760,192447,192450,192453,192457,192460,192464,192514,192538,192542,192543,192544,192548,192557,192558,192567,192570,193213,204875,205209,205223,208598,208793,208794,208795,211309,214903,214904,214906,218280,218931,220143,221775,224466,224467,224468,226829,47476,51052,77606,199642,199719,199720,199722,199724,199725,201934,201995,202727,202731,202846,203172,203173,204080,204088,204132,204135,204143,204160,207018,210128,223829,674,42650,43265,45524,46584,47541,47568,48263,48265,48792,49020,49028,49143,49184,49206,49530,50842,51128,51271,51462,55090,55233,59057,63560,77513,77514,77515,77575,81136,81229,85948,86113,86536,86537,108199,161797,178819,195182,195292,195621,196770,197147,206930,212552,221562,57330,108194,114556,130736,152279,152280,194662,194679,194844,194878,194909,194912,194913,194916,194917,194918,195679,198943,205723,205727,206931,206940,206960,206967,206970,206974,206977,207057,207060,207061,207104,207126,207127,207142,207161,207167,207170,207188,207200,207230,207256,207264,207269,207272,207289,207305,207311,207313,207316,207317,207319,207321,207346,207349,211078,212744,212763,212765,219779,219786,219809,221536,221699},
	[7] = {370,546,556,2008,2645,2825,6196,20608,32182,51514,108271,210873,211004,211010,211015,216965,191493,191499,191504,191512,191569,191572,191577,191582,191598,191602,191647,191717,191740,191861,192630,198228,198236,198238,198247,198248,198292,198296,198299,198349,198361,198367,198434,198505,198736,199107,204945,205495,207088,207092,207118,207206,207255,207285,207348,207351,207354,207355,207356,207357,207358,207360,207362,207778,210029,210030,210031,210032,210033,211309,213428,214931,214932,214933,215381,215414,224841,193876,204264,204268,204269,204288,204293,204330,204331,204332,204336,204349,204357,204365,204366,204385,204389,204393,204398,204403,204437,206642,210918,211062,213554,213555,213556,221678,403,421,1064,5394,8004,8042,16164,16196,17364,33757,51490,51505,51533,51564,51886,57994,58875,60103,60188,61295,61882,73920,77130,77223,77226,77472,77756,79206,86099,86100,86108,86629,98008,108280,123099,157444,168534,187837,187874,187880,188070,188196,188389,188443,188838,190488,190493,190899,193786,193796,195255,196834,196840,198067,198103,201845,212048,16166,51485,108281,108283,114050,114051,114052,117013,117014,157153,157154,170374,188089,192058,192063,192077,192087,192088,192106,192222,192234,192235,192246,192249,196884,196932,197211,197214,197464,197467,197992,197995,198838,200071,200072,200076,201897,201898,201900,201909,207399,207401,210643,210689,210707,210714,210727,210731,210853,215864},
	[8] = {118,122,130,1953,2139,3561,3562,3563,3565,3566,3567,10059,11416,11417,11418,11419,11420,11426,28271,28272,30449,32266,32267,32271,32272,33690,33691,35715,35717,45438,49358,49359,49360,49361,53140,53142,61305,61721,61780,80353,88342,88344,88345,88346,120145,120146,126819,131784,132620,132621,132626,132627,135029,161353,161354,161355,161372,176242,176244,176246,176248,190336,193759,210086,210726,211076,211088,224869,224871,187258,187264,187276,187287,187301,187304,187310,187313,187318,187321,187680,188006,194224,194234,194239,194312,194313,194314,194315,194318,194331,194431,194466,194487,195315,195317,195322,195323,195345,195351,195352,195354,195419,195448,195615,210182,210716,210725,210730,211309,214626,214629,214634,214664,214776,214917,214918,214919,215463,215773,215796,220817,221844,224968,227481,198062,198063,198064,198096,198100,198111,198120,198123,198126,198144,198148,198151,198155,198158,198492,198571,198614,199045,199086,203275,203280,203282,203283,203284,203286,206431,210476,210805,213220,66,116,120,133,1449,2120,2948,5143,6117,7302,11366,12042,12051,12472,12846,12982,30451,30455,30482,31589,31661,31687,44425,44614,76613,84714,108853,110959,112965,117216,157642,190319,190356,190427,190447,190740,195283,195676,1463,11958,44457,55342,86949,108839,112948,113724,114923,116011,153561,153595,153626,155147,155148,155149,157976,157980,157981,157997,198923,198929,199786,205020,205021,205022,205023,205024,205025,205026,205027,205028,205029,205030,205032,205033,205035,205036,205037,205038,205039,212653},
	[9] = {126,688,689,691,697,698,710,712,755,1098,1122,5697,5782,5784,6201,18540,20707,23161,29893,93375,104773,108370,111771,119898,187394,196657,211715,215279,196211,196217,196222,196227,196236,196258,196301,196305,196432,196586,196675,199111,199112,199120,199152,199153,199158,199163,199212,199214,199220,199257,199282,199471,199472,201424,211099,211105,211106,211108,211119,211123,211126,211131,211144,211158,211219,211309,211530,211714,211720,214934,214935,214936,215183,215223,215273,216698,218567,218572,219195,219415,221862,221882,224103,86121,199890,199892,199954,200290,200351,200546,200586,201996,212282,212284,212291,212295,212371,212387,212459,212618,212619,212623,212628,213398,213400,221703,221711,172,348,603,686,980,1454,5740,17962,27243,29722,30108,30146,77215,77219,77220,80240,104316,105174,108415,116858,193396,193440,193541,205183,5484,6789,17877,30283,48018,48181,108416,108501,108503,111400,152107,152108,157695,171975,196098,196102,196103,196104,196105,196226,196269,196270,196272,196277,196283,196406,196408,196410,196412,196447,196605,198590,205145,205148,205178,205179,205180,205181,205184,215941,219272},
	[10] = {100780,100784,101643,109132,115078,115178,115546,116812,117952,119996,125883,126892,126895,157361,205414,209525,222029,195243,195244,195263,195265,195266,195267,195269,195291,195295,195298,195300,195380,195399,195650,196082,199364,199365,199366,199367,199372,199377,199380,199384,199401,199485,199563,199573,199640,199665,199887,205320,205406,211309,213047,213049,213050,213051,213055,213062,213116,213133,213136,213161,213180,213183,213340,213428,214326,214372,214428,214516,214920,214921,214922,216424,218607,226829,227683,227684,227685,227686,227687,227688,227689,227690,227691,227692,159534,201211,201318,201325,201357,201372,201769,202043,202077,202107,202126,202162,202200,202272,202335,202370,202424,202428,202523,202577,205003,205147,205234,206743,207025,209520,209583,213658,216074,216113,216255,216913,101545,101546,103985,107428,113656,115069,115072,115080,115151,115176,115181,115203,115308,115310,115450,115636,116092,116095,116645,116670,116680,116694,116705,116849,117906,117907,119582,120224,120225,120227,121253,122470,124146,124502,124682,128595,137025,137384,137639,157411,157445,191837,193884,205523,212051,216519,218164,220357,115008,115098,115173,115288,115313,115315,115396,115399,116841,116844,116847,119381,121817,122278,122783,123904,123986,124081,132578,152173,152175,196607,196719,196721,196722,196725,196730,196736,196737,196738,196740,196743,197895,197900,197908,197915,197945,198664,198898,210802,210804},
	[11] = {339,768,783,1850,5225,5487,6795,8921,16870,18960,20484,50769,77758,106830,125972,127757,164815,164862,165962,193753,202768,202771,210053,210065,210723,219432,186320,186372,186393,186396,189744,189749,189754,189757,189760,189768,189772,189787,189849,189857,189870,200395,200399,200400,200402,200409,200414,200415,200440,200515,200850,200851,200854,200855,202302,202384,202386,202426,202433,202445,202464,202466,202767,202890,202918,202940,202996,203018,208253,208762,210557,210570,210571,210575,210579,210590,210593,210631,210637,210638,210650,210663,210666,210676,210702,210722,211309,213428,213682,214508,214514,214736,214910,214911,214912,214913,214996,215061,215799,222644,226829,33786,200272,200308,200567,200726,200818,200928,200931,200997,201216,201259,201522,201664,202043,202085,202110,202226,202246,202626,202790,202808,203052,203116,203197,203224,203242,203374,203399,203454,203553,203624,203651,203727,205673,206852,207017,209690,209730,209740,209749,209753,213200,213551,213552,213553,213951,228431,99,740,774,1079,1822,2782,5176,5185,5215,5217,5221,6807,8936,16864,16931,16974,18562,22568,22570,22812,22842,24858,29166,33763,33873,33917,48438,48484,48500,61336,77492,77493,77495,78674,78675,86093,86096,86097,86104,88423,93402,102342,102793,106832,106839,106898,106951,108299,113043,131768,137010,137011,137012,137013,145108,145205,155783,157447,190984,191034,192081,192083,194153,194223,197524,197692,210706,212040,213764,228545,5211,33891,52610,80313,102280,102351,102359,102401,102543,102558,102560,108238,114107,132469,155577,155578,155580,155672,155675,155835,158476,158477,158478,197061,197073,197488,197490,197491,197492,197632,197721,200383,200390,202021,202022,202028,202031,202032,202060,202155,202157,202342,202345,202347,202354,202359,202360,202425,202430,202770,203953,203962,203964,203965,203974,204012,204053,204066,205636,207383,207385,217615},
	[12] = {131347,162243,162794,179057,183752,183782,185123,186452,188499,188501,191427,195072,196055,196718,197125,197130,198013,198589,198793,201628,201789,203724,212611,214743,217832,221351,201454,201455,201456,201457,201458,201459,201460,201463,201464,201467,201468,201469,201470,201471,201472,201473,207343,207347,207352,207375,207387,207407,211309,212816,212817,212819,212821,212827,212829,212894,213010,213017,214744,214795,214907,214909,218910,226829,203468,203704,205596,205598,205601,205603,205604,205625,205626,205627,205628,205629,205630,206649,206803,207029,207293,211489,213480,227635,178740,178940,178976,185164,185244,185245,187827,189110,189926,202137,202138,203513,203720,203747,203782,203783,204021,204157,204254,204596,207197,207684,212612,212613,218256,226359,228477,192939,193897,196555,203550,203551,203555,203556,203753,204909,205411,206416,206473,206475,206476,206477,206478,206491,207548,207550,207666,207697,207739,207810,209258,209281,209400,209795,211048,211053,211881,212084,213241,213410,217996,218612,218679,227174,227225,227322,227327},
	["RACIAL"] = {[68992]=22,[7744]=5,[68996]=22,[121093]={11,512},[92680]=7,[155145]={10,2},[92682]=3,[59542]={11,2},[59543]={11,4},[59544]={11,16},[59545]={11,32},[59547]={11,64},[59548]={11,128},[87840]=22,[33697]={2,576},[6562]=11,[33702]={2,384},[69046]={9,2047},[20592]=7,[20551]=6,[20594]=3,[69041]=9,[69042]=9,[69044]=9,[69045]=9,[822]=10,[154747]={7,32},[26297]=8,[28730]={10,400},[69179]={10,1},[129597]={10,512},[58943]=8,[107072]=24,[107073]=24,[107074]=24,[28875]=11,[107076]=24,[20549]=6,[20550]=6,[107079]={24,8},[20552]=6,[20555]=8,[20557]=8,[69070]=9,[28877]=10,[28880]={11,1},[154744]={7,520},[20579]=5,[59221]=11,[25046]={10,8},[20585]=4,[59224]=3,[20572]={2,45},[20573]=2,[202719]={10,2048},[20577]=5,[80483]={10,4},[58984]=4,[20582]=4,[20583]=4,[59752]=1,[50613]={10,32},[5227]=5,[20589]=7,[20591]={7,978},[68976]=22,[227057]={7,4},[68978]=22,[68975]=22,[20596]=3,[131701]=24,[154742]=10,[154743]=6,[20593]=7,[154746]={7,1},[20599]=1,[154748]=4,[94293]=22,[20598]=1
	},
	["PET"] = {[50433]=3,[30213]=9,[160007]=3,[159788]=3,[160011]=3,[24450]=3,[6360]=9,[35346]=3,[118297]=7,[57984]=7,[115232]=9,[54049]=9,[115746]=9,[115748]=9,[3110]=9,[160044]=3,[49966]=3,[160049]=3,[126259]=3,[160057]=3,[115770]=9,[160060]=3,[160063]=3,[118337]=7,[115778]=9,[94019]=3,[115268]=9,[115781]=9,[94022]=3,[17735]=9,[118345]=7,[115276]=9,[134477]=9,[7870]=9,[117588]=7,[126393]=3,[2649]=3,[119899]=9,[17767]=9,[16827]=3,[17253]=3,[126311]=3,[88680]=3,[24423]=3,[47468]=6,[160018]=3,[32233]=9,[191336]=3,[157331]=7,[54644]=3,[36213]=7,[115831]=9,[47481]=6,[47482]=6,[19647]=9,[47484]=6,[91776]=6,[91778]=6,[3716]=9,[7814]=9,[160065]=3,[91800]=6,[160067]=3,[91797]=6,[89751]=9,[54680]=3,[160452]=3,[91802]=6,[126364]=3,[91809]=6,[157348]=7,[137798]=3,[89766]=9,[115625]=9,[112042]=9,[114355]=9,[159926]=3,[62137]=6,[159931]=3,[91837]=6,[91838]=6,[157375]=7,[89792]=9,[65220]=3,[157382]=7,[30151]=9,[30153]=9,[26064]=3,[159953]=3,[159956]=3,[6358]=9,[93433]=3,[90328]=3,[115236]=9,[92380]=3,[115408]=9,[89808]=9,[90339]=3,[117225]=9,[90347]=3,[90355]=3,[159733]=3,[90361]=3
	},
}
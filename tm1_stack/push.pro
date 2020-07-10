601,100
602,"push"
562,"NULL"
586,
585,
564,
565,"f765z0aYgCk<8GQ7cCzcIb=5[S[23m_m[MebgvmH3_wkX]Iegh4>zYGsRS>Eoq\Y6GWq2`1jm7X\NHv3`qwpOp;4vT]du>nSL>=nM8Xus^>lyCHPYZy^eU07:_a6QaQ<N]Bq3v0QVWEyEtXSkyXk@KgcNbTYezgrAw1QiHgQra26^xnozbAo[:c8:g9l]\QKdptHHRKk"
559,1
928,0
593,
594,
595,
597,
598,
596,
800,
801,
566,0
567,","
588,"."
589,
568,""""
570,
571,
569,0
592,0
599,1000
560,1
psStr
561,1
2
590,1
psStr,""
637,1
psStr,"String"
577,0
578,0
579,0
580,0
581,0
582,0
603,0
572,42

#****Begin: Generated Statements***
#****End: Generated Statements****

#****************************************************************
# Name:     push
# Function: Implements push functionality to the stack
# Notes:     Elements pushed to the stack are added as
#                 strings
#****************************************************************

#*********************************
# Variables
#*********************************

StringSessionVariable('session.stack');
StringSessionVariable('session.stack_prefix');
NumericSessionVariable('session.stack_pointer');
NumericSessionVariable('session.stack_sanity');

#*********************************
# Body
#*********************************

# initalize the stack if the user forgets to run this first
if (DimensionExists(session.stack) = 0);
        ExecuteProcess('stack_init');
endif;

# increment the stack pointer
session.stack_pointer = session.stack_pointer + 1;

# create name using defined prefix
sPrefix = NumberToString(session.stack_pointer) | session.stack_prefix | ' ';
sName = sPrefix | psStr;

# add the element to the stack
DimensionElementInsert(session.stack, '', sName, 'S');

# update sanity check
nDimSiz = DIMSIZ(session.stack);
session.stack_sanity = nDimSiz - session.stack_pointer;
573,3

#****Begin: Generated Statements***
#****End: Generated Statements****
574,3

#****Begin: Generated Statements***
#****End: Generated Statements****
575,3

#****Begin: Generated Statements***
#****End: Generated Statements****
576,CubeAction=1511DataAction=1503CubeLogChanges=0
930,0
638,1
804,0
1217,0
900,
901,
902,
938,0
937,
936,
935,
934,
932,0
933,0
903,
906,
929,
907,
908,
904,0
905,0
909,0
911,
912,
913,
914,
915,
916,
917,0
918,1
919,0
920,50000
921,""
922,""
923,0
924,""
925,""
926,""
927,""

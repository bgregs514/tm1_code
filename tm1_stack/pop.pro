601,100
602,"pop"
562,"NULL"
586,
585,
564,
565,"m][sAvRYD><2UaV21c7]QG_4_r3IU7N\x6]\c\ZJGc6gDFRY?JQIP>;9UOFHr5H[huk0dTBmLtj^eH=2f6I1=nO?k^x=qv6rcQUCU7m<]>l:Vg;mxbgnPWdvuOLf6rn2laevepKnlob?mRAM[zzhZr]r6^vT]w5jr:Uf>qhKIlN_xOHnRFlG`0BZzPYY4?zNFj:h?bU["
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
pnType
561,1
1
590,1
pnType,0
637,1
pnType,"0 = LIFO, 1 = FIFO"
577,0
578,0
579,0
580,0
581,0
582,0
603,0
572,49

#****Begin: Generated Statements***
#****End: Generated Statements****

#****************************************************************
# Name:     pop
# Function: Implements pop functionality to the stack
# Notes:     Elements pushed to the stack are added as
#                 strings
#****************************************************************

#*********************************
# Variables
#*********************************

StringSessionVariable('session.stack');
StringSessionVariable('session.stack_prefix');
StringSessionVariable('session.stack_return');
NumericSessionVariable('session.stack_pointer');
NumericSessionVariable('session.stack_sanity');

# default to LIFO; FIFO support coming in the future...maybe?
nIndex = session.stack_pointer;
if (pnType = 1);
        nIndex = 1;
endif;

#*********************************
# Body
#*********************************

# break if the stack doesn't exist or if the stack is empty
if (DimensionExists(session.stack) = 0 % session.stack_pointer = 0);
        ProcessError;
endif;

# pop element from the stack
sName = DIMNM(session.stack, nIndex);
nPrefixPos = SCAN(session.stack_prefix, sName);
sRetName = SUBST(sName, nPrefixPos + 2, LONG(sName));
session.stack_return = sRetName;
DimensionElementDelete(session.stack, sName);

# decrement the stack pointer
session.stack_pointer = session.stack_pointer - 1;

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

601,100
602,"stack_init"
562,"NULL"
586,
585,
564,
565,"j`c`WRjJs7afg<gKbUuI8Kz3D_]T4q`jf?0QMg]ViuIGMEltr?I9ptII3;z[m4BdG7fz]lk^61\]MvQt:C9MB0zsgjA9>vXrK\c@a^2IeXp^1jbZhgaLqv3gg0El?p@^:cnDe<YbGd8ouNTyv2ZovnTHzkU5\TpZ43S5Exe>NEfTjSlT`tb`ZUH:b8an<QRkKm6=Bl<r"
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
560,0
561,0
590,0
637,0
577,0
578,0
579,0
580,0
581,0
582,0
603,0
572,35

#****Begin: Generated Statements***
#****End: Generated Statements****

#****************************************************************
# Name: stack_init
# Function: Initialize the stack
# Notes:
#****************************************************************

#*********************************
# Variables
#*********************************

sStack = 'session.stack';
StringSessionVariable('session.stack');
session.stack = sStack;

# error if already initialized
if (DimensionExists(session.stack) = 1);
        ProcessError;
endif;

# create the stack
DimensionCreate(session.stack);

# define global hooks
StringSessionVariable('session.stack_prefix');
session.stack_prefix = ':';
StringSessionVariable('session.stack_return');
session.stack_return = '';
NumericSessionVariable('session.stack_pointer');
session.stack_pointer = 0;
NumericSessionVariable('session.stack_sanity');
session.stack_sanity = 0;
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

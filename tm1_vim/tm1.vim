" Vim syntax file
" Language: TM1
" Maintainer: Ben Gregory
" Current Version: .01

""""""""""""""""""""""""" VARIABLE/SETTING DEFINITIONS """""""""""""""""""""""""

" Check if language file is already loaded for *.pro (later *.rux files will
" be added as well
if exists ("b:current_syntax")
    finish
endif

" Ignore case - camelCase, linux_kernel_standard, etc.
syntax case ignore

" Fold up those nasty, TM1 generated blocks; Nobody needs to see that mess
setlocal foldmethod=syntax

""""""""""""""""""""""""" KEYWORD DEFINITIONS """""""""""""""""""""""""

" ASCIIOutputs and text file manipulation functions
syn keyword text_func asciidelete asciioutput setinputcharacterset setoutputcharacterset setoutputescapedoublequote textoutput

" Attribute functions
syn keyword attr_func  attrn attrnl attrs attrsl attrdelete attrinsert attrputn attrputs choreattrdelete choreattrinsert
syn keyword attr_func  choreattrn choreattrnl choreattrputn choreattrputs choreattrs choreattrsl createhierarchybyattribute
syn keyword attr_func  cubeattrdelete cubeattrinsert cubeattrputn cubeattrputs cubeattrn cubeattrnl cubeattrs cubeattrsl
syn keyword attr_func  dimensionattrdelete dimensionattrinsert dimensionattrputn dimensionattrputs dimensionattrn
syn keyword attr_func  dimensionattrnl dimensionattrs dimensionattrsl elementattrnl elementattrsl elementattrputn
syn keyword attr_func  elementattrputs elementattrinsert elementattrdelete hierarchyattrputn hierarchyattrputs hierarchyattrn
syn keyword attr_func  hierarchyattrs hierarchyattrnl hierarchyattrsl hierarchysubsetattrs hierarchysubsetattrn
syn keyword attr_func  hierarchysubsetattrsl hierarchysubsetattrnl hierarchysubsetattrputs hierarchysubsetattrputn
syn keyword attr_func  hierarchysubsetattrinsert hierarchysubsetattrdelete processattrdelete processattrinsert processattrn
syn keyword attr_func  processattrnl processattrputn processattrputs processattrs processattrsl subsetattrs subsetattrn
syn keyword attr_func  subsetattrsl subsetattrnl subsetattrputs subsetattrputn subsetattrinsert subsetattrdelete viewattrdelete
syn keyword attr_func  viewattrinsert viewattrn viewattrnl viewattrputn viewattrputs viewattrs viewattrsl

" Chore management functions
syn keyword chor_func  choreerror chorequit chorerollback setchoreverbosemessages

" Cube manipulation functions
syn keyword cube_func  addcubedependency cellgetn cellgets cellincrementn cellisupdateable cellputn cellputproportionalspread
syn keyword cube_func  cellputs cubecleardata cubecreate cubedestroy cubedimensioncountget cubeexists cubegetlogchanges
syn keyword cube_func  cubesavedata cubesetconnparams cubesetlogchanges cubetimelastupdated cubeunload

" Data reservation functions
syn keyword dres_func  cubedatareservationacquire cubedatareservationrelease cubedatareservationreleaseall
syn keyword dres_func  cubedatareservationget cubedatareservationgetconflicts cubedracquire cubedrrelease cubedrreleaseall
syn keyword dres_func  cubedrget cubedrgetconflicts

" Date and time functions
syn keyword dttm_func  formatdate newdateformatter parsedate timst

" Dimension manipulaton functions
syn keyword dimn_func  dimensioncreate dimensiondeleteallelements dimensiondeleteelements dimensiondestroy
syn keyword dimn_func  dimensionelementcomponentadd dimensionelementcomponentadddirect dimensionelementcomponentdelete
syn keyword dimn_func  dimensionelementcomponentdeletedirect dimensionelementdelete dimensionelementdeletedirect
syn keyword dimn_func  dimensionelementinsert dimensionelementinsertdirect dimensionelementprincipalname dimensionexists
syn keyword dimn_func  dimensionsortorder dimensiontimelastupdated dimensiontopelementinsert dimensiontopelementinsertdirect
syn keyword dimn_func  dimensionupdatedirect

" Hierarchy manipulation functions
syn keyword hier_func  hierarchycontainsallleaves hierarchycreate hierarchydeleteallelements hierarchydeleteelements
syn keyword hier_func  hierarchydestroy hierarchyelementcomponentadd hierarchyelementcomponentadddirect
syn keyword hier_func  hierarchyelementcomponentdelete hierarchyelementcomponentdeletedirect hierarchyelementdelete
syn keyword hier_func  hierarchyelementdeletedirect hierarchyelementinsert hierarchyelementinsertdirect hierarchyelementprincipalname
syn keyword hier_func  hierarchyexists hierarchyhasorphanedleaves hierarchysortorder hierarchytimelastupdated hierarchytopelementinsert
syn keyword hier_func  hierarchytopelementinsertdirect hierarchyupdatedirect

" ODBC functions
syn keyword odbc_func  odbcclose odbcopen odbcopenex odbcoutput setodbcunicodeinterface

" Process control functions
syn keyword proc_func  executecommand executeprocess getprocesserrorfiledirectory getprocesserrorfilename getprocessname
syn keyword proc_func  itemreject itemskip processbreak processerror processexists processquit processrollback synchronized

" Rule management functions
syn keyword rule_func  cubeprocessfeeders cuberuleappend cuberuledestroy deleteallpersistentfeeders forceskipcheck ruleloadfromfile

" Sandbox functions
syn keyword sbox_func  getuseactivesandboxproperty serversandboxesdelete serveractivesandboxget serveractivesandboxset
syn keyword sbox_func  setuseactivesandboxproperty serversandboxexists serversandboxget serversandboxlistcountget

" Security functions
syn keyword secr_func  addclient addgroup assignclienttogroup assignclientpassword associatecamidtogroup cellsecuritycubecreate
syn keyword secr_func  cellsecuritycubedestroy deleteclient deletegroup elementsecurityget elementsecurityput
syn keyword secr_func  hierarchyelementsecurityget hierarchyelementsecurityput removecamidassociation removecamidassociationfromgroup
syn keyword secr_func  removeclientfromgroup sethierarchygroupssecurity sethierarchyelementgroupssecurity setdimensiongroupssecurity
syn keyword secr_func  setelementgroupssecurity securityoverlaygloballockcell securityoverlaycreateglobaldefault
syn keyword secr_func  securityoverlaydestroyglobaldefault securityoverlaygloballocknode securityrefresh

" Server manipulation functions
syn keyword srvr_func  batchupdatefinish batchupdatefinishwait batchupdatestart disablebulkloadmode enablebulkloadmode savedataall
syn keyword srvr_func  servershutdown

" Subset manipulation functions
syn keyword subs_func  hierarchysubsetaliasset hierarchysubsetcreate hierarchysubsetdeleteallelements hierarchysubsetdestroy
syn keyword subs_func  hierarchysubsetelementexists hierarchysubsetelementdelete hierarchysubsetelementgetindex
syn keyword subs_func  hierarchysubsetelementinsert hierarchysubsetexists hierarchysubsetgetsize hierarchysubsetgetelementname
syn keyword subs_func  hierarchysubsetisallset hierarchysubsetmdxget hierarchysubsetmdxset subsetaliasset subsetcreate subsetcreatebymdx
syn keyword subs_func  subsetdeleteallelements subsetdestroy subsetelementdelete subsetelementexists subsetelementgetindex
syn keyword subs_func  subsetelementinsert subsetexists subsetexpandaboveset subsetformatstyleset subsetgetelementname subsetgetsize
syn keyword subs_func  subsetisallset subsetmdxget subsetmdxset

" View manipulation functions
syn keyword view_func  publishview viewcolumndimensionset viewcolumnsuppresszeroesset viewconstruct viewcreate viewcreatebymdx
syn keyword view_func  viewdestroy viewexists viewextractskipcalcsset viewextractskipconsolidatedstringsset viewextractskiprulevaluesset
syn keyword view_func  viewextractskipzeroesset viewmdxset viewmdxget viewrowdimensionset viewrowsuppresszeroesset viewsubsetassign
syn keyword view_func  viewsuppresszeroesset viewtitledimensionset viewtitleelementset viewzeroout

" Miscellaneous functions
syn keyword misc_func  addinfocuberestriction datasourcesapusingroleauths datasourcesapusingtexts executejavan executejavas expand
syn keyword misc_func  fileexists logoutput numbertostring numbertostringex refreshmdxhierarchy stringtonumber stringtonumberex
syn keyword misc_func  tm1processerror.logfile tm1user wildcardfilesearch

" Conditional statements
syn keyword cond_stmt  if else elseif endif

" Repeat statements
syn keyword rept_stmt  while end

" Utility statements
syn keyword util_stmt  trim long subst int rand now

""""""""""""""""""""""""" MATCH GROUPS """""""""""""""""""""""""

" Last line of file - add 1 since "region end" is zero based
let s:last_line_num = line("$") + 1

" Beginning TI junk
function! s:GetBeginning()
    let l:line_num = 0
    while l:line_num < line("$")
        let l:line_num += 1
        let l:line = getline(l:line_num)
        if (l:line =~ "#")
            break
        endif
    endwhile
    " Add 2 to the line number to ensure the End: Generated Statement
    " junk is removed and because "region end" keyword is zero based
    return l:line_num + 2
endfunction
let s:gen_first_line_num =  s:GetBeginning()

execute "syn region begin start = '\\%1l' end = '\\%" . s:gen_first_line_num . "l' transparent fold"

" Ending TI junk
function! s:GetEnding()
    let l:line_num = line("$")
    while l:line_num > line("%")
        let l:line = getline(l:line_num)
        if (l:line =~ "#")
            break
        endif
        let l:line_num -= 1
    endwhile
    " Add 1 to the line number to stop before "End Epilog"
    return l:line_num + 1
endfunction
let s:gen_last_line_num = s:GetEnding()

execute "syn region end start = '\\%" . s:gen_last_line_num . "l' end = '\\%" . s:last_line_num . "l' transparent fold"

" Comments
syn match comment ".*#.*"

" Strings
syn region string start = '\'' end = '\''

" Operands
syn match operand "[-/+=&@%|<>*\\]"

" Separators
syn match separator "[;,()]"

""""""""""""""""""""""""" HIGHLIGHTS """""""""""""""""""""""""

" Custom highlight groups, because why the hell not?
hi Comment ctermfg=Green ctermbg=NONE guifg=Green guibg=NONE
hi String ctermfg=LightBlue ctermbg=NONE guifg=LightBlue guibg=NONE
hi Operand ctermfg=Brown ctermbg=NONE guifg=LightMagenta guibg=NONE
hi Separator ctermfg=Black ctermbg=NONE guifg=Black guibg=NONE

" Function highlighting
hi def link text_func Function
hi def link attr_func Function
hi def link chor_func Function
hi def link cube_func Function
hi def link dres_func Function
hi def link dttm_func Function
hi def link dimn_func Function
hi def link hier_func Function
hi def link odbc_func Function
hi def link proc_func Function
hi def link rule_func Function
hi def link sbox_func Function
hi def link secr_func Function
hi def link srvr_func Function
hi def link subs_func Function
hi def link view_func Function
hi def link misc_func Function

" Conditional statement highlighting
hi def link cond_stmt Conditional

" Repeat statement highlighting
hi def link rept_stmt Repeat

" Utility statement highlighting
hi def link util_stmt Conditional

" NOT WORKING: TM1 generated blocks
hi def link begin Debug
hi def link end Debug

" Comment highlighting
hi def link comment Debug

" String highlighting
hi def link string String

" Operand highlighting
hi def link operand Operand

" Separator highlighting
hi def link separator Separator

let b:current_syntax="simple"

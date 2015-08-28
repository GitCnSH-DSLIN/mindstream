// CommonLang.ms.tpl
// ������� ��������� ��� "������������ ������"

USES
 Documentation.ms.dict
 params.ms.dict
 NoStrangeSymbols.ms.dict
 arrays.ms.dict
 macro.ms.dict
 ElementsRTTI.ms.dict
 Generation.ms.dict
 string.ms.dict
 InheritsAndImplementsNew.ms.dict
;

STRING FUNCTION CatSepIndent>
 ARRAY right aValues
 CatSep> cIndentChar aValues =: Result
; // CatSepIndent>

MACRO call.inherited
 // - �������, ��� ��� ���� ������ ����� ������� ���������� ������ �� Inherited
 [ 
   '@SELF .Inherited ==> ( Self SWAP DO )'
 ] Ctx:Parser:PushArray
; // call.inherited

elem_generator DumpAsIs
 %SUMMARY '��������� ���������� ���������� �������� ������. ����������.' ;

  CatSepIndent> ( Self .Stereotypes .reverted> .join> [ Self ] .map> .Name ) ?OutToFile

 '�������� ' (+)? 
  CatSepIndent> ( Self .Parents .reverted> .map> .Name ) ?OutToFile

 '����������� ' (+)? 
  CatSepIndent> ( Self .Inherited .map> .Name ) ?OutToFile

 '����������� ' (+)? 
  CatSepIndent> ( Self .Implements .map> .Name ) ?OutToFile

  Self .generate.children
  %REMARK '������� ����� ��������, ��� �� ����� �����������'
  [ '; // ' Self .Name ] OutToFile
  %REMARK '������� ����������� ������ ��������'
; // DumpAsIs

elem_generator dump
 %SUMMARY '��������� ��������� ���� �������� ������.' ;
 %GEN_PROPERTY Name 'dump'
 %REMARK '��� ���������� � ���������� ����� �������� �����. ����� �� ������� ���, ����� ��� ����� �� ���������'
 Inherits .DumpAsIs

 call.inherited
; // dump

elem_generator pas
 %SUMMARY '��������� ��������� �������� ������ � �������.' ;
 %GEN_PROPERTY Name 'pas'
 %REMARK '��� ���������� � ���������� ����� �������� �����. ����� �� ������� ���, ����� ��� ����� �� ���������'
 Inherits .DumpAsIs

 '// �� ����� ���� ��� Delphi' OutToFile
 '' OutToFile
 call.inherited
; // pas

elem_generator script
 %SUMMARY '��������� ��������� �������� ������ � ms.script.' ;
 %GEN_PROPERTY Name 'ms.script'
 %REMARK '��� ���������� � ���������� ����� �������� �����. ����� �� ������� ���, ����� ��� ����� �� ���������'
 Inherits .DumpAsIs

 call.inherited
; // script

elem_generator c++
 %SUMMARY '
 ��������� ��������� �������� ������ � c++. 
 ��� ����� *.h �� ����� ��������� ��������.
 ' ;
 %GEN_PROPERTY Name 'cpp'
 %REMARK '��� ���������� � ���������� ����� �������� �����. ����� �� ������� ���, ����� ��� ����� �� ���������'
 Inherits .DumpAsIs

 call.inherited
; // c++

elem_generator h
 %SUMMARY '
 ��������� ��������� �������� ������ � *.h. 
 ��� ����� *.h �� ����� ��������� ��������.
 ' ;
 %GEN_PROPERTY Name 'h'
 %REMARK '��� ���������� � ���������� ����� �������� �����. ����� �� ������� ���, ����� ��� ����� �� ���������'
 Inherits .DumpAsIs

 call.inherited
; // h

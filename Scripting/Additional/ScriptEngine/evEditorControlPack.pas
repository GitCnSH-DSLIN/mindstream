unit evEditorControlPack;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/evEditorControlPack.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> Shared Delphi Scripting::ScriptEngine::EditorFromStackKeyWords::evEditorControlPack
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwClassRef,
  evEditor,
  evMemo,
  evEdit,
  evCustomEditorWindow,
  evTunedEditor
  ;

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
//#UC START# *53B640630213*
 TtfwClassRef.Register(TevEditor);
 TtfwClassRef.Register(TevTunedEditor);
 TtfwClassRef.Register(TevMemo);
 TtfwClassRef.Register(TevEdit);
 TtfwClassRef.Register(TevCustomEditorWindow);
//#UC END# *53B640630213*
{$IfEnd} //not NoScripts

end.
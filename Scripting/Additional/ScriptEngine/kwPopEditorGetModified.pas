unit kwPopEditorGetModified;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopEditorGetModified.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::EditorFromStackKeyWords::pop_editor_GetModified
//
// *������:* anEditorControl pop:editor:GetModified
// *��������:* �������� � ���� ���� ������������ ���������.
// *������:*
// {code}
// focused:control:push editor:GetModified
// {code}
// � ����� ����� �������� ���������� ����. ���� �������� �������, �� ����� true, ���� ��� - false.
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  evCustomEditorWindow,
  tfwScriptingInterfaces,
  Controls,
  Classes,
  tfwRegisterableWord
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\kwEditorFromStackWord.imp.pas}
 TkwPopEditorGetModified = {final} class(_kwEditorFromStackWord_)
  {* *������:* anEditorControl pop:editor:GetModified
*��������:* �������� � ���� ���� ������������ ���������.
*������:*
[code] 
focused:control:push editor:GetModified
[code] 
� ����� ����� �������� ���������� ����. ���� �������� �������, �� ����� true, ���� ��� - false. }
 protected
 // realized methods
   procedure DoWithEditor(const aCtx: TtfwContext;
     anEditor: TevCustomEditorWindow); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopEditorGetModified
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine,
  Windows,
  afwFacade,
  Forms
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwPopEditorGetModified;

{$Include ..\ScriptEngine\kwEditorFromStackWord.imp.pas}

// start class TkwPopEditorGetModified

procedure TkwPopEditorGetModified.DoWithEditor(const aCtx: TtfwContext;
  anEditor: TevCustomEditorWindow);
//#UC START# *4F4CB81200CA_5334248B012E_var*
//#UC END# *4F4CB81200CA_5334248B012E_var*
begin
//#UC START# *4F4CB81200CA_5334248B012E_impl*
 aCtx.rEngine.PushBool(anEditor.Modified);
//#UC END# *4F4CB81200CA_5334248B012E_impl*
end;//TkwPopEditorGetModified.DoWithEditor

class function TkwPopEditorGetModified.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:editor:GetModified';
end;//TkwPopEditorGetModified.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwEditorFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

end.
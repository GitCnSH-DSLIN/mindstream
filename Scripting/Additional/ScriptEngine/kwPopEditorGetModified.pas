unit kwPopEditorGetModified;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine$Everest"
// ������: "kwPopEditorGetModified.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: ScriptKeyword::Class Shared Delphi::ScriptEngine$Everest::EditorFromStackKeyWords::pop_editor_GetModified
//
// *������:* anEditorControl pop:editor:GetModified
// *��������:* �������� � ���� ���� ������������ ���������.
// *������:*
// {code}
// focused:control:push editor:GetModified
// {code}
// � ����� ����� �������� ���������� ����. ���� �������� �������, �� ����� true, ���� ��� - false.
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  kwEditorFromStackWord,
  evCustomEditorWindow,
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwPopEditorGetModified = {final scriptword} class(TkwEditorFromStackWord)
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
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopEditorGetModified
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}

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
// ����������� pop_editor_GetModified
 TkwPopEditorGetModified.RegisterInEngine;
{$IfEnd} //not NoScripts

end.
unit kwPopEditorSetShowDocumentParts;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine$Everest"
// ������: "kwPopEditorSetShowDocumentParts.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: ScriptKeyword::Class Shared Delphi::ScriptEngine$Everest::EditorFromStackKeyWords::pop_editor_SetShowDocumentParts
//
// *������:* aValue anEditorControl pop:editor:SetShowDocumentParts
// *��������:* ������������� �������� ShowDocumentParts (���������� ��������� ���������). ��������
// aValue ���������� ����.
// *������:*
// {code}
// true focused:control:push pop:editor:SetShowDocumentParts
// {code}
// *���������:* � ��������� ����� ������������ ��������� ���������.
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
 TkwPopEditorSetShowDocumentParts = {final scriptword} class(TkwEditorFromStackWord)
  {* *������:* aValue anEditorControl pop:editor:SetShowDocumentParts
*��������:* ������������� �������� ShowDocumentParts (���������� ��������� ���������). �������� aValue ���������� ����.
*������:*
[code] 
true focused:control:push pop:editor:SetShowDocumentParts
[code] 
*���������:* � ��������� ����� ������������ ��������� ���������. }
 protected
 // realized methods
   procedure DoWithEditor(const aCtx: TtfwContext;
     anEditor: TevCustomEditorWindow); override;
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopEditorSetShowDocumentParts
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}

// start class TkwPopEditorSetShowDocumentParts

procedure TkwPopEditorSetShowDocumentParts.DoWithEditor(const aCtx: TtfwContext;
  anEditor: TevCustomEditorWindow);
//#UC START# *4F4CB81200CA_4F4CB59F0116_var*
//#UC END# *4F4CB81200CA_4F4CB59F0116_var*
begin
//#UC START# *4F4CB81200CA_4F4CB59F0116_impl*
 if aCtx.rEngine.IsTopBool then
  anEditor.ShowDocumentParts := aCtx.rEngine.PopBool
 else
  Assert(False, '�� ������ �������� ��� anEditor.ShowDocumentParts');
//#UC END# *4F4CB81200CA_4F4CB59F0116_impl*
end;//TkwPopEditorSetShowDocumentParts.DoWithEditor

class function TkwPopEditorSetShowDocumentParts.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:editor:SetShowDocumentParts';
end;//TkwPopEditorSetShowDocumentParts.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
// ����������� pop_editor_SetShowDocumentParts
 TkwPopEditorSetShowDocumentParts.RegisterInEngine;
{$IfEnd} //not NoScripts

end.
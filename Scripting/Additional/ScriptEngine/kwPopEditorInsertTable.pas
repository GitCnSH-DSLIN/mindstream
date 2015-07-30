unit kwPopEditorInsertTable;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine$Everest"
// ������: "kwPopEditorInsertTable.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: ScriptKeyword::Class Shared Delphi::ScriptEngine$Everest::EditorFromStackKeyWords::pop_editor_InsertTable
//
// aCol aRow  editor:InsertTable
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  kwEditorWithToolsFromStackWord,
  evCustomEditor,
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwPopEditorInsertTable = {scriptword} class(TkwEditorWithToolsFromStackWord)
  {* aCol aRow  editor:InsertTable }
 protected
 // realized methods
   procedure DoEditorWithTools(const aCtx: TtfwContext;
     anEditor: TevCustomEditor); override;
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopEditorInsertTable
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}

// start class TkwPopEditorInsertTable

procedure TkwPopEditorInsertTable.DoEditorWithTools(const aCtx: TtfwContext;
  anEditor: TevCustomEditor);
//#UC START# *4F4DD89102E4_4E928C3A0082_var*
var
 l_Row: Integer;
 l_Col: Integer;
//#UC END# *4F4DD89102E4_4E928C3A0082_var*
begin
//#UC START# *4F4DD89102E4_4E928C3A0082_impl*
 l_Row := 0;
 l_Col := 0;
 if aCtx.rEngine.IsTopInt then
  l_Row := aCtx.rEngine.PopInt
 else
  RunnerError('�� ������ ����� �����!', aCtx);
 if aCtx.rEngine.IsTopInt then
  l_Col := aCtx.rEngine.PopInt
 else
  RunnerError('�� ������ ����� �����!', aCtx);
 anEditor.InsertTable(l_Col, l_Row);
//#UC END# *4F4DD89102E4_4E928C3A0082_impl*
end;//TkwPopEditorInsertTable.DoEditorWithTools

class function TkwPopEditorInsertTable.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:editor:InsertTable';
end;//TkwPopEditorInsertTable.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
// ����������� pop_editor_InsertTable
 TkwPopEditorInsertTable.RegisterInEngine;
{$IfEnd} //not NoScripts

end.
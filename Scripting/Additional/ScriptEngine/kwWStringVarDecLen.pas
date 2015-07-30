unit kwWStringVarDecLen;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "kwWStringVarDecLen.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: ScriptKeyword::Class Shared Delphi Low Level::ScriptEngine::StringProcessing::WStringVar_DecLen
//
// ��������� ����� ������ �� ���� ������
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  tfwVarWorker,
  kwCompiledVarWorker
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwWStringVarDecLen = {final scriptword} class(TtfwVarWorker)
  {* ��������� ����� ������ �� ���� ������ }
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
   function CompiledVarWorkerClass: RkwCompiledVarWorker; override;
 end;//TkwWStringVarDecLen
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledWStringVarDecLen
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

// start class TkwWStringVarDecLen

class function TkwWStringVarDecLen.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'WString:--Len!';
end;//TkwWStringVarDecLen.GetWordNameForRegister

function TkwWStringVarDecLen.CompiledVarWorkerClass: RkwCompiledVarWorker;
//#UC START# *4DCC193801F1_4F55E9E40211_var*
//#UC END# *4DCC193801F1_4F55E9E40211_var*
begin
//#UC START# *4DCC193801F1_4F55E9E40211_impl*
 Result := TkwCompiledWStringVarDecLen;
//#UC END# *4DCC193801F1_4F55E9E40211_impl*
end;//TkwWStringVarDecLen.CompiledVarWorkerClass

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
// ����������� WStringVar_DecLen
 TkwWStringVarDecLen.RegisterInEngine;
{$IfEnd} //not NoScripts

end.
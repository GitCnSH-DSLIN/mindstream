unit kwCompiledImmediateCallerWorkerWord;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "kwCompiledImmediateCallerWorkerWord.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: SimpleClass::Class Shared Delphi Low Level::ScriptEngine::Scripting Axiomatics::TkwCompiledImmediateCallerWorkerWord
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  kwCompiledCallerWorkerWord,
  tfwScriptingInterfaces,
  kwCompiledWordWorkerWordRunner
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwCompiledImmediateCallerWorkerWord = class(TkwCompiledCallerWorkerWord)
 protected
 // overridden protected methods
   function RunnerClass(const aCtx: TtfwContext): RkwCompiledWordWorkerWordRunner; override;
 end;//TkwCompiledImmediateCallerWorkerWord
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledImmediateCallerWordRunner
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

// start class TkwCompiledImmediateCallerWorkerWord

function TkwCompiledImmediateCallerWorkerWord.RunnerClass(const aCtx: TtfwContext): RkwCompiledWordWorkerWordRunner;
//#UC START# *4F3FAC0C0170_4F4200A703AA_var*
//#UC END# *4F3FAC0C0170_4F4200A703AA_var*
begin
//#UC START# *4F3FAC0C0170_4F4200A703AA_impl*
 Result := TkwCompiledImmediateCallerWordRunner;
//#UC END# *4F3FAC0C0170_4F4200A703AA_impl*
end;//TkwCompiledImmediateCallerWorkerWord.RunnerClass

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
// ����������� TkwCompiledImmediateCallerWorkerWord
 TkwCompiledImmediateCallerWorkerWord.RegisterInEngine;
{$IfEnd} //not NoScripts

end.
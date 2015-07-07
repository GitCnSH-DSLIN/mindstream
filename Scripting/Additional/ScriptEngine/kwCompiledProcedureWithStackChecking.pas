unit kwCompiledProcedureWithStackChecking;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwCompiledProcedureWithStackChecking.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting Axiomatics::TkwCompiledProcedureWithStackChecking
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
  kwCompiledProcedure,
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 _tfwStackChecking_Parent_ = TkwCompiledProcedure;
 {$Include ..\ScriptEngine\tfwStackChecking.imp.pas}
 TkwCompiledProcedureWithStackChecking = class(_tfwStackChecking_)
 end;//TkwCompiledProcedureWithStackChecking
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}

{$Include ..\ScriptEngine\tfwStackChecking.imp.pas}


{$IfEnd} //not NoScripts
end.
unit kwCompiledInitParam;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwCompiledInitParam.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting Axiomatics::TkwCompiledInitParam
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
  kwCompiledPopToVar
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwCompiledInitParam = class(TkwCompiledPopToVar)
 end;//TkwCompiledInitParam
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwClassRef
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}


{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
//#UC START# *53DB74790234*
 TkwCompiledInitParam.RegisterClass;
//#UC END# *53DB74790234*
{$IfEnd} //not NoScripts

end.
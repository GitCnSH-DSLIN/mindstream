unit kwCompiledInitableVar;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "kwCompiledInitableVar.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: SimpleClass::Class Shared Delphi Low Level::ScriptEngine::VarProducing::TkwCompiledInitableVar
//
// ����������� ��� ���������� ������������� ����������, ����� ����� ������������� �� ������, �� �
// �������� VOID �������� ��� �������� ������
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  kwRuntimeWordWithCode,
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 _kwCompiledVar_Parent_ = TkwRuntimeWordWithCode;
 {$Include ..\ScriptEngine\kwCompiledVar.imp.pas}
 TkwCompiledInitableVar = class(_kwCompiledVar_)
  {* ����������� ��� ���������� ������������� ����������, ����� ����� ������������� �� ������, �� � �������� VOID �������� ��� �������� ������ }
 end;//TkwCompiledInitableVar
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  l3Base,
  TypInfo
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

{$Include ..\ScriptEngine\kwCompiledVar.imp.pas}


{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
// ����������� TkwCompiledInitableVar
 TkwCompiledInitableVar.RegisterClass;
{$IfEnd} //not NoScripts

end.
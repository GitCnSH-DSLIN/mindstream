unit ObjectFromstackWords;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/ObjectFromstackWords.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeywordsPack::Class>> Shared Delphi Scripting::ScriptEngine::CommonObjectWords::ObjectFromstackWords
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
  kwPopObjectInherits,
  kwPopObjectIsNil,
  kwPopObjectClassName
  {$If not defined(NoScripts) AND not defined(NoVCM)}
  ,
  kwObjectCreate
  {$IfEnd} //not NoScripts AND not NoVCM
  ,
  kwPopClassInherits
  ;

{$IfEnd} //not NoScripts
end.
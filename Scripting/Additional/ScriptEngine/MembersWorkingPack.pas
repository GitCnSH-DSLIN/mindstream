unit MembersWorkingPack;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/MembersWorkingPack.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeywordsPack::Class>> Shared Delphi Scripting::ScriptEngine::MembersWorking::MembersWorkingPack
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
  tfwScriptingInterfaces,
  kwCheckVar,
  kwFindMember,
  kwGetMember,
  kwMembersIterator,
  kwCodeIterator
  ;

{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledCheckVar,
  kwCompiledCheckVarByRef,
  kwTemporaryCompiledCode,
  l3Parser,
  kwCompiledWord,
  kwInteger,
  kwString,
  SysUtils,
  TypInfo,
  l3Base,
  l3ParserInterfaces,
  kwIntegerFactory,
  kwStringFactory,
  l3String,
  l3Chars,
  StrUtils,
  tfwAutoregisteredDiction,
  tfwScriptEngine,
  kwCompiledFindMember,
  kwCompiledMembersPath,
  tfwWordRefList,
  kwStandardProcedureCloseBracket,
  tfwMembersIterator,
  kwForwardDeclarationHolder,
  tfwCodeIterator,
  kwCompiledWordPrim,
  kwCompiledWordContainer,
  kwDualCompiledWordContainer,
  kwRuntimeWordWithCode,
  kwCompiledWordWorkerWord,
  kwCompiledWordWorkerWordRunner,
  kwCompiledWordWorker,
  kwCompiledIfElse,
  kwCheckVarByRef
  ;

{$IfEnd} //not NoScripts
end.
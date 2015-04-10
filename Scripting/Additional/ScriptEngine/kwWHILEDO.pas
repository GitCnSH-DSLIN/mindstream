unit kwWHILEDO;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwWHILEDO.pas"
// �����: 12.05.2011 17:33
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::Scripting Axiomatics::WHILEDO
//
// ���� While. ����������� ���� ����������� ��������� �������.
// ������:
// {code} 10 @ ( ?DUP !=0 ) WHILEDO ( DUP . -- ) {code}
// �� ����� ������������ ��������������� ������������ - WHILE
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
  kwCompiledWordWorker,
  kwCompiledWordPrim,
  l3Interfaces,
  l3ParserInterfaces,
  tfwRegisterableWord
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\tfwWordWorker.imp.pas}
 TkwWHILEDO = class(_tfwWordWorker_)
  {* ���� While. ����������� ���� ����������� ��������� �������.
������:
[code] 10 @ ( ?DUP !=0 ) WHILEDO ( DUP . -- ) [code]
�� ����� ������������ ��������������� ������������ - WHILE }
 protected
 // realized methods
   function CompiledWorkerClass: RkwCompiledWordWorker; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwWHILEDO
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledWhile,
  kwTemporaryCompiledCode,
  l3Parser,
  kwCompiledWord,
  kwInteger,
  kwString,
  SysUtils,
  TypInfo,
  l3Base,
  kwIntegerFactory,
  kwStringFactory,
  l3String,
  l3Chars,
  StrUtils,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwWHILEDO;

{$Include ..\ScriptEngine\tfwWordWorker.imp.pas}

// start class TkwWHILEDO

function TkwWHILEDO.CompiledWorkerClass: RkwCompiledWordWorker;
//#UC START# *4DCBD67C0362_4DCBE1A5019B_var*
//#UC END# *4DCBD67C0362_4DCBE1A5019B_var*
begin
//#UC START# *4DCBD67C0362_4DCBE1A5019B_impl*
 Result := TkwCompiledWhile;
//#UC END# *4DCBD67C0362_4DCBE1A5019B_impl*
end;//TkwWHILEDO.CompiledWorkerClass

class function TkwWHILEDO.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'WHILEDO';
end;//TkwWHILEDO.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwWordWorker.imp.pas}
{$IfEnd} //not NoScripts

end.
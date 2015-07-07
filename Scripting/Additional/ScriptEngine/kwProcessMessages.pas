unit kwProcessMessages;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwProcessMessages.pas"
// �����: 25.04.2011 18:11
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::Scripting Axiomatics::ProcessMessages
//
// ����� Application.ProcessMessages ��� ��������� ����������� �� Windows ���������.
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
  tfwRegisterableWord,
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
 TkwProcessMessages = class(_tfwAutoregisteringWord_)
  {* ����� Application.ProcessMessages ��� ��������� ����������� �� Windows ���������. }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwProcessMessages
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  afwFacade,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwProcessMessages;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwProcessMessages

procedure TkwProcessMessages.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4DB581050312_var*
//#UC END# *4DAEEDE10285_4DB581050312_var*
begin
//#UC START# *4DAEEDE10285_4DB581050312_impl*
 afw.ProcessMessages;
//#UC END# *4DAEEDE10285_4DB581050312_impl*
end;//TkwProcessMessages.DoDoIt

class function TkwProcessMessages.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'ProcessMessages';
end;//TkwProcessMessages.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.
unit kwWaitNo;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "kwWaitNo.pas"
// �����: 28.04.2011 15:10
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: ScriptKeyword::Class Shared Delphi Low Level::ScriptEngine::ModalDialogs::wait_No
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

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
 _afwImpurity_Parent_ = TtfwRegisterableWord;
 {$Include ..\ScriptEngine\afwImpurity.imp.pas}
 TkwWaitNo = {scriptword} class(_afwImpurity_)
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwWaitNo
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  Classes
  {$If defined(nsTest)}
  ,
  afwAnswer
  {$IfEnd} //nsTest
  ,
  Controls
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

{$Include ..\ScriptEngine\afwImpurity.imp.pas}

// start class TkwWaitNo

procedure TkwWaitNo.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4DB94AE60059_var*
//#UC END# *4DAEEDE10285_4DB94AE60059_var*
begin
//#UC START# *4DAEEDE10285_4DB94AE60059_impl*
 {$If NOT defined(nsTest)}
 RunnerError('', aCtx);
 {$Else}
 afwSetAnswer(mrNo);
 {$IfEnd}
//#UC END# *4DAEEDE10285_4DB94AE60059_impl*
end;//TkwWaitNo.DoDoIt

class function TkwWaitNo.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'wait:No';
end;//TkwWaitNo.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
// ����������� wait_No
 TkwWaitNo.RegisterInEngine;
{$IfEnd} //not NoScripts

end.
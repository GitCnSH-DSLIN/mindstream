unit kwVcmHistoryDeleteForwardItem;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwVcmHistoryDeleteForwardItem.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::VCMWords::vcm_History_DeleteForwardItem
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts) AND not defined(NoVCM)}
uses
  tfwRegisterableWord,
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts AND not NoVCM

{$If not defined(NoScripts) AND not defined(NoVCM)}
type
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
 _VCMWord_Parent_ = _tfwAutoregisteringWord_;
 {$Include ..\ScriptEngine\VCMWord.imp.pas}
 TkwVcmHistoryDeleteForwardItem = {final} class(_VCMWord_)
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwVcmHistoryDeleteForwardItem
{$IfEnd} //not NoScripts AND not NoVCM

implementation

{$If not defined(NoScripts) AND not defined(NoVCM)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine,
  vcmForm,
  Controls,
  StdRes,
  vcmBase
  {$If defined(nsTest)}
  ,
  afwAnswer
  {$IfEnd} //nsTest
  
  ;
{$IfEnd} //not NoScripts AND not NoVCM

{$If not defined(NoScripts) AND not defined(NoVCM)}

type _Instance_R_ = TkwVcmHistoryDeleteForwardItem;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

{$Include ..\ScriptEngine\VCMWord.imp.pas}

// start class TkwVcmHistoryDeleteForwardItem

procedure TkwVcmHistoryDeleteForwardItem.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_53DA56FB028B_var*
//#UC END# *4DAEEDE10285_53DA56FB028B_var*
begin
//#UC START# *4DAEEDE10285_53DA56FB028B_impl*
 if (vcmDispatcher.History <> nil) then
  vcmDispatcher.History.DeleteForwardItem;
//#UC END# *4DAEEDE10285_53DA56FB028B_impl*
end;//TkwVcmHistoryDeleteForwardItem.DoDoIt

class function TkwVcmHistoryDeleteForwardItem.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'vcm:History:DeleteForwardItem';
end;//TkwVcmHistoryDeleteForwardItem.GetWordNameForRegister

{$IfEnd} //not NoScripts AND not NoVCM

initialization
{$If not defined(NoScripts) AND not defined(NoVCM)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts AND not NoVCM

end.
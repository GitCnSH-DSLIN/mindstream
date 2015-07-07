unit kwVcmOpCaption;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwVcmOpCaption.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::VCMWords::vcm_op_Caption
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
  vcmInterfaces,
  tfwScriptingInterfaces,
  tfwRegisterableWord
  ;
{$IfEnd} //not NoScripts AND not NoVCM

{$If not defined(NoScripts) AND not defined(NoVCM)}
type
 {$Include ..\ScriptEngine\OperationParamWordPrim.imp.pas}
 TkwVcmOpCaption = {final} class(_OperationParamWordPrim_)
 protected
 // realized methods
   procedure DoParams(const aParams: IvcmTestParams;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwVcmOpCaption
{$IfEnd} //not NoScripts AND not NoVCM

implementation

{$If not defined(NoScripts) AND not defined(NoVCM)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts AND not NoVCM

{$If not defined(NoScripts) AND not defined(NoVCM)}

type _Instance_R_ = TkwVcmOpCaption;

{$Include ..\ScriptEngine\OperationParamWordPrim.imp.pas}

// start class TkwVcmOpCaption

procedure TkwVcmOpCaption.DoParams(const aParams: IvcmTestParams;
  const aCtx: TtfwContext);
//#UC START# *5230185F0140_5230180F029A_var*
//#UC END# *5230185F0140_5230180F029A_var*
begin
//#UC START# *5230185F0140_5230180F029A_impl*
 aCtx.rEngine.PushString(aParams.Op.Caption);
//#UC END# *5230185F0140_5230180F029A_impl*
end;//TkwVcmOpCaption.DoParams

class function TkwVcmOpCaption.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'vcm:op:Caption';
end;//TkwVcmOpCaption.GetWordNameForRegister

{$IfEnd} //not NoScripts AND not NoVCM

initialization
{$If not defined(NoScripts) AND not defined(NoVCM)}
 {$Include ..\ScriptEngine\OperationParamWordPrim.imp.pas}
{$IfEnd} //not NoScripts AND not NoVCM

end.
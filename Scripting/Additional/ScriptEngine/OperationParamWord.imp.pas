{$IfNDef OperationParamWord_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/OperationParamWord.imp.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi Scripting::ScriptEngine::VCMWords::OperationParamWord
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define OperationParamWord_imp}
{$If not defined(NoScripts) AND not defined(NoVCM)}
 {$Include ..\ScriptEngine\OperationParamWordPrim.imp.pas}
 _OperationParamWord_ = {mixin} class(_OperationParamWordPrim_)
 protected
 // realized methods
   procedure DoParams(const aParams: IvcmTestParams;
     const aCtx: TtfwContext); override;
 protected
 // protected methods
   function Flag: TvcmOpFlag; virtual; abstract;
 end;//_OperationParamWord_
{$IfEnd} //not NoScripts AND not NoVCM

{$Else OperationParamWord_imp}

{$IfNDef OperationParamWord_imp_impl}
{$Define OperationParamWord_imp_impl}

{$If not defined(NoScripts) AND not defined(NoVCM)}


{$Include ..\ScriptEngine\OperationParamWordPrim.imp.pas}

// start class _OperationParamWord_

procedure _OperationParamWord_.DoParams(const aParams: IvcmTestParams;
  const aCtx: TtfwContext);
//#UC START# *5230185F0140_5230147B0151_var*
//#UC END# *5230185F0140_5230147B0151_var*
begin
//#UC START# *5230185F0140_5230147B0151_impl*
 aCtx.rEngine.PushBool(aParams.Op.Flag[Self.Flag]);
//#UC END# *5230185F0140_5230147B0151_impl*
end;//_OperationParamWord_.DoParams

{$IfEnd} //not NoScripts AND not NoVCM

{$Else  OperationParamWord_imp_impl}
{$If not defined(NoScripts) AND not defined(NoVCM)}
 {$Include ..\ScriptEngine\OperationParamWordPrim.imp.pas}
{$IfEnd} //not NoScripts AND not NoVCM

{$EndIf OperationParamWord_imp_impl}
{$EndIf OperationParamWord_imp}

unit kwFormFromControlWord;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine$RTLandVCL"
// �����: ����� �.�.
// ������: "kwFormFromControlWord.pas"
// �����: 03.11.2011 13:22
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: SimpleClass::Class Shared Delphi Low Level::ScriptEngine$RTLandVCL::VCL bindings::TkwFormFromControlWord
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  Forms,
  tfwScriptingInterfaces,
  kwControlWord,
  Controls
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwFormFromControlWord = {abstract} class(TkwControlWord)
 protected
 // realized methods
   procedure DoControl(aControl: TControl;
     const aCtx: TtfwContext); override;
 protected
 // protected methods
   procedure DoForm(aForm: TForm;
     const aCtx: TtfwContext); virtual; abstract;
 end;//TkwFormFromControlWord
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  SysUtils,
  l3FormsService,
  Windows
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

// start class TkwFormFromControlWord

procedure TkwFormFromControlWord.DoControl(aControl: TControl;
  const aCtx: TtfwContext);
//#UC START# *4DB98B990054_4EB25D530395_var*
var
 l_F : TCustomForm;
//#UC END# *4DB98B990054_4EB25D530395_var*
begin
//#UC START# *4DB98B990054_4EB25D530395_impl*
 l_F := Tl3FormsService.Instance.GetParentForm(aControl);
 RunnerAssert(l_F <> nil, '�� ������� ������������ ����� ��� ' + aControl.Name, aCtx);
 DoForm(TForm(l_F), aCtx);
//#UC END# *4DB98B990054_4EB25D530395_impl*
end;//TkwFormFromControlWord.DoControl

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
// ����������� TkwFormFromControlWord
 TkwFormFromControlWord.RegisterClass;
{$IfEnd} //not NoScripts

end.
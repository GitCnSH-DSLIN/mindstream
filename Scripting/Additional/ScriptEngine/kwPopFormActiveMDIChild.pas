unit kwPopFormActiveMDIChild;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine$RTLandVCL"
// ������: "kwPopFormActiveMDIChild.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: ScriptKeyword::Class Shared Delphi Low Level::ScriptEngine$RTLandVCL::FormsProcessing::pop_form_ActiveMDIChild
//
// *������:* aForm pop:form:ActiveMDIChild
// *��������:* ���������� � ���� ��������� �� �������� �������� �����, ���� ����.
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  kwFormFromStackWord,
  Forms,
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwPopFormActiveMDIChild = {final scriptword} class(TkwFormFromStackWord)
  {* *������:* aForm pop:form:ActiveMDIChild
*��������:* ���������� � ���� ��������� �� �������� �������� �����, ���� ����. }
 protected
 // realized methods
   procedure DoForm(aForm: TForm;
     const aCtx: TtfwContext); override;
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopFormActiveMDIChild
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}

// start class TkwPopFormActiveMDIChild

procedure TkwPopFormActiveMDIChild.DoForm(aForm: TForm;
  const aCtx: TtfwContext);
//#UC START# *4F2145550317_512F082300F1_var*
//#UC END# *4F2145550317_512F082300F1_var*
begin
//#UC START# *4F2145550317_512F082300F1_impl*
 aCtx.rEngine.PushObj(aForm.ActiveMDIChild);
//#UC END# *4F2145550317_512F082300F1_impl*
end;//TkwPopFormActiveMDIChild.DoForm

class function TkwPopFormActiveMDIChild.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:form:ActiveMDIChild';
end;//TkwPopFormActiveMDIChild.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
// ����������� pop_form_ActiveMDIChild
 TkwPopFormActiveMDIChild.RegisterInEngine;
{$IfEnd} //not NoScripts

end.
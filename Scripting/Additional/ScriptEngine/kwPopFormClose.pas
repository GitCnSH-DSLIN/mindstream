unit kwPopFormClose;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine$RTLandVCL"
// ������: "kwPopFormClose.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: ScriptKeyword::Class Shared Delphi Low Level::ScriptEngine$RTLandVCL::FormsProcessing::pop_form_Close
//
// ������� �����.
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
 TkwPopFormClose = {scriptword} class(TkwFormFromStackWord)
  {* ������� �����. }
 protected
 // realized methods
   procedure DoForm(aForm: TForm;
     const aCtx: TtfwContext); override;
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopFormClose
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}

// start class TkwPopFormClose

procedure TkwPopFormClose.DoForm(aForm: TForm;
  const aCtx: TtfwContext);
//#UC START# *4F2145550317_4E4CBC5D004E_var*
//#UC END# *4F2145550317_4E4CBC5D004E_var*
begin
//#UC START# *4F2145550317_4E4CBC5D004E_impl*
 aForm.Close;
//#UC END# *4F2145550317_4E4CBC5D004E_impl*
end;//TkwPopFormClose.DoForm

class function TkwPopFormClose.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:form:Close';
end;//TkwPopFormClose.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
// ����������� pop_form_Close
 TkwPopFormClose.RegisterInEngine;
{$IfEnd} //not NoScripts

end.
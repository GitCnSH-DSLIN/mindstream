unit kwGeneratePDFForEtalon;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwGeneratePDFForEtalon.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::FiltersAndGenerators::GeneratePDFForEtalon
//
// *������*:
// {code}
// aFlag GeneratePDFForEtalon
// {code}
// ��� aFlag - true ��� false.
// ��������/��������� ����� ��������� ���������� PDF, ������� ������ ������������ ��� ���������.
// ����� ���������� ��� ������ ��������, �.�.���� ������������ � False.
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
 TkwGeneratePDFForEtalon = {final} class(_tfwAutoregisteringWord_)
  {* *������*:
[code]
aFlag GeneratePDFForEtalon
[code]
��� aFlag - true ��� false.
��������/��������� ����� ��������� ���������� PDF, ������� ������ ������������ ��� ���������. ����� ���������� ��� ������ ��������, �.�.���� ������������ � False. }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwGeneratePDFForEtalon
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  ddPicturePathListner,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwGeneratePDFForEtalon;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwGeneratePDFForEtalon

procedure TkwGeneratePDFForEtalon.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_54647A7203B2_var*
//#UC END# *4DAEEDE10285_54647A7203B2_var*
begin
//#UC START# *4DAEEDE10285_54647A7203B2_impl*
 RunnerAssert(aCtx.rEngine.IsTopBool, '��������� ���� ��� ������� PDF!', aCtx);
 TddPicturePathListner.Instance.PDF4Etalon := aCtx.rEngine.PopBool;
//#UC END# *4DAEEDE10285_54647A7203B2_impl*
end;//TkwGeneratePDFForEtalon.DoDoIt

class function TkwGeneratePDFForEtalon.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'GeneratePDFForEtalon';
end;//TkwGeneratePDFForEtalon.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.
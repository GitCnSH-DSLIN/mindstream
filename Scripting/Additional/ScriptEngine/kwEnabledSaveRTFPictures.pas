unit kwEnabledSaveRTFPictures;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwEnabledSaveRTFPictures.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::FiltersAndGenerators::EnabledSaveRTFPictures
//
// �������� ����� ���������� �������� ��� ������� �� RTF/DOC/DOCX. ����� �������� ����� ������
// �������� �� RTF, �.�.���� ������������.
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
 TkwEnabledSaveRTFPictures = {final} class(_tfwAutoregisteringWord_)
  {* �������� ����� ���������� �������� ��� ������� �� RTF/DOC/DOCX. ����� �������� ����� ������ �������� �� RTF, �.�.���� ������������. }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwEnabledSaveRTFPictures
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

type _Instance_R_ = TkwEnabledSaveRTFPictures;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwEnabledSaveRTFPictures

procedure TkwEnabledSaveRTFPictures.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_534BCAFC031E_var*
//#UC END# *4DAEEDE10285_534BCAFC031E_var*
begin
//#UC START# *4DAEEDE10285_534BCAFC031E_impl*
 TddPicturePathListner.Instance.EnableSave := True;
//#UC END# *4DAEEDE10285_534BCAFC031E_impl*
end;//TkwEnabledSaveRTFPictures.DoDoIt

class function TkwEnabledSaveRTFPictures.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'EnabledSaveRTFPictures';
end;//TkwEnabledSaveRTFPictures.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.
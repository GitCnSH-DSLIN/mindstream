unit AutolinkFilterWordsPack;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine$L3"
// ������: "AutolinkFilterWordsPack.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: ScriptKeywordsPack::Class Shared Delphi Low Level::ScriptEngine$L3::Autolink::AutolinkFilterWordsPack
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  tfwScriptingInterfaces,
  l3Variant,
  tfwRegisterableWord
  ;

{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  l3AutolinkService,
  TypInfo,
  SysUtils,
  tfwTypeRegistrator
  ;

{$If defined(Archi) AND not defined(NoScripts)}
type
 TkwFilterAutolinkFilter = {final scriptword} class(TtfwRegisterableWord)
  {* ����� ������� filter:AutolinkFilter
[panel]������ �� ����� ������ TddAutolinkFilter (� ���� Ik2TagGenerator).[panel]
*��� ����������:* Ik2TagGenerator
*������:*
[code]
 filter:AutolinkFilter
[code]  }
 private
 // private methods
   function FilterAutolinkFilter(const aCtx: TtfwContext): Ik2TagGenerator;
     {* ���������� ����� ������� filter:AutolinkFilter }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 public
 // overridden public methods
   function GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo; override;
 end;//TkwFilterAutolinkFilter
{$IfEnd} //Archi AND not NoScripts

{$If defined(Archi) AND not defined(NoScripts)}

// start class TkwFilterAutolinkFilter

function TkwFilterAutolinkFilter.FilterAutolinkFilter(const aCtx: TtfwContext): Ik2TagGenerator;
//#UC START# *F9D10A107F51_115E7EFB89B4_var*
//#UC END# *F9D10A107F51_115E7EFB89B4_var*
begin
//#UC START# *F9D10A107F51_115E7EFB89B4_impl*
 Result := Tl3AutolinkService.Instance.GetAutolinkFilter;
//#UC END# *F9D10A107F51_115E7EFB89B4_impl*
end;//TkwFilterAutolinkFilter.FilterAutolinkFilter

procedure TkwFilterAutolinkFilter.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushIntf((FilterAutolinkFilter(aCtx)));
end;//TkwFilterAutolinkFilter.DoDoIt

class function TkwFilterAutolinkFilter.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'filter:AutolinkFilter';
end;//TkwFilterAutolinkFilter.GetWordNameForRegister

function TkwFilterAutolinkFilter.GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo;
 {-}
begin
 Result := TypeInfo(Ik2TagGenerator);
end;//TkwFilterAutolinkFilter.GetResultTypeInfo

{$IfEnd} //Archi AND not NoScripts
{$If defined(Archi) AND not defined(NoScripts)}

type
 TkwFilterCleanAutolinkFilter = {final scriptword} class(TtfwRegisterableWord)
  {* ����� ������� filter:CleanAutolinkFilter
[panel]��������� TddAutolinkFilter �������� ���� �� �� ����������, �� ���� ����� �������� Generator ����� �������������. � ����� ������� ���������� � ����� ������ ������ ������.[panel]
*������:*
[code]
 filter:CleanAutolinkFilter
[code]  }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 public
 // overridden public methods
   function GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo; override;
 end;//TkwFilterCleanAutolinkFilter
{$IfEnd} //Archi AND not NoScripts

{$If defined(Archi) AND not defined(NoScripts)}

// start class TkwFilterCleanAutolinkFilter

procedure TkwFilterCleanAutolinkFilter.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_30FF429786F9_var*
//#UC END# *4DAEEDE10285_30FF429786F9_var*
begin
//#UC START# *4DAEEDE10285_30FF429786F9_impl*
 Tl3AutolinkService.Instance.CleanAutolinkFilter;
//#UC END# *4DAEEDE10285_30FF429786F9_impl*
end;//TkwFilterCleanAutolinkFilter.DoDoIt

class function TkwFilterCleanAutolinkFilter.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'filter:CleanAutolinkFilter';
end;//TkwFilterCleanAutolinkFilter.GetWordNameForRegister

function TkwFilterCleanAutolinkFilter.GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo;
 {-}
begin
 Result := @tfw_tiVoid;
end;//TkwFilterCleanAutolinkFilter.GetResultTypeInfo

{$IfEnd} //Archi AND not NoScripts
{$IfEnd} //not NoScripts

initialization
{$If defined(Archi) AND not defined(NoScripts)}
// ����������� filter_AutolinkFilter
 TkwFilterAutolinkFilter.RegisterInEngine;
{$IfEnd} //Archi AND not NoScripts
{$If defined(Archi) AND not defined(NoScripts)}
// ����������� filter_CleanAutolinkFilter
 TkwFilterCleanAutolinkFilter.RegisterInEngine;
{$IfEnd} //Archi AND not NoScripts
{$If not defined(NoScripts)}
// ����������� ���� TtfwContext
 TtfwTypeRegistrator.RegisterType(@tfw_tiStruct);
{$IfEnd} //not NoScripts
{$If not defined(NoScripts)}
// ����������� ���� Ik2TagGenerator
 TtfwTypeRegistrator.RegisterType(TypeInfo(Ik2TagGenerator));
{$IfEnd} //not NoScripts

end.
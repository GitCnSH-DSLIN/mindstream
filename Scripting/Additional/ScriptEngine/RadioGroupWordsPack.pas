unit RadioGroupWordsPack;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine$RTLandVCL"
// ������: "RadioGroupWordsPack.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: ScriptKeywordsPack::Class Shared Delphi Low Level::ScriptEngine$RTLandVCL::ExtControlsProcessing::RadioGroupWordsPack
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  ExtCtrls,
  tfwScriptingInterfaces,
  tfwRegisterableWord
  ;

{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  TypInfo,
  SysUtils,
  tfwTypeRegistrator
  ;

type
 TkwPopRadioGroupGetItemIndex = {final scriptword} class(TtfwRegisterableWord)
  {* ����� ������� pop:RadioGroup:GetItemIndex
[panel]������ ��������[panel]
*��� ����������:* Integer
*������:*
[code]
 aRadioGroup pop:RadioGroup:GetItemIndex
[code]  }
 private
 // private methods
   function GetItemIndex(const aCtx: TtfwContext;
    aRadioGroup: TRadioGroup): Integer;
     {* ���������� ����� ������� pop:RadioGroup:GetItemIndex }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 public
 // overridden public methods
   function GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo; override;
 end;//TkwPopRadioGroupGetItemIndex

// start class TkwPopRadioGroupGetItemIndex

function TkwPopRadioGroupGetItemIndex.GetItemIndex(const aCtx: TtfwContext;
  aRadioGroup: TRadioGroup): Integer;
 {-}
begin
 Result := aRadioGroup.ItemIndex;
end;//TkwPopRadioGroupGetItemIndex.GetItemIndex

procedure TkwPopRadioGroupGetItemIndex.DoDoIt(const aCtx: TtfwContext);
 {-}
var
 l_aRadioGroup : TRadioGroup;
begin
 try
  l_aRadioGroup := TRadioGroup(aCtx.rEngine.PopObjAs(TRadioGroup));
 except
  on E: Exception do
  begin
   RunnerError('������ ��� ��������� ��������� aRadioGroup: TRadioGroup : ' + E.Message, aCtx);
   Exit;
  end;//on E: Exception
 end;//try..except
 aCtx.rEngine.PushInt((GetItemIndex(aCtx, l_aRadioGroup)));
end;//TkwPopRadioGroupGetItemIndex.DoDoIt

class function TkwPopRadioGroupGetItemIndex.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:RadioGroup:GetItemIndex';
end;//TkwPopRadioGroupGetItemIndex.GetWordNameForRegister

function TkwPopRadioGroupGetItemIndex.GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo;
 {-}
begin
 Result := TypeInfo(Integer);
end;//TkwPopRadioGroupGetItemIndex.GetResultTypeInfo

type
 TkwPopRadioGroupSetItemIndex = {final scriptword} class(TtfwRegisterableWord)
  {* ����� ������� pop:RadioGroup:SetItemIndex
[panel]������ ��������[panel]
*������:*
[code]
 aValue aRadioGroup pop:RadioGroup:SetItemIndex
[code]  }
 private
 // private methods
   procedure SetItemIndex(const aCtx: TtfwContext;
    aRadioGroup: TRadioGroup;
    aValue: Integer);
     {* ���������� ����� ������� pop:RadioGroup:SetItemIndex }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 public
 // overridden public methods
   function GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo; override;
 end;//TkwPopRadioGroupSetItemIndex

// start class TkwPopRadioGroupSetItemIndex

procedure TkwPopRadioGroupSetItemIndex.SetItemIndex(const aCtx: TtfwContext;
  aRadioGroup: TRadioGroup;
  aValue: Integer);
 {-}
begin
 aRadioGroup.ItemIndex := aValue;
end;//TkwPopRadioGroupSetItemIndex.SetItemIndex

procedure TkwPopRadioGroupSetItemIndex.DoDoIt(const aCtx: TtfwContext);
 {-}
var
 l_aRadioGroup : TRadioGroup;
 l_aValue : Integer;
begin
 try
  l_aRadioGroup := TRadioGroup(aCtx.rEngine.PopObjAs(TRadioGroup));
 except
  on E: Exception do
  begin
   RunnerError('������ ��� ��������� ��������� aRadioGroup: TRadioGroup : ' + E.Message, aCtx);
   Exit;
  end;//on E: Exception
 end;//try..except
 try
  l_aValue := (aCtx.rEngine.PopInt);
 except
  on E: Exception do
  begin
   RunnerError('������ ��� ��������� ��������� aValue: Integer : ' + E.Message, aCtx);
   Exit;
  end;//on E: Exception
 end;//try..except
 SetItemIndex(aCtx, l_aRadioGroup, l_aValue);
end;//TkwPopRadioGroupSetItemIndex.DoDoIt

class function TkwPopRadioGroupSetItemIndex.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:RadioGroup:SetItemIndex';
end;//TkwPopRadioGroupSetItemIndex.GetWordNameForRegister

function TkwPopRadioGroupSetItemIndex.GetResultTypeInfo(const aCtx: TtfwContext): PTypeInfo;
 {-}
begin
 Result := @tfw_tiVoid;
end;//TkwPopRadioGroupSetItemIndex.GetResultTypeInfo
{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
// ����������� pop_RadioGroup_GetItemIndex
 TkwPopRadioGroupGetItemIndex.RegisterInEngine;
{$IfEnd} //not NoScripts
{$If not defined(NoScripts)}
// ����������� pop_RadioGroup_SetItemIndex
 TkwPopRadioGroupSetItemIndex.RegisterInEngine;
{$IfEnd} //not NoScripts
{$If not defined(NoScripts)}
// ����������� ���� TtfwContext
 TtfwTypeRegistrator.RegisterType(@tfw_tiStruct);
{$IfEnd} //not NoScripts
{$If not defined(NoScripts)}
// ����������� ���� TRadioGroup
 TtfwTypeRegistrator.RegisterType(TypeInfo(TRadioGroup));
{$IfEnd} //not NoScripts
{$If not defined(NoScripts)}
// ����������� ���� Integer
 TtfwTypeRegistrator.RegisterType(TypeInfo(Integer));
{$IfEnd} //not NoScripts

end.
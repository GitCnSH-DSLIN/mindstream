unit afwNavigation;

 
{$Include afwDefine.inc}

interface

uses
  afwInterfaces,
  evdTypes,
  evdInterfaces
  ;

type
 IevMoniker = interface(IUnknown)
  {* ������� ��������� ��� ���������� �� ��������� �������. }
   ['{BDF9CD19-9AAF-4640-9784-CA3543E38558}']
 end;//IevMoniker

 IevURLMoniker = interface(IevMoniker)
  {* ��������� ��� �������� ����������� �� URL }
   ['{3206517A-BB84-41F5-8A25-68032ADA08A9}']
   function pm_GetURL: AnsiString;
   property URL: AnsiString
     read pm_GetURL;
     {* URL - �� ������� ��������� ��������� }
 end;//IevURLMoniker

 IevIDMoniker = interface(IevMoniker)
  {* ����� �������, �������� ������������� ������������� }
   ['{EF7CCAA9-BCF1-4206-9EE5-A7A952D0E3BA}']
   function pm_GetID: Integer;
   property ID: Integer
     read pm_GetID;
     {* ������������� ������� }
 end;//IevIDMoniker

 IevHyperlinkMoniker = interface(IevIDMoniker)
  {* ������, ����������� �� �������������� ������ }
   ['{FB504C38-BA7D-41CD-8E7F-BB64B9BF1E9D}']
 end;//IevHyperlinkMoniker

 TafwAddress = evdInterfaces.TevdAddress;

 TevAddress = {$IfDef XE4}record{$Else}object(TafwAddress){$EndIf}
 {$IfDef XE4}
 public
  rTafwAddress : TafwAddress;
 {$EndIf XE4}
 public
    function EQ(const anAddress: TevdAddress): Boolean;
     {* ��������� ������ �� ���������� }
 end;//TevAddress

 IevMonikerSink = interface(IUnknown)
  {* ��������� ��� ���������� �������� �� ������. }
   ['{A88DA8DE-D158-4163-91AD-DB6EF4D0F71D}']
   function JumpTo(anEffects: TafwJumpToEffects;
    const aMoniker: IevMoniker): Boolean;
     {* ������� �� ������ aMoniker. }
 end;//IevMonikerSink

 IevAddressMoniker = interface(IevMoniker)
  {* ����� ����� ����� }
   ['{948913E4-9AAA-41E3-9007-F5C66BDE954C}']
   function pm_GetAddress: TevAddress;
   property Address: TevAddress
     read pm_GetAddress;
 end;//IevAddressMoniker


function TevAddress_C(aDocID: Integer;
    aSubID: Integer;
    aTypeID: Integer = ev_defAddressType;
    aRevisionID: Integer = 0): TevAddress;

implementation

// start class TevAddress

function TevAddress.EQ(const anAddress: TevdAddress): Boolean;
//#UC START# *49E6009D02ED_48F4940C01C0_var*
//#UC END# *49E6009D02ED_48F4940C01C0_var*
begin
//#UC START# *49E6009D02ED_48F4940C01C0_impl*
 Result := ({$IfDef XE4}rTafwAddress.{$EndIf}DocID = anAddress.DocID) AND
           ({$IfDef XE4}rTafwAddress.{$EndIf}SubID = anAddress.SubID) AND
           ({$IfDef XE4}rTafwAddress.{$EndIf}TypeID = anAddress.TypeID);
//#UC END# *49E6009D02ED_48F4940C01C0_impl*
end;//TevAddress.EQ

function TevAddress_C(aDocID: Integer;
      aSubID: Integer;
      aTypeID: Integer = ev_defAddressType;
      aRevisionID: Integer = 0): TevAddress;
//#UC START# *49E604FE0347_48F4940C01C0_var*
//#UC END# *49E604FE0347_48F4940C01C0_var*
begin
 System.FillChar(Result, SizeOf(Result), 0);
//#UC START# *49E604FE0347_48F4940C01C0_impl*
 Result.{$IfDef XE4}rTafwAddress.{$EndIf}DocID := aDocID;
 Result.{$IfDef XE4}rTafwAddress.{$EndIf}SubID := aSubID;
 Result.{$IfDef XE4}rTafwAddress.{$EndIf}TypeID := aTypeID;
 Result.{$IfDef XE4}rTafwAddress.{$EndIf}RevisionID := aRevisionID;
//#UC END# *49E604FE0347_48F4940C01C0_impl*
end;//TevAddress.C

end.
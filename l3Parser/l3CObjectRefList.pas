unit l3CObjectRefList;
 
{$Include l3Define.inc}

interface

uses
  l3ObjectRefList1
  ;

type
 Tl3CObjectRefList = class(Tl3ObjectRefList1)
  {* ���������� ������ ������ �� �������. }
 protected
 // overridden protected methods
   {$If not defined(DesignTimeLibrary)}
   class function IsCacheable: Boolean; override;
     {* ������� ������, ������������ ����� �� ������� ������� ������ �������� � ��� ���������� �������������. }
   {$IfEnd} //not DesignTimeLibrary
 end;//Tl3CObjectRefList

implementation

// start class Tl3CObjectRefList

{$If not defined(DesignTimeLibrary)}
class function Tl3CObjectRefList.IsCacheable: Boolean;
//#UC START# *47A6FEE600FC_4773DAF300E4_var*
//#UC END# *47A6FEE600FC_4773DAF300E4_var*
begin
//#UC START# *47A6FEE600FC_4773DAF300E4_impl*
 Result := true;
//#UC END# *47A6FEE600FC_4773DAF300E4_impl*
end;//Tl3CObjectRefList.IsCacheable
{$IfEnd} //not DesignTimeLibrary

end.
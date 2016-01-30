unit k2BaseTypes;
{$Include l3Define.inc}

interface

type
 Tk2StorePropertyFlag = (
  {* ����� ���������� ����� �����. }
   l3_spfScalars
 , l3_spfObjects
 , l3_spfChildren
 , l3_spfRawData
 );//Tk2StorePropertyFlag

 Tk2StorePropertyFlags = set of Tk2StorePropertyFlag;
  {* ������ ���������� ����� �����. }

const
 l3_spfAll = [Low(Tk2StorePropertyFlag)..High(Tk2StorePropertyFlag)];
  {* ����� ���������� ���� ����� �����. }
 l3_spfInner = l3_spfAll;
  {* ����� ���������� ���� ��������� ����� �������. }

type
 Tk2AssignMode = (
  {* ����� ����������� ������������ �����. }
   k2_amNull
 , k2_amTransparent
 );//Tk2AssignMode

 Tk2AssignModes = set of Tk2AssignMode;
  {* ������ ����������� ������������ �����. }

const
 k2_amAll = [Low(Tk2AssignMode)..High(Tk2AssignMode)];
  {* ����� ����������� ���� �������� �����. }

implementation

end.
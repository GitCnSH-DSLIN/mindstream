unit msInvalidators;

interface

uses
 msDiagramm
 ;

type
 TmsInvalidators = class
 public
  class procedure InvalidateDiagramm(aDiagramm: TmsDiagramm);
  class procedure Subscribe(const anInvalidator: ImsIvalidator);
  // - �������������
  class procedure UnSubscribe(const anInvalidator: ImsIvalidator);
  // - ������������
 end;//TmsInvalidators

implementation

// TmsInvalidators

class procedure TmsInvalidators.InvalidateDiagramm(aDiagramm: TmsDiagramm);
begin
end;

class procedure TmsInvalidators.Subscribe(const anInvalidator: ImsIvalidator);
// - �������������
begin
end;

class procedure TmsInvalidators.UnSubscribe(const anInvalidator: ImsIvalidator);
// - ������������
begin
end;

end.

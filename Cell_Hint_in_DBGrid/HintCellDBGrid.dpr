program HintCellDBGrid;

uses
  Forms,
  AFirstPage in 'AFirstPage.pas' {AFirst},
  DataModul in 'DataModul.pas' {Data: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TAFirst, AFirst);
  Application.CreateForm(TData, Data);
  Application.Run;
end.

unit DataModul;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TData = class(TDataModule)
    TFournisseur: TTable;
    DFournisseur: TDataSource;
    TFournisseurORDRE: TStringField;
    TFournisseurCODE_FOUR: TStringField;
    TFournisseurNOM_ENTREPRISE: TStringField;
    TFournisseurSTATUT: TStringField;
    TFournisseurDOMAINE: TStringField;
    TFournisseurPRODUITS: TStringField;
    TFournisseurNOM_FOUR: TStringField;
    TFournisseurPRENOM_FOUR: TStringField;
    TFournisseurADRESSE: TMemoField;
    TFournisseurVILLE: TStringField;
    TFournisseurTELEPHONE: TStringField;
    TFournisseurFAX: TStringField;
    TFournisseurE_MAIL: TStringField;
    TFournisseurSITE_INTERNET: TStringField;
    TFournisseurETS_BANCAIRE: TStringField;
    TFournisseurCPT_BANCAIRE: TStringField;
    TFournisseurREG_COMMERCE: TStringField;
    TFournisseurIDENTIFIANT_FISCAL: TStringField;
    TFournisseurART_IMPOSITION: TStringField;
    TFournisseurDATE_PRE_CONTACT: TDateField;
    TFournisseurREMARQUES: TMemoField;
    TFournisseurMONTANT: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Data: TData;

implementation

{$R *.dfm}

procedure TData.DataModuleCreate(Sender: TObject);
begin
 TFournisseur.Open;
end;

end.

unit AFirstPage;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, ComCtrls;

type
  TAFirst = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid: TDBGrid;
    DBGridE1: TDBGrid;
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure DBGridE1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridE1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { D�clarations priv�es }
  public   { D�clarations publiques }
    procedure DoShowHint(var HintStr: String ; var CanShow: Boolean;
                                          var HintInfo: THintInfo);
  end;

var
  AFirst: TAFirst;

implementation

uses DataModul;

{$R *.dfm}
procedure TAFirst.DoShowHint(var HintStr: String ; var CanShow: Boolean;
                                          var HintInfo: THintInfo);
// n'oublier pas de d�clarer la procedure dans { D�clarations publiques }
  begin
  // mise a jours de hint
  if HintInfo.HintControl = DBGrid then
     HintInfo.ReshowTimeout := 2000; // P�riodicit� de la m�j  
end;

procedure TAFirst.DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
// colorer les cellules de notre DBGrid
if not ( gdFocused in State ) then
  begin

    if (Dbgrid.DataSource.DataSet.RecNo mod 2) = 0 then
       Dbgrid.Canvas.Brush.Color :=  clInactiveCaptionText;
    Dbgrid.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
end;

procedure TAFirst.DBGridMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var GridCoord: TGridCoord;
begin
// Resortir les coordonn�es de la souris
GridCoord := DBGrid.MouseCoord(X, Y);
// v�rifier si la position de la souris est �gale au num�ro de l'enregistrement
if (Data.TFournisseur.RecNo=GridCoord.Y) then
begin
// affichier le hint multi-lines
DBGrid.Hint := 'Ordre: '+ Data.TFournisseur.Fields[0].asString+#13+
                'Code fournisseur: '+ Data.TFournisseur.Fields[1].asString+#13+
                'Nom de l''entreprise: '+ Data.TFournisseur.Fields[2].asString+#13+
                'Statut juridique: '+ Data.TFournisseur.Fields[3].asString+#13+
                'Domaine d''activit�: '+ Data.TFournisseur.Fields[4].asString+#13+
                'Produits: '+ Data.TFournisseur.Fields[5].asString+#13+
                'Nom de fournisseur: '+ Data.TFournisseur.Fields[6].asString+#13+
                'Pr�nom de fournisseur: '+ Data.TFournisseur.Fields[7].asString+#13+
                'Adresse: '+ Data.TFournisseur.Fields[8].asString+#13+
                'Ville: '+ Data.TFournisseur.Fields[9].asString+#13+
                'T�l�phone: '+ Data.TFournisseur.Fields[10].asString+#13+
                'Fax: '+ Data.TFournisseur.Fields[11].asString+#13+
                'E-Mail: '+ Data.TFournisseur.Fields[12].asString+#13+
                'Site Internet: '+ Data.TFournisseur.Fields[13].asString+#13+
                'Etablissement bancaire: '+ Data.TFournisseur.Fields[13].asString+#13+
                'Num�ro de compte: '+ Data.TFournisseur.Fields[15].asString+#13+
                'R�gistre de commerce: '+ Data.TFournisseur.Fields[16].asString+#13+
                'Identifiant fiscal (IF): '+ Data.TFournisseur.Fields[17].asString+#13+
                'Articl d''imposition (AI): '+ Data.TFournisseur.Fields[18].asString+#13+
                'Date de premier contact: '+ Data.TFournisseur.Fields[19].asString+#13+
                'Motant des dettes: '+Data.TFournisseur.Fields[21].AsString ;
                DBGrid.ShowHint:=True;
end else
// d�sactiver l'affichage de hint
DBGrid.ShowHint:=False;
end;

procedure TAFirst.FormCreate(Sender: TObject);
begin
  Application.OnShowHint := DoShowHint;
end;

procedure TAFirst.DBGridE1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
// colorer les cellules de notre DBGrid
if not ( gdFocused in State ) then
  begin

    if (DbgridE1.DataSource.DataSet.RecNo mod 2) = 0 then
       DbgridE1.Canvas.Brush.Color :=  clInactiveCaptionText;
    DbgridE1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
end;

procedure TAFirst.DBGridE1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var GridCoord: TGridCoord;
begin
// Resortir les coordonn�es de la souris
GridCoord := DBGridE1.MouseCoord(X, Y);
// affichier le hint
DBGridE1.Hint := 'Line = ' + IntToStr(GridCoord.Y)+
                 'Column = ' + IntToStr(GridCoord.X);
DBGridE1.ShowHint:=True;
end;

end.

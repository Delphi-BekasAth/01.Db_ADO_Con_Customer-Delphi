unit StartForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, datamodule1,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, retreiveFrm;

type
  TForm1 = class(TForm)
    cusGrid: TDBGrid;
    cusNav: TDBNavigator;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    sortBtn: TButton;
    rtrvFrmBtn: TButton;
    procedure sortBtnClick(Sender: TObject);
    procedure rtrvFrmBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

//Δημιουργίια και εμφάνιση φορμας
procedure TForm1.rtrvFrmBtnClick(Sender: TObject);
var
  rtrFrm : TretreiveForm;
begin
  rtrFrm := TretreiveForm.Create(nil);
  rtrFrm.ShowModal;

end;

//Ταξινόμηση του grid
procedure TForm1.sortBtnClick(Sender: TObject);
begin
  dm1.cusTbl.Sort := 'Name ASC';
end;

end.

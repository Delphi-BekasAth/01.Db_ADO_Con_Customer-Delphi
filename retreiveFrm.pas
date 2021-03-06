unit retreiveFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, datamodule1, Vcl.Buttons,Generics.Collections,
  clsCustomer;

type
  TretreiveForm = class(TForm)
    ListBox1: TListBox;
    showBtn: TButton;
    balanceBtn: TBitBtn;
    Label1: TLabel;
    Edit1: TEdit;
    procedure showBtnClick(Sender: TObject);
    procedure balanceBtnClick(Sender: TObject);
    procedure AfterConstruction; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  retreiveForm: TretreiveForm;
  cuslist : TObjectList<TCustomer>;

implementation

{$R *.dfm}

procedure TretreiveForm.AfterConstruction;
  begin
    inherited AfterConstruction;
    cuslist := TObjectList<TCustomer>.Create;
end;

procedure TretreiveForm.balanceBtnClick(Sender: TObject);
var
  blnc,i : integer;
  id : integer;
  name, phone, str : string;
  balance : double;
  cust : TCustomer;
begin

  ListBox1.Clear;
  cuslist.Clear;
  blnc := StrToInt(Edit1.Text);

  with dm1 do
  begin

    cusTbl.First;

    while NOT cusTbl.Eof do
    begin


      id := cusTbl['ID'];
      //name := cusTbl['NAME'];    ?? ???? space ?? string -> error
      phone := cusTbl['PHONE'];
      balance := cusTbl['BALANCE'];
      cust := TCustomer.Create(id, cusTbl['NAME'], phone, balance);

      cuslist.Add(cust);

      cusTbl.Next;
    end;
  end;

  for i := 0 to cuslist.Count-1 do
  begin

    if cuslist[i].GetBalance > blnc then
    begin
      ListBox1.Items.Add(IntToStr(cuslist[i].GetId) + ') ' + cuslist[i].GetName +
                          ' ' + cuslist[i].GetPhone + ' ' + FloatToStr(cuslist[i].GetBalance));
    end;
  end;



end;

procedure TretreiveForm.showBtnClick(Sender: TObject);
var
  id : integer;
  name, phone, str : string;
  balance : double;
begin

  with dm1 do
  begin

    ListBox1.Clear;
    cusTbl.First;

    while NOT cusTbl.Eof do
    begin

      id := cusTbl['ID'];
      //name := cusTbl['NAME'];  ?? ???? space ?? string -> error
      phone := cusTbl['PHONE'];
      balance := cusTbl['BALANCE'];

      ListBox1.Items.Add(IntToStr(id) + ') ' + cusTbl['NAME'] + ' ' + phone + ' ' + FloatToStr(balance));

      cusTbl.Next;

    end;


  end;
end;

end.

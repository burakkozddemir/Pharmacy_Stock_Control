unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.Buttons;

type
  TForm5 = class(TForm)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    top: TSpeedButton;
    ADOTable1id: TAutoIncField;
    ADOTable1urun_adi: TWideStringField;
    ADOTable1miktar: TIntegerField;
    ADOTable1fiyat: TIntegerField;
    ADOTable1maliyet: TIntegerField;
    Edit1: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure topClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ADOTable1FilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation
USES unit4;
{$R *.dfm}

procedure TForm5.ADOTable1FilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
  if (AnsiUpperCase(Edit1.Text) = Copy( AnsiUpperCase (ADOTable1.FieldByName('Urun_Adi').AsString),1,length(Edit1.Text))) then
  Accept:= True else Accept:=False;
end;

procedure TForm5.Button1Click(Sender: TObject);
begin
ADOTABLE1.Locate('urun_adi',edit1.Text,[TLocateOption.loPartialKey])
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
adotable1.Prior;
end;
procedure TForm5.Button3Click(Sender: TObject);
begin
ADOTable1.Next;
end;
procedure TForm5.Button4Click(Sender: TObject);
begin
adotable1.First;
end;
procedure TForm5.Button5Click(Sender: TObject);
begin
adotable1.last;
end;
procedure TForm5.Edit1Change(Sender: TObject);
begin
ADOTable1.Filtered :=False;
if (Edit1.Text <> '') then     ADOTable1.Filtered :=True else
ADOTable1.Filtered :=False;
end;

procedure TForm5.SpeedButton1Click(Sender: TObject);
begin
   adotable1.Prior;
end;

procedure TForm5.SpeedButton2Click(Sender: TObject);
begin
ADOTable1.Next;
end;

procedure TForm5.SpeedButton3Click(Sender: TObject);
begin
adotable1.First;
end;

procedure TForm5.SpeedButton4Click(Sender: TObject);
begin
adotable1.last;
end;

procedure TForm5.SpeedButton5Click(Sender: TObject);
var
top:Currency;
begin
adotable1.First;
top:=0;
repeat
     top:=top+ (adotable1.FieldByName('Fiyat').AsCurrency*ADOTABLE1.FieldByName('miktar').AsCurrency);
     adotable1.Next;

until (adotable1.Eof);
label5.Caption:=('Toplam �r�n Maliyeti : '+ floattostr(top)) ;
end;
procedure TForm5.topClick(Sender: TObject);
var
top:Currency;
begin
adotable1.First;
top:=0;
repeat
     top:=top+ (adotable1.FieldByName('Fiyat').AsCurrency*ADOTABLE1.FieldByName('miktar').AsCurrency);
     adotable1.Next;

until (adotable1.Eof);
label6.Caption:=('Toplam �r�n Maliyeti : '+ floattostr(top)) ;
end;

end.

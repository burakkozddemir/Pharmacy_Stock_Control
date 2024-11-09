unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Data.DB, Data.Win.ADODB, Data.SqlExpr, Vcl.Grids,
  Vcl.DBGrids;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    Label2: TLabel;
    Label3: TLabel;
    Image1: TImage;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    Button2: TButton;
    ADOTable1Kimlik: TAutoIncField;
    ADOTable1K_A: TWideStringField;
    ADOTable1K_S: TWideStringField;
    ADOTable1�S�M: TWideStringField;
    ADOTable1SOY: TWideStringField;
    ADOTable1EMA�L: TWideStringField;
    ADOTable1tel: TWideStringField;
    procedure CheckBox1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
uses unit2,unit3,unit6;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
kullaniciadi:string;
kullanicisifre:string;

begin
adotable1.Refresh;
ADOTable1.Open;
kullaniciadi:=edit1.text;
kullanicisifre:=edit2.text;

 if ADOTable1.Locate('K_A' ,kullaniciadi,[])= True then
 begin
        if adotable1['K_S']=kullanicisifre then
               begin
     form3.show;
     form1.Hide;
           end
                  else
             begin
              showmessage('Kullan�c� �ifresi yanl�� tekrar deneyin !!!') ;
             end;
             end
       else
 begin
   showmessage('Kullan�c� bulunamad� tekrar deneyin !!!') ;
 end;

end;



procedure TForm1.Button2Click(Sender: TObject);
begin
form6.show;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked=true then
begin
  Edit2.passwordchar := #0;
end;
if CheckBox1.Checked=false then
begin
  Edit2.passwordchar := '*';
end;

end;



procedure TForm1.FormCreate(Sender: TObject);
begin
adotable1.Refresh;

ADOTable1.Open;
end;

procedure TForm1.Image1Click(Sender: TObject);
begin
showmessage('Pharmacy Stock Control')
end;

procedure TForm1.Label2Click(Sender: TObject);
begin
showmessage('L�tfen sat�n alm�� oldu�unuz kurum ile ileti�ime ge�in !!!');
end;

procedure TForm1.Label3Click(Sender: TObject);
begin
showmessage('Bu program Burak �zdemir taraf�ndan yap�lm��t�r.');
end;

end.

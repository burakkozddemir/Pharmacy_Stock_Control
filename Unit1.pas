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
    procedure CheckBox1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
uses unit2;
var
gec:Boolean=true;
gecme:boolean=false;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
kullaniciadi:string;
kullanicisifre:string;

begin
kullaniciadi:=edit1.text;
kullanicisifre:=edit2.text;

 if ADOTable1.Locate('K_A' ,kullaniciadi,[])= True then
 begin
 if adotable1['K_S']=kullanicisifre then
 begin
form2.Show;
form1.Hide;
 end
 else
 begin
   showmessage('kullan�c� bulunamad� tekrar deneyin')
 end;


 end;


//if 1=1 then
//begin

//end;
//if ADOTable1kullanici_adi = kullaniciadi and ADOTable1sifre = kullanicisifre then
 //   begin
   //     form2.Show;
     //   form1.Hide;
  //  end

//else
//begin
 // showmessage('yok');
//end;
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
ADOTable1.Open;
end;

procedure TForm1.Image1Click(Sender: TObject);
begin
showmessage('pharmacy stock control')
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

unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

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
    procedure CheckBox1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

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

procedure TForm1.Image1Click(Sender: TObject);
begin
showmessage('pharmacy stock control')
end;

procedure TForm1.Label2Click(Sender: TObject);
begin
showmessage('Lütfen satýn almýþ olduðunuz kurum ile iletiþime geçin !!!');
end;

procedure TForm1.Label3Click(Sender: TObject);
begin
showmessage('Bu program Burak Özdemir tarafýndan yapýlmýþtýr.');
end;

end.

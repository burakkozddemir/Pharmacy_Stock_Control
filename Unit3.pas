unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TForm3 = class(TForm)
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    Timer1: TTimer;
    Label2: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation
 uses unit1,unit2;
{$R *.dfm}

procedure TForm3.FormActivate(Sender: TObject);
begin
Timer1.Enabled := True;
end;

procedure TForm3.Timer1Timer(Sender: TObject);
begin
ProgressBar1.Position:=ProgressBar1.Position+ 10 ;
label2.Caption:='%'+inttostr(ProgressBar1.Position) ;
if ProgressBar1.Position = ProgressBar1.Max then
  begin
    Form3.Hide;
    Form2.Show;
    Timer1.Enabled := False;
  end;
end;

end.

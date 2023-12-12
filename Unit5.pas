unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TForm5 = class(TForm)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ADOTable1id: TAutoIncField;
    ADOTable1urun_adi: TWideStringField;
    ADOTable1miktar: TIntegerField;
    ADOTable1fiyat: TIntegerField;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    DBNavigator1: TDBNavigator;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
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

procedure TForm5.Button1Click(Sender: TObject);
begin
form4.Show;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin

adotable1.Prior;
edit1.Text:=ADOTable1id.Text;
edit2.Text:=ADOTable1urun_adi.Text;
edit3.Text:=ADOTable1miktar.Text;
edit4.Text:=ADOTable1fiyat.Text;

end;

procedure TForm5.Button3Click(Sender: TObject);
begin
ADOTable1.Next;
edit1.Text:=ADOTable1id.Text;
edit2.Text:=ADOTable1urun_adi.Text;
edit3.Text:=ADOTable1miktar.Text;
edit4.Text:=ADOTable1fiyat.Text;


end;

procedure TForm5.Button4Click(Sender: TObject);
begin
adotable1.First;
edit1.Text:=ADOTable1id.Text;
edit2.Text:=ADOTable1urun_adi.Text;
edit3.Text:=ADOTable1miktar.Text;
edit4.Text:=ADOTable1fiyat.Text;

end;

procedure TForm5.Button5Click(Sender: TObject);
begin
adotable1.last;

edit1.Text:=ADOTable1id.Text;
edit2.Text:=ADOTable1urun_adi.Text;
edit3.Text:=ADOTable1miktar.Text;
edit4.Text:=ADOTable1fiyat.Text;

end;

procedure TForm5.FormCreate(Sender: TObject);
begin

edit1.Text:=ADOTable1id.Text;
edit2.Text:=ADOTable1urun_adi.Text;
edit3.Text:=ADOTable1miktar.Text;
edit4.Text:=ADOTable1fiyat.Text;



end;

end.

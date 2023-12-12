unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Data.DB, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids;

type
  TForm4 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Image1: TImage;
    Button1: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    ADOTable1id: TAutoIncField;
    ADOTable1urun_adi: TWideStringField;
    ADOTable1miktar: TIntegerField;
    ADOTable1fiyat: TIntegerField;
    DBGrid1: TDBGrid;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
var
  existingIndex: Integer;
  miktar, fiyat: Integer;
begin
  miktar := StrToInt(Edit2.Text);
  fiyat := StrToInt(Edit3.Text);

  existingIndex := -1;
  if ADOTable1.Locate('urun_adi', Edit1.Text, [loCaseInsensitive]) then
    existingIndex := ADOTable1.RecNo - 1;

  if existingIndex > -1 then
  begin
    // Modify existing record
    ADOTable1.Edit;
    ADOTable1.FieldByName('miktar').Value := ADOTable1.FieldByName('miktar').Value + miktar;
    ADOTable1.FieldByName('fiyat').Value := fiyat; // Update the price
    ADOTable1.Post;
    ShowMessage('�r�n miktar� ve fiyat� g�ncellendi!');
  end
  else
  begin
    // Add a new record
    ADOTable1.Append;
    ADOTable1.FieldByName('urun_adi').AsString := Edit1.Text;
    ADOTable1.FieldByName('miktar').Value := miktar;
    ADOTable1.FieldByName('fiyat').Value := fiyat;
    ADOTable1.Post;
    ShowMessage('Yeni �r�n eklendi!');
  end;
end;


procedure TForm4.Button2Click(Sender: TObject);
begin
  if not ADOTable1.IsEmpty then
  begin
    ADOTable1.Delete;
    ShowMessage('�r�n ba�ar�yla silindi.');
  end;
end;


procedure TForm4.FormCreate(Sender: TObject);
begin
  edit1.Text := '';
  edit2.Text := '';
  edit3.Text := '';
end;

end.


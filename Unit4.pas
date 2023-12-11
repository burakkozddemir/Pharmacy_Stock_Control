unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Data.DB, Data.Win.ADODB, Web.HTTPApp, Web.DBWeb, Vcl.Grids,
  Vcl.DBGrids;

type
  TForm4 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Image1: TImage;
    Button1: TButton;
    Label1: TLabel;
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
    ADOTable1tutar: TIntegerField;
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

var
  urunadi,abc: string;
  miktar, fiyat, tutar: integer;

{$R *.dfm}


procedure TForm4.Button1Click(Sender: TObject);
var
  existingIndex: Integer;
begin
  miktar := StrToInt(Edit2.Text);
  fiyat := StrToInt(Edit3.Text);
  tutar := miktar * fiyat;
  abc := IntToStr(tutar);
  Label1.Caption := 'Tutar : ' + abc;

  existingIndex := -1;
  if ADOTable1.Locate('urun_adi', edit1.Text, [loCaseInsensitive]) then
    existingIndex := ADOTable1.RecNo - 1;

  if existingIndex > -1 then
  begin
    // Mevcut �r�n varsa miktar�n� ve toplam tutar�n� g�ncelle
    ADOTable1.RecNo := existingIndex + 1;
    ADOTable1miktar.Value := ADOTable1miktar.Value + StrToInt(edit2.Text);
    ADOTable1tutar.Value := ADOTable1tutar.Value + tutar;
  end
  else
  begin
    // Mevcut �r�n yoksa yeni �r�n olarak ekle
    ADOTable1.Append;
    ADOTable1urun_adi.Text := edit1.Text;
    ADOTable1miktar.Value := StrToInt(edit2.Text);
    ADOTable1fiyat.Value := StrToInt(edit3.Text);
    ADOTable1tutar.Value := tutar;
    ADOTable1.Post;
  end;

  ShowMessage('�r�n Ba�ar�yla Eklendi veya G�ncellendi!');
end;

procedure TForm4.Button2Click(Sender: TObject);

begin
  if not ADOTable1.IsEmpty then
  begin
    if MessageDlg('Se�ili �r�n� silmek istedi�inizden emin misiniz?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      ADOTable1.Delete;
      ShowMessage('�r�n ba�ar�yla silindi.');
    end;
  end
  else
    ShowMessage('Silinecek �r�n bulunamad�.');
end;


procedure TForm4.FormCreate(Sender: TObject);
var
 ADOTable1urun_adi:string;
 ADOTable1miktar, ADOTable1fiyat ,ADOTable1tutar:integer;
begin

  edit1.Text := '';
  edit2.Text := '';
  edit3.Text := '';
  label1.Caption := '';
end;

end.

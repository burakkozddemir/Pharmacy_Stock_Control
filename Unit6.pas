unit Unit6;

interface

uses
 Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB;


type
  TForm6 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Button1: TButton;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    CheckBox1: TCheckBox;
    ADOTable1Kimlik: TAutoIncField;
    ADOTable1K_A: TWideStringField;
    ADOTable1K_S: TWideStringField;
    ADOTable1�S�M: TWideStringField;
    ADOTable1SOY: TWideStringField;
    ADOTable1EMA�L: TWideStringField;
    ADOTable1tel: TWideStringField;
    Edit7: TEdit;
    procedure CheckBox1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation
uses unit1;

{$R *.dfm}




procedure TForm6.Button1Click(Sender: TObject);
begin

if edit5.Text=edit6.Text then
      begin
      showmessage('KAYDIT OLDUNUZ TEBR�K EDER�Z!') ;

      ADOTable1.Append;
    ADOTable1.FieldByName('�S�M').AsString := Edit1.Text;
    ADOTable1.FieldByName('SOY').AsString := Edit2.Text;
     ADOTable1.FieldByName('EMA�L').AsString := Edit3.Text;
    ADOTable1.FieldByName('tel').AsLargeInt := StrToInt64(Edit4.Text);
     ADOTable1.FieldByName('K_A').AsString := Edit7.Text;
    ADOTable1.FieldByName('K_S').AsString := Edit5.Text;
    ADOTable1.Post;
      ADOTable1.Refresh;
    ADOTable1.Open;


    ShowMessage('L�tfen program� yeniden ba�lat�n�z ');
 form6.Close;
    form1.Show;
      Application.Terminate;

      end
else
      begin
           showmessage('�ifreler Uyu�muyor')    ;
           edit5.Text:='';
           edit6.Text:='';
      end;

end;

procedure TForm6.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked=true then
begin
  Edit5.passwordchar := #0;
end;
if CheckBox1.Checked=false then
begin
  Edit5.passwordchar := '*';
end;

end;



procedure TForm6.FormCreate(Sender: TObject);
begin
 (*   ADOTable1.Append;
    ADOTable1.FieldByName('�S�M').AsString := Edit1.Text;
    ADOTable1.FieldByName('SOY').AsString := Edit2.Text;
     ADOTable1.FieldByName('EMA�L').AsString := Edit3.Text;
      ADOTable1.FieldByName('tel').AsInteger := strtoint(Edit4.Text);
     ADOTable1.FieldByName('K_A').AsString := Edit7.Text;
           ADOTable1.FieldByName('K_S').AsString := Edit5.Text;
    ADOTable1.Post;
    ShowMessage('Yeni �r�n eklendi!');
    *)
 end;

end.
unit kartukeluarga;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    BtnTambah: TButton;
    BtnEdit: TButton;
    BtnSimpan: TButton;
    BtnHapus: TButton;
    BtnKeluar: TButton;
    BtnBatal: TButton;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Cari: TButton;
    Label7: TLabel;
    DBGrid1: TDBGrid;
    DateTimePicker1: TDateTimePicker;
    procedure BtnKeluarClick(Sender: TObject);
    procedure BtnBatalClick(Sender: TObject);
    procedure BtnHapusClick(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
    procedure BtnSimpanClick(Sender: TObject);
    procedure BtnTambahClick(Sender: TObject);
    procedure CariClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses DataModule;

procedure TForm5.BtnBatalClick(Sender: TObject);
begin
   DataModule1.Unikartukeluarga.Cancel;
   OnActivate(Sender);
end;

procedure TForm5.BtnEditClick(Sender: TObject);
begin
DataModule1.Unikartukeluarga.Edit;
DBEdit1.Enabled:=False;
DBEdit2.Enabled:=True;
DBEdit3.Enabled:=True;
DBEdit4.Enabled:=True;
DBEdit5.Enabled:=True;
DateTimePicker1.Enabled:=True;

BtnSimpan.Enabled:=True;
BtnBatal.Enabled:=False;
BtnHapus.Enabled:=False;
BtnEdit.Enabled:=False;

end;

procedure TForm5.BtnHapusClick(Sender: TObject);
begin
 if Application.MessageBox('Apakah Anda Ingin Menghapus Data Ini?','Konfirmasi',mb_yesno)=Idyes then
 Begin
   DataModule1.Unikartukeluarga.Delete;
   OnActivate(Sender);
 End;
end;

procedure TForm5.BtnKeluarClick(Sender: TObject);
begin
close;
end;

procedure TForm5.BtnSimpanClick(Sender: TObject);
begin
If
(DBEdit1.Text='') or
(DBEdit2.Text='') or
(DBEdit3.Text='') or
(DBEdit4.Text='') or
(DBEdit5.Text='') or
(DBEdit6.Text='')  then
Begin
      ShowMessage ('Data Tidak Boleh Kosong');
      DBEdit1.SetFocus;
End
Else
      DataModule1.Unikartukeluarga.Post;
      ShowMessage ('Data Berhasil Disimpan');
      OnActivate(Sender);
end;

procedure TForm5.BtnTambahClick(Sender: TObject);
begin
DataModule1.Unikartukeluarga.Append;
BtnTambah.Enabled:=False;
BtnKeluar.Enabled:=False;
BtnSimpan.Enabled:=True;
BtnBatal.Enabled:=True;

DBEdit1.Enabled:=True;
DBEdit2.Enabled:=True;
DBEdit3.Enabled:=True;
DBEdit4.Enabled:=True;
DBEdit5.Enabled:=True;
DateTimePicker1.Enabled:=True;
DBEdit1.Setfocus;
end;

procedure TForm5.CariClick(Sender: TObject);
begin
if not (DataModule1.Unikartukeluarga.Locate('ID',Edit1.Text,[loPartialKey])) then
 Begin
      ShowMessage ('Data Tidak Ditemukan');
      Edit1.SetFocus;
 End
 else
 begin
 BtnTambah.Enabled:=False;
 BtnEdit.Enabled:=True;
 BtnHapus.Enabled:=True;
 BtnBatal.Enabled:=True;
 BtnKeluar.Enabled:=False;
 end;
end;

procedure TForm5.DateTimePicker1Change(Sender: TObject);
begin
DBEdit6.Text:=DateToStr(datetimepicker1.Date);
end;

procedure TForm5.DBEdit1Exit(Sender: TObject);
begin
DataModule1.Qkartukeluarga.close;
  DataModule1.Qkartukeluarga.sql.clear;
  DataModule1.Qkartukeluarga.sql.add('select*from tkartukeluarga');
  DataModule1.Qkartukeluarga.Open;
  if (DataModule1.Qkartukeluarga.Locate('ID',DBEdit1.Text,[loPartialKey])) then
 Begin
      ShowMessage ('ID sudah Terdaftar');
      BtnBatal.Click;
end;
end;
procedure TForm5.FormActivate(Sender: TObject);
begin
BtnTambah.Enabled:=True;
BtnSimpan.Enabled:=False;
BtnEdit.Enabled:=False;
BtnHapus.Enabled:=False;
BtnBatal.Enabled:=False;
BtnKeluar.Enabled:=True;

DBEdit1.Enabled:=False;
DBEdit2.Enabled:=False;
DBEdit3.Enabled:=False;
DBEdit4.Enabled:=False;
DBEdit5.Enabled:=False;
DBEdit6.Enabled:=False;

DateTimePicker1.Enabled:=False;

DBEdit1.Text:='';
DBEdit2.Text:='';
DBEdit3.Text:='';
DBEdit4.Text:='';
DBEdit5.Text:='';
DBEdit6.Text:='';

end;

end.

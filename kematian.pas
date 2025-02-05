unit kematian;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  TForm7 = class(TForm)
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
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Cari: TButton;
    BtnTambah: TButton;
    BtnEdit: TButton;
    BtnSimpan: TButton;
    BtnHapus: TButton;
    BtnKeluar: TButton;
    BtnBatal: TButton;
    DBGrid1: TDBGrid;
    DateTimePicker1: TDateTimePicker;
    procedure FormActivate(Sender: TObject);
    procedure CariClick(Sender: TObject);
    procedure BtnKeluarClick(Sender: TObject);
    procedure BtnBatalClick(Sender: TObject);
    procedure BtnHapusClick(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
    procedure BtnSimpanClick(Sender: TObject);
    procedure BtnTambahClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

uses DataModule;

procedure TForm7.BtnBatalClick(Sender: TObject);
begin
    DataModule1.UniKematian.Cancel;
   OnActivate(Sender);
end;

procedure TForm7.BtnEditClick(Sender: TObject);
begin
DataModule1.UniKematian.Edit;
DBEdit1.Enabled:=False;
DBEdit2.Enabled:=True;
DBEdit3.Enabled:=True;
DBEdit5.Enabled:=True;
DBEdit6.Enabled:=True;
DBEdit7.Enabled:=True;
DateTimePicker1.Enabled:=True;


BtnSimpan.Enabled:=True;
BtnBatal.Enabled:=False;
BtnHapus.Enabled:=False;
BtnEdit.Enabled:=False;
end;

procedure TForm7.BtnHapusClick(Sender: TObject);
begin
if Application.MessageBox('Apakah Anda Ingin Menghapus Data Ini?','Konfirmasi',mb_yesno)=Idyes then
 Begin
   DataModule1.Unikematian.Delete;
   OnActivate(Sender);
 End;
end;

procedure TForm7.BtnKeluarClick(Sender: TObject);
begin
close;
end;

procedure TForm7.BtnSimpanClick(Sender: TObject);
begin
If
(DBEdit1.Text='') or
(DBEdit2.Text='') or
(DBEdit3.Text='') or
(DBEdit4.Text='') or
(DBEdit5.Text='') or
(DBEdit6.Text='') or
(DBEdit7.Text='')  then
Begin
      ShowMessage ('Data Tidak Boleh Kosong');
      DBEdit1.SetFocus;
End
Else
      DataModule1.Unikematian.Post;
      ShowMessage ('Data Berhasil Disimpan');
      OnActivate(Sender);
end;
procedure TForm7.BtnTambahClick(Sender: TObject);
begin
DataModule1.UniKematian.Append;
BtnTambah.Enabled:=False;
BtnKeluar.Enabled:=False;
BtnSimpan.Enabled:=True;
BtnBatal.Enabled:=True;

DBEdit1.Enabled:=True;
DBEdit2.Enabled:=True;
DBEdit3.Enabled:=True;
DBEdit5.Enabled:=True;
DBEdit6.Enabled:=True;
DBEdit7.Enabled:=True;
DateTimePicker1.Enabled:=True;

DBEdit1.Setfocus;
end;


procedure TForm7.CariClick(Sender: TObject);
begin
if not (DataModule1.Unikematian.Locate('no_surat_kematian',Edit1.Text,[loPartialKey])) then
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

procedure TForm7.DateTimePicker1Change(Sender: TObject);
begin
DBEdit4.Text:=DateToStr(datetimepicker1.Date);
end;

procedure TForm7.DBEdit1Exit(Sender: TObject);
begin
 DataModule1.Qkematian.close;
  DataModule1.Qkematian.sql.clear;
  DataModule1.Qkematian.sql.add('select*from tkematian');
  DataModule1.Qkematian.Open;
  if (DataModule1.Qkematian.Locate('no_surat_kematian',DBEdit1.Text,[loPartialKey])) then
 Begin
      ShowMessage ('No Akte sudah Terdaftar');
      BtnBatal.Click;
 End;
end;

procedure TForm7.FormActivate(Sender: TObject);
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
DBEdit7.Enabled:=False;
DateTimePicker1.Enabled:=False;


DBEdit1.Text:='';
DBEdit2.Text:='';
DBEdit3.Text:='';
DBEdit4.Text:='';
DBEdit5.Text:='';
DBEdit6.Text:='';
DBEdit7.Text:='';

end;

end.

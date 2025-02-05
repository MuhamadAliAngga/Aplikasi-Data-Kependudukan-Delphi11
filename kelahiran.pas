unit kelahiran;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Cari: TButton;
    BtnTambah: TButton;
    BtnEdit: TButton;
    BtnSimpan: TButton;
    BtnHapus: TButton;
    BtnKeluar: TButton;
    DBGrid1: TDBGrid;
    DateTimePicker1: TDateTimePicker;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    BtnBatal: TButton;
    DBEdit13: TDBEdit;
    procedure BtnKeluarClick(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BtnTambahClick(Sender: TObject);
    procedure BtnBatalClick(Sender: TObject);
    procedure BtnSimpanClick(Sender: TObject);
    procedure CariClick(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
    procedure BtnHapusClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses DataModule;

procedure TForm2.BtnTambahClick(Sender: TObject);
begin
DataModule1.Unikelahiran.Append;
BtnTambah.Enabled:=False;
BtnKeluar.Enabled:=False;
BtnSimpan.Enabled:=True;
BtnBatal.Enabled:=True;

DBEdit1.Enabled:=True;
DBEdit2.Enabled:=True;
DBEdit3.Enabled:=True;
DBEdit5.Enabled:=True;
DBEdit8.Enabled:=True;
DBEdit9.Enabled:=True;
DBEdit10.Enabled:=True;
DBEdit11.Enabled:=True;
DBEdit13.Enabled:=True;
ComboBox1.Enabled:=True;
ComboBox2.Enabled:=True;
DateTimePicker1.Enabled:=True;
DBEdit1.Setfocus;

end;

procedure TForm2.CariClick(Sender: TObject);
begin
 if not (DataModule1.Unikelahiran.Locate('no_akte',Edit1.Text,[loPartialKey])) then
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

procedure TForm2.ComboBox1Change(Sender: TObject);
begin
DBEdit6.Text:=Combobox1.text;
end;

procedure TForm2.ComboBox2Change(Sender: TObject);
begin
DBEdit7.Text:=combobox2.Text;
end;

procedure TForm2.DateTimePicker1Change(Sender: TObject);
begin
DBEdit4.Text:=DateToStr(datetimepicker1.Date);
end;

procedure TForm2.DBEdit1Exit(Sender: TObject);
begin
  DataModule1.Qkelahiran.close;
  DataModule1.Qkelahiran.sql.clear;
  DataModule1.Qkelahiran.sql.add('select*from tkelahiran');
  DataModule1.Qkelahiran.Open;
  if (DataModule1.Qkelahiran.Locate('no_akte',DBEdit1.Text,[loPartialKey])) then
 Begin
      ShowMessage ('No Akte sudah Terdaftar');
      BtnBatal.Click;
 End;
end;

procedure TForm2.FormActivate(Sender: TObject);
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
DBEdit8.Enabled:=False;
DBEdit9.Enabled:=False;
DBEdit10.Enabled:=False;
DBEdit11.Enabled:=False;
DBEdit13.Enabled:=False;
ComboBox1.Enabled:=False;
ComboBox2.Enabled:=False;
DateTimePicker1.Enabled:=False;

DBEdit1.Text:='';
DBEdit2.Text:='';
DBEdit3.Text:='';
DBEdit4.Text:='';
DBEdit5.Text:='';
DBEdit6.Text:='';
DBEdit7.Text:='';
DBEdit8.Text:='';
DBEdit9.Text:='';
DBEdit10.Text:='';
DBEdit11.Text:='';
DBEdit13.Text:='';

end;

procedure TForm2.BtnBatalClick(Sender: TObject);
begin
   DataModule1.UniKelahiran.Cancel;
   OnActivate(Sender);
end;

procedure TForm2.BtnEditClick(Sender: TObject);
begin
DataModule1.UniKelahiran.Edit;
DBEdit1.Enabled:=False;
DBEdit2.Enabled:=True;
DBEdit3.Enabled:=True;
DBEdit4.Enabled:=True;
DBEdit5.Enabled:=True;
DBEdit6.Enabled:=True;
DBEdit7.Enabled:=True;
DBEdit8.Enabled:=True;
DBEdit9.Enabled:=True;
DBEdit10.Enabled:=True;
DBEdit11.Enabled:=True;
DBEdit13.Enabled:=True;
ComboBox1.Enabled:=True;
ComboBox2.Enabled:=True;
DateTimePicker1.Enabled:=True;

BtnSimpan.Enabled:=True;
BtnBatal.Enabled:=False;
BtnHapus.Enabled:=False;
BtnEdit.Enabled:=False;
end;

procedure TForm2.BtnHapusClick(Sender: TObject);
begin
 if Application.MessageBox('Apakah Anda Ingin Menghapus Data Ini?','Konfirmasi',mb_yesno)=Idyes then
 Begin
   DataModule1.Unikelahiran.Delete;
   OnActivate(Sender);
 End;

end;

procedure TForm2.BtnKeluarClick(Sender: TObject);
begin
close;
end;

procedure TForm2.BtnSimpanClick(Sender: TObject);
begin
If
(DBEdit1.Text='') or
(DBEdit2.Text='') or
(DBEdit3.Text='') or
(DBEdit4.Text='') or
(DBEdit5.Text='') or
(DBEdit6.Text='') or
(DBEdit7.Text='') or
(DBEdit8.Text='') or
(DBEdit9.Text='') or
(DBEdit10.Text='')or
(DBEdit11.Text='')or
(DBEdit13.Text='') then
Begin
      ShowMessage ('Data Tidak Boleh Kosong');
      DBEdit1.SetFocus;
End
Else
      DataModule1.UniKelahiran.Post;
      ShowMessage ('Data Berhasil Disimpan');
      OnActivate(Sender);
end;

end.

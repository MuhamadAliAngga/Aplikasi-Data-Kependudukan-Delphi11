unit pendudukdatang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.ComCtrls;

type
  TForm3 = class(TForm)
    BtnTambah: TButton;
    BtnEdit: TButton;
    BtnSimpan: TButton;
    BtnHapus: TButton;
    BtnKeluar: TButton;
    BtnBatal: TButton;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Cari: TButton;
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
    DateTimePicker1: TDateTimePicker;
    ComboBox1: TComboBox;
    procedure DateTimePicker1Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure BtnKeluarClick(Sender: TObject);
    procedure BtnTambahClick(Sender: TObject);
    procedure BtnBatalClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BtnSimpanClick(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
    procedure BtnHapusClick(Sender: TObject);
    procedure CariClick(Sender: TObject);
    procedure DBEdit5Change(Sender: TObject);
    procedure DBEdit6Change(Sender: TObject);
    procedure DBEdit7Change(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses DataModule;

procedure TForm3.BtnBatalClick(Sender: TObject);
begin
DataModule1.Unipendudukdatang.Cancel;
   OnActivate(Sender);
end;

procedure TForm3.BtnEditClick(Sender: TObject);
begin
DataModule1.Unipendudukdatang.Edit;
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
ComboBox1.Enabled:=True;
DateTimePicker1.Enabled:=True;

BtnSimpan.Enabled:=True;
BtnBatal.Enabled:=False;
BtnHapus.Enabled:=False;
BtnEdit.Enabled:=False;
end;

procedure TForm3.BtnHapusClick(Sender: TObject);
begin
 if Application.MessageBox('Apakah Anda Ingin Menghapus Data Ini?','Konfirmasi',mb_yesno)=Idyes then
 Begin
   DataModule1.UNIpendudukdatang.Delete;
   OnActivate(Sender);
 End;
end;

procedure TForm3.BtnKeluarClick(Sender: TObject);
begin
Form3.Close;
end;

procedure TForm3.BtnSimpanClick(Sender: TObject);
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
(DBEdit11.Text='') then
Begin
      ShowMessage ('Data Tidak Boleh Kosong');
      DBEdit1.SetFocus;
End
Else
      DataModule1.Unipendudukdatang.Post;
      ShowMessage ('Data Berhasil Disimpan');
      OnActivate(Sender);
end;

procedure TForm3.BtnTambahClick(Sender: TObject);
begin
DataModule1.Unipendudukdatang.Append;
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
DBEdit10.Enabled:=True;
DBEdit11.Enabled:=True;
ComboBox1.Enabled:=True;
DateTimePicker1.Enabled:=True;
DBEdit1.Setfocus;
end;

procedure TForm3.CariClick(Sender: TObject);
begin
if not (DataModule1.Unipendudukdatang.Locate('nik',Edit1.Text,[loPartialKey])) then
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

procedure TForm3.ComboBox1Change(Sender: TObject);
begin
DBEdit8.Text:=Combobox1.text;
end;

procedure TForm3.DateTimePicker1Change(Sender: TObject);
begin
  DBEdit9.Text:=DateToStr(datetimepicker1.Date);
end;

procedure TForm3.DBEdit1Exit(Sender: TObject);
begin
 DataModule1.Qpendudukdatang.close;
  DataModule1.Qpendudukdatang.sql.clear;
  DataModule1.Qpendudukdatang.sql.add('select*from tpendudukdatang');
  DataModule1.Qpendudukdatang.Open;
  if (DataModule1.Qpendudukdatang.Locate('nik',DBEdit1.Text,[loPartialKey])) then
 Begin
      ShowMessage ('NIK sudah Ada');
      BtnBatal.Click;
 End;
end;

procedure TForm3.DBEdit5Change(Sender: TObject);
begin
DBEdit4.Text:= DBEdit5.Text+' '+DBEdit6.Text+' '+DBEdit7.Text;
end;

procedure TForm3.DBEdit6Change(Sender: TObject);
begin
DBEdit4.Text:= DBEdit5.Text+' '+DBEdit6.Text+' '+DBEdit7.Text;
end;

procedure TForm3.DBEdit7Change(Sender: TObject);
begin
DBEdit4.Text:= DBEdit5.Text+' '+DBEdit6.Text+' '+DBEdit7.Text;
end;

procedure TForm3.FormActivate(Sender: TObject);
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
ComboBox1.Enabled:=False;
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

end;

end.

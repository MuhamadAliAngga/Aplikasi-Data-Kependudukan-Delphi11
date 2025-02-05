unit penduduk;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.ComCtrls;

type
  TForm4 = class(TForm)
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
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    Label17: TLabel;
    DBEdit17: TDBEdit;
    Label18: TLabel;
    DBEdit18: TDBEdit;
    Label19: TLabel;
    DBEdit19: TDBEdit;
    Label20: TLabel;
    DBEdit20: TDBEdit;
    Label21: TLabel;
    DBEdit21: TDBEdit;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Cari: TButton;
    Label22: TLabel;
    BtnTambah: TButton;
    BtnEdit: TButton;
    BtnSimpan: TButton;
    BtnHapus: TButton;
    BtnKeluar: TButton;
    BtnBatal: TButton;
    DBGrid1: TDBGrid;
    DateTimePicker1: TDateTimePicker;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    Label23: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    procedure DateTimePicker1Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure BtnKeluarClick(Sender: TObject);
    procedure BtnBatalClick(Sender: TObject);
    procedure BtnHapusClick(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
    procedure BtnSimpanClick(Sender: TObject);
    procedure BtnTambahClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure CariClick(Sender: TObject);
    procedure DBEdit6Change(Sender: TObject);
    procedure DBEdit7Change(Sender: TObject);
    procedure DBEdit8Change(Sender: TObject);
    procedure DBEdit9Change(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure ComboBox5Change(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses DataModule;

procedure TForm4.BtnBatalClick(Sender: TObject);
begin
 DataModule1.Unipenduduk.Cancel;
   OnActivate(Sender);
end;

procedure TForm4.BtnEditClick(Sender: TObject);
begin
DataModule1.Unipenduduk.Edit;
DBEdit1.Enabled:=False;
DBEdit2.Enabled:=True;
DBEdit5.Enabled:=True;
DBEdit6.Enabled:=True;
DBEdit7.Enabled:=True;
DBEdit8.Enabled:=True;
DBEdit9.Enabled:=True;
DBEdit11.Enabled:=True;
DBEdit12.Enabled:=True;
DBEdit13.Enabled:=True;
DBEdit17.Enabled:=True;
DBEdit18.Enabled:=True;
DBEdit19.Enabled:=True;
DBEdit20.Enabled:=True;
DBEdit21.Enabled:=True;
ComboBox1.Enabled:=True;
ComboBox2.Enabled:=True;
ComboBox3.Enabled:=True;
ComboBox3.Enabled:=True;
DateTimePicker1.Enabled:=True;

BtnSimpan.Enabled:=True;
BtnBatal.Enabled:=False;
BtnHapus.Enabled:=False;
BtnEdit.Enabled:=False;

end;

procedure TForm4.BtnHapusClick(Sender: TObject);
begin
if Application.MessageBox('Apakah Anda Ingin Menghapus Data Ini?','Konfirmasi',mb_yesno)=Idyes then
 Begin
   DataModule1.Unipenduduk.Delete;
   OnActivate(Sender);
 End;
end;

procedure TForm4.BtnKeluarClick(Sender: TObject);
begin
Close;
end;

procedure TForm4.BtnSimpanClick(Sender: TObject);
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
(DBEdit12.Text='') or
(DBEdit13.Text='') or
(DBEdit14.Text='') or
(DBEdit15.Text='') or
(DBEdit16.Text='') or
(DBEdit17.Text='') or
(DBEdit18.Text='') or
(DBEdit19.Text='')or
(DBEdit20.Text='')or
(DBEdit21.Text='') then
Begin
      ShowMessage ('Data Tidak Boleh Kosong');
      DBEdit1.SetFocus;
End
Else
      DataModule1.Unipenduduk.Post;
      ShowMessage ('Data Berhasil Disimpan');
      OnActivate(Sender);

end;

procedure TForm4.BtnTambahClick(Sender: TObject);
begin
DataModule1.Unipenduduk.Append;
ComboBox5.Enabled:=True;
ComboBox5.SetFocus;
BtnTambah.Enabled:=False;
BtnKeluar.Enabled:=False;
BtnSimpan.Enabled:=True;
BtnBatal.Enabled:=True;
DBEdit21.Text:='Belum Masuk KK';
end;

procedure TForm4.CariClick(Sender: TObject);
begin
 if not (DataModule1.Unipenduduk.Locate('nik',Edit1.Text,[loPartialKey])) then
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

procedure TForm4.ComboBox1Change(Sender: TObject);
begin
DBEdit10.Text:=Combobox1.text;
end;

procedure TForm4.ComboBox2Change(Sender: TObject);
begin
  DBEdit14.Text:=Combobox2.text;
end;

procedure TForm4.ComboBox3Change(Sender: TObject);
begin
DBEdit16.Text:=Combobox3.text;
end;

procedure TForm4.ComboBox4Change(Sender: TObject);
begin
  DBEdit4.Text:=Combobox4.text;
end;

procedure TForm4.ComboBox5Change(Sender: TObject);
begin
if combobox5.text='Data Baru' then
Begin
  combobox5.enabled:=False;
  DBEdit1.Enabled:=True;
  DBEdit1.SetFocus;

  DBEdit1.Enabled:=True;
  DBEdit2.Enabled:=True;
  DBEdit3.Enabled:=True;
  DBEdit5.Enabled:=True;
  DBEdit6.Enabled:=True;
  DBEdit7.Enabled:=True;
  DBEdit8.Enabled:=True;
  DBEdit9.Enabled:=True;
  DBEdit11.Enabled:=True;
  DBEdit13.Enabled:=True;
  DBEdit17.Enabled:=True;
  DBEdit18.Enabled:=True;
  DBEdit19.Enabled:=True;
  DBEdit20.Enabled:=True;

  ComboBox1.Enabled:=True;
  ComboBox2.Enabled:=True;
  ComboBox3.Enabled:=True;
  ComboBox4.Enabled:=True;
  DateTimePicker1.Enabled:=True;

End
Else
If combobox5.text='Kelahiran' then
Begin
  DBLookupComboBox1.Visible:=True;
  DBLookupComboBox1.SetFocus;
  combobox5.enabled:=False;
End
Else
Begin
  DBLookupComboBox2.Visible:=True;
  DBLookupComboBox2.SetFocus;
  combobox5.enabled:=False;
  End
end;

procedure TForm4.DateTimePicker1Change(Sender: TObject);
begin
DBEdit15.Text:=DateToStr(datetimepicker1.Date);
end;

procedure TForm4.DBEdit1Exit(Sender: TObject);
begin
  DataModule1.Qpenduduk.close;
  DataModule1.Qpenduduk.sql.clear;
  DataModule1.Qpenduduk.sql.add('select*from tpenduduk');
  DataModule1.Qpenduduk.Open;
  if (DataModule1.Qpenduduk.Locate('nik',DBEdit1.Text,[loPartialKey])) then
 Begin
      ShowMessage ('NIK sudah Terdaftar');
      BtnBatal.Click;
 End;

end;

procedure TForm4.DBEdit6Change(Sender: TObject);
begin
DBEdit5.Text:= DBEdit6.Text+' '+DBEdit7.Text+' '+DBEdit8.Text+' '+DBEdit8.Text+' '+DBEdit9.Text;
end;

procedure TForm4.DBEdit7Change(Sender: TObject);
begin
DBEdit5.Text:= DBEdit6.Text+' '+DBEdit7.Text+' '+DBEdit8.Text+' '+DBEdit8.Text+' '+DBEdit9.Text;
end;

procedure TForm4.DBEdit8Change(Sender: TObject);
begin
DBEdit5.Text:= DBEdit6.Text+' '+DBEdit7.Text+' '+DBEdit8.Text+' '+DBEdit8.Text+' '+DBEdit9.Text;
end;

procedure TForm4.DBEdit9Change(Sender: TObject);
begin
DBEdit5.Text:= DBEdit6.Text+' '+DBEdit7.Text+' '+DBEdit8.Text+' '+DBEdit8.Text+' '+DBEdit9.Text;
end;

procedure TForm4.DBLookupComboBox1Click(Sender: TObject);
begin
DBEdit1.Text:=DBLookupComboBox1.Text;
if  (DataModule1.Unikelahiran.Locate('no_akte',DBEdit1.Text,[loPartialKey])) then
 Begin
    DBEdit2.Text:=DataModule1.Unikelahiran['nama'];
    DBEdit3.Text:=DataModule1.Unikelahiran['tempat_lahir'];
    DBEdit4.Text:=DataModule1.Unikelahiran['jenis_kelamin'];
    DBEdit10.Text:=DataModule1.Unikelahiran['agama'];
    DBEdit19.Text:=DataModule1.Unikelahiran['nama_ayah'];
    DBEdit20.Text:=DataModule1.Unikelahiran['nama_ibu'];
    DBEdit6.Enabled:=True;
    DBEdit7.Enabled:=True;
    DBEdit8.Enabled:=True;
    DBEdit9.Enabled:=True;
    DBEdit13.Enabled:=True;
    ComboBox3.Enabled:=True;
    DBEdit11.Text:='-';
    DBEdit12.Text:='-';
    DBEdit14.Text:='-';
    DBEdit15.Text:='-';

 End
 else
 begin
 BtnTambah.Enabled:=True;
 BtnKeluar.Enabled:=True;
 end;
end;


procedure TForm4.DBLookupComboBox2Click(Sender: TObject);
begin
 DBEdit1.Text:=DBLookupComboBox2.Text;
 if  (DataModule1.Unipendudukdatang.Locate('nik',DBEdit1.Text,[loPartialKey])) then
 Begin
    DBEdit2.Text:=DataModule1.Unipendudukdatang['nama_lengkap'];
    DBEdit6.Text:=DataModule1.Unipendudukdatang['kelurahan'];
    DBEdit7.Text:=DataModule1.Unipendudukdatang['kelurahan'];
    DBEdit8.Text:=DataModule1.Unipendudukdatang['kabupaten_kota'];
    DBEdit9.Text:=DataModule1.Unipendudukdatang['provinsi'];
    DBEdit3.Enabled:=True;
    DBEdit11.Enabled:=True;
    DBEdit12.Enabled:=True;
    DBEdit13.Enabled:=True;
    DBEdit17.Enabled:=True;
    DBEdit18.Enabled:=True;
    DBEdit19.Enabled:=True;
    DBEdit20.Enabled:=True;
    ComboBox1.Enabled:=True;
    ComboBox2.Enabled:=True;
    ComboBox3.Enabled:=True;
    ComboBox4.Enabled:=True;
    DateTimePicker1.Enabled:=True;

 End
 else
 begin
 BtnTambah.Enabled:=True;
 BtnKeluar.Enabled:=True;
 end;
end;

procedure TForm4.FormActivate(Sender: TObject);
begin
BtnTambah.Enabled:=True;
BtnSimpan.Enabled:=False;
BtnEdit.Enabled:=False;
BtnHapus.Enabled:=False;
BtnBatal.Enabled:=False;
BtnKeluar.Enabled:=True;

DBLookupComboBox1.Visible:=False;
DBLookupComboBox2.Visible:=False;
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
DBEdit14.Enabled:=False;
DBEdit15.Enabled:=False;
DBEdit16.Enabled:=False;
DBEdit17.Enabled:=False;
DBEdit18.Enabled:=False;
DBEdit19.Enabled:=False;
DBEdit20.Enabled:=False;
DBEdit21.Enabled:=False;
ComboBox1.Enabled:=False;
ComboBox2.Enabled:=False;
ComboBox3.Enabled:=False;
ComboBox4.Enabled:=False;
ComboBox5.Enabled:=False;
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
DBEdit12.Text:='';
DBEdit13.Text:='';
DBEdit14.Text:='';
DBEdit15.Text:='';
DBEdit16.Text:='';
DBEdit17.Text:='';
DBEdit18.Text:='';
DBEdit19.Text:='';
DBEdit20.Text:='';
DBEdit21.Text:='';
ComboBox1.Text:='';
ComboBox2.Text:='';
ComboBox3.Text:='';
ComboBox4.Text:='';
ComboBox5.Text:='';

end;

end.

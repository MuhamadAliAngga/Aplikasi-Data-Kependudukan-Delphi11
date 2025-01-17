unit pendudukpindah;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TForm6 = class(TForm)
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
    procedure BtnKeluarClick(Sender: TObject);
    procedure BtnBatalClick(Sender: TObject);
    procedure BtnHapusClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
    procedure BtnSimpanClick(Sender: TObject);
    procedure BtnTambahClick(Sender: TObject);
    procedure CariClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses DataModule;

procedure TForm6.BtnBatalClick(Sender: TObject);
begin
DataModule1.Unipendudukpindah.Cancel;
   OnActivate(Sender);
end;

procedure TForm6.BtnEditClick(Sender: TObject);
begin
DataModule1.Unipendudukpindah.Edit;
DBEdit1.Enabled:=False;
DBEdit2.Enabled:=True;
DBEdit3.Enabled:=True;
DBEdit4.Enabled:=True;
DBEdit5.Enabled:=True;
DBEdit6.Enabled:=True;
DBEdit7.Enabled:=True;
DBEdit8.Enabled:=True;

BtnSimpan.Enabled:=True;
BtnBatal.Enabled:=False;
BtnHapus.Enabled:=False;
BtnEdit.Enabled:=False;

end;

procedure TForm6.BtnHapusClick(Sender: TObject);
begin
if Application.MessageBox('Apakah Anda Ingin Menghapus Data Ini?','Konfirmasi',mb_yesno)=Idyes then
 Begin
   DataModule1.Unipendudukpindah.Delete;
   OnActivate(Sender);
 End;
end;

procedure TForm6.BtnKeluarClick(Sender: TObject);
begin
close;
end;

procedure TForm6.BtnSimpanClick(Sender: TObject);
begin
If
(DBEdit1.Text='') or
(DBEdit2.Text='') or
(DBEdit3.Text='') or
(DBEdit4.Text='') or
(DBEdit5.Text='') or
(DBEdit6.Text='') or
(DBEdit7.Text='') or
(DBEdit8.Text='') then
Begin
      ShowMessage ('Data Tidak Boleh Kosong');
      DBEdit1.SetFocus;
End
Else
      DataModule1.Unipendudukpindah.Post;
      ShowMessage ('Data Berhasil Disimpan');
      OnActivate(Sender);
end;

procedure TForm6.BtnTambahClick(Sender: TObject);
begin
DataModule1.Unipendudukpindah.Append;
BtnTambah.Enabled:=False;
BtnKeluar.Enabled:=False;
BtnSimpan.Enabled:=True;
BtnBatal.Enabled:=True;

DBEdit1.Enabled:=True;
DBEdit2.Enabled:=True;
DBEdit3.Enabled:=True;
DBEdit4.Enabled:=True;
DBEdit5.Enabled:=True;
DBEdit6.Enabled:=True;
DBEdit7.Enabled:=True;
DBEdit8.Enabled:=True;
DBEdit1.Setfocus;
end;

procedure TForm6.CariClick(Sender: TObject);
begin
 if not (DataModule1.Unipendudukpindah.Locate('no_surat_pindah',Edit1.Text,[loPartialKey])) then
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

procedure TForm6.DBEdit1Exit(Sender: TObject);
begin
  DataModule1.Qpendudukpindah.close;
  DataModule1.Qpendudukpindah.sql.clear;
  DataModule1.Qpendudukpindah.sql.add('select*from tpenduduk_pindah');
  DataModule1.Qpendudukpindah.Open;
  if (DataModule1.Qpendudukpindah.Locate('no_surat_pindah',DBEdit1.Text,[loPartialKey])) then
 Begin
      ShowMessage ('No Surat sudah Ada');
      BtnBatal.Click;
 End;
end;

procedure TForm6.FormActivate(Sender: TObject);
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


DBEdit1.Text:='';
DBEdit2.Text:='';
DBEdit3.Text:='';
DBEdit4.Text:='';
DBEdit5.Text:='';
DBEdit6.Text:='';
DBEdit7.Text:='';
DBEdit8.Text:='';


end;

end.

unit DataModule;

interface

uses
  System.SysUtils, System.Classes, Uni, Data.DB, DBAccess, MemDS, UniProvider,
  MySQLUniProvider, UniDacVcl;

type
  TDataModule1 = class(TDataModule)
    UniConnection1: TUniConnection;
    MySQLUniProvider1: TMySQLUniProvider;
    Unikelahiran: TUniTable;
    UDSkelahiran: TUniDataSource;
    Qkelahiran: TUniQuery;
    Unipendudukdatang: TUniTable;
    Unipenduduk: TUniTable;
    Unikartukeluarga: TUniTable;
    Unipendudukpindah: TUniTable;
    Unikematian: TUniTable;
    Qpendudukdatang: TUniQuery;
    Qpenduduk: TUniQuery;
    Qkartukeluarga: TUniQuery;
    Qpendudukpindah: TUniQuery;
    Qkematian: TUniQuery;
    UDSpendudukdatang: TUniDataSource;
    UDSpenduduk: TUniDataSource;
    UDSkartukeluarga: TUniDataSource;
    UDSpendudukpindah: TUniDataSource;
    UDSkematian: TUniDataSource;
    Unikelahiranno_akte: TStringField;
    Unikelahirannama: TStringField;
    Unikelahirantempat_lahir: TStringField;
    Unikelahirantgl_lahir: TDateField;
    Unikelahiranjam_lahir: TTimeField;
    Unikelahiranjenis_kelamin: TStringField;
    Unikelahiranagama: TStringField;
    Unikelahiranalamat: TStringField;
    Unikelahirannama_ayah: TStringField;
    Unikelahirannama_ibu: TStringField;
    Unikelahiranpekerjaan: TStringField;
    Unikelahirananak_ke: TStringField;
    Unipendudukdatangnik: TIntegerField;
    Unipendudukdatangnama_lengkap: TStringField;
    Unipendudukdatangno_kk: TIntegerField;
    Unipendudukdatangalamat_asal: TStringField;
    Unipendudukdatangkelurahan: TStringField;
    Unipendudukdatangkabupaten_kota: TStringField;
    Unipendudukdatangprovinsi: TStringField;
    Unipendudukdatangstatus_no_kk: TStringField;
    Unipendudukdatangtanggal_kedatangan: TDateField;
    Unipendudukdatangalasan_datang: TStringField;
    Unipendudukdatangalamat_sekarang: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.

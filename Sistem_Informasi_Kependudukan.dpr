program Sistem_Informasi_Kependudukan;

uses
  Vcl.Forms,
  MenuUtama in 'MenuUtama.pas' {Form1},
  kelahiran in 'kelahiran.pas' {Form2},
  pendudukdatang in 'pendudukdatang.pas' {Form3},
  penduduk in 'penduduk.pas' {Form4},
  kartukeluarga in 'kartukeluarga.pas' {Form5},
  pendudukpindah in 'pendudukpindah.pas' {Form6},
  kematian in 'kematian.pas' {Form7},
  DataModule in 'DataModule.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.

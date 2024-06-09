unit MenuUtama;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    MainMenu1: TMainMenu;
    InputData1: TMenuItem;
    Kelahiran1: TMenuItem;
    PendudukDatang1: TMenuItem;
    Proses1: TMenuItem;
    Penduduk1: TMenuItem;
    KartuKeluarga1: TMenuItem;
    PendudukPindah1: TMenuItem;
    Kematian1: TMenuItem;
    PencarianDanLaporan1: TMenuItem;
    Kleahiran1: TMenuItem;
    PendudukDatang2: TMenuItem;
    Penduduk2: TMenuItem;
    PendudukPindah2: TMenuItem;
    PendudukPindah3: TMenuItem;
    Kematian2: TMenuItem;
    Operator1: TMenuItem;
    Login1: TMenuItem;
    Logout1: TMenuItem;
    Logout2: TMenuItem;
    Keluar1: TMenuItem;
    Image1: TImage;
    procedure Keluar1Click(Sender: TObject);
    procedure Kelahiran1Click(Sender: TObject);
    procedure PendudukDatang1Click(Sender: TObject);
    procedure Penduduk1Click(Sender: TObject);
    procedure KartuKeluarga1Click(Sender: TObject);
    procedure PendudukPindah1Click(Sender: TObject);
    procedure Kematian1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses kelahiran, pendudukdatang, penduduk, kartukeluarga, pendudukpindah,
  kematian;

procedure TForm1.KartuKeluarga1Click(Sender: TObject);
begin
Form5.showmodal;
end;

procedure TForm1.Kelahiran1Click(Sender: TObject);
begin
Form2.showmodal;
end;

procedure TForm1.Keluar1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm1.Kematian1Click(Sender: TObject);
begin
Form7.showmodal;
end;

procedure TForm1.Penduduk1Click(Sender: TObject);
begin
  Form4.showmodal;
end;

procedure TForm1.PendudukDatang1Click(Sender: TObject);
begin
  Form3.showmodal;
end;

procedure TForm1.PendudukPindah1Click(Sender: TObject);
begin
Form6.showmodal;
end;

end.

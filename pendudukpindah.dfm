object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'Form Data Penduduk Pindah'
  ClientHeight = 606
  ClientWidth = 779
  Color = 10912931
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnActivate = FormActivate
  TextHeight = 15
  object Label1: TLabel
    Left = 48
    Top = 120
    Width = 129
    Height = 18
    Caption = 'No Surat Pindah'
    FocusControl = DBEdit1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 48
    Top = 149
    Width = 29
    Height = 18
    Caption = 'NIK'
    FocusControl = DBEdit2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 48
    Top = 181
    Width = 50
    Height = 18
    Caption = 'No KK'
    FocusControl = DBEdit3
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 48
    Top = 210
    Width = 114
    Height = 18
    Caption = 'Alasan Pindah'
    FocusControl = DBEdit4
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 48
    Top = 239
    Width = 114
    Height = 18
    Caption = 'Alamat Tujuan'
    FocusControl = DBEdit5
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 48
    Top = 268
    Width = 142
    Height = 18
    Caption = 'Jenis Kepindahan'
    FocusControl = DBEdit6
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 48
    Top = 300
    Width = 155
    Height = 18
    Caption = 'Status Yang Pindah'
    FocusControl = DBEdit7
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 48
    Top = 332
    Width = 265
    Height = 18
    Caption = 'Jumlah Anggota Keluarga Pindah'
    FocusControl = DBEdit8
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 141
    Top = 4
    Width = 633
    Height = 43
    AutoSize = False
    Caption = 'Input Data Penduduk Pindah'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    Layout = tlCenter
  end
  object DBEdit1: TDBEdit
    Left = 320
    Top = 120
    Width = 154
    Height = 23
    DataField = 'no_surat_pindah'
    DataSource = DataModule1.UDSpendudukpindah
    TabOrder = 0
    OnExit = DBEdit1Exit
  end
  object DBEdit2: TDBEdit
    Left = 320
    Top = 149
    Width = 154
    Height = 23
    DataField = 'nik'
    DataSource = DataModule1.UDSpendudukpindah
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 320
    Top = 181
    Width = 154
    Height = 23
    DataField = 'no_kk'
    DataSource = DataModule1.UDSpendudukpindah
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 320
    Top = 210
    Width = 334
    Height = 23
    DataField = 'alasan_pindah'
    DataSource = DataModule1.UDSpendudukpindah
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 320
    Top = 239
    Width = 334
    Height = 23
    DataField = 'alamat_tujuan'
    DataSource = DataModule1.UDSpendudukpindah
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 320
    Top = 268
    Width = 334
    Height = 23
    DataField = 'jenis_kepindahan'
    DataSource = DataModule1.UDSpendudukpindah
    TabOrder = 5
  end
  object DBEdit7: TDBEdit
    Left = 320
    Top = 300
    Width = 334
    Height = 23
    DataField = 'status_yang_pindah'
    DataSource = DataModule1.UDSpendudukpindah
    TabOrder = 6
  end
  object DBEdit8: TDBEdit
    Left = 320
    Top = 332
    Width = 154
    Height = 23
    DataField = 'jumlah_keluarga_pindah'
    DataSource = DataModule1.UDSpendudukpindah
    TabOrder = 7
  end
  object GroupBox1: TGroupBox
    Left = 37
    Top = 58
    Width = 726
    Height = 56
    Caption = 'Pencarian, Masukan No Surat Pindah'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    object Edit1: TEdit
      Left = 7
      Top = 23
      Width = 626
      Height = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object Cari: TButton
      Left = 639
      Top = 21
      Width = 75
      Height = 25
      Caption = 'Cari'
      TabOrder = 1
      OnClick = CariClick
    end
  end
  object BtnTambah: TButton
    Left = 40
    Top = 376
    Width = 97
    Height = 37
    Caption = 'Tambah'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = BtnTambahClick
  end
  object BtnEdit: TButton
    Left = 286
    Top = 374
    Width = 97
    Height = 37
    Caption = 'Edit'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = BtnEditClick
  end
  object BtnSimpan: TButton
    Left = 166
    Top = 376
    Width = 97
    Height = 37
    Caption = 'Simpan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    OnClick = BtnSimpanClick
  end
  object BtnHapus: TButton
    Left = 413
    Top = 376
    Width = 97
    Height = 37
    Caption = 'Hapus'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    OnClick = BtnHapusClick
  end
  object BtnKeluar: TButton
    Left = 650
    Top = 374
    Width = 97
    Height = 37
    Caption = 'Keluar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    OnClick = BtnKeluarClick
  end
  object BtnBatal: TButton
    Left = 536
    Top = 376
    Width = 97
    Height = 37
    Caption = 'Batal'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    OnClick = BtnBatalClick
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 419
    Width = 739
    Height = 166
    DataSource = DataModule1.UDSpendudukpindah
    ReadOnly = True
    TabOrder = 15
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'no_surat_pindah'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nik'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'no_kk'
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'alasan_pindah'
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'alamat_tujuan'
        Width = 109
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jenis_kepindahan'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status_yang_pindah'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jumlah_keluarga_pindah'
        Visible = True
      end>
  end
end

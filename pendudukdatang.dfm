object Form3: TForm3
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Form Penduduk Datang'
  ClientHeight = 558
  ClientWidth = 843
  Color = 7390610
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnActivate = FormActivate
  TextHeight = 15
  object Label1: TLabel
    Left = 246
    Top = 7
    Width = 460
    Height = 43
    AutoSize = False
    Caption = 'Data Penduduk Datang'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    Layout = tlCenter
  end
  object Label2: TLabel
    Left = 54
    Top = 121
    Width = 29
    Height = 18
    Caption = 'NIK'
    FocusControl = DBEdit1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 55
    Top = 150
    Width = 119
    Height = 18
    Caption = 'Nama Lengkap'
    FocusControl = DBEdit2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 54
    Top = 179
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
  object Label5: TLabel
    Left = 54
    Top = 294
    Width = 56
    Height = 18
    Caption = 'Alamat'
    FocusControl = DBEdit4
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 54
    Top = 208
    Width = 145
    Height = 18
    Caption = 'Kelurahan, RT/RW'
    Color = 7455891
    FocusControl = DBEdit5
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label7: TLabel
    Left = 54
    Top = 238
    Width = 130
    Height = 18
    Caption = 'Kabupaten/Kota'
    FocusControl = DBEdit6
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 54
    Top = 266
    Width = 64
    Height = 18
    Caption = 'Provinsi'
    FocusControl = DBEdit7
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 484
    Top = 120
    Width = 106
    Height = 18
    Caption = 'Status No KK'
    FocusControl = DBEdit8
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 484
    Top = 151
    Width = 126
    Height = 18
    Caption = 'Tanggal Datang'
    FocusControl = DBEdit9
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 484
    Top = 180
    Width = 114
    Height = 18
    Caption = 'Alasan Pindah'
    FocusControl = DBEdit10
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 486
    Top = 208
    Width = 122
    Height = 18
    Caption = 'Desa Sekarang'
    FocusControl = DBEdit11
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object DateTimePicker1: TDateTimePicker
    Left = 630
    Top = 146
    Width = 145
    Height = 23
    Date = 45451.000000000000000000
    Time = 0.600931608794780900
    TabOrder = 19
    OnChange = DateTimePicker1Change
  end
  object ComboBox1: TComboBox
    Left = 630
    Top = 117
    Width = 145
    Height = 23
    TabOrder = 20
    Text = 'ComboBox1'
    OnChange = ComboBox1Change
    Items.Strings = (
      'Aktif'
      'Tidak Aktif')
  end
  object BtnTambah: TButton
    Left = 70
    Top = 352
    Width = 97
    Height = 37
    Caption = 'Tambah'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = BtnTambahClick
  end
  object BtnEdit: TButton
    Left = 316
    Top = 350
    Width = 97
    Height = 37
    Caption = 'Edit'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BtnEditClick
  end
  object BtnSimpan: TButton
    Left = 196
    Top = 352
    Width = 97
    Height = 37
    Caption = 'Simpan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BtnSimpanClick
  end
  object BtnHapus: TButton
    Left = 443
    Top = 352
    Width = 97
    Height = 37
    Caption = 'Hapus'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = BtnHapusClick
  end
  object BtnKeluar: TButton
    Left = 691
    Top = 348
    Width = 97
    Height = 37
    Caption = 'Keluar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = BtnKeluarClick
  end
  object BtnBatal: TButton
    Left = 569
    Top = 350
    Width = 97
    Height = 37
    Caption = 'Batal'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = BtnBatalClick
  end
  object DBGrid1: TDBGrid
    Left = 52
    Top = 400
    Width = 762
    Height = 150
    DataSource = DataModule1.UDSpendudukdatang
    ReadOnly = True
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object GroupBox1: TGroupBox
    Left = 56
    Top = 50
    Width = 726
    Height = 56
    Caption = 'Pencarian, Masukan No NIK'
    Color = 7455891
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 7
    object Edit1: TEdit
      Left = 7
      Top = 22
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
  object DBEdit1: TDBEdit
    Left = 202
    Top = 121
    Width = 154
    Height = 23
    DataField = 'nik'
    DataSource = DataModule1.UDSpendudukdatang
    TabOrder = 8
    OnExit = DBEdit1Exit
  end
  object DBEdit2: TDBEdit
    Left = 202
    Top = 150
    Width = 154
    Height = 23
    DataField = 'nama_lengkap'
    DataSource = DataModule1.UDSpendudukdatang
    TabOrder = 9
  end
  object DBEdit3: TDBEdit
    Left = 202
    Top = 179
    Width = 154
    Height = 23
    DataField = 'no_kk'
    DataSource = DataModule1.UDSpendudukdatang
    TabOrder = 10
  end
  object DBEdit4: TDBEdit
    Left = 202
    Top = 294
    Width = 441
    Height = 23
    DataField = 'alamat_asal'
    DataSource = DataModule1.UDSpendudukdatang
    TabOrder = 11
  end
  object DBEdit5: TDBEdit
    Left = 202
    Top = 208
    Width = 201
    Height = 23
    DataField = 'kelurahan'
    DataSource = DataModule1.UDSpendudukdatang
    TabOrder = 12
    OnChange = DBEdit5Change
  end
  object DBEdit6: TDBEdit
    Left = 202
    Top = 237
    Width = 201
    Height = 23
    DataField = 'kabupaten_kota'
    DataSource = DataModule1.UDSpendudukdatang
    TabOrder = 13
    OnChange = DBEdit6Change
  end
  object DBEdit7: TDBEdit
    Left = 202
    Top = 266
    Width = 201
    Height = 23
    DataField = 'provinsi'
    DataSource = DataModule1.UDSpendudukdatang
    TabOrder = 14
    OnChange = DBEdit7Change
  end
  object DBEdit8: TDBEdit
    Left = 630
    Top = 117
    Width = 125
    Height = 23
    DataField = 'status_no_kk'
    DataSource = DataModule1.UDSpendudukdatang
    TabOrder = 15
  end
  object DBEdit9: TDBEdit
    Left = 630
    Top = 146
    Width = 115
    Height = 23
    DataField = 'tanggal_kedatangan'
    DataSource = DataModule1.UDSpendudukdatang
    TabOrder = 16
  end
  object DBEdit10: TDBEdit
    Left = 630
    Top = 175
    Width = 171
    Height = 23
    DataField = 'alasan_datang'
    DataSource = DataModule1.UDSpendudukdatang
    TabOrder = 17
  end
  object DBEdit11: TDBEdit
    Left = 630
    Top = 205
    Width = 171
    Height = 23
    DataField = 'alamat_sekarang'
    DataSource = DataModule1.UDSpendudukdatang
    TabOrder = 18
  end
end

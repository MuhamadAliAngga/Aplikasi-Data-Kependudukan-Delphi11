object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Form Data Kartu Keluarga'
  ClientHeight = 620
  ClientWidth = 795
  Color = 16744576
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnActivate = FormActivate
  TextHeight = 15
  object Label1: TLabel
    Left = 37
    Top = 125
    Width = 17
    Height = 18
    Caption = 'ID'
    FocusControl = DBEdit1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 37
    Top = 154
    Width = 50
    Height = 18
    Caption = 'No KK'
    FocusControl = DBEdit2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 37
    Top = 185
    Width = 29
    Height = 18
    Caption = 'NIK'
    FocusControl = DBEdit3
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 37
    Top = 215
    Width = 183
    Height = 18
    Caption = 'Nama Kepala Keluarga'
    FocusControl = DBEdit4
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 37
    Top = 249
    Width = 215
    Height = 18
    Caption = 'Status Hubungan Keluarga'
    FocusControl = DBEdit5
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 37
    Top = 278
    Width = 163
    Height = 18
    Caption = 'Tanggal Dikeluarkan'
    FocusControl = DBEdit6
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 187
    Top = 8
    Width = 518
    Height = 43
    AutoSize = False
    Caption = 'Input Data Kartu Keluarga'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    Layout = tlCenter
  end
  object DateTimePicker1: TDateTimePicker
    Left = 285
    Top = 278
    Width = 148
    Height = 23
    Date = 45452.000000000000000000
    Time = 0.507452708334312800
    TabOrder = 14
    OnChange = DateTimePicker1Change
  end
  object DBEdit1: TDBEdit
    Left = 285
    Top = 125
    Width = 244
    Height = 23
    DataField = 'ID'
    DataSource = DataModule1.UDSkartukeluarga
    TabOrder = 0
    OnExit = DBEdit1Exit
  end
  object DBEdit2: TDBEdit
    Left = 285
    Top = 154
    Width = 154
    Height = 23
    DataField = 'no_kk'
    DataSource = DataModule1.UDSkartukeluarga
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 285
    Top = 185
    Width = 154
    Height = 23
    DataField = 'nik'
    DataSource = DataModule1.UDSkartukeluarga
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 285
    Top = 215
    Width = 244
    Height = 23
    DataField = 'nama_kepala_keluarga'
    DataSource = DataModule1.UDSkartukeluarga
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 285
    Top = 246
    Width = 244
    Height = 23
    DataField = 'status_hubungan_keluarga'
    DataSource = DataModule1.UDSkartukeluarga
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 285
    Top = 278
    Width = 124
    Height = 23
    DataField = 'tgl_dikeuarkan'
    DataSource = DataModule1.UDSkartukeluarga
    TabOrder = 5
  end
  object BtnTambah: TButton
    Left = 53
    Top = 332
    Width = 97
    Height = 37
    Caption = 'Tambah'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = BtnTambahClick
  end
  object BtnEdit: TButton
    Left = 299
    Top = 330
    Width = 97
    Height = 37
    Caption = 'Edit'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = BtnEditClick
  end
  object BtnSimpan: TButton
    Left = 179
    Top = 332
    Width = 97
    Height = 37
    Caption = 'Simpan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = BtnSimpanClick
  end
  object BtnHapus: TButton
    Left = 432
    Top = 330
    Width = 97
    Height = 37
    Caption = 'Hapus'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = BtnHapusClick
  end
  object BtnKeluar: TButton
    Left = 675
    Top = 330
    Width = 97
    Height = 37
    Caption = 'Keluar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = BtnKeluarClick
  end
  object BtnBatal: TButton
    Left = 549
    Top = 332
    Width = 97
    Height = 37
    Caption = 'Batal'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    OnClick = BtnBatalClick
  end
  object GroupBox1: TGroupBox
    Left = 46
    Top = 64
    Width = 726
    Height = 56
    Caption = 'Pencarian, Masukan ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
    object Edit1: TEdit
      Left = 9
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
  object DBGrid1: TDBGrid
    Left = 26
    Top = 388
    Width = 769
    Height = 197
    DataSource = DataModule1.UDSkartukeluarga
    ReadOnly = True
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'no_kk'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nik'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_kepala_keluarga'
        Width = 199
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status_hubungan_keluarga'
        Width = 151
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tgl_dikeuarkan'
        Width = 97
        Visible = True
      end>
  end
end

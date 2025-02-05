object Form7: TForm7
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Form Data Kematian'
  ClientHeight = 683
  ClientWidth = 777
  Color = 8709864
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnActivate = FormActivate
  TextHeight = 15
  object Label1: TLabel
    Left = 40
    Top = 146
    Width = 150
    Height = 18
    Caption = 'No Surat Kematian'
    FocusControl = DBEdit1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 175
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
    Left = 40
    Top = 202
    Width = 43
    Height = 18
    Caption = 'Umur'
    FocusControl = DBEdit3
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 40
    Top = 230
    Width = 144
    Height = 18
    Caption = 'Tanggal Kematian'
    FocusControl = DBEdit4
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 40
    Top = 256
    Width = 51
    Height = 18
    Caption = 'Sebab'
    FocusControl = DBEdit5
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 40
    Top = 288
    Width = 137
    Height = 18
    Caption = 'Tempat kematian'
    FocusControl = DBEdit6
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 40
    Top = 317
    Width = 153
    Height = 18
    Caption = 'Yang Menerangkan'
    FocusControl = DBEdit7
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 200
    Top = 16
    Width = 387
    Height = 43
    AutoSize = False
    Caption = 'Input Data Kematian'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    Layout = tlCenter
  end
  object DateTimePicker1: TDateTimePicker
    Left = 200
    Top = 228
    Width = 154
    Height = 23
    Date = 45452.000000000000000000
    Time = 0.531542187498416800
    TabOrder = 15
    OnChange = DateTimePicker1Change
  end
  object DBEdit1: TDBEdit
    Left = 200
    Top = 141
    Width = 154
    Height = 23
    DataField = 'no_surat_kematian'
    DataSource = DataModule1.UDSkematian
    TabOrder = 0
    OnExit = DBEdit1Exit
  end
  object DBEdit2: TDBEdit
    Left = 200
    Top = 170
    Width = 154
    Height = 23
    DataField = 'nik'
    DataSource = DataModule1.UDSkematian
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 200
    Top = 199
    Width = 154
    Height = 23
    DataField = 'umur'
    DataSource = DataModule1.UDSkematian
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 200
    Top = 228
    Width = 121
    Height = 23
    DataField = 'tgl_kematian'
    DataSource = DataModule1.UDSkematian
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 200
    Top = 257
    Width = 371
    Height = 23
    DataField = 'sebab'
    DataSource = DataModule1.UDSkematian
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 200
    Top = 286
    Width = 211
    Height = 23
    DataField = 'tempat_kematian'
    DataSource = DataModule1.UDSkematian
    TabOrder = 5
  end
  object DBEdit7: TDBEdit
    Left = 200
    Top = 315
    Width = 371
    Height = 23
    DataField = 'yang_menerangkan'
    DataSource = DataModule1.UDSkematian
    TabOrder = 6
  end
  object GroupBox1: TGroupBox
    Left = 24
    Top = 79
    Width = 726
    Height = 56
    Caption = 'Pencarian, Masukan No Surat Kematian'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
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
  object BtnTambah: TButton
    Left = 32
    Top = 360
    Width = 97
    Height = 37
    Caption = 'Tambah'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = BtnTambahClick
  end
  object BtnEdit: TButton
    Left = 278
    Top = 358
    Width = 97
    Height = 37
    Caption = 'Edit'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = BtnEditClick
  end
  object BtnSimpan: TButton
    Left = 158
    Top = 358
    Width = 97
    Height = 37
    Caption = 'Simpan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = BtnSimpanClick
  end
  object BtnHapus: TButton
    Left = 405
    Top = 360
    Width = 97
    Height = 37
    Caption = 'Hapus'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    OnClick = BtnHapusClick
  end
  object BtnKeluar: TButton
    Left = 640
    Top = 358
    Width = 97
    Height = 37
    Caption = 'Keluar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    OnClick = BtnKeluarClick
  end
  object BtnBatal: TButton
    Left = 528
    Top = 360
    Width = 97
    Height = 37
    Caption = 'Batal'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    OnClick = BtnBatalClick
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 414
    Width = 761
    Height = 251
    DataSource = DataModule1.UDSkematian
    ReadOnly = True
    TabOrder = 14
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'no_surat_kematian'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nik'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'umur'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tgl_kematian'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sebab'
        Width = 124
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tempat_kematian'
        Width = 112
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'yang_menerangkan'
        Width = 113
        Visible = True
      end>
  end
end

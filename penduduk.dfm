object Form4: TForm4
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Form Data Penduduk'
  ClientHeight = 749
  ClientWidth = 856
  Color = 14834807
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnActivate = FormActivate
  TextHeight = 15
  object Label1: TLabel
    Left = 107
    Top = 177
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
  object Label2: TLabel
    Left = 107
    Top = 204
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
  object Label3: TLabel
    Left = 107
    Top = 235
    Width = 105
    Height = 18
    Caption = 'Tempat Lahir'
    FocusControl = DBEdit3
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 106
    Top = 266
    Width = 110
    Height = 18
    Caption = 'Jenis Kelamin'
    FocusControl = DBEdit4
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 107
    Top = 411
    Width = 56
    Height = 18
    Caption = 'Alamat'
    FocusControl = DBEdit5
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 107
    Top = 295
    Width = 83
    Height = 18
    Caption = 'Kelurahan'
    FocusControl = DBEdit6
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 107
    Top = 324
    Width = 92
    Height = 18
    Caption = 'Kecamatan'
    FocusControl = DBEdit7
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 107
    Top = 352
    Width = 130
    Height = 18
    Caption = 'Kabupaten/Kota'
    FocusControl = DBEdit8
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 107
    Top = 379
    Width = 64
    Height = 18
    Caption = 'Provinsi'
    FocusControl = DBEdit9
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 107
    Top = 437
    Width = 56
    Height = 18
    Caption = 'Agama'
    FocusControl = DBEdit10
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 461
    Top = 149
    Width = 88
    Height = 18
    Caption = 'Pendidikan'
    FocusControl = DBEdit11
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 461
    Top = 182
    Width = 81
    Height = 18
    Caption = 'Pekerjaan'
    FocusControl = DBEdit12
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label13: TLabel
    Left = 461
    Top = 206
    Width = 80
    Height = 18
    Caption = 'Gol Darah'
    FocusControl = DBEdit13
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label14: TLabel
    Left = 461
    Top = 235
    Width = 147
    Height = 18
    Caption = 'Status Pernikahan'
    FocusControl = DBEdit14
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label15: TLabel
    Left = 461
    Top = 264
    Width = 159
    Height = 18
    Caption = 'Tanggal Pernikahan'
    FocusControl = DBEdit15
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label16: TLabel
    Left = 461
    Top = 293
    Width = 149
    Height = 18
    Caption = 'Kewarganegaraan'
    FocusControl = DBEdit16
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label17: TLabel
    Left = 461
    Top = 322
    Width = 83
    Height = 18
    Caption = 'No Paspor'
    FocusControl = DBEdit17
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label18: TLabel
    Left = 461
    Top = 351
    Width = 68
    Height = 18
    Caption = 'No Kitap'
    FocusControl = DBEdit18
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label19: TLabel
    Left = 461
    Top = 381
    Width = 91
    Height = 18
    Caption = 'Nama Ayah'
    FocusControl = DBEdit19
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label20: TLabel
    Left = 461
    Top = 410
    Width = 75
    Height = 18
    Caption = 'Nama Ibu'
    FocusControl = DBEdit20
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label21: TLabel
    Left = 461
    Top = 438
    Width = 52
    Height = 18
    Caption = 'Status'
    FocusControl = DBEdit21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object Label22: TLabel
    Left = 256
    Top = 8
    Width = 378
    Height = 43
    AutoSize = False
    Caption = 'Input Data Penduduk'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    Layout = tlCenter
  end
  object Label23: TLabel
    Left = 107
    Top = 147
    Width = 98
    Height = 18
    Caption = 'Pilih Inputan'
    Color = 14835321
    FocusControl = DBEdit1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object ComboBox4: TComboBox
    Left = 243
    Top = 263
    Width = 145
    Height = 23
    TabOrder = 33
    Text = 'ComboBox4'
    OnChange = ComboBox4Change
    Items.Strings = (
      'Laki-laki'
      'Perempuan')
  end
  object ComboBox3: TComboBox
    Left = 631
    Top = 293
    Width = 145
    Height = 23
    TabOrder = 32
    Text = 'ComboBox3'
    OnChange = ComboBox3Change
    Items.Strings = (
      'WNI'
      'WNA')
  end
  object ComboBox2: TComboBox
    Left = 631
    Top = 235
    Width = 145
    Height = 23
    TabOrder = 31
    Text = 'ComboBox2'
    OnChange = ComboBox2Change
    Items.Strings = (
      'Belum Kawin'
      'Kawin'
      'Cerai')
  end
  object DateTimePicker1: TDateTimePicker
    Left = 631
    Top = 264
    Width = 145
    Height = 23
    Date = 45451.000000000000000000
    Time = 0.595806296296359500
    TabOrder = 29
    OnChange = DateTimePicker1Change
  end
  object ComboBox1: TComboBox
    Left = 243
    Top = 437
    Width = 145
    Height = 23
    TabOrder = 30
    Text = 'ComboBox1'
    OnChange = ComboBox1Change
    Items.Strings = (
      'Islam'
      'Katolik'
      'Protestan'
      'Hindu'
      'Budha'
      'Konguchu'
      'Lainnya')
  end
  object DBEdit1: TDBEdit
    Left = 243
    Top = 176
    Width = 132
    Height = 23
    DataField = 'nik'
    DataSource = DataModule1.UDSpenduduk
    TabOrder = 0
    OnExit = DBEdit1Exit
  end
  object DBEdit2: TDBEdit
    Left = 243
    Top = 206
    Width = 156
    Height = 23
    DataField = 'nama_lengkap'
    DataSource = DataModule1.UDSpenduduk
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 243
    Top = 235
    Width = 156
    Height = 23
    DataField = 'tempat_lahir'
    DataSource = DataModule1.UDSpenduduk
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 243
    Top = 263
    Width = 128
    Height = 23
    DataField = 'jenis_kelamin'
    DataSource = DataModule1.UDSpenduduk
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 243
    Top = 407
    Width = 212
    Height = 23
    DataField = 'alamat'
    DataSource = DataModule1.UDSpenduduk
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 243
    Top = 291
    Width = 156
    Height = 23
    DataField = 'kelurahan'
    DataSource = DataModule1.UDSpenduduk
    TabOrder = 5
    OnChange = DBEdit6Change
  end
  object DBEdit7: TDBEdit
    Left = 243
    Top = 320
    Width = 156
    Height = 23
    DataField = 'kecamatan'
    DataSource = DataModule1.UDSpenduduk
    TabOrder = 6
    OnChange = DBEdit7Change
  end
  object DBEdit8: TDBEdit
    Left = 243
    Top = 350
    Width = 156
    Height = 23
    DataField = 'kabupaten_kota'
    DataSource = DataModule1.UDSpenduduk
    TabOrder = 7
    OnChange = DBEdit8Change
  end
  object DBEdit9: TDBEdit
    Left = 243
    Top = 378
    Width = 156
    Height = 23
    DataField = 'provinsi'
    DataSource = DataModule1.UDSpenduduk
    TabOrder = 8
    OnChange = DBEdit9Change
  end
  object DBEdit10: TDBEdit
    Left = 244
    Top = 437
    Width = 126
    Height = 23
    DataField = 'agama'
    DataSource = DataModule1.UDSpenduduk
    TabOrder = 9
  end
  object DBEdit11: TDBEdit
    Left = 630
    Top = 148
    Width = 156
    Height = 23
    DataField = 'pendidikan'
    DataSource = DataModule1.UDSpenduduk
    TabOrder = 10
  end
  object DBEdit12: TDBEdit
    Left = 630
    Top = 177
    Width = 146
    Height = 23
    DataField = 'pekerjaan'
    DataSource = DataModule1.UDSpenduduk
    TabOrder = 11
  end
  object DBEdit13: TDBEdit
    Left = 630
    Top = 206
    Width = 34
    Height = 23
    DataField = 'gol_darah'
    DataSource = DataModule1.UDSpenduduk
    TabOrder = 12
  end
  object DBEdit14: TDBEdit
    Left = 630
    Top = 235
    Width = 128
    Height = 23
    DataField = 'status_perkawinan'
    DataSource = DataModule1.UDSpenduduk
    TabOrder = 13
  end
  object DBEdit15: TDBEdit
    Left = 630
    Top = 264
    Width = 115
    Height = 23
    DataField = 'tgl_perkawinan'
    DataSource = DataModule1.UDSpenduduk
    TabOrder = 14
  end
  object DBEdit16: TDBEdit
    Left = 630
    Top = 293
    Width = 130
    Height = 23
    DataField = 'kewarganegaraan'
    DataSource = DataModule1.UDSpenduduk
    TabOrder = 15
  end
  object DBEdit17: TDBEdit
    Left = 630
    Top = 322
    Width = 146
    Height = 23
    DataField = 'no_paspor'
    DataSource = DataModule1.UDSpenduduk
    TabOrder = 16
  end
  object DBEdit18: TDBEdit
    Left = 630
    Top = 351
    Width = 146
    Height = 23
    DataField = 'no_kitap'
    DataSource = DataModule1.UDSpenduduk
    TabOrder = 17
  end
  object DBEdit19: TDBEdit
    Left = 630
    Top = 380
    Width = 146
    Height = 23
    DataField = 'nama_ayah'
    DataSource = DataModule1.UDSpenduduk
    TabOrder = 18
  end
  object DBEdit20: TDBEdit
    Left = 630
    Top = 409
    Width = 146
    Height = 23
    DataField = 'nama_ibu'
    DataSource = DataModule1.UDSpenduduk
    TabOrder = 19
  end
  object DBEdit21: TDBEdit
    Left = 630
    Top = 438
    Width = 146
    Height = 23
    DataField = 'status'
    DataSource = DataModule1.UDSpenduduk
    TabOrder = 20
  end
  object GroupBox1: TGroupBox
    Left = 91
    Top = 72
    Width = 726
    Height = 56
    Caption = 'Pencarian, Masukan NIK'
    Color = 14835321
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 21
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
    Left = 74
    Top = 476
    Width = 97
    Height = 37
    Caption = 'Tambah'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 22
    OnClick = BtnTambahClick
  end
  object BtnEdit: TButton
    Left = 318
    Top = 478
    Width = 97
    Height = 37
    Caption = 'Edit'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 23
    OnClick = BtnEditClick
  end
  object BtnSimpan: TButton
    Left = 198
    Top = 478
    Width = 97
    Height = 37
    Caption = 'Simpan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 24
    OnClick = BtnSimpanClick
  end
  object BtnHapus: TButton
    Left = 445
    Top = 478
    Width = 97
    Height = 37
    Caption = 'Hapus'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 25
    OnClick = BtnHapusClick
  end
  object BtnKeluar: TButton
    Left = 694
    Top = 476
    Width = 97
    Height = 37
    Caption = 'Keluar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 26
    OnClick = BtnKeluarClick
  end
  object BtnBatal: TButton
    Left = 568
    Top = 478
    Width = 97
    Height = 37
    Caption = 'Batal'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 27
    OnClick = BtnBatalClick
  end
  object DBGrid1: TDBGrid
    Left = 48
    Top = 521
    Width = 769
    Height = 200
    DataSource = DataModule1.UDSpenduduk
    ReadOnly = True
    TabOrder = 28
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nik'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_lengkap'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tempat_lahir'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jenis_kelamin'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'alamat'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kelurahan'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kecamatan'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kabupaten_kota'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'provinsi'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pekerjaan'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'gol_darah'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status_perkawinan'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tgl_perkawinan'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kewarganegaraan'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'no_paspor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'no_kitap'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_ayah'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_ibu'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'agama'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pendidikan'
        Visible = True
      end>
  end
  object ComboBox5: TComboBox
    Left = 244
    Top = 147
    Width = 155
    Height = 23
    TabOrder = 34
    Text = 'ComboBox5'
    OnChange = ComboBox5Change
    Items.Strings = (
      'Data Baru'
      'Kelahiran'
      'Pindah')
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 220
    Top = 123
    Width = 155
    Height = 23
    DataField = 'nik'
    DataSource = DataModule1.UDSpenduduk
    KeyField = 'no_akte'
    ListField = 'no_akte'
    ListSource = DataModule1.UDSkelahiran
    TabOrder = 35
    OnClick = DBLookupComboBox1Click
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 381
    Top = 123
    Width = 155
    Height = 23
    DataField = 'nik'
    DataSource = DataModule1.UDSpenduduk
    KeyField = 'nik'
    ListField = 'nik'
    ListSource = DataModule1.UDSpendudukdatang
    TabOrder = 36
    OnClick = DBLookupComboBox2Click
  end
end

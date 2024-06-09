object DataModule1: TDataModule1
  Height = 582
  Width = 640
  object UniConnection1: TUniConnection
    ProviderName = 'MySQL'
    Database = 'kependudukan'
    Username = 'root'
    Server = 'localhost'
    Connected = True
    LoginPrompt = False
    Left = 128
    Top = 24
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 248
    Top = 24
  end
  object Unikelahiran: TUniTable
    TableName = 'tkelahiran'
    Connection = UniConnection1
    Active = True
    Left = 56
    Top = 104
    object Unikelahiranno_akte: TStringField
      FieldName = 'no_akte'
      Required = True
      Size = 16
    end
    object Unikelahirannama: TStringField
      FieldName = 'nama'
      Required = True
      Size = 30
    end
    object Unikelahirantempat_lahir: TStringField
      FieldName = 'tempat_lahir'
      Required = True
      Size = 30
    end
    object Unikelahirantgl_lahir: TDateField
      FieldName = 'tgl_lahir'
      Required = True
    end
    object Unikelahiranjam_lahir: TTimeField
      FieldName = 'jam_lahir'
      Required = True
    end
    object Unikelahiranjenis_kelamin: TStringField
      FieldName = 'jenis_kelamin'
      Required = True
      Size = 15
    end
    object Unikelahiranagama: TStringField
      FieldName = 'agama'
      Required = True
      Size = 15
    end
    object Unikelahiranalamat: TStringField
      FieldName = 'alamat'
      Required = True
      Size = 50
    end
    object Unikelahirannama_ayah: TStringField
      FieldName = 'nama_ayah'
      Required = True
      Size = 50
    end
    object Unikelahirannama_ibu: TStringField
      FieldName = 'nama_ibu'
      Required = True
      Size = 50
    end
    object Unikelahiranpekerjaan: TStringField
      FieldName = 'pekerjaan'
      Required = True
      Size = 50
    end
    object Unikelahirananak_ke: TStringField
      FieldName = 'anak_ke'
      Required = True
      Size = 50
    end
  end
  object UDSkelahiran: TUniDataSource
    DataSet = Unikelahiran
    Left = 208
    Top = 104
  end
  object Qkelahiran: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'select*from tkelahiran')
    Active = True
    Left = 360
    Top = 104
  end
  object Unipendudukdatang: TUniTable
    TableName = 'tpendudukdatang'
    Connection = UniConnection1
    Active = True
    Left = 56
    Top = 160
    object Unipendudukdatangnik: TIntegerField
      FieldName = 'nik'
      Required = True
    end
    object Unipendudukdatangnama_lengkap: TStringField
      FieldName = 'nama_lengkap'
      Required = True
      Size = 50
    end
    object Unipendudukdatangno_kk: TIntegerField
      FieldName = 'no_kk'
      Required = True
    end
    object Unipendudukdatangalamat_asal: TStringField
      FieldName = 'alamat_asal'
      Required = True
      Size = 75
    end
    object Unipendudukdatangkelurahan: TStringField
      FieldName = 'kelurahan'
      Required = True
      Size = 30
    end
    object Unipendudukdatangkabupaten_kota: TStringField
      FieldName = 'kabupaten_kota'
      Required = True
      Size = 30
    end
    object Unipendudukdatangprovinsi: TStringField
      FieldName = 'provinsi'
      Required = True
      Size = 30
    end
    object Unipendudukdatangstatus_no_kk: TStringField
      FieldName = 'status_no_kk'
      Required = True
    end
    object Unipendudukdatangtanggal_kedatangan: TDateField
      FieldName = 'tanggal_kedatangan'
      Required = True
    end
    object Unipendudukdatangalasan_datang: TStringField
      FieldName = 'alasan_datang'
      Required = True
      Size = 30
    end
    object Unipendudukdatangalamat_sekarang: TStringField
      FieldName = 'alamat_sekarang'
      Required = True
      Size = 75
    end
  end
  object Unipenduduk: TUniTable
    TableName = 'tpenduduk'
    Connection = UniConnection1
    Active = True
    Left = 56
    Top = 240
  end
  object Unikartukeluarga: TUniTable
    TableName = 'tkartukeluarga'
    Connection = UniConnection1
    Active = True
    Left = 56
    Top = 304
  end
  object Unipendudukpindah: TUniTable
    TableName = 'tpenduduk_pindah'
    Connection = UniConnection1
    Active = True
    Left = 56
    Top = 368
  end
  object Unikematian: TUniTable
    TableName = 'tkematian'
    Connection = UniConnection1
    Active = True
    Left = 56
    Top = 440
  end
  object Qpendudukdatang: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'select*from tpendudukdatang')
    Active = True
    Left = 360
    Top = 168
  end
  object Qpenduduk: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'select*from tpenduduk')
    Active = True
    Left = 360
    Top = 232
  end
  object Qkartukeluarga: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'select*from tkartukeluarga')
    Active = True
    Left = 360
    Top = 296
  end
  object Qpendudukpindah: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'select*from tpenduduk_pindah')
    Active = True
    Left = 360
    Top = 368
  end
  object Qkematian: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'select*from tkematian')
    Active = True
    Left = 360
    Top = 432
  end
  object UDSpendudukdatang: TUniDataSource
    DataSet = Unipendudukdatang
    Left = 208
    Top = 168
  end
  object UDSpenduduk: TUniDataSource
    DataSet = Unipenduduk
    Left = 208
    Top = 232
  end
  object UDSkartukeluarga: TUniDataSource
    DataSet = Unikartukeluarga
    Left = 208
    Top = 296
  end
  object UDSpendudukpindah: TUniDataSource
    DataSet = Unipendudukpindah
    Left = 208
    Top = 368
  end
  object UDSkematian: TUniDataSource
    DataSet = Unikematian
    Left = 208
    Top = 440
  end
end

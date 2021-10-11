object Data: TData
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 318
  Top = 139
  Height = 150
  Width = 215
  object TFournisseur: TTable
    DatabaseName = '.\'
    TableName = 'Fournisseurs.DB'
    Left = 16
    Top = 8
    object TFournisseurORDRE: TStringField
      FieldName = 'ORDRE'
    end
    object TFournisseurCODE_FOUR: TStringField
      FieldName = 'CODE_FOUR'
      Size = 50
    end
    object TFournisseurNOM_ENTREPRISE: TStringField
      FieldName = 'NOM_ENTREPRISE'
      Size = 50
    end
    object TFournisseurSTATUT: TStringField
      FieldName = 'STATUT'
      Size = 40
    end
    object TFournisseurDOMAINE: TStringField
      FieldName = 'DOMAINE'
      Size = 40
    end
    object TFournisseurPRODUITS: TStringField
      FieldName = 'PRODUITS'
      Size = 50
    end
    object TFournisseurNOM_FOUR: TStringField
      FieldName = 'NOM_FOUR'
      Size = 40
    end
    object TFournisseurPRENOM_FOUR: TStringField
      FieldName = 'PRENOM_FOUR'
      Size = 40
    end
    object TFournisseurADRESSE: TMemoField
      FieldName = 'ADRESSE'
      BlobType = ftMemo
      Size = 240
    end
    object TFournisseurVILLE: TStringField
      FieldName = 'VILLE'
      Size = 40
    end
    object TFournisseurTELEPHONE: TStringField
      FieldName = 'TELEPHONE'
      Size = 30
    end
    object TFournisseurFAX: TStringField
      FieldName = 'FAX'
      Size = 30
    end
    object TFournisseurE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 40
    end
    object TFournisseurSITE_INTERNET: TStringField
      FieldName = 'SITE_INTERNET'
      Size = 40
    end
    object TFournisseurETS_BANCAIRE: TStringField
      FieldName = 'ETS_BANCAIRE'
      Size = 40
    end
    object TFournisseurCPT_BANCAIRE: TStringField
      FieldName = 'CPT_BANCAIRE'
      Size = 50
    end
    object TFournisseurREG_COMMERCE: TStringField
      FieldName = 'REG_COMMERCE'
      Size = 50
    end
    object TFournisseurIDENTIFIANT_FISCAL: TStringField
      FieldName = 'IDENTIFIANT_FISCAL'
      Size = 50
    end
    object TFournisseurART_IMPOSITION: TStringField
      FieldName = 'ART_IMPOSITION'
      Size = 50
    end
    object TFournisseurDATE_PRE_CONTACT: TDateField
      FieldName = 'DATE_PRE_CONTACT'
    end
    object TFournisseurREMARQUES: TMemoField
      FieldName = 'REMARQUES'
      BlobType = ftMemo
      Size = 240
    end
    object TFournisseurMONTANT: TFloatField
      FieldName = 'MONTANT'
    end
  end
  object DFournisseur: TDataSource
    DataSet = TFournisseur
    Left = 96
    Top = 8
  end
end

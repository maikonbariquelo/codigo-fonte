object FrmDistribuirPagamento: TFrmDistribuirPagamento
  Left = 1
  Top = 1
  Caption = 'Terceirizado | Gerar Pagamento'
  ClientHeight = 499
  ClientWidth = 865
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object AdvGroupBox1: TAdvGroupBox
    Left = 0
    Top = 91
    Width = 865
    Height = 347
    Align = alClient
    Caption = 'Edi'#231#227'o de Pedidos'
    ParentCtl3D = True
    TabOrder = 1
    object DBAdvGrid1: TDBAdvGrid
      Left = 3
      Top = 16
      Width = 859
      Height = 328
      Cursor = crDefault
      Align = alClient
      Color = clBtnFace
      ColCount = 10
      DrawingStyle = gdsClassic
      RowCount = 2
      FixedRows = 1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goRowSelect]
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 0
      HoverRowCells = [hcNormal, hcSelected]
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ControlLook.FixedGradientHoverFrom = clGray
      ControlLook.FixedGradientHoverTo = clWhite
      ControlLook.FixedGradientDownFrom = clGray
      ControlLook.FixedGradientDownTo = clSilver
      ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
      ControlLook.DropDownHeader.Font.Color = clWindowText
      ControlLook.DropDownHeader.Font.Height = -11
      ControlLook.DropDownHeader.Font.Name = 'Tahoma'
      ControlLook.DropDownHeader.Font.Style = []
      ControlLook.DropDownHeader.Visible = True
      ControlLook.DropDownHeader.Buttons = <>
      ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
      ControlLook.DropDownFooter.Font.Color = clWindowText
      ControlLook.DropDownFooter.Font.Height = -11
      ControlLook.DropDownFooter.Font.Name = 'Tahoma'
      ControlLook.DropDownFooter.Font.Style = []
      ControlLook.DropDownFooter.Visible = True
      ControlLook.DropDownFooter.Buttons = <>
      Filter = <>
      FilterDropDown.Font.Charset = DEFAULT_CHARSET
      FilterDropDown.Font.Color = clWindowText
      FilterDropDown.Font.Height = -11
      FilterDropDown.Font.Name = 'Tahoma'
      FilterDropDown.Font.Style = []
      FilterDropDownClear = '(All)'
      FixedColWidth = 20
      FixedRowHeight = 22
      FixedFont.Charset = DEFAULT_CHARSET
      FixedFont.Color = clWindowText
      FixedFont.Height = -11
      FixedFont.Name = 'Tahoma'
      FixedFont.Style = [fsBold]
      FloatFormat = '%.2f'
      PrintSettings.DateFormat = 'dd/mm/yyyy'
      PrintSettings.Font.Charset = DEFAULT_CHARSET
      PrintSettings.Font.Color = clWindowText
      PrintSettings.Font.Height = -11
      PrintSettings.Font.Name = 'Tahoma'
      PrintSettings.Font.Style = []
      PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
      PrintSettings.FixedFont.Color = clWindowText
      PrintSettings.FixedFont.Height = -11
      PrintSettings.FixedFont.Name = 'Tahoma'
      PrintSettings.FixedFont.Style = []
      PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
      PrintSettings.HeaderFont.Color = clWindowText
      PrintSettings.HeaderFont.Height = -11
      PrintSettings.HeaderFont.Name = 'Tahoma'
      PrintSettings.HeaderFont.Style = []
      PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
      PrintSettings.FooterFont.Color = clWindowText
      PrintSettings.FooterFont.Height = -11
      PrintSettings.FooterFont.Name = 'Tahoma'
      PrintSettings.FooterFont.Style = []
      PrintSettings.PageNumSep = '/'
      ScrollWidth = 16
      SearchFooter.FindNextCaption = 'Find &next'
      SearchFooter.FindPrevCaption = 'Find &previous'
      SearchFooter.Font.Charset = DEFAULT_CHARSET
      SearchFooter.Font.Color = clWindowText
      SearchFooter.Font.Height = -11
      SearchFooter.Font.Name = 'Tahoma'
      SearchFooter.Font.Style = []
      SearchFooter.HighLightCaption = 'Highlight'
      SearchFooter.HintClose = 'Close'
      SearchFooter.HintFindNext = 'Find next occurence'
      SearchFooter.HintFindPrev = 'Find previous occurence'
      SearchFooter.HintHighlight = 'Highlight occurences'
      SearchFooter.MatchCaseCaption = 'Match case'
      Version = '2.3.3.4'
      AutoCreateColumns = True
      AutoRemoveColumns = False
      Columns = <
        item
          Borders = []
          BorderPen.Color = clSilver
          CheckFalse = 'N'
          CheckTrue = 'Y'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
          PrintFont.Charset = DEFAULT_CHARSET
          PrintFont.Color = clWindowText
          PrintFont.Height = -11
          PrintFont.Name = 'Tahoma'
          PrintFont.Style = []
          Width = 20
        end
        item
          Alignment = taRightJustify
          Borders = []
          BorderPen.Color = clSilver
          CheckFalse = 'N'
          CheckTrue = 'Y'
          Color = clWindow
          FieldName = 'CODIGO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header = 'Remessa:'
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
          PrintFont.Charset = ANSI_CHARSET
          PrintFont.Color = clWindowText
          PrintFont.Height = -11
          PrintFont.Name = 'Tahoma'
          PrintFont.Style = []
          Width = 56
        end
        item
          Borders = []
          BorderPen.Color = clSilver
          CheckFalse = 'N'
          CheckTrue = 'S'
          Color = clWindow
          EditMask = '99/99/9999'
          FieldName = 'DATA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header = 'Data:'
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
          PrintFont.Charset = DEFAULT_CHARSET
          PrintFont.Color = clWindowText
          PrintFont.Height = -11
          PrintFont.Name = 'Tahoma'
          PrintFont.Style = []
          Width = 63
        end
        item
          Borders = []
          BorderPen.Color = clSilver
          CheckFalse = 'N'
          CheckTrue = 'S'
          Color = clWindow
          EditMask = '99/99/9999'
          FieldName = 'DATAENCERRAMENTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header = 'Fechamento:'
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
          PrintFont.Charset = ANSI_CHARSET
          PrintFont.Color = clWindowText
          PrintFont.Height = -11
          PrintFont.Name = 'Tahoma'
          PrintFont.Style = []
          Width = 75
        end
        item
          Borders = []
          BorderPen.Color = clSilver
          CheckFalse = 'N'
          CheckTrue = 'Y'
          Color = clWindow
          FieldName = 'FORNECEDOR_NOME'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header = 'Terceririzado:'
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
          PrintFont.Charset = ANSI_CHARSET
          PrintFont.Color = clWindowText
          PrintFont.Height = -11
          PrintFont.Name = 'Tahoma'
          PrintFont.Style = []
          Width = 235
        end
        item
          Alignment = taRightJustify
          Borders = []
          BorderPen.Color = clSilver
          CheckFalse = 'N'
          CheckTrue = 'S'
          Color = clWindow
          Editor = edFloat
          FieldName = 'QTDE_REMESSA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header = 'Remessa:'
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
          PrintFont.Charset = ANSI_CHARSET
          PrintFont.Color = clWindowText
          PrintFont.Height = -11
          PrintFont.Name = 'Tahoma'
          PrintFont.Style = []
          Width = 65
        end
        item
          Alignment = taRightJustify
          Borders = []
          BorderPen.Color = clSilver
          CheckFalse = 'N'
          CheckTrue = 'S'
          Color = clWindow
          Editor = edFloat
          FieldName = 'QTDE_RETORNO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header = 'Retorno:'
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
          PrintFont.Charset = ANSI_CHARSET
          PrintFont.Color = clWindowText
          PrintFont.Height = -11
          PrintFont.Name = 'Tahoma'
          PrintFont.Style = []
          Width = 65
        end
        item
          Alignment = taRightJustify
          Borders = []
          BorderPen.Color = clSilver
          CheckFalse = 'N'
          CheckTrue = 'Y'
          Color = clWindow
          Editor = edFloat
          FieldName = 'QTDE_RESTANTE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header = 'Restante:'
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
          PrintFont.Charset = ANSI_CHARSET
          PrintFont.Color = clWindowText
          PrintFont.Height = -11
          PrintFont.Name = 'Tahoma'
          PrintFont.Style = []
          Width = 65
        end
        item
          Alignment = taRightJustify
          Borders = []
          BorderPen.Color = clSilver
          CheckFalse = 'N'
          CheckTrue = 'Y'
          Color = clBtnFace
          FieldName = 'VLR_TOTALPAGAR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header = 'Valor a Pagar:'
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
          PrintFont.Charset = ANSI_CHARSET
          PrintFont.Color = clWindowText
          PrintFont.Height = -11
          PrintFont.Name = 'Tahoma'
          PrintFont.Style = []
          Width = 87
        end
        item
          Alignment = taCenter
          Borders = []
          BorderPen.Color = clSilver
          CheckFalse = 'N'
          CheckTrue = 'Y'
          Color = clBtnFace
          FieldName = 'GEROUPAGAMENTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header = 'Gerou pagamento:'
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
          PrintFont.Charset = ANSI_CHARSET
          PrintFont.Color = clWindowText
          PrintFont.Height = -11
          PrintFont.Name = 'Tahoma'
          PrintFont.Style = []
          Width = 107
        end>
      DataSource = ds_Distribuir
      InvalidPicture.Data = {
        055449636F6E0000010001002020200000000000A81000001600000028000000
        2000000040000000010020000000000000100000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000003000000290000005C0000008B000000AF000000C1
        000000CA000000CB000000C9000000C1000000AF0000008A0000005E0000002C
        0000000400000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000220000007100001CBE000047F401015DFF01016CFF000074FF
        000075FF00006CFF01015EFF010145FF000020FF000001F3000000DE000000AE
        0000006B00000026000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000005401013DC5010175FF010186FF010189FF000085FF000082FF000081FF
        000080FF000080FF000080FF000083FF000082FF01016EFF01013FFF000007FB
        000000E0000000A10000004D0000000700000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000300003A8B
        010178FF010191FF00008AFF000085FF000085FF000085FF000085FF000086FF
        000086FF000084FF000081FF000080FF00007FFF000081FF000085FF010172FF
        000030FF000000F5000000C3000000610000000A000000000000000000000000
        000000000000000000000000000000000000000000000001010159A5010193FF
        01018EFF000089FF000089FF00008CFF00008CFF00008FFF000090FF000090FF
        000090FF00008FFF00008BFF00008AFF000086FF000082FF00007EFF000081FF
        010182FF00004FFF000000FC000000CB0000005F000000080000000000000000
        0000000000000000000000000000000000000000010167AA02029EFF01018EFF
        00008CFF00008FFF000092FF000095FF000098FF000099FF000098FF00009BFF
        00009AFF000098FF000097FF000094FF00008FFF00008BFF000087FF000082FF
        00007FFF010188FF00005BFF000000FC000000C4000000530000000000000000
        00000000000000000000000000000000010169850202A4FF010191FF000090FF
        000095FF000093FF000096FF00009DFF0000A2FF0000A2FF0000A2FF0000A3FF
        0000A2FF0000A1FF00009FFF00009BFF000097FF00008DFF00008BFF00008AFF
        000084FF00007FFF01018BFF000054FF000000F6000000AC0000003000000000
        000000000000000000000000000168400202A6FF020294FF000094FF00009AFF
        000098FF4949BFFF5353C4FF00009DFF0000A7FF0000A9FF0101AAFF0101AAFF
        0101A9FF0101A8FF0000A5FF0000A2FF00009AFF5F5FC5FF3A3AB3FF00008AFF
        00008BFF000086FF010183FF01018BFF000037FF000000E50000007900000009
        0000000000000000000000000202A2D803039EFF00009AFF0000A0FF0000A1FF
        2929ABFFFFFFFAFFFFFFFFFF4A4AC8FF0000A5FF0000AFFF0000AFFF0101AEFF
        0101B0FF0000AFFF0000ACFF0000A5FF4848B6FFFFFFFFFFFFFFFFFF2424AEFF
        00008FFF000090FF000089FF01018BFF010180FF00000CFF000000BB00000038
        00000000000000000101655C0303B2FF02029EFF0000A4FF0000AAFF2F2FA9FF
        CCCCC0FFFFFFF4FFFFFFFFFFFFFFFFFF4141CAFF0000ACFF0000B3FF0000B3FF
        0000B3FF0000B2FF0000ADFF4343B5FFEDEDD9FFFFFFFFFFFFFFFFFFFFFFFFFF
        3232AFFF000095FF000092FF01018BFF020293FF010155FF000000E50000006F
        00000000000000000303A6D70303A2FF0202A5FF0000ACFF0000B2FF78788DFF
        CBCBA5FFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFF4F4FCEFF0000AEFF0000B5FF
        0000B6FF0000B2FF4B4BBDFFF2F2D9FFFFFFF8FFFFFFFFFFFFFFFFFFF8F8D4FF
        8282AEFF0000A2FF00009DFF010194FF020291FF02028CFF000110FD0000009F
        000000180000C5200404A3FF0404A7FF0202ADFF0101B3FF0000BCFF0000B0FF
        606073FFC4C4A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4040CFFF0000B1FF
        0000B3FF4E4EC8FFF6F6DFFFFFFFF6FFFFFFFFFFFFFFFFFFE7E7CBFF737393FF
        0000A9FF0000ABFF0000A4FF01019BFF020292FF02029BFF010139FF000000C2
        000000370201BE6D0505A7FF0404AEFF0303B6FF0303BBFF0101C1FF0000CDFF
        0000B9FF56566EFFC0C0A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3B3BCFFF
        5050D7FFFFFFFAFFFFFFF5FFFFFFFFFFFFFFFFFFE0E0C8FF6D6D8FFF0000B2FF
        0000B8FF0000B1FF0101ABFF0101A3FF01019AFF02029EFF02026FFF000000DC
        0000004D0405BAA10707ADFF0606B5FF0404BBFF0505C2FF0505C8FF0303CBFF
        0000D2FF0000BAFF616177FFC6C6ABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9CDFF747495FF0000B7FF0000C2FF
        0101BDFF0202B8FF0202B2FF0101AAFF02029FFF03039EFF020289FF000004E6
        000000550606B9CB0808B5FF0606BBFF0606C4FF0606C9FF0606CDFF0606D0FF
        0202CFFF0000D4FF0000BDFF6E6E86FFDADABDFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF5F5DAFF8181A4FF0000BCFF0000C5FF0000C4FF
        0303C1FF0303BEFF0202B8FF0202B0FF0202A6FF0303A1FF03039FFF00000CEC
        000000590909BBE80909BAFF0808C2FF0808CAFF0808D0FF0909D4FF0707D4FF
        0303D2FF0000D0FF0000D4FF0000C2FF8A8AAEFFF7F7EAFFFFFFFFFFFEFEFEFF
        FEFEFEFFFFFFFFFFFFFFF9FF9393C8FF0000C3FF0000C8FF0000C6FF0101C6FF
        0404C6FF0505C5FF0303BEFF0202B6FF0202ACFF0303A3FF0606AEFF010113ED
        0000005A0A0ABFF80C0CC2FF0B0BC9FF0B0BD0FF0B0BD8FF0D0DDCFF0808D9FF
        0303D5FF0000D2FF0000D2FF0000D4FF4648C5FFF9F9E6FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF6FF3A3ACEFF0000C6FF0000CBFF0000C9FF0303CAFF
        0505CAFF0505CAFF0505C4FF0404BEFF0404B2FF0505A9FF0505B9FF010115EB
        000000570B0BC6EA1010C9FF0E0ED0FF0E0EDAFF0F0FE1FF0F0FE2FF0B0BE0FF
        0303DAFF0000D6FF0000D4FF4242CBFFE9E9D5FFFFFFFBFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFEFFFFFFF9FF4949DEFF0000C6FF0000CCFF0101CDFF
        0606CFFF0707CFFF0606C9FF0505C3FF0505B7FF0606ADFF0707B8FF010113E2
        0000004F0C0CCDCE1313CFFF1212D7FF1313E1FF1313E9FF1313ECFF0C0CE7FF
        0000E0FF0000DCFF3F3FCDFFEAEAD2FFFFFFF6FFFFFFFFFFFFFFFFFFFFFFF5FF
        FFFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4343DCFF0000CAFF0000D2FF
        0606D4FF0A0AD3FF0808CEFF0808C6FF0707BBFF0808B4FF0606B3FF01010ED4
        000000410909D7A41515D4FF1717E0FF1818E9FF1A1AF2FF1A1AF5FF0E0EF3FF
        0000EBFF4848D2FFECECD0FFFFFFF5FFFFFFFFFFFFFFFFFFEEEED6FF8585BBFF
        8787ADFFDDDDC5FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFF4E4EE2FF0000D2FF
        0505DBFF0C0CD9FF0B0BD3FF0A0ACAFF0A0ABEFF0B0BBCFF0606A5FF000004B1
        000000200608DE751919D6FF1C1CE6FF1E1EF2FF2121FCFF1E1EFFFF0606FFFF
        4D4DE0FFE6E6CBFFFFFFF4FFFFFFFFFFFFFFFFFFEAEACAFF7B7BA3FF0000D9FF
        0000D4FF737389FFCBCBABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4FEEFF
        0000E4FF0B0BE1FF0D0DDAFF0C0CCEFF0C0CC2FF0F0FC7FF060690FF00000085
        000000050000E6221717DCFF2222E9FF2626F9FF2727FFFF2424FFFF5E5ED6FF
        DFDFC0FFFFFFF5FFFFFFFFFFFFFFFFFFDFDFC2FF72729BFF0000DDFF0000E8FF
        0000E9FF0000D1FF605F7AFFC2C2A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFF
        5656DFFF0606E8FF1010E0FF1111D4FF0F0FC7FF0E0ECEFF020253E200000047
        00000000000000001010E3D92424ECFF2D2DFFFF3131FFFF2F2FFFFF7C7C9FFF
        D8D8B2FFFFFFFFFFFFFFFFFFE1E1C0FF696996FF0000E0FF0000E9FF0000E6FF
        0000E4FF0000ECFF0000D4FF595971FFBEBE9DFFFFFFFFFFFFFFFDFFD6D6A6FF
        7272BFFF1010F6FF1616E4FF1515D6FF1313CFFF0D0DC5FF000021A200000012
        00000000000000000607E85C2121EDFF3030FFFF3C3CFFFF3E3EFFFF3B3BF8FF
        71719AFFD8D8BDFFD9D9BAFF6C6C99FF0000F1FF0000F6FF0000E9FF0000E6FF
        0000E7FF0000E8FF0000F5FF0000DEFF565674FFBBBB98FFC1C19BFF5F5FA8FF
        1717FFFF1919FAFF1C1CE7FF1919D9FF1515DBFF05058CF20000004300000000
        0000000000000000000000001313EED32E2EFDFF4040FFFF4B4BFFFF4F4FFFFF
        4C4CFBFF696981FF6B6B80FF2525FBFF1212FFFF0D0DFFFF0707FAFF0404F3FF
        0505F2FF0606F5FF0A0AFCFF0C0CFFFF1A1AF4FF606067FF5B5B8FFF2323FFFF
        2626FFFF2727FBFF2222E9FF1D1DE0FF1010D2FF000025880000000800000000
        0000000000000000000000000202F1352020F8FF3B3BFFFF4D4DFFFF5C5CFFFF
        6666FFFF6464FCFF5F5FF7FF5555FFFF4343FFFF3131FFFF2121FFFF1919FFFF
        1818FFFF1C1CFFFF2525FFFF3131FFFF3737FFFF3D3DF6FF3939FEFF3535FFFF
        3333FFFF2C2CFAFF2525EAFF1A1AE8FF030380C1000000170000000000000000
        000000000000000000000000000000000909F3712B2BFEFF4646FFFF5D5DFFFF
        6E6EFFFF7B7BFFFF8080FFFF8181FFFF7575FFFF6767FFFF5555FFFF4949FFFF
        4646FFFF4848FFFF4E4EFFFF5454FFFF5757FFFF5050FFFF4949FFFF4040FFFF
        3838FFFF2D2DF6FF2020F6FF0808B6DF00000423000000000000000000000000
        00000000000000000000000000000000000000000D0EF6902F2FFFFF4D4DFFFF
        6666FFFF7C7CFFFF8B8BFFFF9494FFFF9696FFFF9191FFFF8A8AFFFF7E7EFFFF
        7878FFFF7373FFFF7171FFFF6C6CFFFF6464FFFF5B5BFFFF5050FFFF4343FFFF
        3636FFFF2626FFFF0D0ECCE30000072800000000000000000000000000000000
        0000000000000000000000000000000000000000000000000A0AF8782B2BFDFF
        4E4EFFFF6868FFFF7F7FFFFF9292FFFFA0A0FFFFA5A5FFFFA7A7FFFFA2A2FFFF
        9999FFFF8E8EFFFF8282FFFF7575FFFF6868FFFF5959FFFF4B4BFFFF3A3AFFFF
        2727FFFF0B0BCEC600000A150000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000001F841
        2121FCDD4545FFFF6262FFFF7979FFFF8C8CFFFF9B9BFFFFA4A4FFFFA3A3FFFF
        9B9BFFFF8E8EFFFF7E7EFFFF6C6CFFFF5D5DFFFF4B4BFFFF3838FFFF1F1FEFFF
        0405B77D00000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000708F96B2827FDE24646FEFF6464FFFF7474FFFF8080FFFF8484FFFF
        7E7EFFFF7373FFFF6363FFFF5353FFFF3F3FFEFF2323FAF40C0CE69800007B1C
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000A0AF9321415F9802727F9B03C3CFBD84949FFF1
        4848FFF53939FCDE2727F9BB1516F88B0608F9480708E4070000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000FF8000FFFF00007FFE00001FF800000FF0000007F0000007E0000003
        C0000001C0000001800000018000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000180000001
        80000003C0000003C0000007E000000FF000001FF800003FFC0000FFFF0001FF
        FFC007FF}
      ShowUnicode = False
      ColWidths = (
        20
        56
        63
        75
        235
        65
        65
        65
        87
        107)
    end
  end
  inline FrmFrameBotoes1: TFrmFrameBotoes
    Left = 0
    Top = 438
    Width = 865
    Height = 61
    Align = alBottom
    AutoSize = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TabStop = True
    ExplicitTop = 438
    ExplicitWidth = 865
    ExplicitHeight = 61
    inherited W7Panel1: TW7Panel
      Width = 865
      Height = 61
      ExplicitWidth = 865
      ExplicitHeight = 61
      inherited SpbSalvar: TSpeedButton
        OnClick = FrmFrameBotoes1SpbSalvarClick
      end
    end
  end
  inline FrmFrameBarra1: TFrmFrameBarra
    Left = 0
    Top = 0
    Width = 865
    Height = 33
    Align = alTop
    TabOrder = 3
    ExplicitWidth = 865
    ExplicitHeight = 33
    inherited W7Panel1: TW7Panel
      Width = 865
      Height = 33
      ExplicitWidth = 865
      ExplicitHeight = 33
      inherited LblBarraTitulo: TLabel
        Width = 615
        Caption = 'Terceirizado | Gerar Pagamento | Parcial ou Intregral'
        ExplicitWidth = 615
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 33
    Width = 865
    Height = 58
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 100
      Height = 13
      Caption = 'Data de Vencimento:'
    end
    object Label8: TLabel
      Left = 140
      Top = 8
      Width = 114
      Height = 13
      Caption = 'Especie de Documento:'
    end
    object EditVencimento: TMaskEdit
      Left = 16
      Top = 24
      Width = 112
      Height = 21
      EditMask = '99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '01/01/2012'
    end
    object ComboFormaPagamento: TComboBox
      Left = 140
      Top = 24
      Width = 157
      Height = 21
      Style = csDropDownList
      ItemIndex = 1
      TabOrder = 1
      Text = 'A PRAZO'
      Items.Strings = (
        'A VISTA'
        'A PRAZO'
        'CARTAO'
        'DUPLICATA'
        'BOLETO'
        'DDA'
        'CHEQUE'
        'CARTEIRA'
        'TICKET')
    end
  end
  object db_DistribuirGerarPagamento: TUniQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'SELECT *  FROM VIEW_DISTRIBUIR_PAGAMENTOS'
      '--WHERE CODIGO=:CODIGO')
    Options.StrictUpdate = False
    Left = 121
    Top = 208
    object db_DistribuirGerarPagamentoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object db_DistribuirGerarPagamentoORDEMPRODUCAO: TIntegerField
      FieldName = 'ORDEMPRODUCAO'
      Required = True
    end
    object db_DistribuirGerarPagamentoFASE: TIntegerField
      FieldName = 'FASE'
    end
    object db_DistribuirGerarPagamentoFASE_NOME: TStringField
      FieldName = 'FASE_NOME'
      ReadOnly = True
      Size = 200
    end
    object db_DistribuirGerarPagamentoDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object db_DistribuirGerarPagamentoDATARETORNO: TDateTimeField
      FieldName = 'DATARETORNO'
    end
    object db_DistribuirGerarPagamentoDATAENCERRAMENTO: TDateTimeField
      FieldName = 'DATAENCERRAMENTO'
      ReadOnly = True
    end
    object db_DistribuirGerarPagamentoFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
    end
    object db_DistribuirGerarPagamentoFORNECEDOR_NOME: TStringField
      FieldName = 'FORNECEDOR_NOME'
      ReadOnly = True
      Size = 200
    end
    object db_DistribuirGerarPagamentoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 30
    end
    object db_DistribuirGerarPagamentoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ReadOnly = True
      Size = 200
    end
    object db_DistribuirGerarPagamentoQTDE_REMESSA: TIntegerField
      FieldName = 'QTDE_REMESSA'
      DisplayFormat = '###,##0'
    end
    object db_DistribuirGerarPagamentoQTDE_RETORNO: TIntegerField
      FieldName = 'QTDE_RETORNO'
      DisplayFormat = '###,##0'
    end
    object db_DistribuirGerarPagamentoQTDE_RESTANTE: TIntegerField
      FieldName = 'QTDE_RESTANTE'
      ReadOnly = True
      DisplayFormat = '###,##0'
    end
    object db_DistribuirGerarPagamentoVLR_UNIT: TFloatField
      FieldName = 'VLR_UNIT'
      DisplayFormat = '###,##0.00'
    end
    object db_DistribuirGerarPagamentoVLR_TOTALPAGAR: TFloatField
      FieldName = 'VLR_TOTALPAGAR'
      DisplayFormat = '###,##0.00'
    end
    object db_DistribuirGerarPagamentoCONCLUIDO: TFloatField
      FieldName = 'CONCLUIDO'
      ReadOnly = True
      DisplayFormat = '###,##0.00%'
    end
    object db_DistribuirGerarPagamentoGEROUPAGAMENTO: TStringField
      FieldName = 'GEROUPAGAMENTO'
      ReadOnly = True
      Required = True
      Size = 3
    end
  end
  object ds_Distribuir: TDataSource
    AutoEdit = False
    DataSet = db_DistribuirGerarPagamento
    Left = 123
    Top = 256
  end
  object db_DistribuirBaixar: TUniQuery
    Connection = FrmPrincipal.DBConexao
    SQL.Strings = (
      'UPDATE PCP_DISTRIBUIR SET STATUS=:ACAO,'
      'DATAENCERRAMENTO   =getdate(),'
      'RESPONSAVEL =:RESPONSAVEL,'
      'OBSERVACAO=:OBSERVACAO'
      'WHERE CODIGO=:CODIGO')
    Options.StrictUpdate = False
    Left = 289
    Top = 208
    ParamData = <
      item
        DataType = ftString
        Name = 'ACAO'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'RESPONSAVEL'
      end
      item
        DataType = ftUnknown
        Name = 'OBSERVACAO'
      end
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object SPOP_DISTRIBUIR_PAGAR: TUniStoredProc
    StoredProcName = 'SPOP_DISTRIBUIR_PAGAR'
    Connection = FrmPrincipal.DBConexao
    Left = 288
    Top = 280
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'NREMESSA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NFORNECEDOR'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DVENCIMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'STIPOPAGMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NVALOR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ACAO'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'SPOP_DISTRIBUIR_PAGAR'
  end
end

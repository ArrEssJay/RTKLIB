object GoogleEarthView: TGoogleEarthView
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'RTKPLOT: Google Earth View'
  ClientHeight = 506
  ClientWidth = 504
  Color = clWhite
  Constraints.MinHeight = 240
  Constraints.MinWidth = 240
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Touch.InteractiveGestures = [igZoom, igPan, igRotate]
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 504
    Height = 27
    Align = alTop
    TabOrder = 0
    object BtnGENorm: TSpeedButton
      AlignWithMargins = True
      Left = 95
      Top = 1
      Width = 25
      Height = 25
      Hint = 'Objective View'
      Margins.Left = 1
      Margins.Top = 0
      Margins.Right = 1
      Margins.Bottom = 0
      Align = alLeft
      Flat = True
      Glyph.Data = {
        3E020000424D3E0200000000000036000000280000000D0000000D0000000100
        1800000000000802000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF000000FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF0000007F7F7F0000
        000000000000000000000000007F7F7F000000FFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF000000FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFF0000007F7F7F0000000000000000000000000000007F7F7F
        000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF000000FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00}
      ParentShowHint = False
      ShowHint = True
      OnClick = BtnGENormClick
      ExplicitLeft = 300
    end
    object BtnGETilt: TSpeedButton
      AlignWithMargins = True
      Left = 122
      Top = 1
      Width = 25
      Height = 25
      Hint = 'Perspective View'
      Margins.Left = 1
      Margins.Top = 0
      Margins.Right = 1
      Margins.Bottom = 0
      Align = alLeft
      Flat = True
      Glyph.Data = {
        3E020000424D3E0200000000000036000000280000000D0000000D0000000100
        1800000000000802000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF000000FFFFFFFFFFFF00FFFFFF0000000000000000000000
        00000000000000000000000000000000000000000000FFFFFF00FFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFF7F7F7F7F7F7FFFFFFFFFFFFFFFFFFF7F7F7F7F7F7F
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
        FFFF000000FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF0000000000
        00000000000000000000000000000000FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF7F7F7FFFFFFF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00}
      ParentShowHint = False
      ShowHint = True
      OnClick = BtnGETiltClick
      ExplicitLeft = 325
    end
    object BtnEnaAlt: TSpeedButton
      AlignWithMargins = True
      Left = 62
      Top = 1
      Width = 25
      Height = 25
      Hint = 'Enable Altitude'
      Margins.Left = 1
      Margins.Top = 0
      Margins.Right = 1
      Margins.Bottom = 0
      Align = alLeft
      AllowAllUp = True
      GroupIndex = 12
      Enabled = False
      Flat = True
      Glyph.Data = {
        3E020000424D3E0200000000000036000000280000000D0000000D0000000100
        1800000000000802000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFC3C3C3000000C3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3C3C3000000C3
        C3C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00}
      ParentShowHint = False
      ShowHint = True
      OnClick = BtnEnaAltClick
      ExplicitLeft = 267
    end
    object BtnHeading: TSpeedButton
      AlignWithMargins = True
      Left = 265
      Top = 1
      Width = 25
      Height = 25
      Hint = 'Heading Up'
      Margins.Left = 1
      Margins.Top = 0
      Margins.Right = 1
      Margins.Bottom = 0
      Align = alLeft
      AllowAllUp = True
      GroupIndex = 11
      Flat = True
      Glyph.Data = {
        3E020000424D3E0200000000000036000000280000000D0000000D0000000100
        1800000000000802000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFC3C3C37F7F7FFFFFFFFFFFFF000000FF
        FFFFFFFFFF7F7F7FC3C3C3FFFFFFFFFFFF00FFFFFFFFFFFF7F7F7FFFFFFFFFFF
        FFFFFFFF000000FFFFFFFFFFFFFFFFFF7F7F7FFFFFFFFFFFFF00FFFFFF7F7F7F
        FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFFFF
        FF00FFFFFF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF
        FFFFFF7F7F7FFFFFFF00FFFFFF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFF000000FF
        FFFFFFFFFFFFFFFFFFFFFF7F7F7FFFFFFF00FFFFFF7F7F7FFFFFFFFFFFFF0000
        00000000000000000000000000FFFFFFFFFFFF7F7F7FFFFFFF00FFFFFF7F7F7F
        FFFFFFFFFFFFFFFFFF000000000000000000FFFFFFFFFFFFFFFFFF7F7F7FFFFF
        FF00FFFFFFFFFFFF7F7F7FFFFFFFFFFFFF000000000000000000FFFFFFFFFFFF
        7F7F7FFFFFFFFFFFFF00FFFFFFFFFFFFC3C3C37F7F7FFFFFFFFFFFFF000000FF
        FFFFFFFFFF7F7F7FC3C3C3FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00}
      ParentShowHint = False
      ShowHint = True
      OnClick = BtnHeadingClick
      ExplicitHeight = 27
    end
    object BtnFixCent: TSpeedButton
      AlignWithMargins = True
      Left = 2
      Top = 1
      Width = 25
      Height = 25
      Hint = 'Fix Plot Center'
      Margins.Left = 1
      Margins.Top = 0
      Margins.Right = 1
      Margins.Bottom = 0
      Align = alLeft
      AllowAllUp = True
      GroupIndex = 10
      Down = True
      Flat = True
      Glyph.Data = {
        3E020000424D3E0200000000000036000000280000000D0000000D0000000100
        1800000000000802000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFF
        FFFFFFFFFFFFFFFFFF007F7F7F7F7F7F7F7F7F7F7F7F000000FFFFFF000000FF
        FFFF0000007F7F7F7F7F7F7F7F7F7F7F7F00FFFFFFFFFFFFFFFFFFFFFFFF0000
        00FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00}
      ParentShowHint = False
      ShowHint = True
      Spacing = 1
      OnClick = BtnFixCentClick
      ExplicitLeft = 12
      ExplicitTop = -4
    end
    object Debug: TLabel
      Left = 291
      Top = 1
      Width = 3
      Height = 25
      Align = alLeft
      ExplicitHeight = 13
    end
    object BtnShrink: TSpeedButton
      AlignWithMargins = True
      Left = 149
      Top = 1
      Width = 25
      Height = 25
      Hint = 'Zoom Out'
      Margins.Left = 1
      Margins.Top = 0
      Margins.Right = 1
      Margins.Bottom = 0
      Align = alLeft
      Flat = True
      Glyph.Data = {
        3E020000424D3E0200000000000036000000280000000D0000000D0000000100
        1800000000000802000000000000000000000000000000000000FFFFFF787878
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00787878000000787878FFFFFFB4B4B4000000000000000000B4B4B4FFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFF787878000000000000000000B4B4B4B4B4B4B4
        B4B4000000000000FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF000000B4B4B4FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFB4B4B4000000FFFFFFFFFFFF00FFFFFFB4B4B4
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000B4B4B4FFFF
        FF00FFFFFF000000B4B4B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        B4B4B4000000FFFFFF00FFFFFF000000B4B4B4FFFFFF00000000000000000000
        0000000000FFFFFFB4B4B4000000FFFFFF00FFFFFF000000B4B4B4FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B4B4000000FFFFFF00FFFFFFB4B4B4
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000B4B4B4FFFF
        FF00FFFFFFFFFFFF000000B4B4B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B4B4
        000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF000000000000B4B4B4B4B4B4B4
        B4B4000000000000FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFB4B4
        B4000000000000000000B4B4B4FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00}
      ParentShowHint = False
      ShowHint = True
      OnMouseDown = BtnShrinkMouseDown
      OnMouseUp = BtnShrinkMouseUp
      ExplicitLeft = 350
    end
    object BtnExpand: TSpeedButton
      AlignWithMargins = True
      Left = 176
      Top = 1
      Width = 25
      Height = 25
      Hint = 'Zoom In'
      Margins.Left = 1
      Margins.Top = 0
      Margins.Right = 1
      Margins.Bottom = 0
      Align = alLeft
      Flat = True
      Glyph.Data = {
        3E020000424D3E0200000000000036000000280000000D0000000D0000000100
        1800000000000802000000000000000000000000000000000000FFFFFF787878
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00787878000000787878FFFFFFB4B4B4000000000000000000B4B4B4FFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFF787878000000000000000000B4B4B4B4B4B4B4
        B4B4000000000000FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF000000B4B4B4FFFF
        FFFFFFFF000000FFFFFFFFFFFFB4B4B4000000FFFFFFFFFFFF00FFFFFFB4B4B4
        000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000B4B4B4FFFF
        FF00FFFFFF000000B4B4B4FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF
        B4B4B4000000FFFFFF00FFFFFF000000B4B4B400000000000000000000000000
        0000000000000000B4B4B4000000FFFFFF00FFFFFF000000B4B4B4FFFFFFFFFF
        FFFFFFFF000000FFFFFFFFFFFFFFFFFFB4B4B4000000FFFFFF00FFFFFFB4B4B4
        000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000B4B4B4FFFF
        FF00FFFFFFFFFFFF000000B4B4B4FFFFFFFFFFFF000000FFFFFFFFFFFFB4B4B4
        000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF000000000000B4B4B4B4B4B4B4
        B4B4000000000000FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFB4B4
        B4000000000000000000B4B4B4FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00}
      ParentShowHint = False
      ShowHint = True
      OnMouseDown = BtnExpandMouseDown
      OnMouseUp = BtnExpandMouseUp
      ExplicitLeft = 375
    end
    object BtnRotL: TSpeedButton
      AlignWithMargins = True
      Left = 211
      Top = 1
      Width = 25
      Height = 25
      Hint = 'Rotate Left'
      Margins.Left = 1
      Margins.Top = 0
      Margins.Right = 1
      Margins.Bottom = 0
      Align = alLeft
      Flat = True
      Glyph.Data = {
        DE000000424DDE0000000000000076000000280000000D0000000D0000000100
        0400000000006800000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        F000FFFFFFFFFFFFF000FF00000FFFFFF000FFF000FFF8FFF000FF7008FFF78F
        F000FF0F0FFFFF0FF000FF0FFF0FFF0FF000FF0FFFFFFF0FF000FF78FFFFF87F
        F000FFF08FFF80FFF000FFFF70007FFFF000FFFFFFFFFFFFF000FFFFFFFFFFFF
        F000}
      ParentShowHint = False
      ShowHint = True
      OnMouseDown = BtnRotLMouseDown
      OnMouseUp = BtnRotLMouseUp
      ExplicitLeft = 408
    end
    object BtnRotR: TSpeedButton
      AlignWithMargins = True
      Left = 238
      Top = 1
      Width = 25
      Height = 25
      Hint = 'Rotate Right'
      Margins.Left = 1
      Margins.Top = 0
      Margins.Right = 1
      Margins.Bottom = 0
      Align = alLeft
      Flat = True
      Glyph.Data = {
        DE000000424DDE0000000000000076000000280000000D0000000D0000000100
        0400000000006800000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        F000FFFFFFFFFFFFF000FFFFFF00000FF000FFF8FFF000FFF000FF87FFF8007F
        F000FF0FFFFF0F0FF000FF0FFF0FFF0FF000FF0FFFFFFF0FF000FF78FFFFF87F
        F000FFF08FFF80FFF000FFFF70007FFFF000FFFFFFFFFFFFF000FFFFFFFFFFFF
        F000}
      ParentShowHint = False
      ShowHint = True
      OnMouseDown = BtnRotRMouseDown
      OnMouseUp = BtnRotRMouseUp
      ExplicitLeft = 433
    end
    object BtnOpt: TSpeedButton
      AlignWithMargins = True
      Left = 35
      Top = 1
      Width = 25
      Height = 25
      Hint = 'Show Objects'
      Margins.Left = 1
      Margins.Top = 0
      Margins.Right = 1
      Margins.Bottom = 0
      Align = alLeft
      AllowAllUp = True
      GroupIndex = 1
      Flat = True
      Glyph.Data = {
        3E020000424D3E0200000000000036000000280000000D0000000D0000000100
        1800000000000802000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF8080808080
        80808080808080808080808080808080FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF808080FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF808080FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFF808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFF808080808080808080808080808080808080808080
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00}
      ParentShowHint = False
      ShowHint = True
      OnClick = BtnOptClick
      ExplicitLeft = 44
      ExplicitTop = 0
    end
    object Panel3: TPanel
      AlignWithMargins = True
      Left = 30
      Top = 3
      Width = 2
      Height = 21
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alLeft
      BevelInner = bvLowered
      BevelOuter = bvNone
      Caption = 'Panel3'
      TabOrder = 0
    end
    object Panel5: TPanel
      Left = 452
      Top = 1
      Width = 51
      Height = 25
      Align = alRight
      BevelOuter = bvNone
      Caption = 'Panel5'
      TabOrder = 1
      object BtnClose: TButton
        Left = 0
        Top = 0
        Width = 51
        Height = 25
        Align = alClient
        Caption = 'Close'
        TabOrder = 0
        OnClick = BtnCloseClick
      end
    end
    object Panel6: TPanel
      AlignWithMargins = True
      Left = 90
      Top = 3
      Width = 2
      Height = 21
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alLeft
      BevelInner = bvLowered
      BevelOuter = bvNone
      Caption = 'Panel3'
      TabOrder = 2
    end
    object Panel7: TPanel
      AlignWithMargins = True
      Left = 205
      Top = 4
      Width = 2
      Height = 19
      Align = alLeft
      BevelInner = bvLowered
      BevelOuter = bvNone
      Caption = 'Panel3'
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 27
    Width = 504
    Height = 479
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    Touch.InteractiveGestures = [igZoom, igPan, igRotate]
    Touch.InteractiveGestureOptions = [igoPanSingleFingerHorizontal, igoPanSingleFingerVertical, igoPanInertia, igoParentPassthrough]
    OnGesture = Panel2Gesture
    object WebBrowser: TCppWebBrowser
      Left = 1
      Top = 1
      Width = 502
      Height = 477
      Align = alClient
      TabOrder = 0
      ExplicitTop = 0
      ExplicitHeight = 482
      ControlData = {
        4C000000E23300004D3100000000000000000000000000000000000000000000
        000000004C000000000000000000000001000000E0D057007335CF11AE690800
        2B2E12620B000000000000004C0000000114020000000000C000000000000046
        8000000000000000000000000000000000000000000000000000000000000000
        00000000000000000100000000000000000000000000000000000000}
    end
  end
  object Panel8: TPanel
    Left = 2
    Top = 29
    Width = 85
    Height = 81
    AutoSize = True
    TabOrder = 2
    Visible = False
    object BtnOpt1: TSpeedButton
      Left = 1
      Top = 1
      Width = 25
      Height = 25
      Hint = 'Show Navigation Control'
      AllowAllUp = True
      GroupIndex = 1
      Flat = True
      Glyph.Data = {
        3E020000424D3E0200000000000036000000280000000D0000000D0000000100
        1800000000000802000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000FFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFC3C3C3000000FFFFFFFFFFFF000000FF
        FFFFFFFFFF000000C3C3C3FFFFFFFFFFFF00FFFFFFFFFFFF000000FFFFFFFFFF
        FF000000FFFFFF000000FFFFFFFFFFFF000000FFFFFFFFFFFF00FFFFFF000000
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
        FF00FFFFFF000000FFFFFF000000FFFFFFC3C3C3000000C3C3C3FFFFFF000000
        FFFFFF000000FFFFFF00FFFFFF000000000000FFFFFFFFFFFF000000FFFFFF00
        0000FFFFFFFFFFFF000000000000FFFFFF00FFFFFF000000FFFFFF000000FFFF
        FFC3C3C3000000C3C3C3FFFFFF000000FFFFFF000000FFFFFF00FFFFFF000000
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
        FF00FFFFFFFFFFFF000000FFFFFFFFFFFF000000FFFFFF000000FFFFFFFFFFFF
        000000FFFFFFFFFFFF00FFFFFFFFFFFFC3C3C3000000FFFFFFFFFFFF000000FF
        FFFFFFFFFF000000C3C3C3FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF0000
        00000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00}
      ParentShowHint = False
      ShowHint = True
      OnClick = BtnOpt1Click
    end
    object BtnOpt4: TSpeedButton
      Left = 1
      Top = 28
      Width = 25
      Height = 25
      Hint = 'Show Lat/Long Grid'
      AllowAllUp = True
      GroupIndex = 4
      Flat = True
      Glyph.Data = {
        3E020000424D3E0200000000000036000000280000000D0000000D0000000100
        1800000000000802000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF00
        0000FFFFFF000000FFFFFF000000FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00}
      ParentShowHint = False
      ShowHint = True
      OnClick = BtnOpt1Click
    end
    object BtnOpt2: TSpeedButton
      Left = 30
      Top = 1
      Width = 25
      Height = 25
      Hint = 'Show Scale Legend'
      AllowAllUp = True
      GroupIndex = 2
      Flat = True
      Glyph.Data = {
        3E020000424D3E0200000000000036000000280000000D0000000D0000000100
        1800000000000802000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFF00000000000000000000000000000000000000
        0000000000000000000000000000FFFFFF00FFFFFF000000FFFFFFFFFFFFFFFF
        FFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF00FFFFFF000000
        FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
        FF00FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF
        FFFFFF000000FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00}
      ParentShowHint = False
      ShowHint = True
      OnClick = BtnOpt1Click
    end
    object BtnOpt3: TSpeedButton
      Left = 59
      Top = 1
      Width = 25
      Height = 25
      Hint = 'Show Overview Map'
      AllowAllUp = True
      GroupIndex = 3
      Flat = True
      Glyph.Data = {
        3E020000424D3E0200000000000036000000280000000D0000000D0000000100
        1800000000000802000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFF000000000000000000000000000000000000000000000000000000
        000000000000FFFFFF00FFFFFF000000FFFFFFFFFFFF7F7F7FFFFFFFFFFFFFFF
        FFFFC3C3C3FFFFFFFFFFFF000000FFFFFF00FFFFFF000000FFFFFFFFFFFF7F7F
        7FC3C3C3FFFFFFFFFFFF7F7F7FFFFFFF7F7F7F000000FFFFFF00FFFFFF000000
        FFFFFFFFFFFF7F7F7F7F7F7FFFFFFF7F7F7F7F7F7F7F7F7FFFFFFF000000FFFF
        FF00FFFFFF000000FFFFFF7F7F7F7F7F7FFFFFFFFFFFFF7F7F7F7F7F7F7F7F7F
        7F7F7F000000FFFFFF00FFFFFF0000007F7F7F7F7F7F7F7F7F7F7F7FFFFFFFC3
        C3C37F7F7F7F7F7F7F7F7F000000FFFFFF00FFFFFF000000FFFFFF7F7F7F7F7F
        7FFFFFFFFFFFFFFFFFFF7F7F7FC3C3C37F7F7F000000FFFFFF00FFFFFF000000
        000000000000000000000000000000000000000000000000000000000000FFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00}
      ParentShowHint = False
      ShowHint = True
      OnClick = BtnOpt1Click
    end
    object BtnOpt5: TSpeedButton
      Left = 30
      Top = 28
      Width = 25
      Height = 25
      Hint = 'Show Status Bar'
      AllowAllUp = True
      GroupIndex = 5
      Flat = True
      Glyph.Data = {
        3E020000424D3E0200000000000036000000280000000D0000000D0000000100
        1800000000000802000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFF000000FFFFFF000000000000FFFFFF00000000
        0000FFFFFFFFFFFFFFFFFF000000FFFFFF00FFFFFF000000FFFFFF000000FFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFF00FFFFFF000000
        FFFFFF7F7F7F000000FFFFFF7F7F7FFFFFFFFFFFFF0000007F7F7F000000FFFF
        FF00FFFFFF000000FFFFFFFFFFFF000000FFFFFFFFFFFF000000FFFFFF000000
        FFFFFF000000FFFFFF00FFFFFF000000FFFFFF000000000000FFFFFF00000000
        0000FFFFFF000000FFFFFF000000FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00}
      ParentShowHint = False
      ShowHint = True
      OnClick = BtnOpt1Click
    end
    object BtnOpt6: TSpeedButton
      Left = 59
      Top = 28
      Width = 25
      Height = 25
      Hint = 'Layer Terrain'
      AllowAllUp = True
      GroupIndex = 6
      Flat = True
      Glyph.Data = {
        3E020000424D3E0200000000000036000000280000000D0000000D0000000100
        1800000000000802000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFF00FFFFFFC3C3C3000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C3C3C3FFFFFF00FFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFF7F7F7F7F7F7FFFFFFFFFFFFFFFFFFF7F7F7F7F7F7F
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF000000C3C3C3FFFFFFC3
        C3C3000000FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00}
      ParentShowHint = False
      ShowHint = True
      OnClick = BtnOpt1Click
    end
    object BtnOpt7: TSpeedButton
      Left = 1
      Top = 55
      Width = 25
      Height = 25
      Hint = 'Layer Loads'
      AllowAllUp = True
      GroupIndex = 7
      Flat = True
      Glyph.Data = {
        3E020000424D3E0200000000000036000000280000000D0000000D0000000100
        1800000000000802000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFF000000000000000000000000000000FFFFFF000000000000000000
        000000000000FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF0000000000000000000000
        00000000FFFFFF000000000000000000000000000000FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00}
      ParentShowHint = False
      ShowHint = True
      OnClick = BtnOpt1Click
    end
    object BtnOpt8: TSpeedButton
      Left = 30
      Top = 55
      Width = 25
      Height = 25
      Hint = 'Layer Buildings'
      AllowAllUp = True
      GroupIndex = 8
      Flat = True
      Glyph.Data = {
        3E020000424D3E0200000000000036000000280000000D0000000D0000000100
        1800000000000802000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF000000000000C3C3C3000000C3
        C3C3000000000000FFFFFFFFFFFFFFFFFF00FFFFFF000000000000C3C3C3C3C3
        C3C3C3C3000000FFFFFFFFFFFFFFFFFF000000000000FFFFFF00FFFFFF000000
        C3C3C3C3C3C3C3C3C3C3C3C3000000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
        FF00FFFFFF000000C3C3C3C3C3C3C3C3C3C3C3C3000000FFFFFFFFFFFFFFFFFF
        FFFFFF000000FFFFFF00FFFFFF000000C3C3C3C3C3C3C3C3C300000000000000
        0000FFFFFFFFFFFFFFFFFF000000FFFFFF00FFFFFF000000C3C3C30000000000
        00FFFFFFFFFFFFFFFFFF000000000000FFFFFF000000FFFFFF00FFFFFF000000
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFF
        FF00FFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFF000000000000
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00}
      ParentShowHint = False
      ShowHint = True
      OnClick = BtnOpt1Click
    end
    object BtnOpt9: TSpeedButton
      Left = 59
      Top = 55
      Width = 25
      Height = 25
      Hint = 'Layer Borders'
      AllowAllUp = True
      GroupIndex = 9
      Flat = True
      Glyph.Data = {
        3E020000424D3E0200000000000036000000280000000D0000000D0000000100
        1800000000000802000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF000000FFFFFF000000FFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFF000000FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFF000000FFFFFF000000FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00}
      ParentShowHint = False
      ShowHint = True
      OnClick = BtnOpt1Click
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 250
    OnTimer = Timer1Timer
    Left = 456
    Top = 458
  end
  object Timer2: TTimer
    Interval = 20
    OnTimer = Timer2Timer
    Left = 425
    Top = 458
  end
end

.class public Lcom/infraware/word/UxWordEditorActivity;
.super Lcom/infraware/common/UxDocEditorBase;
.source "UxWordEditorActivity.java"

# interfaces
.implements Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;
.implements Lcom/infraware/evengine/E$EV_VIEW_MODE;
.implements Lcom/infraware/common/UDM$USER_DEFINE_MESSAGE;
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
.field private static synthetic $SWITCH_TABLE$com$infraware$uxcontrol$uiunit$UiEnum$EUnitCommand:[I


# instance fields
.field private final LOG_CAT:Ljava/lang/String;

.field m_bChangeViewmodeWithRefolwText:Z

.field private m_bInitialized:Z

.field m_bReplaceCase:Z

.field m_bReplaceWord:Z

.field public m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

.field private m_oFileSaveDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;

.field private m_oFormatContextMenu:Lcom/infraware/uxcontrol/uicontrol/word/UiWordFormatContextMenu;

.field private m_oInsertContextMenu:Lcom/infraware/uxcontrol/uicontrol/word/UiWordInsertContextMenu;

.field public m_oShapePanel:Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel;

.field private m_oTableContextMenu:Lcom/infraware/uxcontrol/uicontrol/word/UiWordTableContextMenu;

.field protected m_oToolbar:Lcom/infraware/uxcontrol/uicontrol/word/UiWordMainToolbar;

.field m_oWordCB:Lcom/infraware/word/ICoWordEditorCB;

.field private m_oZoomContextMenu:Lcom/infraware/uxcontrol/uicontrol/common/UiZoomContextMenu;

.field private m_strOverwritePath:Ljava/lang/String;

.field m_szReplaceFrom:Ljava/lang/String;

.field m_szReplaceTo:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$com$infraware$uxcontrol$uiunit$UiEnum$EUnitCommand()[I
    .locals 3

    .prologue
    .line 57
    sget-object v0, Lcom/infraware/word/UxWordEditorActivity;->$SWITCH_TABLE$com$infraware$uxcontrol$uiunit$UiEnum$EUnitCommand:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->values()[Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Account_Add:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x97

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_cf

    :goto_1
    :try_start_1
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Account_Add_Check_Network:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xcd

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_ce

    :goto_2
    :try_start_2
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Account_Chosen_Delete:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x9a

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_cd

    :goto_3
    :try_start_3
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Account_Chosen_Edit:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x99

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_cc

    :goto_4
    :try_start_4
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Account_Delete_Comfirm:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x9b

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_cb

    :goto_5
    :try_start_5
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Account_Edit:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x98

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_ca

    :goto_6
    :try_start_6
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Account_Invalid_Address:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x9e

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_c9

    :goto_7
    :try_start_7
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Account_Invalid_Password:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x9f

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_c8

    :goto_8
    :try_start_8
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Account_Login:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x9c

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_c7

    :goto_9
    :try_start_9
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Account_Login_Fail:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xcc

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_c6

    :goto_a
    :try_start_a
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Account_Storage_chosen:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x9d

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_c5

    :goto_b
    :try_start_b
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_AfterTextChange:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_c4

    :goto_c
    :try_start_c
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_AlignmentBottom:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x65

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c3

    :goto_d
    :try_start_d
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_AlignmentCenterHorizontal:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x67

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_c2

    :goto_e
    :try_start_e
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_AlignmentCenterVertical:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x64

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_c1

    :goto_f
    :try_start_f
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_AlignmentJustify:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x69

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_c0

    :goto_10
    :try_start_10
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_AlignmentLeft:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x66

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_bf

    :goto_11
    :try_start_11
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_AlignmentRight:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x68

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_be

    :goto_12
    :try_start_12
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_AlignmentTop:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x63

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_bd

    :goto_13
    :try_start_13
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_BeforeTextChange:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_bc

    :goto_14
    :try_start_14
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_BookclipAdd:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_bb

    :goto_15
    :try_start_15
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_BookclipRemove:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_ba

    :goto_16
    :try_start_16
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_BorderBottom:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x7a

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_b9

    :goto_17
    :try_start_17
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_BorderCenter:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x7c

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_b8

    :goto_18
    :try_start_18
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_BorderLeft:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x7b

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_b7

    :goto_19
    :try_start_19
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_BorderMiddle:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x79

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_b6

    :goto_1a
    :try_start_1a
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_BorderRight:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x7d

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_b5

    :goto_1b
    :try_start_1b
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_BorderTop:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x78

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_b4

    :goto_1c
    :try_start_1c
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_BulletArrow:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x71

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_b3

    :goto_1d
    :try_start_1d
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_BulletCheck:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x70

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_b2

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_BulletCircle:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x6d

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_b1

    :goto_1f
    :try_start_1f
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_BulletDiamond:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x6f

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_b0

    :goto_20
    :try_start_20
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_BulletNone:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x6c

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_af

    :goto_21
    :try_start_21
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_BulletRectangle:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x6e

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_ae

    :goto_22
    :try_start_22
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_BulletTabSelect:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x6a

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_ad

    :goto_23
    :try_start_23
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_CellFormat_Separator:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xc1

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_ac

    :goto_24
    :try_start_24
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ChartHorizontalBar:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x8d

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_ab

    :goto_25
    :try_start_25
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ChartLine:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x8f

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_aa

    :goto_26
    :try_start_26
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ChartPie:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x8e

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_a9

    :goto_27
    :try_start_27
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ChartVerticalBar:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x8c

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_a8

    :goto_28
    :try_start_28
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ColumnsApplyToAll:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x82

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_a7

    :goto_29
    :try_start_29
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ColumnsApplyToCurrent:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x81

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_a6

    :goto_2a
    :try_start_2a
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ColumnsTypeOne:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x7e

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_a5

    :goto_2b
    :try_start_2b
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ColumnsTypeThree:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x80

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_a4

    :goto_2c
    :try_start_2c
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ColumnsTypeTwo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x7f

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_a3

    :goto_2d
    :try_start_2d
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Copy_Cancel:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xc6

    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_a2

    :goto_2e
    :try_start_2e
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Copy_Overwrite:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xc5

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_a1

    :goto_2f
    :try_start_2f
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_DialogNegativeDismiss:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_a0

    :goto_30
    :try_start_30
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_DialogNeutralDismiss:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_9f

    :goto_31
    :try_start_31
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_DialogPositiveDismiss:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_9e

    :goto_32
    :try_start_32
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Doc_Close_Save_Cancel:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xbf

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_9d

    :goto_33
    :try_start_33
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Doc_Close_Save_Confirm:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xbd

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_9c

    :goto_34
    :try_start_34
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Doc_Close_Save_No:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xbe

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_9b

    :goto_35
    :try_start_35
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Download_Cancel:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xc4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_9a

    :goto_36
    :try_start_36
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Download_Overwrite:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xc2

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_99

    :goto_37
    :try_start_37
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Download_Skip:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xc3

    aput v2, v0, v1
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_98

    :goto_38
    :try_start_38
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_EditTextChange:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_97

    :goto_39
    :try_start_39
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Edit_Anyway:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xcf

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_96

    :goto_3a
    :try_start_3a
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Edit_Cancel:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xd0

    aput v2, v0, v1
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_95

    :goto_3b
    :try_start_3b
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_FileDelete:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_3b} :catch_94

    :goto_3c
    :try_start_3c
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_FileDownload:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_3c} :catch_93

    :goto_3d
    :try_start_3d
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_FileUpload:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_3d} :catch_92

    :goto_3e
    :try_start_3e
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_File_CheckedCopy:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xb2

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_3e} :catch_91

    :goto_3f
    :try_start_3f
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_File_CheckedDelete:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xb3

    aput v2, v0, v1
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_3f} :catch_90

    :goto_40
    :try_start_40
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_File_CheckedFileDelete_Confirm:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xb5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_40} :catch_8f

    :goto_41
    :try_start_41
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_File_CheckedMove:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xb1

    aput v2, v0, v1
    :try_end_41
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_41} :catch_8e

    :goto_42
    :try_start_42
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_File_ContextCopy:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xa8

    aput v2, v0, v1
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_42} :catch_8d

    :goto_43
    :try_start_43
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_File_ContextDelete:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xac

    aput v2, v0, v1
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_43} :catch_8c

    :goto_44
    :try_start_44
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_File_ContextDownload:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xae

    aput v2, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_44} :catch_8b

    :goto_45
    :try_start_45
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_File_ContextExtract:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xaa

    aput v2, v0, v1
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_45} :catch_8a

    :goto_46
    :try_start_46
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_File_ContextMove:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xa6

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_46} :catch_89

    :goto_47
    :try_start_47
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_File_ContextPaste:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xa7

    aput v2, v0, v1
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_47} :catch_88

    :goto_48
    :try_start_48
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_File_ContextProperties:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xad

    aput v2, v0, v1
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_48} :catch_87

    :goto_49
    :try_start_49
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_File_ContextRename:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xab

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_49} :catch_86

    :goto_4a
    :try_start_4a
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_File_ContextSend:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xa9

    aput v2, v0, v1
    :try_end_4a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_4a} :catch_85

    :goto_4b
    :try_start_4b
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_File_Download:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xaf

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_4b} :catch_84

    :goto_4c
    :try_start_4c
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_File_FolderSelect:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xb4

    aput v2, v0, v1
    :try_end_4c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c .. :try_end_4c} :catch_83

    :goto_4d
    :try_start_4d
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_File_LongpressContext:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xa2

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_4d} :catch_82

    :goto_4e
    :try_start_4e
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_File_NewFolder:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xa0

    aput v2, v0, v1
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_4e} :catch_81

    :goto_4f
    :try_start_4f
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_File_PptTypeIndex:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xb0

    aput v2, v0, v1
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_4f} :catch_80

    :goto_50
    :try_start_50
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_File_Rename:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xa3

    aput v2, v0, v1
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_50} :catch_7f

    :goto_51
    :try_start_51
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_File_Rename_Exttype:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xc0

    aput v2, v0, v1
    :try_end_51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_51} :catch_7e

    :goto_52
    :try_start_52
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_File_SaveAs:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xa4

    aput v2, v0, v1
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_52} :catch_7d

    :goto_53
    :try_start_53
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_File_SaveAsOverwite:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xa5

    aput v2, v0, v1
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53 .. :try_end_53} :catch_7c

    :goto_54
    :try_start_54
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_File_SelectAccount:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xa1

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_54} :catch_7b

    :goto_55
    :try_start_55
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_FindNext:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_55} :catch_7a

    :goto_56
    :try_start_56
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_FindOption:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_56} :catch_79

    :goto_57
    :try_start_57
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_FindPrev:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_57} :catch_78

    :goto_58
    :try_start_58
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_FontPositionNormal:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x60

    aput v2, v0, v1
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_58} :catch_77

    :goto_59
    :try_start_59
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_FontPositionSubscript:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x61

    aput v2, v0, v1
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_59} :catch_76

    :goto_5a
    :try_start_5a
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_FontPositionSuperscript:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x62

    aput v2, v0, v1
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_5a} :catch_75

    :goto_5b
    :try_start_5b
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_FontSizeChange:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x56

    aput v2, v0, v1
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_5b} :catch_74

    :goto_5c
    :try_start_5c
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_FontStyleBold:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x59

    aput v2, v0, v1
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5c .. :try_end_5c} :catch_73

    :goto_5d
    :try_start_5d
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_FontStyleEmboss:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x5e

    aput v2, v0, v1
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_5d} :catch_72

    :goto_5e
    :try_start_5e
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_FontStyleEngrave:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x5f

    aput v2, v0, v1
    :try_end_5e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5e .. :try_end_5e} :catch_71

    :goto_5f
    :try_start_5f
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_FontStyleItalic:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x5a

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_5f} :catch_70

    :goto_60
    :try_start_60
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_FontStyleOutline:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x5d

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_60} :catch_6f

    :goto_61
    :try_start_61
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_FontStyleStrike:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x5c

    aput v2, v0, v1
    :try_end_61
    .catch Ljava/lang/NoSuchFieldError; {:try_start_61 .. :try_end_61} :catch_6e

    :goto_62
    :try_start_62
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_FontStyleUnderline:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x5b

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_62} :catch_6d

    :goto_63
    :try_start_63
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_FooterItemSelect:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_63
    .catch Ljava/lang/NoSuchFieldError; {:try_start_63 .. :try_end_63} :catch_6c

    :goto_64
    :try_start_64
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_FunctionChange:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x83

    aput v2, v0, v1
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_64} :catch_6b

    :goto_65
    :try_start_65
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_FunctionContextStart:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x84

    aput v2, v0, v1
    :try_end_65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_65} :catch_6a

    :goto_66
    :try_start_66
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_FunctionOk:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x85

    aput v2, v0, v1
    :try_end_66
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66 .. :try_end_66} :catch_69

    :goto_67
    :try_start_67
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ItemSelect:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_67
    .catch Ljava/lang/NoSuchFieldError; {:try_start_67 .. :try_end_67} :catch_68

    :goto_68
    :try_start_68
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_LeftPanelClose:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xb9

    aput v2, v0, v1
    :try_end_68
    .catch Ljava/lang/NoSuchFieldError; {:try_start_68 .. :try_end_68} :catch_67

    :goto_69
    :try_start_69
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_LeftPanelOpen:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xb8

    aput v2, v0, v1
    :try_end_69
    .catch Ljava/lang/NoSuchFieldError; {:try_start_69 .. :try_end_69} :catch_66

    :goto_6a
    :try_start_6a
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_None:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_6a} :catch_65

    :goto_6b
    :try_start_6b
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_NumberingArabic:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x73

    aput v2, v0, v1
    :try_end_6b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b .. :try_end_6b} :catch_64

    :goto_6c
    :try_start_6c
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_NumberingCircledArabic:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x74

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_6c} :catch_63

    :goto_6d
    :try_start_6d
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_NumberingLowercase:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x76

    aput v2, v0, v1
    :try_end_6d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6d .. :try_end_6d} :catch_62

    :goto_6e
    :try_start_6e
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_NumberingNone:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x72

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_6e} :catch_61

    :goto_6f
    :try_start_6f
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_NumberingRoman:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x77

    aput v2, v0, v1
    :try_end_6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6f .. :try_end_6f} :catch_60

    :goto_70
    :try_start_70
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_NumberingTabSelect:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x6b

    aput v2, v0, v1
    :try_end_70
    .catch Ljava/lang/NoSuchFieldError; {:try_start_70 .. :try_end_70} :catch_5f

    :goto_71
    :try_start_71
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_NumberingUppercase:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x75

    aput v2, v0, v1
    :try_end_71
    .catch Ljava/lang/NoSuchFieldError; {:try_start_71 .. :try_end_71} :catch_5e

    :goto_72
    :try_start_72
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ProgressCancel:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xba

    aput v2, v0, v1
    :try_end_72
    .catch Ljava/lang/NoSuchFieldError; {:try_start_72 .. :try_end_72} :catch_5d

    :goto_73
    :try_start_73
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Replace:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_73
    .catch Ljava/lang/NoSuchFieldError; {:try_start_73 .. :try_end_73} :catch_5c

    :goto_74
    :try_start_74
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ReplaceAll:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_74
    .catch Ljava/lang/NoSuchFieldError; {:try_start_74 .. :try_end_74} :catch_5b

    :goto_75
    :try_start_75
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Save_to_2003_format_Confirm:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xca

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_75} :catch_5a

    :goto_76
    :try_start_76
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Save_to_2003_format_No:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xcb

    aput v2, v0, v1
    :try_end_76
    .catch Ljava/lang/NoSuchFieldError; {:try_start_76 .. :try_end_76} :catch_59

    :goto_77
    :try_start_77
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SearchEnd:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_77
    .catch Ljava/lang/NoSuchFieldError; {:try_start_77 .. :try_end_77} :catch_58

    :goto_78
    :try_start_78
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SearchNo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_78} :catch_57

    :goto_79
    :try_start_79
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Setting_ChangeCustomZoom:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xbc

    aput v2, v0, v1
    :try_end_79
    .catch Ljava/lang/NoSuchFieldError; {:try_start_79 .. :try_end_79} :catch_56

    :goto_7a
    :try_start_7a
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Setting_ClearRecentFiles:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xbb

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_7a} :catch_55

    :goto_7b
    :try_start_7b
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SheetAdd:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x86

    aput v2, v0, v1
    :try_end_7b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7b .. :try_end_7b} :catch_54

    :goto_7c
    :try_start_7c
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SheetAddSheet:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x40

    aput v2, v0, v1
    :try_end_7c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7c .. :try_end_7c} :catch_53

    :goto_7d
    :try_start_7d
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SheetContext:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x42

    aput v2, v0, v1
    :try_end_7d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7d .. :try_end_7d} :catch_52

    :goto_7e
    :try_start_7e
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SheetMoveSheet:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x41

    aput v2, v0, v1
    :try_end_7e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_7e} :catch_51

    :goto_7f
    :try_start_7f
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SheetSelect:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7f .. :try_end_7f} :catch_50

    :goto_80
    :try_start_80
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SheetSelectSheet:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x3f

    aput v2, v0, v1
    :try_end_80
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_80} :catch_4f

    :goto_81
    :try_start_81
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SheetToolbarAlignment:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_81
    .catch Ljava/lang/NoSuchFieldError; {:try_start_81 .. :try_end_81} :catch_4e

    :goto_82
    :try_start_82
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SheetToolbarBackgroundColor:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x3a

    aput v2, v0, v1
    :try_end_82
    .catch Ljava/lang/NoSuchFieldError; {:try_start_82 .. :try_end_82} :catch_4d

    :goto_83
    :try_start_83
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SheetToolbarBorder:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x3b

    aput v2, v0, v1
    :try_end_83
    .catch Ljava/lang/NoSuchFieldError; {:try_start_83 .. :try_end_83} :catch_4c

    :goto_84
    :try_start_84
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SheetToolbarBorderStyle:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x3c

    aput v2, v0, v1
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_84} :catch_4b

    :goto_85
    :try_start_85
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SheetToolbarCell:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x3d

    aput v2, v0, v1
    :try_end_85
    .catch Ljava/lang/NoSuchFieldError; {:try_start_85 .. :try_end_85} :catch_4a

    :goto_86
    :try_start_86
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SheetToolbarClipboard:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x3e

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_86} :catch_49

    :goto_87
    :try_start_87
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SheetToolbarDecimalPoint:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x37

    aput v2, v0, v1
    :try_end_87
    .catch Ljava/lang/NoSuchFieldError; {:try_start_87 .. :try_end_87} :catch_48

    :goto_88
    :try_start_88
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SheetToolbarFontColor:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x33

    aput v2, v0, v1
    :try_end_88
    .catch Ljava/lang/NoSuchFieldError; {:try_start_88 .. :try_end_88} :catch_47

    :goto_89
    :try_start_89
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SheetToolbarFontSize:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_89} :catch_46

    :goto_8a
    :try_start_8a
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SheetToolbarFontStyle:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_8a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8a .. :try_end_8a} :catch_45

    :goto_8b
    :try_start_8b
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SheetToolbarFormatCells:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x36

    aput v2, v0, v1
    :try_end_8b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8b .. :try_end_8b} :catch_44

    :goto_8c
    :try_start_8c
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SheetToolbarInsertChart:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x39

    aput v2, v0, v1
    :try_end_8c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c .. :try_end_8c} :catch_43

    :goto_8d
    :try_start_8d
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SheetToolbarInsertFunction:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x38

    aput v2, v0, v1
    :try_end_8d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8d .. :try_end_8d} :catch_42

    :goto_8e
    :try_start_8e
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SheetToolbarMergeSplit:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x35

    aput v2, v0, v1
    :try_end_8e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8e .. :try_end_8e} :catch_41

    :goto_8f
    :try_start_8f
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SheetToolbarRedo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_8f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8f .. :try_end_8f} :catch_40

    :goto_90
    :try_start_90
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SheetToolbarSave:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_90} :catch_3f

    :goto_91
    :try_start_91
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SheetToolbarUndo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_91
    .catch Ljava/lang/NoSuchFieldError; {:try_start_91 .. :try_end_91} :catch_3e

    :goto_92
    :try_start_92
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SheetToolbarZoom:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_92} :catch_3d

    :goto_93
    :try_start_93
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowPanel:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_93
    .catch Ljava/lang/NoSuchFieldError; {:try_start_93 .. :try_end_93} :catch_3c

    :goto_94
    :try_start_94
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ShowToolbarInfo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_94
    .catch Ljava/lang/NoSuchFieldError; {:try_start_94 .. :try_end_94} :catch_3b

    :goto_95
    :try_start_95
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SlideAdd:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x88

    aput v2, v0, v1
    :try_end_95
    .catch Ljava/lang/NoSuchFieldError; {:try_start_95 .. :try_end_95} :catch_3a

    :goto_96
    :try_start_96
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SlideDelete:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x8a

    aput v2, v0, v1
    :try_end_96
    .catch Ljava/lang/NoSuchFieldError; {:try_start_96 .. :try_end_96} :catch_39

    :goto_97
    :try_start_97
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SlideDuplicate:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x8b

    aput v2, v0, v1
    :try_end_97
    .catch Ljava/lang/NoSuchFieldError; {:try_start_97 .. :try_end_97} :catch_38

    :goto_98
    :try_start_98
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SlideLongpressContext:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x89

    aput v2, v0, v1
    :try_end_98
    .catch Ljava/lang/NoSuchFieldError; {:try_start_98 .. :try_end_98} :catch_37

    :goto_99
    :try_start_99
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SlideNote:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x96

    aput v2, v0, v1
    :try_end_99
    .catch Ljava/lang/NoSuchFieldError; {:try_start_99 .. :try_end_99} :catch_36

    :goto_9a
    :try_start_9a
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SlideNoteShow:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x57

    aput v2, v0, v1
    :try_end_9a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9a .. :try_end_9a} :catch_35

    :goto_9b
    :try_start_9b
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SlideToolbarAlignment:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x4b

    aput v2, v0, v1
    :try_end_9b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9b .. :try_end_9b} :catch_34

    :goto_9c
    :try_start_9c
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SlideToolbarBorderColor:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x52

    aput v2, v0, v1
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_9c} :catch_33

    :goto_9d
    :try_start_9d
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SlideToolbarBulletList:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x4c

    aput v2, v0, v1
    :try_end_9d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9d .. :try_end_9d} :catch_32

    :goto_9e
    :try_start_9e
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SlideToolbarCell:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x53

    aput v2, v0, v1
    :try_end_9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e .. :try_end_9e} :catch_31

    :goto_9f
    :try_start_9f
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SlideToolbarFillColor:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x51

    aput v2, v0, v1
    :try_end_9f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9f .. :try_end_9f} :catch_30

    :goto_a0
    :try_start_a0
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SlideToolbarFontColor:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x4a

    aput v2, v0, v1
    :try_end_a0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a0 .. :try_end_a0} :catch_2f

    :goto_a1
    :try_start_a1
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SlideToolbarFontSize:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x48

    aput v2, v0, v1
    :try_end_a1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a1 .. :try_end_a1} :catch_2e

    :goto_a2
    :try_start_a2
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SlideToolbarFontStyle:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x49

    aput v2, v0, v1
    :try_end_a2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a2 .. :try_end_a2} :catch_2d

    :goto_a3
    :try_start_a3
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SlideToolbarInsert:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x4f

    aput v2, v0, v1
    :try_end_a3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a3 .. :try_end_a3} :catch_2c

    :goto_a4
    :try_start_a4
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SlideToolbarLineSpacing:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x4e

    aput v2, v0, v1
    :try_end_a4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a4 .. :try_end_a4} :catch_2b

    :goto_a5
    :try_start_a5
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SlideToolbarNumberedList:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x4d

    aput v2, v0, v1
    :try_end_a5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a5 .. :try_end_a5} :catch_2a

    :goto_a6
    :try_start_a6
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SlideToolbarRedo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x45

    aput v2, v0, v1
    :try_end_a6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a6 .. :try_end_a6} :catch_29

    :goto_a7
    :try_start_a7
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SlideToolbarSave:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x43

    aput v2, v0, v1
    :try_end_a7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a7 .. :try_end_a7} :catch_28

    :goto_a8
    :try_start_a8
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SlideToolbarShape:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x50

    aput v2, v0, v1
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_a8} :catch_27

    :goto_a9
    :try_start_a9
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SlideToolbarSlideShow:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x54

    aput v2, v0, v1
    :try_end_a9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a9 .. :try_end_a9} :catch_26

    :goto_aa
    :try_start_aa
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SlideToolbarTextBox:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x47

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_aa} :catch_25

    :goto_ab
    :try_start_ab
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SlideToolbarUndo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x44

    aput v2, v0, v1
    :try_end_ab
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ab .. :try_end_ab} :catch_24

    :goto_ac
    :try_start_ac
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SlideToolbarZoom:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x46

    aput v2, v0, v1
    :try_end_ac
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ac .. :try_end_ac} :catch_23

    :goto_ad
    :try_start_ad
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SlideTypeSelect:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x87

    aput v2, v0, v1
    :try_end_ad
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ad .. :try_end_ad} :catch_22

    :goto_ae
    :try_start_ae
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SortFinalAscending:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x94

    aput v2, v0, v1
    :try_end_ae
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ae .. :try_end_ae} :catch_21

    :goto_af
    :try_start_af
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SortFinalDescending:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x95

    aput v2, v0, v1
    :try_end_af
    .catch Ljava/lang/NoSuchFieldError; {:try_start_af .. :try_end_af} :catch_20

    :goto_b0
    :try_start_b0
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SortPrimaryAscending:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x90

    aput v2, v0, v1
    :try_end_b0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b0 .. :try_end_b0} :catch_1f

    :goto_b1
    :try_start_b1
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SortPrimaryDescending:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x91

    aput v2, v0, v1
    :try_end_b1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b1 .. :try_end_b1} :catch_1e

    :goto_b2
    :try_start_b2
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SortSecondaryAscending:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x92

    aput v2, v0, v1
    :try_end_b2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b2 .. :try_end_b2} :catch_1d

    :goto_b3
    :try_start_b3
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_SortSecondaryDescending:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x93

    aput v2, v0, v1
    :try_end_b3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b3 .. :try_end_b3} :catch_1c

    :goto_b4
    :try_start_b4
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Start_Anyway:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xce

    aput v2, v0, v1
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b4 .. :try_end_b4} :catch_1b

    :goto_b5
    :try_start_b5
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_TableChange:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x58

    aput v2, v0, v1
    :try_end_b5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b5 .. :try_end_b5} :catch_1a

    :goto_b6
    :try_start_b6
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ThumbnailSelect:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_b6} :catch_19

    :goto_b7
    :try_start_b7
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_UserValueInput:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_b7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b7 .. :try_end_b7} :catch_18

    :goto_b8
    :try_start_b8
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Web_DownloadFile:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xb7

    aput v2, v0, v1
    :try_end_b8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b8 .. :try_end_b8} :catch_17

    :goto_b9
    :try_start_b9
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Web_ViewFile:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xb6

    aput v2, v0, v1
    :try_end_b9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b9 .. :try_end_b9} :catch_16

    :goto_ba
    :try_start_ba
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_WordToolbarAlignment:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_ba
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ba .. :try_end_ba} :catch_15

    :goto_bb
    :try_start_bb
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_WordToolbarBackgroundColor:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_bb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bb .. :try_end_bb} :catch_14

    :goto_bc
    :try_start_bc
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_WordToolbarBorder:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_bc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bc .. :try_end_bc} :catch_13

    :goto_bd
    :try_start_bd
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_WordToolbarBulletList:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_bd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bd .. :try_end_bd} :catch_12

    :goto_be
    :try_start_be
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_WordToolbarCell:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_be
    .catch Ljava/lang/NoSuchFieldError; {:try_start_be .. :try_end_be} :catch_11

    :goto_bf
    :try_start_bf
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_WordToolbarFontColor:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_bf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bf .. :try_end_bf} :catch_10

    :goto_c0
    :try_start_c0
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_WordToolbarFontSize:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c0 .. :try_end_c0} :catch_f

    :goto_c1
    :try_start_c1
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_WordToolbarFontStyle:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_c1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c1 .. :try_end_c1} :catch_e

    :goto_c2
    :try_start_c2
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_WordToolbarIndent:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c2 .. :try_end_c2} :catch_d

    :goto_c3
    :try_start_c3
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_WordToolbarInsert:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_c3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c3 .. :try_end_c3} :catch_c

    :goto_c4
    :try_start_c4
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_WordToolbarLineSpacing:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_c4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c4 .. :try_end_c4} :catch_b

    :goto_c5
    :try_start_c5
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_WordToolbarNumberedList:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_c5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c5 .. :try_end_c5} :catch_a

    :goto_c6
    :try_start_c6
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_WordToolbarRedo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_c6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c6 .. :try_end_c6} :catch_9

    :goto_c7
    :try_start_c7
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_WordToolbarReflowText:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_c7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c7 .. :try_end_c7} :catch_8

    :goto_c8
    :try_start_c8
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_WordToolbarSave:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_c8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c8 .. :try_end_c8} :catch_7

    :goto_c9
    :try_start_c9
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_WordToolbarShape:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_c9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c9 .. :try_end_c9} :catch_6

    :goto_ca
    :try_start_ca
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_WordToolbarUndo:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_ca
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ca .. :try_end_ca} :catch_5

    :goto_cb
    :try_start_cb
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_WordToolbarZoom:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_cb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cb .. :try_end_cb} :catch_4

    :goto_cc
    :try_start_cc
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Zip_Password_Cancel:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xc9

    aput v2, v0, v1
    :try_end_cc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cc .. :try_end_cc} :catch_3

    :goto_cd
    :try_start_cd
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Zip_Password_Confirm:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xc7

    aput v2, v0, v1
    :try_end_cd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cd .. :try_end_cd} :catch_2

    :goto_ce
    :try_start_ce
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Zip_Password_Ok:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xc8

    aput v2, v0, v1
    :try_end_ce
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ce .. :try_end_ce} :catch_1

    :goto_cf
    :try_start_cf
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ZoomLevelChange:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x55

    aput v2, v0, v1
    :try_end_cf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cf .. :try_end_cf} :catch_0

    :goto_d0
    sput-object v0, Lcom/infraware/word/UxWordEditorActivity;->$SWITCH_TABLE$com$infraware$uxcontrol$uiunit$UiEnum$EUnitCommand:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_d0

    :catch_1
    move-exception v1

    goto :goto_cf

    :catch_2
    move-exception v1

    goto :goto_ce

    :catch_3
    move-exception v1

    goto :goto_cd

    :catch_4
    move-exception v1

    goto :goto_cc

    :catch_5
    move-exception v1

    goto :goto_cb

    :catch_6
    move-exception v1

    goto :goto_ca

    :catch_7
    move-exception v1

    goto :goto_c9

    :catch_8
    move-exception v1

    goto :goto_c8

    :catch_9
    move-exception v1

    goto :goto_c7

    :catch_a
    move-exception v1

    goto :goto_c6

    :catch_b
    move-exception v1

    goto/16 :goto_c5

    :catch_c
    move-exception v1

    goto/16 :goto_c4

    :catch_d
    move-exception v1

    goto/16 :goto_c3

    :catch_e
    move-exception v1

    goto/16 :goto_c2

    :catch_f
    move-exception v1

    goto/16 :goto_c1

    :catch_10
    move-exception v1

    goto/16 :goto_c0

    :catch_11
    move-exception v1

    goto/16 :goto_bf

    :catch_12
    move-exception v1

    goto/16 :goto_be

    :catch_13
    move-exception v1

    goto/16 :goto_bd

    :catch_14
    move-exception v1

    goto/16 :goto_bc

    :catch_15
    move-exception v1

    goto/16 :goto_bb

    :catch_16
    move-exception v1

    goto/16 :goto_ba

    :catch_17
    move-exception v1

    goto/16 :goto_b9

    :catch_18
    move-exception v1

    goto/16 :goto_b8

    :catch_19
    move-exception v1

    goto/16 :goto_b7

    :catch_1a
    move-exception v1

    goto/16 :goto_b6

    :catch_1b
    move-exception v1

    goto/16 :goto_b5

    :catch_1c
    move-exception v1

    goto/16 :goto_b4

    :catch_1d
    move-exception v1

    goto/16 :goto_b3

    :catch_1e
    move-exception v1

    goto/16 :goto_b2

    :catch_1f
    move-exception v1

    goto/16 :goto_b1

    :catch_20
    move-exception v1

    goto/16 :goto_b0

    :catch_21
    move-exception v1

    goto/16 :goto_af

    :catch_22
    move-exception v1

    goto/16 :goto_ae

    :catch_23
    move-exception v1

    goto/16 :goto_ad

    :catch_24
    move-exception v1

    goto/16 :goto_ac

    :catch_25
    move-exception v1

    goto/16 :goto_ab

    :catch_26
    move-exception v1

    goto/16 :goto_aa

    :catch_27
    move-exception v1

    goto/16 :goto_a9

    :catch_28
    move-exception v1

    goto/16 :goto_a8

    :catch_29
    move-exception v1

    goto/16 :goto_a7

    :catch_2a
    move-exception v1

    goto/16 :goto_a6

    :catch_2b
    move-exception v1

    goto/16 :goto_a5

    :catch_2c
    move-exception v1

    goto/16 :goto_a4

    :catch_2d
    move-exception v1

    goto/16 :goto_a3

    :catch_2e
    move-exception v1

    goto/16 :goto_a2

    :catch_2f
    move-exception v1

    goto/16 :goto_a1

    :catch_30
    move-exception v1

    goto/16 :goto_a0

    :catch_31
    move-exception v1

    goto/16 :goto_9f

    :catch_32
    move-exception v1

    goto/16 :goto_9e

    :catch_33
    move-exception v1

    goto/16 :goto_9d

    :catch_34
    move-exception v1

    goto/16 :goto_9c

    :catch_35
    move-exception v1

    goto/16 :goto_9b

    :catch_36
    move-exception v1

    goto/16 :goto_9a

    :catch_37
    move-exception v1

    goto/16 :goto_99

    :catch_38
    move-exception v1

    goto/16 :goto_98

    :catch_39
    move-exception v1

    goto/16 :goto_97

    :catch_3a
    move-exception v1

    goto/16 :goto_96

    :catch_3b
    move-exception v1

    goto/16 :goto_95

    :catch_3c
    move-exception v1

    goto/16 :goto_94

    :catch_3d
    move-exception v1

    goto/16 :goto_93

    :catch_3e
    move-exception v1

    goto/16 :goto_92

    :catch_3f
    move-exception v1

    goto/16 :goto_91

    :catch_40
    move-exception v1

    goto/16 :goto_90

    :catch_41
    move-exception v1

    goto/16 :goto_8f

    :catch_42
    move-exception v1

    goto/16 :goto_8e

    :catch_43
    move-exception v1

    goto/16 :goto_8d

    :catch_44
    move-exception v1

    goto/16 :goto_8c

    :catch_45
    move-exception v1

    goto/16 :goto_8b

    :catch_46
    move-exception v1

    goto/16 :goto_8a

    :catch_47
    move-exception v1

    goto/16 :goto_89

    :catch_48
    move-exception v1

    goto/16 :goto_88

    :catch_49
    move-exception v1

    goto/16 :goto_87

    :catch_4a
    move-exception v1

    goto/16 :goto_86

    :catch_4b
    move-exception v1

    goto/16 :goto_85

    :catch_4c
    move-exception v1

    goto/16 :goto_84

    :catch_4d
    move-exception v1

    goto/16 :goto_83

    :catch_4e
    move-exception v1

    goto/16 :goto_82

    :catch_4f
    move-exception v1

    goto/16 :goto_81

    :catch_50
    move-exception v1

    goto/16 :goto_80

    :catch_51
    move-exception v1

    goto/16 :goto_7f

    :catch_52
    move-exception v1

    goto/16 :goto_7e

    :catch_53
    move-exception v1

    goto/16 :goto_7d

    :catch_54
    move-exception v1

    goto/16 :goto_7c

    :catch_55
    move-exception v1

    goto/16 :goto_7b

    :catch_56
    move-exception v1

    goto/16 :goto_7a

    :catch_57
    move-exception v1

    goto/16 :goto_79

    :catch_58
    move-exception v1

    goto/16 :goto_78

    :catch_59
    move-exception v1

    goto/16 :goto_77

    :catch_5a
    move-exception v1

    goto/16 :goto_76

    :catch_5b
    move-exception v1

    goto/16 :goto_75

    :catch_5c
    move-exception v1

    goto/16 :goto_74

    :catch_5d
    move-exception v1

    goto/16 :goto_73

    :catch_5e
    move-exception v1

    goto/16 :goto_72

    :catch_5f
    move-exception v1

    goto/16 :goto_71

    :catch_60
    move-exception v1

    goto/16 :goto_70

    :catch_61
    move-exception v1

    goto/16 :goto_6f

    :catch_62
    move-exception v1

    goto/16 :goto_6e

    :catch_63
    move-exception v1

    goto/16 :goto_6d

    :catch_64
    move-exception v1

    goto/16 :goto_6c

    :catch_65
    move-exception v1

    goto/16 :goto_6b

    :catch_66
    move-exception v1

    goto/16 :goto_6a

    :catch_67
    move-exception v1

    goto/16 :goto_69

    :catch_68
    move-exception v1

    goto/16 :goto_68

    :catch_69
    move-exception v1

    goto/16 :goto_67

    :catch_6a
    move-exception v1

    goto/16 :goto_66

    :catch_6b
    move-exception v1

    goto/16 :goto_65

    :catch_6c
    move-exception v1

    goto/16 :goto_64

    :catch_6d
    move-exception v1

    goto/16 :goto_63

    :catch_6e
    move-exception v1

    goto/16 :goto_62

    :catch_6f
    move-exception v1

    goto/16 :goto_61

    :catch_70
    move-exception v1

    goto/16 :goto_60

    :catch_71
    move-exception v1

    goto/16 :goto_5f

    :catch_72
    move-exception v1

    goto/16 :goto_5e

    :catch_73
    move-exception v1

    goto/16 :goto_5d

    :catch_74
    move-exception v1

    goto/16 :goto_5c

    :catch_75
    move-exception v1

    goto/16 :goto_5b

    :catch_76
    move-exception v1

    goto/16 :goto_5a

    :catch_77
    move-exception v1

    goto/16 :goto_59

    :catch_78
    move-exception v1

    goto/16 :goto_58

    :catch_79
    move-exception v1

    goto/16 :goto_57

    :catch_7a
    move-exception v1

    goto/16 :goto_56

    :catch_7b
    move-exception v1

    goto/16 :goto_55

    :catch_7c
    move-exception v1

    goto/16 :goto_54

    :catch_7d
    move-exception v1

    goto/16 :goto_53

    :catch_7e
    move-exception v1

    goto/16 :goto_52

    :catch_7f
    move-exception v1

    goto/16 :goto_51

    :catch_80
    move-exception v1

    goto/16 :goto_50

    :catch_81
    move-exception v1

    goto/16 :goto_4f

    :catch_82
    move-exception v1

    goto/16 :goto_4e

    :catch_83
    move-exception v1

    goto/16 :goto_4d

    :catch_84
    move-exception v1

    goto/16 :goto_4c

    :catch_85
    move-exception v1

    goto/16 :goto_4b

    :catch_86
    move-exception v1

    goto/16 :goto_4a

    :catch_87
    move-exception v1

    goto/16 :goto_49

    :catch_88
    move-exception v1

    goto/16 :goto_48

    :catch_89
    move-exception v1

    goto/16 :goto_47

    :catch_8a
    move-exception v1

    goto/16 :goto_46

    :catch_8b
    move-exception v1

    goto/16 :goto_45

    :catch_8c
    move-exception v1

    goto/16 :goto_44

    :catch_8d
    move-exception v1

    goto/16 :goto_43

    :catch_8e
    move-exception v1

    goto/16 :goto_42

    :catch_8f
    move-exception v1

    goto/16 :goto_41

    :catch_90
    move-exception v1

    goto/16 :goto_40

    :catch_91
    move-exception v1

    goto/16 :goto_3f

    :catch_92
    move-exception v1

    goto/16 :goto_3e

    :catch_93
    move-exception v1

    goto/16 :goto_3d

    :catch_94
    move-exception v1

    goto/16 :goto_3c

    :catch_95
    move-exception v1

    goto/16 :goto_3b

    :catch_96
    move-exception v1

    goto/16 :goto_3a

    :catch_97
    move-exception v1

    goto/16 :goto_39

    :catch_98
    move-exception v1

    goto/16 :goto_38

    :catch_99
    move-exception v1

    goto/16 :goto_37

    :catch_9a
    move-exception v1

    goto/16 :goto_36

    :catch_9b
    move-exception v1

    goto/16 :goto_35

    :catch_9c
    move-exception v1

    goto/16 :goto_34

    :catch_9d
    move-exception v1

    goto/16 :goto_33

    :catch_9e
    move-exception v1

    goto/16 :goto_32

    :catch_9f
    move-exception v1

    goto/16 :goto_31

    :catch_a0
    move-exception v1

    goto/16 :goto_30

    :catch_a1
    move-exception v1

    goto/16 :goto_2f

    :catch_a2
    move-exception v1

    goto/16 :goto_2e

    :catch_a3
    move-exception v1

    goto/16 :goto_2d

    :catch_a4
    move-exception v1

    goto/16 :goto_2c

    :catch_a5
    move-exception v1

    goto/16 :goto_2b

    :catch_a6
    move-exception v1

    goto/16 :goto_2a

    :catch_a7
    move-exception v1

    goto/16 :goto_29

    :catch_a8
    move-exception v1

    goto/16 :goto_28

    :catch_a9
    move-exception v1

    goto/16 :goto_27

    :catch_aa
    move-exception v1

    goto/16 :goto_26

    :catch_ab
    move-exception v1

    goto/16 :goto_25

    :catch_ac
    move-exception v1

    goto/16 :goto_24

    :catch_ad
    move-exception v1

    goto/16 :goto_23

    :catch_ae
    move-exception v1

    goto/16 :goto_22

    :catch_af
    move-exception v1

    goto/16 :goto_21

    :catch_b0
    move-exception v1

    goto/16 :goto_20

    :catch_b1
    move-exception v1

    goto/16 :goto_1f

    :catch_b2
    move-exception v1

    goto/16 :goto_1e

    :catch_b3
    move-exception v1

    goto/16 :goto_1d

    :catch_b4
    move-exception v1

    goto/16 :goto_1c

    :catch_b5
    move-exception v1

    goto/16 :goto_1b

    :catch_b6
    move-exception v1

    goto/16 :goto_1a

    :catch_b7
    move-exception v1

    goto/16 :goto_19

    :catch_b8
    move-exception v1

    goto/16 :goto_18

    :catch_b9
    move-exception v1

    goto/16 :goto_17

    :catch_ba
    move-exception v1

    goto/16 :goto_16

    :catch_bb
    move-exception v1

    goto/16 :goto_15

    :catch_bc
    move-exception v1

    goto/16 :goto_14

    :catch_bd
    move-exception v1

    goto/16 :goto_13

    :catch_be
    move-exception v1

    goto/16 :goto_12

    :catch_bf
    move-exception v1

    goto/16 :goto_11

    :catch_c0
    move-exception v1

    goto/16 :goto_10

    :catch_c1
    move-exception v1

    goto/16 :goto_f

    :catch_c2
    move-exception v1

    goto/16 :goto_e

    :catch_c3
    move-exception v1

    goto/16 :goto_d

    :catch_c4
    move-exception v1

    goto/16 :goto_c

    :catch_c5
    move-exception v1

    goto/16 :goto_b

    :catch_c6
    move-exception v1

    goto/16 :goto_a

    :catch_c7
    move-exception v1

    goto/16 :goto_9

    :catch_c8
    move-exception v1

    goto/16 :goto_8

    :catch_c9
    move-exception v1

    goto/16 :goto_7

    :catch_ca
    move-exception v1

    goto/16 :goto_6

    :catch_cb
    move-exception v1

    goto/16 :goto_5

    :catch_cc
    move-exception v1

    goto/16 :goto_4

    :catch_cd
    move-exception v1

    goto/16 :goto_3

    :catch_ce
    move-exception v1

    goto/16 :goto_2

    :catch_cf
    move-exception v1

    goto/16 :goto_1
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Lcom/infraware/common/UxDocEditorBase;-><init>()V

    .line 60
    const-string v0, "UxWordEditorActivity"

    iput-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->LOG_CAT:Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oWordCB:Lcom/infraware/word/ICoWordEditorCB;

    .line 63
    iput-boolean v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_bChangeViewmodeWithRefolwText:Z

    .line 69
    iput-boolean v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_bInitialized:Z

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_szReplaceFrom:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_szReplaceTo:Ljava/lang/String;

    .line 72
    iput-boolean v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_bReplaceCase:Z

    .line 73
    iput-boolean v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_bReplaceWord:Z

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_strOverwritePath:Ljava/lang/String;

    .line 57
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/infraware/word/UxWordEditorActivity;Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    return-void
.end method

.method static synthetic access$10(Lcom/infraware/word/UxWordEditorActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_bNewFile:Z

    return-void
.end method

.method static synthetic access$11(Lcom/infraware/word/UxWordEditorActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_strSavePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lcom/infraware/word/UxWordEditorActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_bWebfile:Z

    return v0
.end method

.method static synthetic access$13(Lcom/infraware/word/UxWordEditorActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_bWebfile:Z

    return-void
.end method

.method static synthetic access$14(Lcom/infraware/word/UxWordEditorActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_bSavingOnClose:Z

    return v0
.end method

.method static synthetic access$15(Lcom/infraware/word/UxWordEditorActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_strSavePath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$16(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/common/EvCaretTask;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oCaretHandler:Lcom/infraware/common/EvCaretTask;

    return-object v0
.end method

.method static synthetic access$17(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/common/UxSurfaceView;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

    return-object v0
.end method

.method static synthetic access$18(Lcom/infraware/word/UxWordEditorActivity;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/infraware/word/UxWordEditorActivity;->showToast(II)V

    return-void
.end method

.method static synthetic access$19(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    return-object v0
.end method

.method static synthetic access$2(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/common/CoCoreFunctionInterface;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    return-object v0
.end method

.method static synthetic access$20(Lcom/infraware/word/UxWordEditorActivity;Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    return-void
.end method

.method static synthetic access$3(Lcom/infraware/word/UxWordEditorActivity;Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oMsgDialog:Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    return-void
.end method

.method static synthetic access$4(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oMsgDialog:Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    return-object v0
.end method

.method static synthetic access$5(Lcom/infraware/word/UxWordEditorActivity;)Lcom/infraware/common/helpers/EvClipboardHelper;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oClipBoard:Lcom/infraware/common/helpers/EvClipboardHelper;

    return-object v0
.end method

.method static synthetic access$6(Lcom/infraware/word/UxWordEditorActivity;Lcom/infraware/common/UxToolBarUpdater;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oToolBarUpdater:Lcom/infraware/common/UxToolBarUpdater;

    return-void
.end method

.method static synthetic access$7(Lcom/infraware/word/UxWordEditorActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_bInitialized:Z

    return-void
.end method

.method static synthetic access$8(Lcom/infraware/word/UxWordEditorActivity;)Landroid/view/Menu;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic access$9(Lcom/infraware/word/UxWordEditorActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_bNewFile:Z

    return v0
.end method


# virtual methods
.method protected changeOptionsMenuByMode(Landroid/view/Menu;)V
    .locals 8
    .parameter "menu"

    .prologue
    const v7, 0x7f0c018b

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 760
    invoke-virtual {p0}, Lcom/infraware/word/UxWordEditorActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 761
    .local v0, inflater:Landroid/view/MenuInflater;
    if-eqz p1, :cond_0

    .line 762
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 764
    :cond_0
    iget v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_nEV_VIEW_MODE:I

    if-nez v1, :cond_5

    .line 765
    const v1, 0x7f0b0005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 767
    sget v1, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->SHOW_AS_ACTION_ALWAYS:I

    sget v2, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->SHOW_AS_ACTION_WITH_TEXT:I

    or-int/2addr v1, v2

    .line 766
    invoke-static {p1, v7, v1}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->setShowAsActionIfPossible(Landroid/view/Menu;II)V

    .line 768
    const v1, 0x7f0c018d

    .line 769
    sget v2, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->SHOW_AS_ACTION_ALWAYS:I

    sget v3, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->SHOW_AS_ACTION_WITH_TEXT:I

    or-int/2addr v2, v3

    .line 768
    invoke-static {p1, v1, v2}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->setShowAsActionIfPossible(Landroid/view/Menu;II)V

    .line 770
    invoke-virtual {p0}, Lcom/infraware/word/UxWordEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v6, :cond_1

    .line 771
    const v1, 0x7f0c018e

    .line 772
    sget v2, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->SHOW_AS_ACTION_ALWAYS:I

    sget v3, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->SHOW_AS_ACTION_WITH_TEXT:I

    or-int/2addr v2, v3

    .line 771
    invoke-static {p1, v1, v2}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->setShowAsActionIfPossible(Landroid/view/Menu;II)V

    .line 774
    :cond_1
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/infraware/word/UxWordEditorActivity;->isReadOnly()Z

    move-result v2

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_bProcessingError:Z

    if-nez v2, :cond_4

    move v2, v4

    :goto_0
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 775
    const v1, 0x7f0c0190

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 776
    const v1, 0x7f0c018c

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 789
    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_bLoadComplete:Z

    if-nez v1, :cond_3

    .line 790
    const v1, 0x7f0c0178

    iget-boolean v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_bLoadComplete:Z

    invoke-interface {p1, v1, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 792
    :cond_3
    iput-object p1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oMenu:Landroid/view/Menu;

    .line 793
    return-void

    :cond_4
    move v2, v5

    .line 774
    goto :goto_0

    .line 778
    :cond_5
    iget v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_nEV_VIEW_MODE:I

    if-ne v1, v4, :cond_2

    .line 779
    const v1, 0x7f0b0007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 780
    const v1, 0x7f0c0197

    .line 781
    sget v2, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->SHOW_AS_ACTION_ALWAYS:I

    sget v3, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->SHOW_AS_ACTION_WITH_TEXT:I

    or-int/2addr v2, v3

    .line 780
    invoke-static {p1, v1, v2}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->setShowAsActionIfPossible(Landroid/view/Menu;II)V

    .line 782
    const v1, 0x7f0c0198

    .line 783
    sget v2, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->SHOW_AS_ACTION_ALWAYS:I

    sget v3, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->SHOW_AS_ACTION_WITH_TEXT:I

    or-int/2addr v2, v3

    .line 782
    invoke-static {p1, v1, v2}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->setShowAsActionIfPossible(Landroid/view/Menu;II)V

    .line 784
    invoke-virtual {p0}, Lcom/infraware/word/UxWordEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v6, :cond_2

    .line 785
    const v1, 0x7f0c019c

    .line 786
    sget v2, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->SHOW_AS_ACTION_ALWAYS:I

    sget v3, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->SHOW_AS_ACTION_WITH_TEXT:I

    or-int/2addr v2, v3

    .line 785
    invoke-static {p1, v1, v2}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->setShowAsActionIfPossible(Landroid/view/Menu;II)V

    goto :goto_1
.end method

.method protected changeViewMode(I)V
    .locals 6
    .parameter "a_nEV_VIEW_MODE"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 667
    iget-boolean v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_bProcessingError:Z

    if-eqz v1, :cond_1

    .line 669
    const v1, 0x7f0a0364

    invoke-virtual {p0, v1, v5}, Lcom/infraware/word/UxWordEditorActivity;->showToast(II)V

    .line 731
    :cond_0
    :goto_0
    return-void

    .line 673
    :cond_1
    iget v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_nEV_VIEW_MODE:I

    if-eq v1, p1, :cond_0

    .line 676
    iput p1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_nEV_VIEW_MODE:I

    .line 677
    iget-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oGestureDomain:Lcom/infraware/common/UxGestureDomain;

    invoke-virtual {v1, p1}, Lcom/infraware/common/UxGestureDomain;->getDetector(I)Lcom/infraware/common/UxGestureDetector;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oGestureDetector:Lcom/infraware/common/UxGestureDetector;

    .line 678
    iget-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oGestureDetector:Lcom/infraware/common/UxGestureDetector;

    invoke-virtual {v1, v2}, Lcom/infraware/common/UxSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 679
    iget-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oGestureDetector:Lcom/infraware/common/UxGestureDetector;

    invoke-virtual {v1, v2}, Lcom/infraware/common/UxSurfaceView;->setGestureHandler(Lcom/infraware/common/UxGestureDetector;)V

    .line 680
    iget-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v1}, Lcom/infraware/common/UxSurfaceView;->hideSoftInput()V

    .line 682
    iget-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oToolbar:Lcom/infraware/uxcontrol/uicontrol/word/UiWordMainToolbar;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uicontrol/word/UiWordMainToolbar;->InitReflowTextButton()V

    .line 684
    iget v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_nEV_VIEW_MODE:I

    if-nez v1, :cond_6

    .line 686
    iget-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v1, v3}, Lcom/infraware/common/UxSurfaceView;->setObjectHandler(Lcom/infraware/common/EvObjectProc;)V

    .line 687
    iget-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oToolbar:Lcom/infraware/uxcontrol/uicontrol/word/UiWordMainToolbar;

    invoke-virtual {v1, v4}, Lcom/infraware/uxcontrol/uicontrol/word/UiWordMainToolbar;->show(Z)V

    .line 688
    iget-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oShapePanel:Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel;

    if-eqz v1, :cond_2

    .line 689
    iget-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oShapePanel:Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel;

    invoke-virtual {v1, v4}, Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel;->show(Z)V

    .line 690
    :cond_2
    iget-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    if-eqz v1, :cond_3

    .line 692
    iget-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    invoke-virtual {v1, v4}, Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;->show(Z)V

    .line 694
    iput-object v3, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    .line 696
    :cond_3
    iget-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    if-eqz v1, :cond_4

    .line 698
    iget-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    invoke-virtual {v1, v5}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->showDrawer(Z)V

    .line 700
    :cond_4
    iget-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v1, v3}, Lcom/infraware/common/UxSurfaceView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 723
    :cond_5
    :goto_1
    const v1, 0x7f0c015f

    invoke-virtual {p0, v1}, Lcom/infraware/word/UxWordEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 724
    .local v0, docViewLayout:Landroid/widget/RelativeLayout;
    const-string v1, "UxWordEditorActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ChangeViewMode width="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    if-nez p1, :cond_9

    .line 726
    iget-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    invoke-virtual {v1, v5, v2, v3, v5}, Lcom/infraware/common/CoCoreFunctionInterface;->changeMode(IIIZ)V

    .line 730
    :goto_2
    invoke-static {p0}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->invalidateOptionsMenuIfPossible(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 702
    .end local v0           #docViewLayout:Landroid/widget/RelativeLayout;
    :cond_6
    iget v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_nEV_VIEW_MODE:I

    if-ne v1, v5, :cond_5

    .line 704
    iget-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oObjectHandler:Lcom/infraware/common/EvObjectProc;

    invoke-virtual {v1, v2}, Lcom/infraware/common/UxSurfaceView;->setObjectHandler(Lcom/infraware/common/EvObjectProc;)V

    .line 705
    iget-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oToolbar:Lcom/infraware/uxcontrol/uicontrol/word/UiWordMainToolbar;

    invoke-virtual {v1, v5}, Lcom/infraware/uxcontrol/uicontrol/word/UiWordMainToolbar;->show(Z)V

    .line 706
    iget-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    if-eqz v1, :cond_7

    .line 708
    iget-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    invoke-virtual {v1, v4}, Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;->show(Z)V

    .line 710
    iput-object v3, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    .line 712
    :cond_7
    iget-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    if-eqz v1, :cond_8

    .line 714
    iget-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    invoke-virtual {v1, v4}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->showDrawer(Z)V

    .line 715
    iget-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    invoke-virtual {v1, v4}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->show(Z)V

    .line 717
    :cond_8
    iget-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v1, p0}, Lcom/infraware/common/UxSurfaceView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 718
    iget-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    sget-object v2, Lcom/infraware/common/UserClasses$VIEW_MODE;->VIEW_FIT_TO_WIDTH:Lcom/infraware/common/UserClasses$VIEW_MODE;

    invoke-virtual {v1, v2}, Lcom/infraware/common/CoCoreFunctionInterface;->setViewMode(Lcom/infraware/common/UserClasses$VIEW_MODE;)V

    .line 719
    iget-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oCaretHandler:Lcom/infraware/common/EvCaretTask;

    if-eqz v1, :cond_5

    .line 720
    iget-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oCaretHandler:Lcom/infraware/common/EvCaretTask;

    invoke-virtual {v1}, Lcom/infraware/common/EvCaretTask;->updateCaret()Z

    goto/16 :goto_1

    .line 728
    .restart local v0       #docViewLayout:Landroid/widget/RelativeLayout;
    :cond_9
    iget-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    invoke-virtual {v1, v4, v2, v3, v5}, Lcom/infraware/common/CoCoreFunctionInterface;->changeMode(IIIZ)V

    goto :goto_2
.end method

.method protected createHandler()V
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lcom/infraware/word/UxWordEditorActivity$1;

    invoke-direct {v0, p0}, Lcom/infraware/word/UxWordEditorActivity$1;-><init>(Lcom/infraware/word/UxWordEditorActivity;)V

    iput-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oHandler:Landroid/os/Handler;

    .line 490
    return-void
.end method

.method public onBackPressed()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1038
    iget-boolean v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_bInitialized:Z

    if-nez v2, :cond_0

    .line 1086
    :goto_0
    return-void

    .line 1041
    :cond_0
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    invoke-virtual {v2}, Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1043
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    invoke-virtual {v2, v5}, Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;->show(Z)V

    goto :goto_0

    .line 1046
    :cond_1
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oShapePanel:Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oShapePanel:Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel;

    invoke-virtual {v2}, Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1048
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oShapePanel:Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel;

    invoke-virtual {v2, v5}, Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel;->show(Z)V

    goto :goto_0

    .line 1051
    :cond_2
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    invoke-virtual {v2}, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1053
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    invoke-virtual {v2, v5}, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;->show(Z)V

    goto :goto_0

    .line 1056
    :cond_3
    iget v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_nEV_VIEW_MODE:I

    if-ne v2, v6, :cond_4

    .line 1058
    invoke-virtual {p0, v5}, Lcom/infraware/word/UxWordEditorActivity;->changeViewMode(I)V

    goto :goto_0

    .line 1061
    :cond_4
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oToolBarUpdater:Lcom/infraware/common/UxToolBarUpdater;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oToolBarUpdater:Lcom/infraware/common/UxToolBarUpdater;

    invoke-virtual {v2}, Lcom/infraware/common/UxToolBarUpdater;->isModified()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1063
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Dialog3Button:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    .line 1065
    .local v1, usButton:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;
    new-instance v0, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    .line 1066
    invoke-virtual {p0}, Lcom/infraware/word/UxWordEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a02b9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1067
    invoke-virtual {p0}, Lcom/infraware/word/UxWordEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a02ba

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1065
    invoke-direct {v0, p0, v2, v3, v1}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V

    .line 1068
    .local v0, oSaveConfirmDialog:Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;
    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->createView()V

    .line 1069
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Doc_Close_Save_Confirm:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v5}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->setPositiveDismissCommand(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;I)V

    .line 1070
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Doc_Close_Save_No:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v5}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->setNeutralDismissCommand(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;I)V

    .line 1071
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Doc_Close_Save_Cancel:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v0, v2, v5}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->setNagativeDismissCommand(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;I)V

    .line 1072
    invoke-virtual {v0, p0}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 1073
    invoke-virtual {v0, v6}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->show(Z)V

    goto :goto_0

    .line 1077
    .end local v0           #oSaveConfirmDialog:Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;
    .end local v1           #usButton:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;
    :cond_5
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v2}, Lcom/infraware/common/CoCoreFunctionInterface;->closeEngine()V

    .line 1078
    iget-boolean v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_bNewFile:Z

    if-eqz v2, :cond_6

    .line 1080
    iput-boolean v5, p0, Lcom/infraware/word/UxWordEditorActivity;->m_bNewFile:Z

    .line 1081
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_strOpenPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/infraware/filemanager/FmFileUtil;->deleteFile(Ljava/lang/String;)V

    .line 1084
    :cond_6
    invoke-super {p0}, Lcom/infraware/common/UxDocEditorBase;->onBackPressed()V

    goto/16 :goto_0
.end method

.method public varargs onCommand(Lcom/infraware/uxcontrol/uiunit/UiUnitView;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;[Ljava/lang/Object;)V
    .locals 7
    .parameter "a_oView"
    .parameter "a_eCommand"
    .parameter "a_aoArgs"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1091
    invoke-static {}, Lcom/infraware/word/UxWordEditorActivity;->$SWITCH_TABLE$com$infraware$uxcontrol$uiunit$UiEnum$EUnitCommand()[I

    move-result-object v3

    invoke-virtual {p2}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v4

    aget v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 1168
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 1093
    :sswitch_1
    new-instance v0, Ljava/lang/String;

    aget-object v3, p3, v6

    check-cast v3, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1094
    .local v0, strFullPath:Ljava/lang/String;
    iget-object v3, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    if-eqz v3, :cond_0

    .line 1096
    iput-boolean v5, p0, Lcom/infraware/word/UxWordEditorActivity;->m_bSavingOnClose:Z

    .line 1097
    iget-object v3, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v3, v0}, Lcom/infraware/common/CoCoreFunctionInterface;->saveDocumentAs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/infraware/word/UxWordEditorActivity;->setSavePath(Ljava/lang/String;)V

    goto :goto_0

    .line 1103
    .end local v0           #strFullPath:Ljava/lang/String;
    :sswitch_2
    iget-boolean v3, p0, Lcom/infraware/word/UxWordEditorActivity;->m_bNewFile:Z

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/infraware/word/UxWordEditorActivity;->isReadOnly()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1105
    :cond_1
    iget-object v3, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oFileSaveDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oFileSaveDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;

    invoke-virtual {v3}, Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;->isShow()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1109
    :cond_2
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oFileSaveDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;

    .line 1110
    new-instance v3, Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;

    invoke-direct {v3, p0}, Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oFileSaveDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;

    .line 1112
    iget-object v3, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oFileSaveDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;

    iget-object v4, p0, Lcom/infraware/word/UxWordEditorActivity;->m_strOpenPath:Ljava/lang/String;

    invoke-static {v4}, Lcom/infraware/common/Utils;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;->setDefaultSavePath(Ljava/lang/String;)V

    .line 1113
    iget-object v3, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oFileSaveDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;

    invoke-virtual {v3}, Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;->createView()V

    .line 1114
    iget-object v3, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oFileSaveDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;

    invoke-virtual {v3, p0}, Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 1115
    iget-object v3, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oFileSaveDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;

    invoke-virtual {v3, v5}, Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;->show(Z)V

    goto :goto_0

    .line 1121
    :cond_3
    iget-object v3, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    if-eqz v3, :cond_4

    .line 1122
    invoke-virtual {p0}, Lcom/infraware/word/UxWordEditorActivity;->onSave()V

    .line 1125
    :cond_4
    iput-boolean v5, p0, Lcom/infraware/word/UxWordEditorActivity;->m_bSavingOnClose:Z

    goto :goto_0

    .line 1129
    :sswitch_3
    iget-object v3, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v3}, Lcom/infraware/common/CoCoreFunctionInterface;->closeEngine()V

    .line 1130
    iget-boolean v3, p0, Lcom/infraware/word/UxWordEditorActivity;->m_bNewFile:Z

    if-eqz v3, :cond_5

    .line 1132
    iget-object v3, p0, Lcom/infraware/word/UxWordEditorActivity;->m_strOpenPath:Ljava/lang/String;

    invoke-static {v3}, Lcom/infraware/filemanager/FmFileUtil;->deleteFile(Ljava/lang/String;)V

    .line 1134
    :cond_5
    invoke-virtual {p0}, Lcom/infraware/word/UxWordEditorActivity;->finish()V

    goto :goto_0

    .line 1139
    :sswitch_4
    iget-object v3, p0, Lcom/infraware/word/UxWordEditorActivity;->m_strOpenPath:Ljava/lang/String;

    invoke-static {v3}, Lcom/infraware/filemanager/FmFileUtil;->getFileExtString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1140
    .local v1, szExt:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_6

    .line 1142
    iget-object v3, p0, Lcom/infraware/word/UxWordEditorActivity;->m_strOpenPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/infraware/word/UxWordEditorActivity;->m_strOpenPath:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1143
    .local v2, szTmpFilePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/infraware/filemanager/FmFileUtil;->isExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1146
    const v3, 0x7f0a0060

    invoke-virtual {p0, v3}, Lcom/infraware/word/UxWordEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1147
    const v4, 0x7f0a035b

    invoke-virtual {p0, v4}, Lcom/infraware/word/UxWordEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1148
    sget-object v5, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_File_SaveAsOverwite:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    .line 1145
    invoke-static {p0, p0, v3, v4, v5}, Lcom/infraware/common/CoNotification;->Confirm(Landroid/app/Activity;Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 1149
    iput-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_strOverwritePath:Ljava/lang/String;

    goto/16 :goto_0

    .line 1153
    .end local v2           #szTmpFilePath:Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    iget-object v4, p0, Lcom/infraware/word/UxWordEditorActivity;->m_strOpenPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/infraware/common/CoCoreFunctionInterface;->saveDocument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/infraware/word/UxWordEditorActivity;->setSavePath(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1160
    .end local v1           #szExt:Ljava/lang/String;
    :sswitch_5
    iget-object v3, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    iget-object v4, p0, Lcom/infraware/word/UxWordEditorActivity;->m_strOverwritePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/infraware/common/CoCoreFunctionInterface;->saveDocument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/infraware/word/UxWordEditorActivity;->setSavePath(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1091
    nop

    :sswitch_data_0
    .sparse-switch
        0xa4 -> :sswitch_1
        0xa5 -> :sswitch_5
        0xbd -> :sswitch_2
        0xbe -> :sswitch_3
        0xbf -> :sswitch_0
        0xca -> :sswitch_4
        0xcb -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 633
    invoke-super {p0, p1}, Lcom/infraware/common/UxDocEditorBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 634
    invoke-static {p0}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->invalidateOptionsMenuIfPossible(Landroid/app/Activity;)V

    .line 635
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 83
    invoke-super {p0, p1}, Lcom/infraware/common/UxDocEditorBase;->onCreate(Landroid/os/Bundle;)V

    .line 89
    new-instance v0, Lcom/infraware/word/ICoWordEditorCB;

    iget-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oObjectHandler:Lcom/infraware/common/EvObjectProc;

    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oClipBoard:Lcom/infraware/common/helpers/EvClipboardHelper;

    invoke-direct {v0, p0, v1, v2}, Lcom/infraware/word/ICoWordEditorCB;-><init>(Landroid/content/Context;Lcom/infraware/common/EvObjectProc;Lcom/infraware/common/helpers/EvClipboardHelper;)V

    iput-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oWordCB:Lcom/infraware/word/ICoWordEditorCB;

    .line 90
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oWordCB:Lcom/infraware/word/ICoWordEditorCB;

    iput-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oEditorCB:Lcom/infraware/common/ICoDocEditorCB;

    .line 91
    new-instance v0, Lcom/infraware/common/UxGestureDomain;

    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

    iget-object v3, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oEventListener:Lcom/infraware/common/UiCoreEventListener;

    iget-object v4, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oCaretHandler:Lcom/infraware/common/EvCaretTask;

    iget-object v5, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oObjectHandler:Lcom/infraware/common/EvObjectProc;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/infraware/common/UxGestureDomain;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/infraware/common/UiCoreEventListener;Lcom/infraware/common/EvCaretTask;Lcom/infraware/common/EvObjectProc;)V

    iput-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oGestureDomain:Lcom/infraware/common/UxGestureDomain;

    .line 92
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oGestureDomain:Lcom/infraware/common/UxGestureDomain;

    invoke-virtual {v0, v6}, Lcom/infraware/common/UxGestureDomain;->getDetector(I)Lcom/infraware/common/UxGestureDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oGestureDetector:Lcom/infraware/common/UxGestureDetector;

    .line 93
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

    iget-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oGestureDetector:Lcom/infraware/common/UxGestureDetector;

    invoke-virtual {v0, v1}, Lcom/infraware/common/UxSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 94
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

    iget-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oGestureDetector:Lcom/infraware/common/UxGestureDetector;

    invoke-virtual {v0, v1}, Lcom/infraware/common/UxSurfaceView;->setGestureHandler(Lcom/infraware/common/UxGestureDetector;)V

    .line 95
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    iget-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oViewerCB:Lcom/infraware/common/ICoDocViewerCB;

    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oWordCB:Lcom/infraware/word/ICoWordEditorCB;

    iget-object v3, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oWordCB:Lcom/infraware/word/ICoWordEditorCB;

    move-object v4, v7

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/common/CoCoreFunctionInterface;->setListener(Lcom/infraware/evengine/EvListener$ViewerListener;Lcom/infraware/evengine/EvListener$EditorListener;Lcom/infraware/evengine/EvListener$WordEditorListener;Lcom/infraware/evengine/EvListener$PptEditorListener;Lcom/infraware/evengine/EvListener$SheetEditorListener;)V

    .line 96
    iput v6, p0, Lcom/infraware/word/UxWordEditorActivity;->m_nEV_VIEW_MODE:I

    .line 98
    new-instance v0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordMainToolbar;

    invoke-direct {v0, p0}, Lcom/infraware/uxcontrol/uicontrol/word/UiWordMainToolbar;-><init>(Lcom/infraware/common/UxDocEditorBase;)V

    iput-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oToolbar:Lcom/infraware/uxcontrol/uicontrol/word/UiWordMainToolbar;

    .line 99
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oToolbar:Lcom/infraware/uxcontrol/uicontrol/word/UiWordMainToolbar;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/word/UiWordMainToolbar;->createView()V

    .line 100
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oToolbar:Lcom/infraware/uxcontrol/uicontrol/word/UiWordMainToolbar;

    invoke-virtual {v0, v6, v6}, Lcom/infraware/uxcontrol/uicontrol/word/UiWordMainToolbar;->show(ZZ)V

    .line 102
    new-instance v0, Lcom/infraware/uxcontrol/uicontrol/common/UiZoomContextMenu;

    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Word:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-direct {v0, p0, v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiZoomContextMenu;-><init>(Lcom/infraware/common/UxDocViewerBase;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V

    iput-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oZoomContextMenu:Lcom/infraware/uxcontrol/uicontrol/common/UiZoomContextMenu;

    .line 103
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oZoomContextMenu:Lcom/infraware/uxcontrol/uicontrol/common/UiZoomContextMenu;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/common/UiZoomContextMenu;->createView()V

    .line 107
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v0, p0}, Lcom/infraware/common/UxSurfaceView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 108
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->setDisplayHomeAsUpEnabledIfPossible(Landroid/app/Activity;Z)V

    .line 109
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 1016
    const/4 v0, 0x0

    .line 1018
    .local v0, nID:I
    iget-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oObjectHandler:Lcom/infraware/common/EvObjectProc;

    invoke-virtual {v1}, Lcom/infraware/common/EvObjectProc;->GetObjCtrlType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1027
    invoke-super {p0, p1, p2, p3}, Lcom/infraware/common/UxDocEditorBase;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1033
    :goto_0
    return-void

    .line 1019
    :pswitch_0
    const/16 v0, 0x9

    .line 1031
    :goto_1
    iget-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oContextMenu:Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;

    invoke-virtual {v1, v0}, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->changeType(I)V

    .line 1032
    iget-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oContextMenu:Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/infraware/uxcontrol/uicontrol/common/UiObjectContextMenu;->show(Z)V

    goto :goto_0

    .line 1020
    :pswitch_1
    const/16 v0, 0xc

    goto :goto_1

    .line 1021
    :pswitch_2
    const/16 v0, 0xb

    goto :goto_1

    .line 1022
    :pswitch_3
    const/16 v0, 0xd

    goto :goto_1

    .line 1024
    :pswitch_4
    const/16 v0, 0xa

    goto :goto_1

    .line 1025
    :pswitch_5
    const/16 v0, 0xe

    goto :goto_1

    .line 1018
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 741
    invoke-virtual {p0, p1}, Lcom/infraware/word/UxWordEditorActivity;->changeOptionsMenuByMode(Landroid/view/Menu;)V

    .line 743
    invoke-super {p0, p1}, Lcom/infraware/common/UxDocEditorBase;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

    if-eq p1, v0, :cond_1

    .line 1198
    :cond_0
    :goto_0
    return-void

    .line 1176
    :cond_1
    iget v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_nEV_VIEW_MODE:I

    if-eqz v0, :cond_0

    .line 1178
    if-nez p2, :cond_2

    .line 1181
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oCaretHandler:Lcom/infraware/common/EvCaretTask;

    invoke-virtual {v0}, Lcom/infraware/common/EvCaretTask;->setTimerOff()V

    .line 1182
    invoke-virtual {p0}, Lcom/infraware/word/UxWordEditorActivity;->finishActionMode()V

    goto :goto_0

    .line 1186
    :cond_2
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;->isVisible()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1188
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oObjectHandler:Lcom/infraware/common/EvObjectProc;

    invoke-virtual {v0}, Lcom/infraware/common/EvObjectProc;->GetObjCtrlType()I

    move-result v0

    if-nez v0, :cond_0

    .line 1189
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oCaretHandler:Lcom/infraware/common/EvCaretTask;

    invoke-virtual {v0}, Lcom/infraware/common/EvCaretTask;->updateCaret()Z

    goto :goto_0

    .line 1193
    :cond_3
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oCaretHandler:Lcom/infraware/common/EvCaretTask;

    invoke-virtual {v0}, Lcom/infraware/common/EvCaretTask;->setTimerOff()V

    .line 1195
    invoke-virtual {p0}, Lcom/infraware/word/UxWordEditorActivity;->finishActionMode()V

    goto :goto_0
.end method

.method public onLocale()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 638
    invoke-static {p0}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->invalidateOptionsMenuIfPossible(Landroid/app/Activity;)V

    .line 639
    invoke-static {}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->closeAllDialogs()V

    .line 641
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oToolbar:Lcom/infraware/uxcontrol/uicontrol/word/UiWordMainToolbar;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/word/UiWordMainToolbar;->createView()V

    .line 643
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oToolBarUpdater:Lcom/infraware/common/UxToolBarUpdater;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oToolBarUpdater:Lcom/infraware/common/UxToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/common/UxToolBarUpdater;->updateToolbar()V

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    if-eqz v0, :cond_2

    .line 649
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 650
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;->show(Z)V

    .line 651
    :cond_1
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;->destroy()V

    .line 652
    iput-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    .line 654
    :cond_2
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    if-eqz v0, :cond_4

    .line 656
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 657
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;->show(Z)V

    .line 658
    :cond_3
    iput-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    .line 660
    :cond_4
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oShapePanel:Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel;

    if-eqz v0, :cond_5

    .line 661
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oShapePanel:Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel;->onLocale()V

    .line 662
    :cond_5
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/high16 v7, 0x7f0a

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 797
    invoke-virtual {p0}, Lcom/infraware/word/UxWordEditorActivity;->isActionModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v6

    .line 1010
    :goto_0
    return v2

    .line 801
    :cond_0
    sget-boolean v2, Lcom/infraware/word/UxWordEditorActivity;->g_bProgressFlag:Z

    if-eqz v2, :cond_1

    move v2, v6

    .line 802
    goto :goto_0

    .line 804
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sget v3, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->homeActionId:I

    if-ne v2, v3, :cond_2

    .line 805
    invoke-virtual {p0}, Lcom/infraware/word/UxWordEditorActivity;->onBackPressed()V

    move v2, v5

    .line 806
    goto :goto_0

    .line 809
    :cond_2
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v2}, Lcom/infraware/common/UxSurfaceView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/infraware/common/Utils;->hideIme(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 811
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1007
    :pswitch_0
    invoke-super {p0, p1}, Lcom/infraware/common/UxDocEditorBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    :cond_3
    :goto_1
    move v2, v5

    .line 1010
    goto :goto_0

    .line 814
    :pswitch_1
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oZoomContextMenu:Lcom/infraware/uxcontrol/uicontrol/common/UiZoomContextMenu;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oZoomContextMenu:Lcom/infraware/uxcontrol/uicontrol/common/UiZoomContextMenu;

    invoke-virtual {v2}, Lcom/infraware/uxcontrol/uicontrol/common/UiZoomContextMenu;->isShow()Z

    move-result v2

    if-nez v2, :cond_3

    .line 815
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oZoomContextMenu:Lcom/infraware/uxcontrol/uicontrol/common/UiZoomContextMenu;

    invoke-virtual {v2, v5}, Lcom/infraware/uxcontrol/uicontrol/common/UiZoomContextMenu;->show(Z)V

    goto :goto_1

    .line 819
    :pswitch_2
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v2}, Lcom/infraware/common/CoCoreFunctionInterface;->getProtectStatus()I

    move-result v0

    .line 820
    .local v0, nProtect:I
    const-string v1, ""

    .line 821
    .local v1, szMsg:Ljava/lang/String;
    and-int/lit8 v2, v0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 823
    const v2, 0x7f0a038a

    invoke-virtual {p0, v2}, Lcom/infraware/word/UxWordEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/infraware/word/UxWordEditorActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 824
    new-instance v2, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    invoke-virtual {p0, v7}, Lcom/infraware/word/UxWordEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Dialog1Button:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-direct {v2, p0, v3, v1, v4}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V

    iput-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oMsgDialog:Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    .line 825
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oMsgDialog:Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    invoke-virtual {v2}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->createView()V

    .line 826
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oMsgDialog:Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Edit_Cancel:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v2, v3, v6}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->setPositiveDismissCommand(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;I)V

    .line 827
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oMsgDialog:Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    new-instance v3, Lcom/infraware/word/UxWordEditorActivity$2;

    invoke-direct {v3, p0}, Lcom/infraware/word/UxWordEditorActivity$2;-><init>(Lcom/infraware/word/UxWordEditorActivity;)V

    invoke-virtual {v2, v3}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 835
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oMsgDialog:Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    invoke-virtual {v2, v5}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->show(Z)V

    goto :goto_1

    .line 837
    :cond_4
    and-int/lit8 v2, v0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    .line 839
    const v2, 0x7f0a038b

    invoke-virtual {p0, v2}, Lcom/infraware/word/UxWordEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 840
    new-instance v2, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    invoke-virtual {p0, v7}, Lcom/infraware/word/UxWordEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Dialog2Button:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-direct {v2, p0, v3, v1, v4}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V

    iput-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oMsgDialog:Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    .line 841
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oMsgDialog:Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    invoke-virtual {v2}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->createView()V

    .line 842
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oMsgDialog:Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Edit_Anyway:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v2, v3, v6}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->setPositiveDismissCommand(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;I)V

    .line 843
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oMsgDialog:Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Edit_Cancel:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v2, v3, v6}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->setNagativeDismissCommand(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;I)V

    .line 844
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oMsgDialog:Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    new-instance v3, Lcom/infraware/word/UxWordEditorActivity$3;

    invoke-direct {v3, p0}, Lcom/infraware/word/UxWordEditorActivity$3;-><init>(Lcom/infraware/word/UxWordEditorActivity;)V

    invoke-virtual {v2, v3}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 864
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oMsgDialog:Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    invoke-virtual {v2, v5}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->show(Z)V

    goto/16 :goto_1

    .line 868
    :cond_5
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    if-eqz v2, :cond_6

    .line 869
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    invoke-virtual {v2, v6}, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;->show(Z)V

    .line 870
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    invoke-virtual {v2}, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;->destroy()V

    .line 871
    iput-object v4, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    .line 873
    :cond_6
    invoke-virtual {p0, v5}, Lcom/infraware/word/UxWordEditorActivity;->changeViewMode(I)V

    goto/16 :goto_1

    .line 877
    .end local v0           #nProtect:I
    .end local v1           #szMsg:Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p0}, Lcom/infraware/word/UxWordEditorActivity;->showSearchbar()V

    goto/16 :goto_1

    .line 880
    :pswitch_4
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Bookclip:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-virtual {p0, v2}, Lcom/infraware/word/UxWordEditorActivity;->showBookmarkPanel(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V

    goto/16 :goto_1

    .line 885
    :pswitch_5
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oToolbar:Lcom/infraware/uxcontrol/uicontrol/word/UiWordMainToolbar;

    invoke-virtual {v2}, Lcom/infraware/uxcontrol/uicontrol/word/UiWordMainToolbar;->toggleReflowTextButton()V

    .line 886
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v2}, Lcom/infraware/common/CoCoreFunctionInterface;->setReflowTextMode()V

    goto/16 :goto_1

    .line 889
    :pswitch_6
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_strOpenPath:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/infraware/filemanager/FmFileUtil;->onAttachFile(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 894
    :pswitch_7
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    if-eqz v2, :cond_7

    .line 895
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    invoke-virtual {v2, v6}, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;->show(Z)V

    .line 896
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    invoke-virtual {v2}, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;->destroy()V

    .line 897
    iput-object v4, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    .line 901
    :cond_7
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oHandler:Landroid/os/Handler;

    const/16 v3, -0x103

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 911
    invoke-virtual {p0, v6}, Lcom/infraware/word/UxWordEditorActivity;->changeViewMode(I)V

    goto/16 :goto_1

    .line 914
    :pswitch_8
    invoke-virtual {p0}, Lcom/infraware/word/UxWordEditorActivity;->isNewFile()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p0}, Lcom/infraware/word/UxWordEditorActivity;->isReadOnly()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p0}, Lcom/infraware/word/UxWordEditorActivity;->isWebFile()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 916
    :cond_8
    invoke-virtual {p0}, Lcom/infraware/word/UxWordEditorActivity;->getToolBarUpdater()Lcom/infraware/common/UxToolBarUpdater;

    move-result-object v2

    invoke-virtual {v2}, Lcom/infraware/common/UxToolBarUpdater;->isModified()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 919
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oFileSaveDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oFileSaveDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;

    invoke-virtual {v2}, Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;->isShow()Z

    move-result v2

    if-nez v2, :cond_3

    .line 923
    :cond_9
    iput-object v4, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oFileSaveDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;

    .line 924
    new-instance v2, Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;

    invoke-direct {v2, p0}, Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oFileSaveDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;

    .line 926
    invoke-virtual {p0}, Lcom/infraware/word/UxWordEditorActivity;->isWebFile()Z

    move-result v2

    if-nez v2, :cond_a

    .line 927
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oFileSaveDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;

    iget-object v3, p0, Lcom/infraware/word/UxWordEditorActivity;->m_strOpenPath:Ljava/lang/String;

    invoke-static {v3}, Lcom/infraware/common/Utils;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;->setDefaultSavePath(Ljava/lang/String;)V

    .line 928
    :cond_a
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oFileSaveDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;

    invoke-virtual {v2}, Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;->createView()V

    .line 929
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oFileSaveDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;

    invoke-virtual {v2, v5}, Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;->show(Z)V

    goto/16 :goto_1

    .line 933
    :cond_b
    const v2, 0x7f0a0327

    invoke-virtual {p0, v2}, Lcom/infraware/word/UxWordEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 936
    :cond_c
    invoke-virtual {p0}, Lcom/infraware/word/UxWordEditorActivity;->onSave()V

    goto/16 :goto_1

    .line 941
    :pswitch_9
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oFileSaveDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oFileSaveDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;

    invoke-virtual {v2}, Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;->isShow()Z

    move-result v2

    if-nez v2, :cond_3

    .line 945
    :cond_d
    iput-object v4, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oFileSaveDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;

    .line 946
    new-instance v2, Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;

    invoke-direct {v2, p0}, Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oFileSaveDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;

    .line 948
    invoke-virtual {p0}, Lcom/infraware/word/UxWordEditorActivity;->isWebFile()Z

    move-result v2

    if-nez v2, :cond_e

    .line 949
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oFileSaveDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;

    iget-object v3, p0, Lcom/infraware/word/UxWordEditorActivity;->m_strOpenPath:Ljava/lang/String;

    invoke-static {v3}, Lcom/infraware/common/Utils;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;->setDefaultSavePath(Ljava/lang/String;)V

    .line 950
    :cond_e
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oFileSaveDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;

    invoke-virtual {v2}, Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;->createView()V

    .line 951
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oFileSaveDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;

    invoke-virtual {v2, v5}, Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;->show(Z)V

    goto/16 :goto_1

    .line 955
    :pswitch_a
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oZoomContextMenu:Lcom/infraware/uxcontrol/uicontrol/common/UiZoomContextMenu;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oZoomContextMenu:Lcom/infraware/uxcontrol/uicontrol/common/UiZoomContextMenu;

    invoke-virtual {v2}, Lcom/infraware/uxcontrol/uicontrol/common/UiZoomContextMenu;->isShow()Z

    move-result v2

    if-nez v2, :cond_3

    .line 956
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oZoomContextMenu:Lcom/infraware/uxcontrol/uicontrol/common/UiZoomContextMenu;

    invoke-virtual {v2, v5}, Lcom/infraware/uxcontrol/uicontrol/common/UiZoomContextMenu;->show(Z)V

    goto/16 :goto_1

    .line 960
    :pswitch_b
    sput-boolean v5, Lcom/infraware/word/UxWordEditorActivity;->g_bProgressFlag:Z

    .line 962
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oHandler:Landroid/os/Handler;

    const/16 v3, -0x11d

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 963
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oToolbar:Lcom/infraware/uxcontrol/uicontrol/word/UiWordMainToolbar;

    invoke-virtual {v2}, Lcom/infraware/uxcontrol/uicontrol/word/UiWordMainToolbar;->toggleReflowTextButton()V

    .line 964
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v2}, Lcom/infraware/common/CoCoreFunctionInterface;->setReflowTextMode()V

    goto/16 :goto_1

    .line 967
    :pswitch_c
    invoke-virtual {p0}, Lcom/infraware/word/UxWordEditorActivity;->showReplacebar()V

    goto/16 :goto_1

    .line 974
    :pswitch_d
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oInsertContextMenu:Lcom/infraware/uxcontrol/uicontrol/word/UiWordInsertContextMenu;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oInsertContextMenu:Lcom/infraware/uxcontrol/uicontrol/word/UiWordInsertContextMenu;

    invoke-virtual {v2}, Lcom/infraware/uxcontrol/uicontrol/word/UiWordInsertContextMenu;->isShow()Z

    move-result v2

    if-nez v2, :cond_3

    .line 978
    :cond_f
    iput-object v4, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oInsertContextMenu:Lcom/infraware/uxcontrol/uicontrol/word/UiWordInsertContextMenu;

    .line 979
    new-instance v2, Lcom/infraware/uxcontrol/uicontrol/word/UiWordInsertContextMenu;

    invoke-direct {v2, p0}, Lcom/infraware/uxcontrol/uicontrol/word/UiWordInsertContextMenu;-><init>(Lcom/infraware/common/UxDocViewerBase;)V

    iput-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oInsertContextMenu:Lcom/infraware/uxcontrol/uicontrol/word/UiWordInsertContextMenu;

    .line 980
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oInsertContextMenu:Lcom/infraware/uxcontrol/uicontrol/word/UiWordInsertContextMenu;

    invoke-virtual {v2}, Lcom/infraware/uxcontrol/uicontrol/word/UiWordInsertContextMenu;->createView()V

    .line 981
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oInsertContextMenu:Lcom/infraware/uxcontrol/uicontrol/word/UiWordInsertContextMenu;

    invoke-virtual {v2, v5}, Lcom/infraware/uxcontrol/uicontrol/word/UiWordInsertContextMenu;->show(Z)V

    goto/16 :goto_1

    .line 985
    :pswitch_e
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oFormatContextMenu:Lcom/infraware/uxcontrol/uicontrol/word/UiWordFormatContextMenu;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oFormatContextMenu:Lcom/infraware/uxcontrol/uicontrol/word/UiWordFormatContextMenu;

    invoke-virtual {v2}, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFormatContextMenu;->isShow()Z

    move-result v2

    if-nez v2, :cond_3

    .line 989
    :cond_10
    iput-object v4, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oFormatContextMenu:Lcom/infraware/uxcontrol/uicontrol/word/UiWordFormatContextMenu;

    .line 990
    new-instance v2, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFormatContextMenu;

    invoke-direct {v2, p0}, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFormatContextMenu;-><init>(Lcom/infraware/common/UxDocViewerBase;)V

    iput-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oFormatContextMenu:Lcom/infraware/uxcontrol/uicontrol/word/UiWordFormatContextMenu;

    .line 991
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oFormatContextMenu:Lcom/infraware/uxcontrol/uicontrol/word/UiWordFormatContextMenu;

    invoke-virtual {v2}, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFormatContextMenu;->createView()V

    .line 992
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oFormatContextMenu:Lcom/infraware/uxcontrol/uicontrol/word/UiWordFormatContextMenu;

    invoke-virtual {v2, v5}, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFormatContextMenu;->show(Z)V

    goto/16 :goto_1

    .line 996
    :pswitch_f
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oTableContextMenu:Lcom/infraware/uxcontrol/uicontrol/word/UiWordTableContextMenu;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oTableContextMenu:Lcom/infraware/uxcontrol/uicontrol/word/UiWordTableContextMenu;

    invoke-virtual {v2}, Lcom/infraware/uxcontrol/uicontrol/word/UiWordTableContextMenu;->isShow()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1000
    :cond_11
    iput-object v4, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oTableContextMenu:Lcom/infraware/uxcontrol/uicontrol/word/UiWordTableContextMenu;

    .line 1001
    new-instance v2, Lcom/infraware/uxcontrol/uicontrol/word/UiWordTableContextMenu;

    invoke-direct {v2, p0}, Lcom/infraware/uxcontrol/uicontrol/word/UiWordTableContextMenu;-><init>(Lcom/infraware/common/UxDocEditorBase;)V

    iput-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oTableContextMenu:Lcom/infraware/uxcontrol/uicontrol/word/UiWordTableContextMenu;

    .line 1002
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oTableContextMenu:Lcom/infraware/uxcontrol/uicontrol/word/UiWordTableContextMenu;

    invoke-virtual {v2}, Lcom/infraware/uxcontrol/uicontrol/word/UiWordTableContextMenu;->createView()V

    .line 1003
    iget-object v2, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oTableContextMenu:Lcom/infraware/uxcontrol/uicontrol/word/UiWordTableContextMenu;

    invoke-virtual {v2, v5}, Lcom/infraware/uxcontrol/uicontrol/word/UiWordTableContextMenu;->show(Z)V

    goto/16 :goto_1

    .line 811
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c018b
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 749
    iget-boolean v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_bLoadComplete:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 755
    :goto_0
    return v0

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v0}, Lcom/infraware/common/UxSurfaceView;->hideSoftInput()V

    .line 753
    invoke-virtual {p0, p1}, Lcom/infraware/word/UxWordEditorActivity;->changeOptionsMenuByMode(Landroid/view/Menu;)V

    .line 755
    invoke-super {p0, p1}, Lcom/infraware/common/UxDocEditorBase;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public processKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "a_oEvent"

    .prologue
    const/4 v6, 0x1

    .line 1203
    invoke-static {p1}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->getKeyEventEx(Landroid/view/KeyEvent;)Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;

    move-result-object v2

    .line 1205
    .local v2, eventEx:Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;
    invoke-virtual {v2}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;->getAction()I

    move-result v3

    .line 1206
    .local v3, nAction:I
    const/4 v0, 0x0

    .line 1208
    .local v0, bHandled:Z
    if-nez v3, :cond_0

    .line 1210
    iget v5, p0, Lcom/infraware/word/UxWordEditorActivity;->m_nEV_VIEW_MODE:I

    if-nez v5, :cond_1

    .line 1212
    invoke-virtual {p0, v2}, Lcom/infraware/word/UxWordEditorActivity;->processKeyEvent_View(Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;)Z

    move-result v0

    .line 1234
    :cond_0
    :goto_0
    if-eqz v0, :cond_5

    move v5, v6

    .line 1236
    :goto_1
    return v5

    .line 1216
    :cond_1
    iget-object v5, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v5}, Lcom/infraware/common/CoCoreFunctionInterface;->getCaretInfo()Lcom/infraware/evengine/EV$CARET_INFO;

    move-result-object v4

    .line 1217
    .local v4, oCaretInfo:Lcom/infraware/evengine/EV$CARET_INFO;
    iget-object v5, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oObjectHandler:Lcom/infraware/common/EvObjectProc;

    invoke-virtual {v5}, Lcom/infraware/common/EvObjectProc;->GetObjCtrlType()I

    move-result v5

    if-eqz v5, :cond_2

    move v1, v6

    .line 1219
    .local v1, bObjectSelected:Z
    :goto_2
    if-eqz v1, :cond_3

    .line 1221
    invoke-virtual {p0, v2}, Lcom/infraware/word/UxWordEditorActivity;->processKeyEvent_Object(Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;)Z

    move-result v0

    goto :goto_0

    .line 1217
    .end local v1           #bObjectSelected:Z
    :cond_2
    const/4 v5, 0x0

    move v1, v5

    goto :goto_2

    .line 1223
    .restart local v1       #bObjectSelected:Z
    :cond_3
    iget v5, v4, Lcom/infraware/evengine/EV$CARET_INFO;->bCaret:I

    if-ne v5, v6, :cond_4

    .line 1225
    invoke-virtual {p0, v2}, Lcom/infraware/word/UxWordEditorActivity;->processKeyEvent_Edit(Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;)Z

    move-result v0

    goto :goto_0

    .line 1229
    :cond_4
    invoke-virtual {p0, v2}, Lcom/infraware/word/UxWordEditorActivity;->processKeyEvent_View(Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;)Z

    move-result v0

    goto :goto_0

    .line 1236
    .end local v1           #bObjectSelected:Z
    .end local v4           #oCaretInfo:Lcom/infraware/evengine/EV$CARET_INFO;
    :cond_5
    invoke-super {p0, p1}, Lcom/infraware/common/UxDocEditorBase;->processKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_1
.end method

.method processKeyEvent_Edit(Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;)Z
    .locals 7
    .parameter "a_oEvent"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1329
    const/4 v1, 0x0

    .line 1332
    .local v1, gestureDetector:Lcom/infraware/common/UxEditorGestureDetector;
    :try_start_0
    const-class v3, Lcom/infraware/common/UxEditorGestureDetector;

    iget-object v4, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oGestureDetector:Lcom/infraware/common/UxGestureDetector;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/infraware/common/UxEditorGestureDetector;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1338
    :goto_0
    if-nez v1, :cond_0

    move v3, v6

    .line 1388
    :goto_1
    return v3

    .line 1340
    :cond_0
    invoke-virtual {p1}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;->getKeyCode()I

    move-result v2

    .line 1342
    .local v2, nKeyCode:I
    packed-switch v2, :pswitch_data_0

    .line 1361
    invoke-virtual {p1}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;->getMoveHomeKeyCode()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 1363
    invoke-virtual {v1}, Lcom/infraware/common/UxEditorGestureDetector;->sendEmptyCommit()V

    .line 1364
    iget-object v3, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/infraware/common/CoCoreFunctionInterface;->moveCaret(I)V

    move v3, v5

    .line 1365
    goto :goto_1

    .line 1345
    :pswitch_0
    invoke-virtual {v1}, Lcom/infraware/common/UxEditorGestureDetector;->sendEmptyCommit()V

    .line 1346
    iget-object v3, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/infraware/common/CoCoreFunctionInterface;->moveCaret(I)V

    move v3, v5

    .line 1347
    goto :goto_1

    .line 1349
    :pswitch_1
    invoke-virtual {v1}, Lcom/infraware/common/UxEditorGestureDetector;->sendEmptyCommit()V

    .line 1350
    iget-object v3, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/infraware/common/CoCoreFunctionInterface;->moveCaret(I)V

    move v3, v5

    .line 1351
    goto :goto_1

    .line 1353
    :pswitch_2
    invoke-virtual {v1}, Lcom/infraware/common/UxEditorGestureDetector;->sendEmptyCommit()V

    .line 1354
    iget-object v3, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v3, v6}, Lcom/infraware/common/CoCoreFunctionInterface;->moveCaret(I)V

    move v3, v5

    .line 1355
    goto :goto_1

    .line 1357
    :pswitch_3
    invoke-virtual {v1}, Lcom/infraware/common/UxEditorGestureDetector;->sendEmptyCommit()V

    .line 1358
    iget-object v3, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v3, v5}, Lcom/infraware/common/CoCoreFunctionInterface;->moveCaret(I)V

    move v3, v5

    .line 1359
    goto :goto_1

    .line 1367
    :cond_1
    invoke-virtual {p1}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;->getMoveEndKeyCode()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 1369
    invoke-virtual {v1}, Lcom/infraware/common/UxEditorGestureDetector;->sendEmptyCommit()V

    .line 1370
    iget-object v3, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/infraware/common/CoCoreFunctionInterface;->moveCaret(I)V

    move v3, v5

    .line 1371
    goto :goto_1

    .line 1373
    :cond_2
    invoke-virtual {p1}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;->getPageUpKeyCode()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 1375
    invoke-virtual {v1}, Lcom/infraware/common/UxEditorGestureDetector;->sendEmptyCommit()V

    .line 1376
    iget-object v3, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/infraware/common/CoCoreFunctionInterface;->moveCaret(I)V

    move v3, v5

    .line 1377
    goto :goto_1

    .line 1379
    :cond_3
    invoke-virtual {p1}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;->getPageDownKeyCode()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 1381
    invoke-virtual {v1}, Lcom/infraware/common/UxEditorGestureDetector;->sendEmptyCommit()V

    .line 1382
    iget-object v3, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/infraware/common/CoCoreFunctionInterface;->moveCaret(I)V

    move v3, v5

    .line 1383
    goto :goto_1

    :cond_4
    move v3, v6

    .line 1388
    goto :goto_1

    .line 1334
    .end local v2           #nKeyCode:I
    :catch_0
    move-exception v3

    goto :goto_0

    .line 1342
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method processKeyEvent_Object(Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;)Z
    .locals 5
    .parameter "a_oEvent"

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1294
    invoke-virtual {p1}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;->getKeyCode()I

    move-result v0

    .line 1296
    .local v0, nKeyCode:I
    packed-switch v0, :pswitch_data_0

    .line 1311
    invoke-virtual {p1}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;->getPageUpKeyCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1313
    iget-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v1, v3, v2}, Lcom/infraware/common/CoCoreFunctionInterface;->movePage(II)V

    move v1, v3

    .line 1324
    :goto_0
    return v1

    .line 1299
    :pswitch_0
    iget-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/infraware/common/CoCoreFunctionInterface;->moveCaret(I)V

    move v1, v3

    .line 1300
    goto :goto_0

    .line 1302
    :pswitch_1
    iget-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v1, v4}, Lcom/infraware/common/CoCoreFunctionInterface;->moveCaret(I)V

    move v1, v3

    .line 1303
    goto :goto_0

    .line 1305
    :pswitch_2
    iget-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v1, v2}, Lcom/infraware/common/CoCoreFunctionInterface;->moveCaret(I)V

    move v1, v3

    .line 1306
    goto :goto_0

    .line 1308
    :pswitch_3
    iget-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v1, v3}, Lcom/infraware/common/CoCoreFunctionInterface;->moveCaret(I)V

    move v1, v3

    .line 1309
    goto :goto_0

    .line 1316
    :cond_0
    invoke-virtual {p1}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;->getPageDownKeyCode()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1318
    iget-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v1, v4, v2}, Lcom/infraware/common/CoCoreFunctionInterface;->movePage(II)V

    move v1, v3

    .line 1319
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1324
    goto :goto_0

    .line 1296
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method processKeyEvent_View(Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;)Z
    .locals 8
    .parameter "a_oEvent"

    .prologue
    const/4 v1, 0x3

    const/16 v2, 0x28

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 1241
    invoke-virtual {p1}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;->getKeyCode()I

    move-result v6

    .line 1243
    .local v6, nKeyCode:I
    packed-switch v6, :pswitch_data_0

    .line 1266
    invoke-virtual {p1}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;->getMoveHomeKeyCode()I

    move-result v0

    if-ne v6, v0, :cond_0

    .line 1268
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v0, v3, v3}, Lcom/infraware/common/CoCoreFunctionInterface;->movePage(II)V

    move v0, v7

    .line 1289
    :goto_0
    return v0

    .line 1246
    :pswitch_0
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    const/4 v1, 0x2

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/common/CoCoreFunctionInterface;->scrollPage(IIIII)V

    move v0, v7

    .line 1249
    goto :goto_0

    .line 1251
    :pswitch_1
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/common/CoCoreFunctionInterface;->scrollPage(IIIII)V

    move v0, v7

    .line 1254
    goto :goto_0

    .line 1256
    :pswitch_2
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    move v1, v3

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/common/CoCoreFunctionInterface;->scrollPage(IIIII)V

    move v0, v7

    .line 1259
    goto :goto_0

    .line 1261
    :pswitch_3
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    move v1, v7

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/common/CoCoreFunctionInterface;->scrollPage(IIIII)V

    move v0, v7

    .line 1264
    goto :goto_0

    .line 1271
    :cond_0
    invoke-virtual {p1}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;->getMoveEndKeyCode()I

    move-result v0

    if-ne v6, v0, :cond_1

    .line 1273
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Lcom/infraware/common/CoCoreFunctionInterface;->movePage(II)V

    move v0, v7

    .line 1274
    goto :goto_0

    .line 1276
    :cond_1
    invoke-virtual {p1}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;->getPageUpKeyCode()I

    move-result v0

    if-ne v6, v0, :cond_2

    .line 1278
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v0, v7, v3}, Lcom/infraware/common/CoCoreFunctionInterface;->movePage(II)V

    move v0, v7

    .line 1279
    goto :goto_0

    .line 1281
    :cond_2
    invoke-virtual {p1}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils$KeyEventEx;->getPageDownKeyCode()I

    move-result v0

    if-ne v6, v0, :cond_3

    .line 1283
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v0, v1, v3}, Lcom/infraware/common/CoCoreFunctionInterface;->movePage(II)V

    move v0, v7

    .line 1284
    goto :goto_0

    :cond_3
    move v0, v3

    .line 1289
    goto :goto_0

    .line 1243
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showBookmarkPanel(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V
    .locals 4
    .parameter "a_eBookmarkStyle"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 494
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oShapePanel:Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oShapePanel:Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel;

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel;->show(Z)V

    .line 497
    iput-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oShapePanel:Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel;

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    if-eqz v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->show(Z)V

    .line 502
    :cond_1
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    if-eqz v0, :cond_2

    .line 504
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;->show(Z)V

    .line 505
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;->destroy()V

    .line 506
    iput-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    .line 509
    :cond_2
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    if-nez v0, :cond_3

    .line 511
    new-instance v0, Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    invoke-direct {v0, p0, p1}, Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;-><init>(Lcom/infraware/common/UxDocViewerBase;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V

    iput-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    .line 512
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;->createView()V

    .line 513
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    invoke-virtual {v0, v3}, Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;->show(Z)V

    .line 517
    :goto_0
    return-void

    .line 516
    :cond_3
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    iget-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;->show(Z)V

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1
.end method

.method public showReplacebar()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 599
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;->show(Z)V

    .line 602
    iput-object v3, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oShapePanel:Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel;

    if-eqz v0, :cond_1

    .line 607
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oShapePanel:Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel;

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel;->show(Z)V

    .line 608
    iput-object v3, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oShapePanel:Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel;

    .line 611
    :cond_1
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    if-ne v0, v1, :cond_2

    .line 612
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;->destroy()V

    .line 613
    iput-object v3, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    .line 616
    :cond_2
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    if-nez v0, :cond_3

    .line 617
    new-instance v0, Lcom/infraware/uxcontrol/uicontrol/common/UiReplaceBar;

    invoke-direct {v0, p0}, Lcom/infraware/uxcontrol/uicontrol/common/UiReplaceBar;-><init>(Lcom/infraware/common/UxDocViewerBase;)V

    iput-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    .line 618
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;->createView()V

    .line 620
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oCaretHandler:Lcom/infraware/common/EvCaretTask;

    invoke-virtual {v0}, Lcom/infraware/common/EvCaretTask;->setTimerOff()V

    .line 621
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    invoke-virtual {v0, v4}, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;->show(Z)V

    .line 629
    :goto_0
    return-void

    .line 625
    :cond_3
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;->isVisible()Z

    move-result v0

    if-nez v0, :cond_4

    .line 626
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oCaretHandler:Lcom/infraware/common/EvCaretTask;

    invoke-virtual {v0}, Lcom/infraware/common/EvCaretTask;->setTimerOff()V

    .line 627
    :cond_4
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    iget-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;->show(Z)V

    goto :goto_0

    :cond_5
    move v1, v4

    goto :goto_1
.end method

.method public showSearchbar()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 565
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;->show(Z)V

    .line 568
    iput-object v3, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oShapePanel:Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel;

    if-eqz v0, :cond_1

    .line 573
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oShapePanel:Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel;

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel;->show(Z)V

    .line 574
    iput-object v3, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oShapePanel:Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel;

    .line 577
    :cond_1
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/infraware/uxcontrol/uicontrol/common/UiReplaceBar;

    if-ne v0, v1, :cond_2

    .line 578
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;->destroy()V

    .line 579
    iput-object v3, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    .line 582
    :cond_2
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    if-nez v0, :cond_3

    .line 583
    new-instance v0, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    invoke-direct {v0, p0}, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;-><init>(Lcom/infraware/common/UxDocViewerBase;)V

    iput-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    .line 584
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;->createView()V

    .line 586
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oCaretHandler:Lcom/infraware/common/EvCaretTask;

    invoke-virtual {v0}, Lcom/infraware/common/EvCaretTask;->setTimerOff()V

    .line 587
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    invoke-virtual {v0, v4}, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;->show(Z)V

    .line 595
    :goto_0
    return-void

    .line 591
    :cond_3
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;->isVisible()Z

    move-result v0

    if-nez v0, :cond_4

    .line 592
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oCaretHandler:Lcom/infraware/common/EvCaretTask;

    invoke-virtual {v0}, Lcom/infraware/common/EvCaretTask;->setTimerOff()V

    .line 593
    :cond_4
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    iget-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;->show(Z)V

    goto :goto_0

    :cond_5
    move v1, v4

    goto :goto_1
.end method

.method public showShapePanel()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 538
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;->show(Z)V

    .line 541
    iput-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    if-eqz v0, :cond_1

    .line 544
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->show(Z)V

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    if-eqz v0, :cond_2

    .line 548
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;->show(Z)V

    .line 549
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;->destroy()V

    .line 550
    iput-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oSearchBar:Lcom/infraware/uxcontrol/uicontrol/common/UiSearchBar;

    .line 553
    :cond_2
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oShapePanel:Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel;

    if-nez v0, :cond_3

    .line 555
    new-instance v0, Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel;

    invoke-direct {v0, p0}, Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel;-><init>(Lcom/infraware/common/UxDocViewerBase;)V

    iput-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oShapePanel:Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel;

    .line 556
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oShapePanel:Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel;->createView()V

    .line 557
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oShapePanel:Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel;

    invoke-virtual {v0, v3}, Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel;->show(Z)V

    .line 561
    :goto_0
    return-void

    .line 560
    :cond_3
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oShapePanel:Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel;

    iget-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oShapePanel:Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel;->show(Z)V

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1
.end method

.method public showThumbnailPanel()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 521
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oShapePanel:Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oShapePanel:Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel;

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uicontrol/slide/UiShapePanel;->show(Z)V

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    if-eqz v0, :cond_1

    .line 524
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oBookmarkPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;

    invoke-virtual {v0, v2}, Lcom/infraware/uxcontrol/uicontrol/common/UiBookmarkPanel;->show(Z)V

    .line 526
    :cond_1
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    if-nez v0, :cond_2

    .line 528
    new-instance v0, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Slide:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    invoke-direct {v0, p0, v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;-><init>(Lcom/infraware/common/UxDocViewerBase;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V

    iput-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    .line 529
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->createView()V

    .line 530
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    invoke-virtual {v0, v3}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->show(Z)V

    .line 534
    :goto_0
    return-void

    .line 533
    :cond_2
    iget-object v0, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    iget-object v1, p0, Lcom/infraware/word/UxWordEditorActivity;->m_oThumbnailPanel:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;->show(Z)V

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1
.end method

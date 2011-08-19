.class public Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;
.super Ljava/lang/Object;
.source "UiWordFontDialog.java"

# interfaces
.implements Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;
.implements Lcom/infraware/common/UDM$UDM_FONTDLG_SELECTION_MASK;


# static fields
.field private static synthetic $SWITCH_TABLE$com$infraware$uxcontrol$uiunit$UiEnum$EUnitCommand:[I


# instance fields
.field private m_nFontFaceIndex:I

.field private m_nItemSelectionFlag:I

.field private m_oActivity:Lcom/infraware/common/UxDocViewerBase;

.field private m_oBackgroundColorSpinner:Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;

.field private m_oColorItems:[Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;

.field private m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

.field private m_oDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

.field private m_oFontColorSpinner:Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;

.field private m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

.field private m_oFontSizeSpinner:Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;

.field private m_oFontStyleButtonGroup:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;

.field m_oImageArray:Landroid/content/res/TypedArray;

.field private m_oTextStylePreview:Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;

.field private m_ofontFaceSpinner:Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;

.field private m_szFontList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$com$infraware$uxcontrol$uiunit$UiEnum$EUnitCommand()[I
    .locals 3

    .prologue
    .line 32
    sget-object v0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->$SWITCH_TABLE$com$infraware$uxcontrol$uiunit$UiEnum$EUnitCommand:[I

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
    sput-object v0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->$SWITCH_TABLE$com$infraware$uxcontrol$uiunit$UiEnum$EUnitCommand:[I

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

.method public constructor <init>(Lcom/infraware/common/UxDocViewerBase;)V
    .locals 3
    .parameter "a_oActivity"

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v1, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    .line 56
    iput v1, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nFontFaceIndex:I

    .line 60
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oActivity:Lcom/infraware/common/UxDocViewerBase;

    .line 61
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oActivity:Lcom/infraware/common/UxDocViewerBase;

    invoke-virtual {v1}, Lcom/infraware/common/UxDocViewerBase;->getCoreInterface()Lcom/infraware/common/CoCoreFunctionInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    .line 63
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oActivity:Lcom/infraware/common/UxDocViewerBase;

    invoke-direct {v0, v1}, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;-><init>(Landroid/app/Activity;)V

    .line 64
    .local v0, oUnitBuilder:Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;
    sget-object v1, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Dialog2Button:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    const v2, 0x7f030031

    invoke-virtual {v0, v1, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->createDialog(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;I)Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    .line 65
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    const v2, 0x7f0201e8

    invoke-virtual {v1, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->setIcon(I)V

    .line 66
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    const v2, 0x7f0a00ce

    invoke-virtual {v1, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->setTitle(I)V

    .line 68
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    invoke-virtual {v1, p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 70
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->initControls()V

    .line 71
    return-void
.end method


# virtual methods
.method public applyFontDlgInfo()V
    .locals 7

    .prologue
    const/16 v6, 0x100

    const/16 v5, 0x80

    const/16 v4, 0x40

    const/16 v3, 0x20

    const/16 v2, -0x270f

    .line 334
    iget v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 335
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v1, v1, Lcom/infraware/common/UserClasses$FontInfo;->nFontColor:I

    invoke-virtual {v0, v1, v2}, Lcom/infraware/common/CoCoreFunctionInterface;->setFontColor(II)V

    .line 337
    :cond_0
    iget v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 338
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v1, v1, Lcom/infraware/common/UserClasses$FontInfo;->nBGColor:I

    invoke-virtual {v0, v2, v1}, Lcom/infraware/common/CoCoreFunctionInterface;->setFontColor(II)V

    .line 340
    :cond_1
    iget v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 341
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v1, v1, Lcom/infraware/common/UserClasses$FontInfo;->nFontSize:I

    invoke-virtual {v0, v1}, Lcom/infraware/common/CoCoreFunctionInterface;->setFontSize(I)V

    .line 343
    :cond_2
    iget v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    .line 344
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v1, v1, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    invoke-virtual {v0, v3, v1}, Lcom/infraware/common/CoCoreFunctionInterface;->setFontStyle(II)V

    .line 346
    :cond_3
    iget v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    and-int/lit8 v0, v0, 0x20

    if-ne v0, v3, :cond_4

    .line 347
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v1, v1, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    invoke-virtual {v0, v4, v1}, Lcom/infraware/common/CoCoreFunctionInterface;->setFontStyle(II)V

    .line 349
    :cond_4
    iget v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    and-int/lit8 v0, v0, 0x40

    if-ne v0, v4, :cond_5

    .line 350
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v1, v1, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    invoke-virtual {v0, v5, v1}, Lcom/infraware/common/CoCoreFunctionInterface;->setFontStyle(II)V

    .line 352
    :cond_5
    iget v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    and-int/lit16 v0, v0, 0x80

    if-ne v0, v5, :cond_6

    .line 353
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v1, v1, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    invoke-virtual {v0, v6, v1}, Lcom/infraware/common/CoCoreFunctionInterface;->setFontStyle(II)V

    .line 355
    :cond_6
    iget v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    and-int/lit16 v0, v0, 0x100

    if-ne v0, v6, :cond_7

    .line 357
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    const/16 v1, 0x200

    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v2, v2, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    invoke-virtual {v0, v1, v2}, Lcom/infraware/common/CoCoreFunctionInterface;->setFontStyle(II)V

    .line 360
    :cond_7
    iget v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_8

    .line 362
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    const/high16 v1, 0x3

    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v2, v2, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    invoke-virtual {v0, v1, v2}, Lcom/infraware/common/CoCoreFunctionInterface;->setFontStyle(II)V

    .line 365
    :cond_8
    iget v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_9

    .line 367
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    const/high16 v1, 0x3

    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v2, v2, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    invoke-virtual {v0, v1, v2}, Lcom/infraware/common/CoCoreFunctionInterface;->setFontStyle(II)V

    .line 370
    :cond_9
    iget v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_a

    .line 372
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v1, v0, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    .line 373
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v1, v0, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    .line 374
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    const/16 v1, 0x3000

    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v2, v2, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    invoke-virtual {v0, v1, v2}, Lcom/infraware/common/CoCoreFunctionInterface;->setFontStyle(II)V

    .line 377
    :cond_a
    iget v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_d

    .line 379
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v0, v0, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_b

    .line 380
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v1, v0, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    .line 381
    :cond_b
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v0, v0, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_c

    .line 382
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v1, v0, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    xor-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    .line 384
    :cond_c
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    const/16 v1, 0x2000

    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v2, v2, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    invoke-virtual {v0, v1, v2}, Lcom/infraware/common/CoCoreFunctionInterface;->setFontStyle(II)V

    .line 387
    :cond_d
    iget v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_10

    .line 389
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v0, v0, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_e

    .line 390
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v1, v0, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    .line 391
    :cond_e
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v0, v0, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_f

    .line 392
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v1, v0, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    xor-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    .line 393
    :cond_f
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    const/16 v1, 0x1000

    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v2, v2, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    invoke-virtual {v0, v1, v2}, Lcom/infraware/common/CoCoreFunctionInterface;->setFontStyle(II)V

    .line 396
    :cond_10
    iget v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 397
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    iget v1, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nFontFaceIndex:I

    invoke-virtual {v0, v1}, Lcom/infraware/common/CoCoreFunctionInterface;->setFontFace(I)V

    .line 398
    :cond_11
    return-void
.end method

.method protected initBackgroundColorControls()V
    .locals 5

    .prologue
    .line 248
    new-instance v1, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;

    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oActivity:Lcom/infraware/common/UxDocViewerBase;

    invoke-direct {v1, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;-><init>(Landroid/app/Activity;)V

    .line 249
    .local v1, oBuilder:Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_SpinnerGrid:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    .line 250
    const v3, 0x7f030039

    .line 251
    iget-object v4, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oColorItems:[Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 249
    invoke-virtual {v1, v2, v3, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->createSpinner(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;ILjava/util/List;)Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;

    move-result-object v2

    iput-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oBackgroundColorSpinner:Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;

    .line 253
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oBackgroundColorSpinner:Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;

    const/16 v3, 0xfe

    const/16 v4, 0x2a

    invoke-virtual {v2, v3, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;->setSize(II)V

    .line 254
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oBackgroundColorSpinner:Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;

    const v3, 0x7f0a00d2

    invoke-virtual {v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;->setPrompt(I)V

    .line 257
    const/4 v0, 0x0

    .local v0, nIndex:I
    :goto_0
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oColorItems:[Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 263
    :goto_1
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    const v3, 0x7f0c00af

    iget-object v4, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oBackgroundColorSpinner:Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;

    invoke-virtual {v2, v3, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 264
    return-void

    .line 258
    :cond_0
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v2, v2, Lcom/infraware/common/UserClasses$FontInfo;->nBGColor:I

    iget-object v3, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oImageArray:Landroid/content/res/TypedArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 259
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oBackgroundColorSpinner:Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;

    invoke-virtual {v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;->setCurrentIndex(I)V

    goto :goto_1

    .line 257
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected initControls()V
    .locals 3

    .prologue
    const v2, 0x7f060018

    .line 79
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->getFontInfo()Lcom/infraware/common/UserClasses$FontInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    .line 83
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oActivity:Lcom/infraware/common/UxDocViewerBase;

    .line 84
    const v1, 0x7f060017

    .line 83
    invoke-static {v0, v1, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;->createFromArrays(Landroid/app/Activity;II)[Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oColorItems:[Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;

    .line 87
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oActivity:Lcom/infraware/common/UxDocViewerBase;

    invoke-virtual {v0}, Lcom/infraware/common/UxDocViewerBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oImageArray:Landroid/content/res/TypedArray;

    .line 89
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->initFontFaceControls()V

    .line 90
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->initFontSizeControls()V

    .line 91
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->initFontColorControls()V

    .line 92
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->initBackgroundColorControls()V

    .line 93
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->initFontStyleControls()V

    .line 94
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->initPositionControls()V

    .line 96
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oImageArray:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    return-void
.end method

.method protected initFontColorControls()V
    .locals 5

    .prologue
    .line 223
    new-instance v1, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;

    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oActivity:Lcom/infraware/common/UxDocViewerBase;

    invoke-direct {v1, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;-><init>(Landroid/app/Activity;)V

    .line 224
    .local v1, oBuilder:Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_SpinnerGrid:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    .line 225
    const v3, 0x7f030039

    .line 226
    iget-object v4, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oColorItems:[Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 224
    invoke-virtual {v1, v2, v3, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->createSpinner(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;ILjava/util/List;)Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;

    move-result-object v2

    iput-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontColorSpinner:Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;

    .line 227
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontColorSpinner:Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;

    const/16 v3, 0xfe

    const/16 v4, 0x2a

    invoke-virtual {v2, v3, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;->setSize(II)V

    .line 228
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontColorSpinner:Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;

    const v3, 0x7f0a00d1

    invoke-virtual {v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;->setPrompt(I)V

    .line 231
    const/4 v0, 0x0

    .local v0, nIndex:I
    :goto_0
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oColorItems:[Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 238
    :goto_1
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    const v3, 0x7f0c007d

    iget-object v4, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontColorSpinner:Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;

    invoke-virtual {v2, v3, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 239
    return-void

    .line 232
    :cond_0
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v2, v2, Lcom/infraware/common/UserClasses$FontInfo;->nFontColor:I

    iget-object v3, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oImageArray:Landroid/content/res/TypedArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 233
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontColorSpinner:Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;

    invoke-virtual {v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;->setCurrentIndex(I)V

    goto :goto_1

    .line 231
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected initFontFaceControls()V
    .locals 9

    .prologue
    .line 116
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v3, oItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;>;"
    iget-object v6, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v6}, Lcom/infraware/common/CoCoreFunctionInterface;->getFontFaceList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_szFontList:Ljava/util/ArrayList;

    .line 119
    iget-object v6, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_szFontList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 144
    new-instance v2, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;

    iget-object v6, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oActivity:Lcom/infraware/common/UxDocViewerBase;

    invoke-direct {v2, v6}, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;-><init>(Landroid/app/Activity;)V

    .line 145
    .local v2, oBuilder:Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;
    sget-object v6, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_SpinnerList:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    const v7, 0x7f03000d

    invoke-virtual {v2, v6, v7, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->createSpinner(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;ILjava/util/List;)Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;

    move-result-object v6

    iput-object v6, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_ofontFaceSpinner:Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;

    .line 146
    iget-object v6, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_ofontFaceSpinner:Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;

    const/16 v7, 0xfe

    const/16 v8, 0x2a

    invoke-virtual {v6, v7, v8}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;->setSize(II)V

    .line 147
    iget-object v6, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_ofontFaceSpinner:Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;

    const v7, 0x7f0a00cf

    invoke-virtual {v6, v7}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;->setPrompt(I)V

    .line 150
    iget-object v6, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget-object v6, v6, Lcom/infraware/common/UserClasses$FontInfo;->szFontFace:Ljava/lang/String;

    if-nez v6, :cond_8

    .line 152
    iget-object v6, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_ofontFaceSpinner:Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;->setCurrentIndex(I)V

    .line 180
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    const v7, 0x7f0c007b

    iget-object v8, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_ofontFaceSpinner:Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;

    invoke-virtual {v6, v7, v8}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 181
    return-void

    .line 119
    .end local v2           #oBuilder:Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 122
    .local v4, str:Ljava/lang/String;
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oActivity:Lcom/infraware/common/UxDocViewerBase;

    invoke-static {v7}, Lcom/infraware/common/Utils;->isKoreanLocale(Landroid/app/Activity;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 124
    const-string v7, "Gulim"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 125
    const-string v4, "\uad74\ub9bc"

    .line 141
    :cond_2
    :goto_2
    new-instance v7, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    invoke-direct {v7, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 126
    :cond_3
    const-string v7, "Dotum"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 127
    const-string v4, "\ub3cb\uc6c0"

    goto :goto_2

    .line 128
    :cond_4
    const-string v7, "Batang"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 129
    const-string v4, "\ubc14\ud0d5"

    goto :goto_2

    .line 133
    :cond_5
    const-string v7, "\uad74\ub9bc"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 134
    const-string v4, "Gulim"

    goto :goto_2

    .line 135
    :cond_6
    const-string v7, "\ub3cb\uc6c0"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 136
    const-string v4, "Dotum"

    goto :goto_2

    .line 137
    :cond_7
    const-string v7, "\ubc14\ud0d5"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 138
    const-string v4, "Batang"

    goto :goto_2

    .line 157
    .end local v4           #str:Ljava/lang/String;
    .restart local v2       #oBuilder:Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;
    :cond_8
    const/4 v0, 0x0

    .line 158
    .local v0, bSeletion:Z
    const/4 v1, 0x0

    .local v1, nIndex:I
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v1, v6, :cond_9

    .line 166
    :goto_4
    if-nez v0, :cond_0

    .line 169
    iget-object v6, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oActivity:Lcom/infraware/common/UxDocViewerBase;

    invoke-static {v6}, Lcom/infraware/common/Utils;->isKoreanLocale(Landroid/app/Activity;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 170
    iget-object v6, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget-object v5, v6, Lcom/infraware/common/UserClasses$FontInfo;->szFontFace:Ljava/lang/String;

    .line 175
    .local v5, strFontName:Ljava/lang/String;
    :goto_5
    iget-object v6, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_ofontFaceSpinner:Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;

    invoke-virtual {v6, v5}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;->setDisplayValue(Ljava/lang/String;)V

    .line 176
    const/4 v6, -0x1

    iput v6, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nFontFaceIndex:I

    goto/16 :goto_1

    .line 159
    .end local v5           #strFontName:Ljava/lang/String;
    :cond_9
    iget-object v6, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget-object v7, v6, Lcom/infraware/common/UserClasses$FontInfo;->szFontFace:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    iget-object v6, v6, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->m_strName:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 160
    iget-object v6, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_ofontFaceSpinner:Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;

    invoke-virtual {v6, v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;->setCurrentIndex(I)V

    .line 161
    const/4 v0, 0x1

    .line 162
    goto :goto_4

    .line 158
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 173
    :cond_b
    iget-object v6, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget-object v6, v6, Lcom/infraware/common/UserClasses$FontInfo;->szFontFace:Ljava/lang/String;

    invoke-static {v6}, Lcom/infraware/common/Utils;->getEnglishFontName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #strFontName:Ljava/lang/String;
    goto :goto_5
.end method

.method protected initFontSizeControls()V
    .locals 6

    .prologue
    .line 185
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xc

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 187
    .local v1, oItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;>;"
    new-instance v3, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    const-string v4, "8"

    invoke-direct {v3, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v3, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    const-string v4, "9"

    invoke-direct {v3, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v3, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    const-string v4, "10"

    invoke-direct {v3, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v3, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    const-string v4, "11"

    invoke-direct {v3, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v3, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    const-string v4, "12"

    invoke-direct {v3, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v3, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    const-string v4, "14"

    invoke-direct {v3, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v3, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    const-string v4, "16"

    invoke-direct {v3, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance v3, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    const-string v4, "20"

    invoke-direct {v3, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v3, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    const-string v4, "24"

    invoke-direct {v3, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v3, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    const-string v4, "32"

    invoke-direct {v3, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance v3, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    const-string v4, "44"

    invoke-direct {v3, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;

    iget-object v3, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oActivity:Lcom/infraware/common/UxDocViewerBase;

    invoke-direct {v0, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;-><init>(Landroid/app/Activity;)V

    .line 201
    .local v0, oBuilder:Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;
    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_SpinnerList:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    const v4, 0x7f03000d

    invoke-virtual {v0, v3, v4, v1}, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->createSpinner(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;ILjava/util/List;)Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;

    move-result-object v3

    iput-object v3, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontSizeSpinner:Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;

    .line 202
    iget-object v3, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontSizeSpinner:Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;

    const/16 v4, 0xfe

    const/16 v5, 0x2a

    invoke-virtual {v3, v4, v5}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;->setSize(II)V

    .line 203
    iget-object v3, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontSizeSpinner:Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;

    const v4, 0x7f0a00d0

    invoke-virtual {v3, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;->setPrompt(I)V

    .line 204
    iget-object v3, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontSizeSpinner:Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;->setUserValueEnabled(Z)V

    .line 205
    iget-object v3, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontSizeSpinner:Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;

    const-string v4, "6"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;->setUserValueDefault(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v3, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontSizeSpinner:Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;

    const v4, 0x7f0a00a2

    invoke-virtual {v3, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;->setUserValueInputMessage(I)V

    .line 207
    iget-object v3, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontSizeSpinner:Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;->setUserValueInputType(I)V

    .line 208
    iget-object v3, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontSizeSpinner:Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;->setUserValueInputMin(I)V

    .line 209
    iget-object v3, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontSizeSpinner:Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;

    const/16 v4, 0x48

    invoke-virtual {v3, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;->setUserValueInputMax(I)V

    .line 211
    iget-object v3, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v3, v3, Lcom/infraware/common/UserClasses$FontInfo;->nFontSize:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, strFontSize:Ljava/lang/String;
    iget-object v3, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontSizeSpinner:Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;

    invoke-virtual {v3, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;->setDisplayValue(Ljava/lang/String;)V

    .line 214
    iget-object v3, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    const v4, 0x7f0c007c

    iget-object v5, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontSizeSpinner:Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;

    invoke-virtual {v3, v4, v5}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 215
    return-void
.end method

.method protected initFontStyleControls()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 267
    const/4 v2, 0x7

    new-array v1, v2, [Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup$Item;

    .line 268
    new-instance v2, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup$Item;

    const v3, 0x7f0200c9

    .line 269
    sget-object v4, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v5, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_FontStyleBold:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    .line 270
    const v6, 0x7f0c0108

    .line 268
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup$Item;-><init>(ILcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;I)V

    aput-object v2, v1, v8

    .line 271
    new-instance v2, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup$Item;

    const v3, 0x7f0200d0

    .line 272
    sget-object v4, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v5, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_FontStyleItalic:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    .line 273
    const v6, 0x7f0c0109

    .line 271
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup$Item;-><init>(ILcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;I)V

    aput-object v2, v1, v9

    .line 274
    new-instance v2, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup$Item;

    const v3, 0x7f0200d7

    .line 275
    sget-object v4, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v5, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_FontStyleUnderline:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    .line 276
    const v6, 0x7f0c010a

    .line 274
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup$Item;-><init>(ILcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;I)V

    aput-object v2, v1, v10

    .line 277
    new-instance v2, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup$Item;

    const v3, 0x7f0200d5

    .line 278
    sget-object v4, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v5, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_FontStyleStrike:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    .line 279
    const v6, 0x7f0c010b

    .line 277
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup$Item;-><init>(ILcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;I)V

    aput-object v2, v1, v11

    .line 280
    new-instance v2, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup$Item;

    const v3, 0x7f0200d3

    .line 281
    sget-object v4, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v5, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_FontStyleOutline:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    .line 282
    const v6, 0x7f0c010c

    .line 280
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup$Item;-><init>(ILcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;I)V

    aput-object v2, v1, v12

    const/4 v2, 0x5

    .line 283
    new-instance v3, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup$Item;

    const v4, 0x7f0200cc

    .line 284
    sget-object v5, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v6, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_FontStyleEmboss:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    .line 285
    const v7, 0x7f0c010d

    .line 283
    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup$Item;-><init>(ILcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;I)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 286
    new-instance v3, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup$Item;

    const v4, 0x7f0200ce

    .line 287
    sget-object v5, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v6, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_FontStyleEngrave:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    .line 288
    const v7, 0x7f0c010e

    .line 286
    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup$Item;-><init>(ILcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;I)V

    aput-object v3, v1, v2

    .line 291
    .local v1, oItems:[Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup$Item;
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;

    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oActivity:Lcom/infraware/common/UxDocViewerBase;

    invoke-direct {v0, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;-><init>(Landroid/app/Activity;)V

    .line 292
    .local v0, oBuilder:Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_ToggleButtonGroupCheckBox:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    .line 293
    const v3, 0x7f03005f

    .line 292
    invoke-virtual {v0, v2, v3, v1}, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->createToggleButtonGroup(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;I[Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup$Item;)Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;

    move-result-object v2

    iput-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontStyleButtonGroup:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;

    .line 295
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v2, v2, Lcom/infraware/common/UserClasses$FontInfo;->nFontStyleMask:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontStyleButtonGroup:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;

    invoke-virtual {v2, v8}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;->setSelected(I)V

    .line 296
    :cond_0
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v2, v2, Lcom/infraware/common/UserClasses$FontInfo;->nFontStyleMask:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontStyleButtonGroup:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;

    invoke-virtual {v2, v9}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;->setSelected(I)V

    .line 297
    :cond_1
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v2, v2, Lcom/infraware/common/UserClasses$FontInfo;->nFontStyleMask:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontStyleButtonGroup:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;

    invoke-virtual {v2, v10}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;->setSelected(I)V

    .line 298
    :cond_2
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v2, v2, Lcom/infraware/common/UserClasses$FontInfo;->nFontStyleMask:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontStyleButtonGroup:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;

    invoke-virtual {v2, v11}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;->setSelected(I)V

    .line 299
    :cond_3
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v2, v2, Lcom/infraware/common/UserClasses$FontInfo;->nFontStyleMask:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontStyleButtonGroup:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;

    invoke-virtual {v2, v12}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;->setSelected(I)V

    .line 300
    :cond_4
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v2, v2, Lcom/infraware/common/UserClasses$FontInfo;->nFontStyleMask:I

    const/high16 v3, 0x1

    and-int/2addr v2, v3

    const/high16 v3, 0x1

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontStyleButtonGroup:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;->setSelected(I)V

    .line 301
    :cond_5
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v2, v2, Lcom/infraware/common/UserClasses$FontInfo;->nFontStyleMask:I

    const/high16 v3, 0x2

    and-int/2addr v2, v3

    const/high16 v3, 0x2

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontStyleButtonGroup:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;->setSelected(I)V

    .line 303
    :cond_6
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    const v3, 0x7f0c007e

    iget-object v4, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontStyleButtonGroup:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;

    invoke-virtual {v2, v3, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 304
    return-void
.end method

.method protected initPositionControls()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 308
    const/4 v3, 0x3

    new-array v2, v3, [Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup$Item;

    .line 309
    new-instance v3, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup$Item;

    const v4, 0x7f0201f0

    .line 310
    sget-object v5, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v6, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_FontPositionSubscript:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    .line 311
    const v7, 0x7f0c0105

    .line 309
    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup$Item;-><init>(ILcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;I)V

    aput-object v3, v2, v8

    .line 312
    new-instance v3, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup$Item;

    const v4, 0x7f0201ef

    .line 313
    sget-object v5, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v6, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_FontPositionNormal:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    .line 314
    const v7, 0x7f0c0106

    .line 312
    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup$Item;-><init>(ILcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;I)V

    aput-object v3, v2, v9

    .line 315
    new-instance v3, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup$Item;

    const v4, 0x7f0201f1

    .line 316
    sget-object v5, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_Click:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v6, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_FontPositionSuperscript:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    .line 317
    const v7, 0x7f0c0107

    .line 315
    invoke-direct {v3, v4, v5, v6, v7}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup$Item;-><init>(ILcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;I)V

    aput-object v3, v2, v10

    .line 320
    .local v2, oItems:[Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup$Item;
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;

    iget-object v3, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oActivity:Lcom/infraware/common/UxDocViewerBase;

    invoke-direct {v0, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;-><init>(Landroid/app/Activity;)V

    .line 322
    .local v0, oBuilder:Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;
    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_ToggleButtonGroupRadio:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    .line 323
    const v4, 0x7f03005e

    .line 322
    invoke-virtual {v0, v3, v4, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnitBuilder;->createToggleButtonGroup(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;I[Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup$Item;)Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;

    move-result-object v1

    .line 325
    .local v1, oButtonGroup:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;
    iget-object v3, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v3, v3, Lcom/infraware/common/UserClasses$FontInfo;->nFontStyleMask:I

    and-int/lit16 v3, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_0

    invoke-virtual {v1, v8}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;->setSelected(I)V

    .line 329
    :goto_0
    iget-object v3, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    const v4, 0x7f0c007f

    invoke-virtual {v3, v4, v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 330
    return-void

    .line 326
    :cond_0
    iget-object v3, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v3, v3, Lcom/infraware/common/UserClasses$FontInfo;->nFontStyleMask:I

    and-int/lit16 v3, v3, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_1

    invoke-virtual {v1, v10}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;->setSelected(I)V

    goto :goto_0

    .line 327
    :cond_1
    invoke-virtual {v1, v9}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;->setSelected(I)V

    goto :goto_0
.end method

.method protected initTextStylePreviewControls()V
    .locals 3

    .prologue
    .line 101
    new-instance v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oActivity:Lcom/infraware/common/UxDocViewerBase;

    const v2, 0x7f02031b

    invoke-direct {v0, v1, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oTextStylePreview:Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;

    .line 102
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    const v1, 0x7f0c007a

    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oTextStylePreview:Lcom/infraware/uxcontrol/uiunit/UiUnit_Edit;

    invoke-virtual {v0, v1, v2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->addComponent(ILcom/infraware/uxcontrol/uiunit/UiUnitView;)Z

    .line 103
    return-void
.end method

.method public varargs onCommand(Lcom/infraware/uxcontrol/uiunit/UiUnitView;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;[Ljava/lang/Object;)V
    .locals 9
    .parameter "a_oView"
    .parameter "a_eCommand"
    .parameter "a_aoArgs"

    .prologue
    .line 404
    invoke-static {}, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->$SWITCH_TABLE$com$infraware$uxcontrol$uiunit$UiEnum$EUnitCommand()[I

    move-result-object v7

    invoke-virtual {p2}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v8

    aget v7, v7, v8

    sparse-switch v7, :sswitch_data_0

    .line 582
    .end local p0
    .end local p2
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 406
    .restart local p0
    .restart local p2
    :sswitch_1
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->applyFontDlgInfo()V

    goto :goto_0

    .line 413
    :sswitch_2
    iget v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    or-int/lit8 v7, v7, 0x10

    iput v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    .line 414
    move-object v0, p1

    check-cast v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;

    move-object v4, v0

    .line 415
    .local v4, oBorderButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;
    invoke-virtual {v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;->isChecked()Z

    move-result v1

    .line 416
    .local v1, bIsCheked:Z
    if-eqz v1, :cond_2

    .line 418
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v7, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontStyleMask:I

    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v7, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    and-int/lit16 v7, v7, 0x400

    if-nez v7, :cond_0

    .line 419
    :cond_1
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v8, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    or-int/lit16 v8, v8, 0x400

    iput v8, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    goto :goto_0

    .line 421
    :cond_2
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v7, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontStyleMask:I

    and-int/lit8 v7, v7, 0x20

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v7, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    and-int/lit16 v7, v7, 0x400

    if-eqz v7, :cond_0

    .line 422
    :cond_3
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v8, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    xor-int/lit16 v8, v8, 0x400

    iput v8, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    goto :goto_0

    .line 425
    .end local v1           #bIsCheked:Z
    .end local v4           #oBorderButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;
    :sswitch_3
    iget v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    or-int/lit8 v7, v7, 0x20

    iput v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    .line 426
    move-object v0, p1

    check-cast v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;

    move-object v4, v0

    .line 427
    .restart local v4       #oBorderButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;
    invoke-virtual {v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;->isChecked()Z

    move-result v1

    .line 428
    .restart local v1       #bIsCheked:Z
    if-eqz v1, :cond_5

    .line 430
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v7, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontStyleMask:I

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v7, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    and-int/lit16 v7, v7, 0x200

    if-nez v7, :cond_0

    .line 431
    :cond_4
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v8, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    or-int/lit16 v8, v8, 0x200

    iput v8, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    goto :goto_0

    .line 433
    :cond_5
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v7, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontStyleMask:I

    and-int/lit8 v7, v7, 0x40

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v7, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    and-int/lit16 v7, v7, 0x200

    if-eqz v7, :cond_0

    .line 434
    :cond_6
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v8, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    xor-int/lit16 v8, v8, 0x200

    iput v8, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    goto/16 :goto_0

    .line 437
    .end local v1           #bIsCheked:Z
    .end local v4           #oBorderButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;
    :sswitch_4
    iget v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    or-int/lit8 v7, v7, 0x40

    iput v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    .line 438
    move-object v0, p1

    check-cast v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;

    move-object v4, v0

    .line 439
    .restart local v4       #oBorderButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;
    invoke-virtual {v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;->isChecked()Z

    move-result v1

    .line 440
    .restart local v1       #bIsCheked:Z
    if-eqz v1, :cond_8

    .line 442
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v7, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontStyleMask:I

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v7, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    and-int/lit16 v7, v7, 0x100

    if-nez v7, :cond_0

    .line 443
    :cond_7
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v8, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    or-int/lit16 v8, v8, 0x100

    iput v8, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    goto/16 :goto_0

    .line 445
    :cond_8
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v7, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontStyleMask:I

    and-int/lit16 v7, v7, 0x80

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v7, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    and-int/lit16 v7, v7, 0x100

    if-eqz v7, :cond_0

    .line 446
    :cond_9
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v8, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    xor-int/lit16 v8, v8, 0x100

    iput v8, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    goto/16 :goto_0

    .line 449
    .end local v1           #bIsCheked:Z
    .end local v4           #oBorderButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;
    :sswitch_5
    iget v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    or-int/lit16 v7, v7, 0x80

    iput v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    .line 450
    move-object v0, p1

    check-cast v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;

    move-object v4, v0

    .line 451
    .restart local v4       #oBorderButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;
    invoke-virtual {v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;->isChecked()Z

    move-result v1

    .line 452
    .restart local v1       #bIsCheked:Z
    if-eqz v1, :cond_b

    .line 454
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v7, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontStyleMask:I

    and-int/lit16 v7, v7, 0x100

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v7, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    and-int/lit16 v7, v7, 0x80

    if-nez v7, :cond_0

    .line 455
    :cond_a
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v8, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    or-int/lit16 v8, v8, 0x80

    iput v8, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    goto/16 :goto_0

    .line 457
    :cond_b
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v7, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontStyleMask:I

    and-int/lit16 v7, v7, 0x100

    if-nez v7, :cond_c

    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v7, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_0

    .line 458
    :cond_c
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v8, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    xor-int/lit16 v8, v8, 0x80

    iput v8, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    goto/16 :goto_0

    .line 461
    .end local v1           #bIsCheked:Z
    .end local v4           #oBorderButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;
    :sswitch_6
    iget v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    or-int/lit16 v7, v7, 0x100

    iput v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    .line 462
    move-object v0, p1

    check-cast v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;

    move-object v4, v0

    .line 463
    .restart local v4       #oBorderButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;
    invoke-virtual {v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;->isChecked()Z

    move-result v1

    .line 464
    .restart local v1       #bIsCheked:Z
    if-eqz v1, :cond_e

    .line 466
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v7, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontStyleMask:I

    and-int/lit16 v7, v7, 0x200

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v7, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    and-int/lit8 v7, v7, 0x20

    if-nez v7, :cond_0

    .line 467
    :cond_d
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v8, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    or-int/lit8 v8, v8, 0x20

    iput v8, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    goto/16 :goto_0

    .line 469
    :cond_e
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v7, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontStyleMask:I

    and-int/lit16 v7, v7, 0x200

    if-nez v7, :cond_f

    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v7, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_0

    .line 470
    :cond_f
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v8, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    xor-int/lit8 v8, v8, 0x20

    iput v8, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    goto/16 :goto_0

    .line 475
    .end local v1           #bIsCheked:Z
    .end local v4           #oBorderButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;
    :sswitch_7
    iget v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    or-int/lit16 v7, v7, 0x200

    iput v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    .line 476
    move-object v0, p1

    check-cast v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;

    move-object v4, v0

    .line 477
    .restart local v4       #oBorderButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;
    invoke-virtual {v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;->isChecked()Z

    move-result v1

    .line 478
    .restart local v1       #bIsCheked:Z
    if-eqz v1, :cond_13

    .line 480
    iget v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    and-int/lit16 v7, v7, 0x400

    const/16 v8, 0x400

    if-ne v7, v8, :cond_10

    .line 481
    iget v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    const/16 v8, 0x400

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    .line 482
    :cond_10
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v7, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    and-int/lit8 v7, v7, 0x8

    if-nez v7, :cond_11

    .line 483
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v8, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    or-int/lit8 v8, v8, 0x8

    iput v8, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    .line 484
    :cond_11
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v7, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_12

    .line 485
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v8, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    xor-int/lit8 v8, v8, 0x4

    iput v8, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    .line 487
    :cond_12
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontStyleButtonGroup:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;->setUnselected(I)V

    goto/16 :goto_0

    .line 489
    :cond_13
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v7, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontStyleMask:I

    const/high16 v8, 0x1

    and-int/2addr v7, v8

    if-nez v7, :cond_14

    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v7, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_0

    .line 491
    :cond_14
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v7, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_0

    .line 492
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v8, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    xor-int/lit8 v8, v8, 0x8

    iput v8, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    goto/16 :goto_0

    .line 497
    .end local v1           #bIsCheked:Z
    .end local v4           #oBorderButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;
    :sswitch_8
    iget v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    or-int/lit16 v7, v7, 0x400

    iput v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    .line 498
    move-object v0, p1

    check-cast v0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;

    move-object v4, v0

    .line 499
    .restart local v4       #oBorderButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;
    invoke-virtual {v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;->isChecked()Z

    move-result v1

    .line 500
    .restart local v1       #bIsCheked:Z
    if-eqz v1, :cond_18

    .line 502
    iget v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    and-int/lit16 v7, v7, 0x200

    const/16 v8, 0x200

    if-ne v7, v8, :cond_15

    .line 503
    iget v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    const/16 v8, 0x200

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    .line 504
    :cond_15
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v7, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    and-int/lit8 v7, v7, 0x4

    if-nez v7, :cond_16

    .line 505
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v8, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    or-int/lit8 v8, v8, 0x4

    iput v8, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    .line 506
    :cond_16
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v7, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_17

    .line 507
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v8, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    xor-int/lit8 v8, v8, 0x8

    iput v8, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    .line 508
    :cond_17
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontStyleButtonGroup:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButtonGroup;->setUnselected(I)V

    goto/16 :goto_0

    .line 510
    :cond_18
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v7, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontStyleMask:I

    const/high16 v8, 0x2

    and-int/2addr v7, v8

    if-nez v7, :cond_19

    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v7, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_0

    .line 512
    :cond_19
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v7, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_0

    .line 513
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget v8, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    xor-int/lit8 v8, v8, 0x4

    iput v8, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontAttInfo:I

    goto/16 :goto_0

    .line 518
    .end local v1           #bIsCheked:Z
    .end local v4           #oBorderButton:Lcom/infraware/uxcontrol/uiunit/UiUnit_ToggleButton;
    :sswitch_9
    iget v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    and-int/lit16 v7, v7, 0x800

    const/16 v8, 0x800

    if-eq v7, v8, :cond_1a

    .line 519
    iget v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    or-int/lit16 v7, v7, 0x800

    iput v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    .line 520
    :cond_1a
    iget v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    and-int/lit16 v7, v7, 0x1000

    const/16 v8, 0x1000

    if-ne v7, v8, :cond_1b

    .line 521
    iget v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    const/16 v8, 0x1000

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    .line 522
    :cond_1b
    iget v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    and-int/lit16 v7, v7, 0x2000

    const/16 v8, 0x2000

    if-ne v7, v8, :cond_0

    .line 523
    iget v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    const/16 v8, 0x2000

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    goto/16 :goto_0

    .line 526
    :sswitch_a
    iget v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    and-int/lit16 v7, v7, 0x800

    const/16 v8, 0x800

    if-ne v7, v8, :cond_1c

    .line 527
    iget v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    const/16 v8, 0x800

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    .line 528
    :cond_1c
    iget v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    and-int/lit16 v7, v7, 0x1000

    const/16 v8, 0x1000

    if-ne v7, v8, :cond_1d

    .line 529
    iget v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    const/16 v8, 0x1000

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    .line 530
    :cond_1d
    iget v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    and-int/lit16 v7, v7, 0x2000

    const/16 v8, 0x2000

    if-eq v7, v8, :cond_0

    .line 531
    iget v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    or-int/lit16 v7, v7, 0x2000

    iput v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    goto/16 :goto_0

    .line 534
    :sswitch_b
    iget v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    and-int/lit16 v7, v7, 0x800

    const/16 v8, 0x800

    if-ne v7, v8, :cond_1e

    .line 535
    iget v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    const/16 v8, 0x800

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    .line 536
    :cond_1e
    iget v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    and-int/lit16 v7, v7, 0x1000

    const/16 v8, 0x1000

    if-eq v7, v8, :cond_1f

    .line 537
    iget v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    or-int/lit16 v7, v7, 0x1000

    iput v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    .line 538
    :cond_1f
    iget v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    and-int/lit16 v7, v7, 0x2000

    const/16 v8, 0x2000

    if-ne v7, v8, :cond_0

    .line 539
    iget v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    const/16 v8, 0x2000

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    goto/16 :goto_0

    .line 543
    :sswitch_c
    new-instance v7, Ljava/lang/Integer;

    const/4 v8, 0x0

    aget-object p2, p3, v8

    .end local p2
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 544
    .local v2, nIndex:I
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_ofontFaceSpinner:Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;

    if-ne p1, v7, :cond_20

    .line 545
    iget v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    .line 546
    iput v2, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nFontFaceIndex:I

    .line 547
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget-object v8, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_szFontList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    iput-object p0, v7, Lcom/infraware/common/UserClasses$FontInfo;->szFontFace:Ljava/lang/String;

    goto/16 :goto_0

    .line 549
    .restart local p0
    :cond_20
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontSizeSpinner:Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;

    if-ne p1, v7, :cond_21

    .line 550
    iget v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    .line 551
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 552
    :pswitch_0
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    const/16 v8, 0x8

    iput v8, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontSize:I

    goto/16 :goto_0

    .line 553
    :pswitch_1
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    const/16 v8, 0x9

    iput v8, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontSize:I

    goto/16 :goto_0

    .line 554
    :pswitch_2
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    const/16 v8, 0xa

    iput v8, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontSize:I

    goto/16 :goto_0

    .line 555
    :pswitch_3
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    const/16 v8, 0xb

    iput v8, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontSize:I

    goto/16 :goto_0

    .line 556
    :pswitch_4
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    const/16 v8, 0xc

    iput v8, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontSize:I

    goto/16 :goto_0

    .line 557
    :pswitch_5
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    const/16 v8, 0xe

    iput v8, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontSize:I

    goto/16 :goto_0

    .line 558
    :pswitch_6
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    const/16 v8, 0x10

    iput v8, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontSize:I

    goto/16 :goto_0

    .line 559
    :pswitch_7
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    const/16 v8, 0x14

    iput v8, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontSize:I

    goto/16 :goto_0

    .line 560
    :pswitch_8
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    const/16 v8, 0x18

    iput v8, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontSize:I

    goto/16 :goto_0

    .line 561
    :pswitch_9
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    const/16 v8, 0x20

    iput v8, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontSize:I

    goto/16 :goto_0

    .line 562
    :pswitch_a
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    const/16 v8, 0x2c

    iput v8, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontSize:I

    goto/16 :goto_0

    .line 565
    :cond_21
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontColorSpinner:Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;

    if-ne p1, v7, :cond_22

    .line 566
    iget v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    .line 567
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oActivity:Lcom/infraware/common/UxDocViewerBase;

    invoke-virtual {v7}, Lcom/infraware/common/UxDocViewerBase;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 568
    .local v5, oResources:Landroid/content/res/Resources;
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget-object v8, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oColorItems:[Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;

    aget-object v8, v8, v2

    iget v8, v8, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;->m_nImageResourceId:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontColor:I

    goto/16 :goto_0

    .line 570
    .end local v5           #oResources:Landroid/content/res/Resources;
    :cond_22
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oBackgroundColorSpinner:Lcom/infraware/uxcontrol/uiunit/UiUnit_Spinner;

    if-ne p1, v7, :cond_0

    .line 571
    iget v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    or-int/lit8 v7, v7, 0x8

    iput v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    .line 572
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oActivity:Lcom/infraware/common/UxDocViewerBase;

    invoke-virtual {v7}, Lcom/infraware/common/UxDocViewerBase;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 573
    .restart local v5       #oResources:Landroid/content/res/Resources;
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iget-object v8, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oColorItems:[Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;

    aget-object v8, v8, v2

    iget v8, v8, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;->m_nImageResourceId:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, v7, Lcom/infraware/common/UserClasses$FontInfo;->nBGColor:I

    goto/16 :goto_0

    .line 577
    .end local v2           #nIndex:I
    .end local v5           #oResources:Landroid/content/res/Resources;
    .restart local p2
    :sswitch_d
    iget v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_nItemSelectionFlag:I

    .line 578
    const/4 v7, 0x0

    aget-object v6, p3, v7

    check-cast v6, Ljava/lang/String;

    .line 579
    .local v6, strValue:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 580
    .local v3, nValue:I
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oFontInfo:Lcom/infraware/common/UserClasses$FontInfo;

    iput v3, v7, Lcom/infraware/common/UserClasses$FontInfo;->nFontSize:I

    goto/16 :goto_0

    .line 404
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_d
        0x15 -> :sswitch_c
        0x17 -> :sswitch_1
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x59 -> :sswitch_2
        0x5a -> :sswitch_3
        0x5b -> :sswitch_4
        0x5c -> :sswitch_5
        0x5d -> :sswitch_6
        0x5e -> :sswitch_7
        0x5f -> :sswitch_8
        0x60 -> :sswitch_9
        0x61 -> :sswitch_a
        0x62 -> :sswitch_b
    .end sparse-switch

    .line 551
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public show(Z)V
    .locals 1
    .parameter "a_bShow"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/word/UiWordFontDialog;->m_oDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;

    invoke-virtual {v0, p1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Dialog;->show(Z)V

    .line 75
    return-void
.end method

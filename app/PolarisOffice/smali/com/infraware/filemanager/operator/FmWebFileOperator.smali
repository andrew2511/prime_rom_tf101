.class public Lcom/infraware/filemanager/operator/FmWebFileOperator;
.super Lcom/infraware/filemanager/operator/FmFileOperator;
.source "FmWebFileOperator.java"

# interfaces
.implements Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$IWebEventListener;
.implements Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;


# static fields
.field private static synthetic $SWITCH_TABLE$com$infraware$uxcontrol$uiunit$UiEnum$EUnitCommand:[I

.field private static m_oFmWebFileOperatorThread:Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;


# instance fields
.field private m_nStatus:I

.field protected m_oWebProgress:Landroid/app/ProgressDialog;


# direct methods
.method static synthetic $SWITCH_TABLE$com$infraware$uxcontrol$uiunit$UiEnum$EUnitCommand()[I
    .locals 3

    .prologue
    .line 43
    sget-object v0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->$SWITCH_TABLE$com$infraware$uxcontrol$uiunit$UiEnum$EUnitCommand:[I

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
    sput-object v0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->$SWITCH_TABLE$com$infraware$uxcontrol$uiunit$UiEnum$EUnitCommand:[I

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

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oFmWebFileOperatorThread:Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "a_oContext"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/infraware/filemanager/operator/FmFileOperator;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oWebProgress:Landroid/app/ProgressDialog;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_nStatus:I

    .line 64
    iput-object p1, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    .line 65
    new-instance v0, Lcom/infraware/filemanager/FmFileListData;

    invoke-direct {v0, p1}, Lcom/infraware/filemanager/FmFileListData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    .line 66
    iget-object v0, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    sget v1, Lcom/infraware/filemanager/FmWebStorageAccount;->m_nCurrentMode:I

    iput v1, v0, Lcom/infraware/filemanager/FmFileListData;->m_nAdapterMode:I

    .line 67
    iget-object v0, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    const-string v1, "/"

    iput-object v1, v0, Lcom/infraware/filemanager/FmFileListData;->m_strCurPath:Ljava/lang/String;

    .line 68
    invoke-static {p0}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->createWebFileOperatorThread(Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$IWebEventListener;)Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;

    move-result-object v0

    sput-object v0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oFmWebFileOperatorThread:Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;

    .line 70
    invoke-direct {p0}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->initWebTempFolder()V

    .line 71
    return-void
.end method

.method public static createWebFileOperatorThread(Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$IWebEventListener;)Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;
    .locals 1
    .parameter "a_oWebEventListener"

    .prologue
    .line 54
    sget-object v0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oFmWebFileOperatorThread:Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oFmWebFileOperatorThread:Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;

    invoke-virtual {v0, p0}, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->setEventListener(Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$IWebEventListener;)V

    .line 57
    sget-object v0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oFmWebFileOperatorThread:Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;

    .line 60
    :goto_0
    return-object v0

    .line 59
    :cond_0
    new-instance v0, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;

    invoke-direct {v0, p0}, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;-><init>(Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$IWebEventListener;)V

    sput-object v0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oFmWebFileOperatorThread:Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;

    .line 60
    sget-object v0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oFmWebFileOperatorThread:Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;

    goto :goto_0
.end method

.method private getServiceType()I
    .locals 2

    .prologue
    .line 928
    iget-object v0, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iget v0, v0, Lcom/infraware/filemanager/FmFileListData;->m_nAdapterMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 929
    const/4 v0, 0x1

    .line 931
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static getWebFileOperatorThread()Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oFmWebFileOperatorThread:Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;

    return-object v0
.end method

.method private getWebTempFileName()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 854
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/infraware/filemanager/FmFileDefine;->WEB_TEMP_PATH:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 855
    .local v2, oWebTempPathFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 857
    .local v1, fileList:[Ljava/io/File;
    if-nez v1, :cond_0

    move-object v3, v4

    .line 864
    :goto_0
    return-object v3

    .line 860
    :cond_0
    array-length v3, v1

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    aget-object v0, v1, v3

    .line 862
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .end local v0           #file:Ljava/io/File;
    :cond_1
    move-object v3, v4

    .line 864
    goto :goto_0
.end method

.method private initWebTempFolder()V
    .locals 2

    .prologue
    .line 847
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/infraware/filemanager/FmFileDefine;->WEB_TEMP_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 848
    .local v0, oNewPathFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 851
    :goto_0
    return-void

    .line 850
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    goto :goto_0
.end method

.method private loginWebStorage(Z)Z
    .locals 4
    .parameter "a_bRefresh"

    .prologue
    .line 79
    sget-object v0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oFmWebFileOperatorThread:Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;

    sget-object v1, Lcom/infraware/filemanager/FmWebStorageAccount;->m_strCurrentID:Ljava/lang/String;

    .line 80
    sget-object v2, Lcom/infraware/filemanager/FmWebStorageAccount;->m_strCurrentPW:Ljava/lang/String;

    .line 81
    invoke-direct {p0}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->getServiceType()I

    move-result v3

    .line 79
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->loginWebStorage(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v0

    return v0
.end method

.method private onEndTransfer()V
    .locals 4

    .prologue
    .line 671
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->DestroyListIterator()V

    .line 672
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->clearAsyncOperation()V

    .line 673
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getAsyncTargetOperator()Lcom/infraware/filemanager/operator/FmFileOperator;

    move-result-object v0

    .line 674
    .local v0, oTargetOperator:Lcom/infraware/filemanager/operator/FmFileOperator;
    if-nez v0, :cond_0

    .line 678
    :goto_0
    return-void

    .line 676
    :cond_0
    invoke-virtual {v0}, Lcom/infraware/filemanager/operator/FmFileOperator;->updateFileList()I

    .line 677
    const/16 v1, 0x100

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/infraware/filemanager/operator/FmFileOperator;->onEvent(IILjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public deleteFile(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .parameter "a_oContext"
    .parameter "a_strFileName"

    .prologue
    const/4 v3, 0x0

    .line 638
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 640
    :cond_0
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getAsyncOperatorNameList()Ljava/util/List;

    move-result-object v0

    .line 642
    .local v0, oFileSrcPathList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const v1, 0x7f0a0314

    invoke-static {v3, v1}, Lcom/infraware/filemanager/FmFileProgress;->startProgress(II)V

    .line 643
    invoke-static {p0}, Lcom/infraware/filemanager/FmFileProgress;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 644
    sget-object v1, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oFmWebFileOperatorThread:Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;

    sget-object v2, Lcom/infraware/filemanager/FmWebStorageAccount;->m_strCurrentID:Ljava/lang/String;

    invoke-direct {p0}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->getServiceType()I

    move-result v3

    invoke-virtual {v1, v2, p1, v0, v3}, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->deleteMultiFile(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;I)Z

    .line 652
    .end local v0           #oFileSrcPathList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    const/4 v1, 0x3

    return v1

    .line 649
    :cond_1
    const v1, 0x7f0a02e6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {v3, v1, v2}, Lcom/infraware/filemanager/FmFileProgress;->startProgress(II[Ljava/lang/Object;)V

    .line 650
    sget-object v1, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oFmWebFileOperatorThread:Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;

    sget-object v2, Lcom/infraware/filemanager/FmWebStorageAccount;->m_strCurrentID:Ljava/lang/String;

    invoke-direct {p0}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->getServiceType()I

    move-result v3

    invoke-virtual {v1, v2, p1, p2, v3}, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->deleteFile(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public deleteFolder(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .parameter "a_oContext"
    .parameter "a_strFolderName"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 655
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 660
    :goto_0
    return v0

    .line 658
    :cond_1
    const v0, 0x7f0a02e7

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v2, v0, v1}, Lcom/infraware/filemanager/FmFileProgress;->startProgress(II[Ljava/lang/Object;)V

    .line 659
    sget-object v0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oFmWebFileOperatorThread:Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;

    sget-object v1, Lcom/infraware/filemanager/FmWebStorageAccount;->m_strCurrentID:Ljava/lang/String;

    invoke-direct {p0}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->getServiceType()I

    move-result v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->deleteFolder(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;I)Z

    .line 660
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .parameter "a_strDestName"
    .parameter "a_strSrcName"

    .prologue
    const/16 v9, 0x3c

    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 705
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 707
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 708
    .local v0, oLocalFile:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v7

    .line 757
    .end local v0           #oLocalFile:Ljava/io/File;
    :goto_0
    return v3

    .line 710
    .restart local v0       #oLocalFile:Ljava/io/File;
    :cond_0
    invoke-static {p1}, Lcom/infraware/filemanager/FmFileUtil;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v9, :cond_1

    move v3, v8

    .line 711
    goto :goto_0

    .line 712
    :cond_1
    iget-object v3, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    invoke-static {v3}, Lcom/infraware/filemanager/MTPSyncManager;->createDataBaseInstance(Landroid/content/Context;)I

    .line 713
    const v3, 0x7f0a0359

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p2}, Lcom/infraware/filemanager/FmFileUtil;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v6, v3, v4}, Lcom/infraware/filemanager/FmFileProgress;->startProgress(II[Ljava/lang/Object;)V

    .line 714
    invoke-static {p0}, Lcom/infraware/filemanager/FmFileProgress;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 715
    invoke-virtual {p0, p1, p2}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->downloadbyThread(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 718
    .end local v0           #oLocalFile:Ljava/io/File;
    :cond_2
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getCurrentIteratorNode()Ljava/lang/String;

    move-result-object v2

    .line 720
    .local v2, strFileName:Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_4

    .line 722
    :cond_3
    invoke-static {}, Lcom/infraware/filemanager/FmFileProgress;->stopProgress()V

    .line 723
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->DestroyListIterator()V

    .line 724
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->clearAsyncOperation()V

    move v3, v6

    .line 725
    goto :goto_0

    .line 728
    :cond_4
    const v3, 0x7f0a02e8

    invoke-static {v6, v3}, Lcom/infraware/filemanager/FmFileProgress;->startTransferProgress(II)V

    .line 729
    invoke-static {p0}, Lcom/infraware/filemanager/FmFileProgress;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 733
    if-nez p1, :cond_5

    .line 734
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getAsyncOperationName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/infraware/filemanager/FmFileUtil;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 738
    .local v1, strDestPath:Ljava/lang/String;
    :goto_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 739
    .restart local v0       #oLocalFile:Ljava/io/File;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 740
    invoke-static {}, Lcom/infraware/filemanager/FmFileProgress;->stopProgress()V

    move v3, v7

    .line 741
    goto :goto_0

    .line 736
    .end local v0           #oLocalFile:Ljava/io/File;
    .end local v1           #strDestPath:Ljava/lang/String;
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getAsyncOperationName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/infraware/filemanager/FmFileUtil;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #strDestPath:Ljava/lang/String;
    goto :goto_1

    .line 743
    .restart local v0       #oLocalFile:Ljava/io/File;
    :cond_6
    invoke-static {v1}, Lcom/infraware/filemanager/FmFileUtil;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v9, :cond_7

    .line 744
    invoke-static {}, Lcom/infraware/filemanager/FmFileProgress;->stopProgress()V

    move v3, v8

    .line 745
    goto/16 :goto_0

    .line 748
    :cond_7
    iget-object v3, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    invoke-static {v3}, Lcom/infraware/filemanager/MTPSyncManager;->createDataBaseInstance(Landroid/content/Context;)I

    .line 749
    invoke-virtual {p0, v1, v2}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->downloadbyThread(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v5, :cond_8

    .line 751
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->DestroyListIterator()V

    .line 752
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->clearAsyncOperation()V

    .line 753
    invoke-static {}, Lcom/infraware/filemanager/FmFileProgress;->stopProgress()V

    .line 754
    invoke-static {}, Lcom/infraware/filemanager/MTPSyncManager;->releaseDataBaseInstance()I

    move v3, v5

    .line 755
    goto/16 :goto_0

    .line 757
    :cond_8
    const/4 v3, 0x3

    goto/16 :goto_0
.end method

.method public downloadbyThread(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "a_strDestName"
    .parameter "a_strSrcName"

    .prologue
    .line 827
    sget-object v0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oFmWebFileOperatorThread:Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;

    sget-object v1, Lcom/infraware/filemanager/FmWebStorageAccount;->m_strCurrentID:Ljava/lang/String;

    .line 830
    invoke-direct {p0}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->getServiceType()I

    move-result v2

    .line 827
    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 831
    const/4 v0, 0x1

    .line 833
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public excuteFile(Landroid/app/Activity;Ljava/lang/String;IZ)I
    .locals 7
    .parameter "a_oActivity"
    .parameter "a_strAbsolutePath"
    .parameter "a_nExtType"
    .parameter "a_bAddRecent"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 1033
    if-nez p3, :cond_0

    .line 1034
    invoke-static {p2}, Lcom/infraware/filemanager/FmFileUtil;->getExtType(Ljava/lang/String;)I

    move-result p3

    .line 1037
    :cond_0
    packed-switch p3, :pswitch_data_0

    .line 1071
    :pswitch_0
    invoke-static {p1, p2}, Lcom/infraware/filemanager/FmFileUtil;->onViewFile(Landroid/content/Context;Ljava/lang/String;)V

    move v1, v4

    .line 1106
    :goto_0
    return v1

    .line 1040
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/infraware/word/UxWordEditorActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1041
    .local v0, oIntent:Landroid/content/Intent;
    const-string v1, "file_type"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1075
    :goto_1
    if-eqz p4, :cond_1

    .line 1076
    invoke-static {p1, p2}, Lcom/infraware/filemanager/FmFileRecent;->addRecentFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 1079
    :cond_1
    invoke-static {p2}, Lcom/infraware/filemanager/FmFileUtil;->getFileSize(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "file_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_3

    .line 1080
    const-string v1, "file_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v6, :cond_2

    .line 1081
    const-string v1, "file_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v4, :cond_2

    .line 1082
    const-string v1, "file_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v5, :cond_2

    .line 1083
    const-string v1, "file_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x14

    if-eq v1, v2, :cond_2

    .line 1084
    const-string v1, "file_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x13

    if-eq v1, v2, :cond_2

    .line 1085
    const-string v1, "file_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x27

    if-eq v1, v2, :cond_2

    .line 1086
    const-string v1, "file_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_3

    .line 1088
    :cond_2
    const-string v1, "new_file"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1092
    :cond_3
    const-string v1, "web_file"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1093
    const-string v1, "key_filename"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1096
    invoke-static {}, Lcom/infraware/PolarisOffice;->getInstance()Lcom/infraware/PolarisOffice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/infraware/PolarisOffice;->getCurrentViewer()Lcom/infraware/common/UxDocViewerBase;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1102
    invoke-static {}, Lcom/infraware/PolarisOffice;->getInstance()Lcom/infraware/PolarisOffice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/infraware/PolarisOffice;->getCurrentViewer()Lcom/infraware/common/UxDocViewerBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/infraware/common/UxDocViewerBase;->finish()V

    .line 1105
    :cond_4
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v1, v4

    .line 1106
    goto/16 :goto_0

    .line 1044
    .end local v0           #oIntent:Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/infraware/viewer/UxViewerActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1045
    .restart local v0       #oIntent:Landroid/content/Intent;
    const-string v1, "file_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1

    .line 1049
    .end local v0           #oIntent:Landroid/content/Intent;
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/infraware/viewer/UxViewerActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1050
    .restart local v0       #oIntent:Landroid/content/Intent;
    const-string v1, "file_type"

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1

    .line 1053
    .end local v0           #oIntent:Landroid/content/Intent;
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/infraware/viewer/UxViewerActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1054
    .restart local v0       #oIntent:Landroid/content/Intent;
    const-string v1, "file_type"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1

    .line 1058
    .end local v0           #oIntent:Landroid/content/Intent;
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/infraware/slide/UxSlideEditorActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1059
    .restart local v0       #oIntent:Landroid/content/Intent;
    const-string v1, "file_type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1

    .line 1062
    .end local v0           #oIntent:Landroid/content/Intent;
    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/infraware/slide/UxSlideEditorShowActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1063
    .restart local v0       #oIntent:Landroid/content/Intent;
    const-string v1, "file_type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1

    .line 1067
    .end local v0           #oIntent:Landroid/content/Intent;
    :pswitch_7
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/infraware/sheet/UxSheetEditorActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1068
    .restart local v0       #oIntent:Landroid/content/Intent;
    const-string v1, "file_type"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1

    .line 1037
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public initFileOperatorThreadEvent()V
    .locals 1

    .prologue
    .line 75
    invoke-static {p0}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->createWebFileOperatorThread(Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$IWebEventListener;)Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;

    move-result-object v0

    sput-object v0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oFmWebFileOperatorThread:Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;

    .line 76
    return-void
.end method

.method public makeFileList(Ljava/lang/String;)I
    .locals 5
    .parameter "a_strPath"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 87
    sget-boolean v0, Lcom/infraware/filemanager/FmWebStorageAccount;->m_bConnected:Z

    if-nez v0, :cond_1

    .line 90
    const v0, 0x7f0a000b

    new-array v1, v4, [Ljava/lang/Object;

    sget-object v2, Lcom/infraware/filemanager/FmWebStorageAccount;->m_strCurrentID:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v3, v0, v1}, Lcom/infraware/filemanager/FmFileProgress;->startProgress(II[Ljava/lang/Object;)V

    .line 91
    invoke-direct {p0, v3}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->loginWebStorage(Z)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v4

    .line 106
    :goto_0
    return v0

    .line 93
    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    .line 96
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iget-object v0, v0, Lcom/infraware/filemanager/FmFileListData;->m_strCurPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iput-object p1, v0, Lcom/infraware/filemanager/FmFileListData;->m_strCurPath:Ljava/lang/String;

    .line 99
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->makeWebFileList()I

    move v0, v3

    .line 100
    goto :goto_0

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iget-object v0, v0, Lcom/infraware/filemanager/FmFileListData;->m_oFileAdapter:Lcom/infraware/filemanager/FmFileAdapter;

    invoke-virtual {v0}, Lcom/infraware/filemanager/FmFileAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 104
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->makeWebFileList()I

    :cond_3
    move v0, v3

    .line 106
    goto :goto_0
.end method

.method public makeNewFolder(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .parameter "a_oContext"
    .parameter "a_strFolderName"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 117
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    .line 122
    :goto_0
    return v0

    .line 120
    :cond_0
    const v0, 0x7f0a02e4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v2, v0, v1}, Lcom/infraware/filemanager/FmFileProgress;->startProgress(II[Ljava/lang/Object;)V

    .line 121
    sget-object v0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oFmWebFileOperatorThread:Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;

    sget-object v1, Lcom/infraware/filemanager/FmWebStorageAccount;->m_strCurrentID:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iget-object v3, v3, Lcom/infraware/filemanager/FmFileListData;->m_strCurPath:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->getServiceType()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->makeNewFolder(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 122
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public makeWebFileList()I
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 879
    invoke-static {}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getInstance()Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    move-result-object v2

    .line 880
    .local v2, webAPI:Lcom/infraware/filemanager/webstorage/WebStorageAPI;
    invoke-virtual {v2}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->checkLoginThreadAlive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 882
    const/4 v4, 0x2

    const/16 v5, 0x11

    const/4 v6, -0x7

    invoke-virtual {p0, v4, v5, v6}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->onResult(III)V

    move v4, v8

    .line 924
    :goto_0
    return v4

    .line 886
    :cond_0
    const/4 v0, 0x0

    .line 887
    .local v0, oFileItem:Lcom/infraware/filemanager/FmFileItem;
    invoke-direct {p0}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->getServiceType()I

    move-result v1

    .line 888
    .local v1, serviceType:I
    iget-object v4, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iget-object v4, v4, Lcom/infraware/filemanager/FmFileListData;->m_strCurPath:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 890
    new-instance v0, Lcom/infraware/filemanager/FmFileItem;

    .end local v0           #oFileItem:Lcom/infraware/filemanager/FmFileItem;
    invoke-direct {v0}, Lcom/infraware/filemanager/FmFileItem;-><init>()V

    .line 891
    .restart local v0       #oFileItem:Lcom/infraware/filemanager/FmFileItem;
    iput-boolean v8, v0, Lcom/infraware/filemanager/FmFileItem;->m_bIsFolder:Z

    .line 892
    iget-object v4, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iget v4, v4, Lcom/infraware/filemanager/FmFileListData;->m_nAdapterMode:I

    iput v4, v0, Lcom/infraware/filemanager/FmFileItem;->m_nType:I

    .line 893
    iget-object v4, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iget-object v4, v4, Lcom/infraware/filemanager/FmFileListData;->m_strCurPath:Ljava/lang/String;

    iput-object v4, v0, Lcom/infraware/filemanager/FmFileItem;->m_strPath:Ljava/lang/String;

    .line 894
    const-string v4, ".."

    iput-object v4, v0, Lcom/infraware/filemanager/FmFileItem;->m_strName:Ljava/lang/String;

    .line 895
    const/16 v4, 0x8

    iput v4, v0, Lcom/infraware/filemanager/FmFileItem;->m_nExtType:I

    .line 896
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/infraware/filemanager/FmFileItem;->m_nUpdateTime:J

    .line 897
    iget-object v4, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iget-object v4, v4, Lcom/infraware/filemanager/FmFileListData;->m_oFileAdapter:Lcom/infraware/filemanager/FmFileAdapter;

    invoke-virtual {v4, v0}, Lcom/infraware/filemanager/FmFileAdapter;->addList(Lcom/infraware/filemanager/FmFileItem;)V

    .line 900
    :cond_1
    sget-object v4, Lcom/infraware/filemanager/FmWebStorageAccount;->m_strCurrentID:Ljava/lang/String;

    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iget-object v5, v5, Lcom/infraware/filemanager/FmFileListData;->m_strCurPath:Ljava/lang/String;

    invoke-virtual {v2, v1, v4, v5}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getFirst(ILjava/lang/String;Ljava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;

    move-result-object v3

    .line 901
    .local v3, webFile:Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;
    :goto_1
    if-nez v3, :cond_2

    .line 922
    iget-object v4, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iget-object v4, v4, Lcom/infraware/filemanager/FmFileListData;->m_oFileAdapter:Lcom/infraware/filemanager/FmFileAdapter;

    invoke-virtual {v4}, Lcom/infraware/filemanager/FmFileAdapter;->sortFileList()V

    .line 923
    iput v8, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_nStatus:I

    .line 924
    const/4 v4, 0x0

    goto :goto_0

    .line 903
    :cond_2
    new-instance v0, Lcom/infraware/filemanager/FmFileItem;

    .end local v0           #oFileItem:Lcom/infraware/filemanager/FmFileItem;
    invoke-direct {v0}, Lcom/infraware/filemanager/FmFileItem;-><init>()V

    .line 904
    .restart local v0       #oFileItem:Lcom/infraware/filemanager/FmFileItem;
    iget-boolean v4, v3, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->isFolder:Z

    iput-boolean v4, v0, Lcom/infraware/filemanager/FmFileItem;->m_bIsFolder:Z

    .line 905
    iget-object v4, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iget v4, v4, Lcom/infraware/filemanager/FmFileListData;->m_nAdapterMode:I

    iput v4, v0, Lcom/infraware/filemanager/FmFileItem;->m_nType:I

    .line 906
    iget-object v4, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iget-object v4, v4, Lcom/infraware/filemanager/FmFileListData;->m_strCurPath:Ljava/lang/String;

    iput-object v4, v0, Lcom/infraware/filemanager/FmFileItem;->m_strPath:Ljava/lang/String;

    .line 907
    iget-wide v4, v3, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->size:J

    iput-wide v4, v0, Lcom/infraware/filemanager/FmFileItem;->m_nSize:J

    .line 908
    const-string v4, ".."

    iput-object v4, v0, Lcom/infraware/filemanager/FmFileItem;->m_strName:Ljava/lang/String;

    .line 909
    iget-boolean v4, v3, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->isFolder:Z

    if-eqz v4, :cond_3

    .line 911
    iget-object v4, v3, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->name:Ljava/lang/String;

    iput-object v4, v0, Lcom/infraware/filemanager/FmFileItem;->m_strName:Ljava/lang/String;

    .line 912
    const/4 v4, 0x7

    iput v4, v0, Lcom/infraware/filemanager/FmFileItem;->m_nExtType:I

    .line 916
    :goto_2
    iget-wide v4, v3, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->updateTime:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    iput-wide v4, v0, Lcom/infraware/filemanager/FmFileItem;->m_nUpdateTime:J

    .line 918
    iget-object v4, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iget-object v4, v4, Lcom/infraware/filemanager/FmFileListData;->m_oFileAdapter:Lcom/infraware/filemanager/FmFileAdapter;

    invoke-virtual {v4, v0}, Lcom/infraware/filemanager/FmFileAdapter;->addList(Lcom/infraware/filemanager/FmFileItem;)V

    .line 919
    sget-object v4, Lcom/infraware/filemanager/FmWebStorageAccount;->m_strCurrentID:Ljava/lang/String;

    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iget-object v5, v5, Lcom/infraware/filemanager/FmFileListData;->m_strCurPath:Ljava/lang/String;

    invoke-virtual {v2, v1, v4, v5}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getNext(ILjava/lang/String;Ljava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;

    move-result-object v3

    goto :goto_1

    .line 915
    :cond_3
    iget-object v4, v3, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->name:Ljava/lang/String;

    iget-object v5, v3, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->ext:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/infraware/filemanager/FmFileItem;->setName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onClrKey(Landroid/app/Activity;)I
    .locals 5
    .parameter "a_oActivity"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 868
    iget-object v1, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    invoke-virtual {v1, v3}, Lcom/infraware/filemanager/FmFileListData;->getFileItem(I)Lcom/infraware/filemanager/FmFileItem;

    move-result-object v0

    .line 869
    .local v0, oFileItem:Lcom/infraware/filemanager/FmFileItem;
    if-nez v0, :cond_0

    move v1, v4

    .line 875
    :goto_0
    return v1

    .line 872
    :cond_0
    iget-object v1, v0, Lcom/infraware/filemanager/FmFileItem;->m_strName:Ljava/lang/String;

    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    .line 873
    goto :goto_0

    .line 875
    :cond_1
    invoke-virtual {p0, p1, v3}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->onSelect(Landroid/app/Activity;I)I

    move-result v1

    goto :goto_0
.end method

.method public varargs onCommand(Lcom/infraware/uxcontrol/uiunit/UiUnitView;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;[Ljava/lang/Object;)V
    .locals 5
    .parameter "aOView"
    .parameter "aECommand"
    .parameter "aAoArgs"

    .prologue
    const/4 v4, 0x1

    .line 1132
    invoke-static {}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->$SWITCH_TABLE$com$infraware$uxcontrol$uiunit$UiEnum$EUnitCommand()[I

    move-result-object v2

    invoke-virtual {p2}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1185
    :cond_0
    :goto_0
    return-void

    .line 1136
    :pswitch_0
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getAsyncOperationCommand()Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    move-result-object v0

    .line 1138
    .local v0, oOperation:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_File_ContextDelete:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    if-ne v0, v2, :cond_1

    .line 1140
    iget-object v2, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    const v3, 0x7f0a0314

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->onToastText(Ljava/lang/String;)V

    goto :goto_0

    .line 1142
    :cond_1
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_FileDownload:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_FileUpload:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    if-ne v0, v2, :cond_6

    .line 1143
    :cond_2
    sput-boolean v4, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->m_bCancel:Z

    .line 1145
    const/4 v1, 0x0

    .line 1146
    .local v1, strToastMessage:Ljava/lang/String;
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_FileDownload:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    if-ne v0, v2, :cond_5

    .line 1148
    iget-object v2, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    const v3, 0x7f0a0328

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1           #strToastMessage:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1149
    .restart local v1       #strToastMessage:Ljava/lang/String;
    invoke-static {}, Lcom/infraware/filemanager/MTPSyncManager;->releaseDataBaseInstance()I

    .line 1154
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 1155
    invoke-virtual {p0, v1}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->onToastText(Ljava/lang/String;)V

    .line 1157
    :cond_4
    invoke-static {}, Lcom/infraware/filemanager/FmFileProgress;->stopProgress()V

    .line 1158
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->clearAsyncOperation()V

    .line 1159
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->setErrorCode(I)V

    .line 1160
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->DestroyListIterator()V

    .line 1161
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->updateList()V

    goto :goto_0

    .line 1151
    :cond_5
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_FileUpload:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    if-ne v0, v2, :cond_3

    .line 1152
    iget-object v2, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    const v3, 0x7f0a0329

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1           #strToastMessage:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1       #strToastMessage:Ljava/lang/String;
    goto :goto_1

    .line 1163
    .end local v1           #strToastMessage:Ljava/lang/String;
    :cond_6
    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Web_ViewFile:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    if-ne v0, v2, :cond_0

    .line 1165
    sput-boolean v4, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->m_bCancel:Z

    .line 1167
    invoke-static {}, Lcom/infraware/filemanager/FmFileProgress;->stopProgress()V

    .line 1168
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->clearAsyncOperation()V

    .line 1169
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->DestroyListIterator()V

    .line 1170
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->updateList()V

    goto :goto_0

    .line 1132
    :pswitch_data_0
    .packed-switch 0xba
        :pswitch_0
    .end packed-switch
.end method

.method public onDownload(Ljava/lang/String;)V
    .locals 0
    .parameter "a_strPath"

    .prologue
    .line 1121
    return-void
.end method

.method public onDownloadCancel()V
    .locals 0

    .prologue
    .line 1127
    return-void
.end method

.method public onInitLogin()V
    .locals 0

    .prologue
    .line 1115
    return-void
.end method

.method public onInitState()V
    .locals 0

    .prologue
    .line 1113
    return-void
.end method

.method public onResult(III)V
    .locals 11
    .parameter "a_nCallbackResult"
    .parameter "a_nOperationMode"
    .parameter "a_nErrorCode"

    .prologue
    const v6, 0x7f0a0273

    const v10, 0x7f0a02fb

    const/16 v7, 0xc

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 145
    const/4 v4, 0x0

    .line 146
    .local v4, strToastMessage:Ljava/lang/String;
    if-ne p1, v8, :cond_9

    .line 148
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getAsyncOperationCommand()Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    move-result-object v5

    sget-object v6, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Web_ViewFile:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    if-eq v5, v6, :cond_8

    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getAsyncOperationCommand()Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    move-result-object v5

    sget-object v6, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Web_DownloadFile:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    if-eq v5, v6, :cond_8

    .line 150
    sparse-switch p2, :sswitch_data_0

    .line 230
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->clearAsyncOperation()V

    .line 231
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->DestroyListIterator()V

    .line 232
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->updateList()V

    .line 633
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 634
    invoke-virtual {p0, v4}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->onToastText(Ljava/lang/String;)V

    .line 635
    :cond_1
    return-void

    .line 154
    :sswitch_0
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getAsyncOperatorNameList()Ljava/util/List;

    move-result-object v0

    .line 155
    .local v0, listProcessingFileList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, ""

    .line 157
    .local v2, strFileName:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 158
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getIteratorIndex()I

    move-result v5

    sub-int/2addr v5, v8

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #strFileName:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 160
    .restart local v2       #strFileName:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->increaseSuccessCount()V

    .line 162
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->hasListIteratorNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 164
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v8, :cond_3

    .line 166
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getSuccessCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, strSuccessNum:Ljava/lang/String;
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getIteratorIndex()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, strCurrentIndex:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    const v7, 0x7f0a02ff

    invoke-virtual {v5, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " : "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 172
    .end local v1           #strCurrentIndex:Ljava/lang/String;
    .end local v3           #strSuccessNum:Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->clearAsyncOperation()V

    .line 173
    const v5, 0x7f0a02e8

    invoke-static {v9, v5}, Lcom/infraware/filemanager/FmFileProgress;->startTransferProgress(II)V

    .line 174
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->DestroyListIterator()V

    .line 175
    invoke-static {}, Lcom/infraware/filemanager/MTPSyncManager;->releaseDataBaseInstance()I

    .line 180
    :goto_2
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->updateList()V

    goto :goto_0

    .line 171
    :cond_3
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    const v6, 0x7f0a02ff

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4           #strToastMessage:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4       #strToastMessage:Ljava/lang/String;
    goto :goto_1

    .line 178
    :cond_4
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->advanceIterator()V

    goto :goto_2

    .line 185
    .end local v0           #listProcessingFileList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #strFileName:Ljava/lang/String;
    :sswitch_1
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getAsyncOperatorNameList()Ljava/util/List;

    move-result-object v0

    .line 186
    .restart local v0       #listProcessingFileList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, ""

    .line 188
    .restart local v2       #strFileName:Ljava/lang/String;
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 189
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getIteratorIndex()I

    move-result v5

    sub-int/2addr v5, v8

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #strFileName:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 191
    .restart local v2       #strFileName:Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->increaseSuccessCount()V

    .line 193
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->hasListIteratorNext()Z

    move-result v5

    if-nez v5, :cond_7

    .line 195
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v8, :cond_6

    .line 197
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getSuccessCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 198
    .restart local v3       #strSuccessNum:Ljava/lang/String;
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getIteratorIndex()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 199
    .restart local v1       #strCurrentIndex:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    invoke-virtual {v5, v10}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " : "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 203
    .end local v1           #strCurrentIndex:Ljava/lang/String;
    .end local v3           #strSuccessNum:Ljava/lang/String;
    :goto_3
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->clearAsyncOperation()V

    .line 204
    const v5, 0x7f0a02e9

    invoke-static {v9, v5}, Lcom/infraware/filemanager/FmFileProgress;->startTransferProgress(II)V

    .line 205
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->DestroyListIterator()V

    .line 210
    :goto_4
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->updateList()V

    goto/16 :goto_0

    .line 202
    :cond_6
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    invoke-virtual {v5, v10}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4           #strToastMessage:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4       #strToastMessage:Ljava/lang/String;
    goto :goto_3

    .line 208
    :cond_7
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->advanceIterator()V

    goto :goto_4

    .line 215
    .end local v0           #listProcessingFileList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #strFileName:Ljava/lang/String;
    :sswitch_2
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    const v6, 0x7f0a02e7

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4           #strToastMessage:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 217
    .restart local v4       #strToastMessage:Ljava/lang/String;
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->clearAsyncOperation()V

    .line 218
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->DestroyListIterator()V

    .line 219
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->updateList()V

    goto/16 :goto_0

    .line 222
    :sswitch_3
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    const v6, 0x7f0a02e6

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4           #strToastMessage:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 224
    .restart local v4       #strToastMessage:Ljava/lang/String;
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->clearAsyncOperation()V

    .line 225
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->DestroyListIterator()V

    .line 226
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->updateList()V

    goto/16 :goto_0

    .line 237
    :cond_8
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->updateList()V

    goto/16 :goto_0

    .line 240
    :cond_9
    const/4 v5, 0x3

    if-ne p1, v5, :cond_b

    .line 242
    sget-boolean v5, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->m_bCancel:Z

    if-eqz v5, :cond_a

    .line 243
    sput-boolean v9, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->m_bCancel:Z

    goto/16 :goto_0

    .line 246
    :cond_a
    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 249
    :pswitch_0
    invoke-static {}, Lcom/infraware/filemanager/MTPSyncManager;->releaseDataBaseInstance()I

    goto/16 :goto_0

    .line 258
    :cond_b
    packed-switch p3, :pswitch_data_1

    .line 622
    :pswitch_1
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4           #strToastMessage:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 623
    .restart local v4       #strToastMessage:Ljava/lang/String;
    invoke-static {}, Lcom/infraware/filemanager/FmFileProgress;->stopProgress()V

    .line 624
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->clearAsyncOperation()V

    .line 625
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->DestroyListIterator()V

    .line 626
    if-ne p2, v7, :cond_c

    .line 627
    invoke-static {}, Lcom/infraware/filemanager/MTPSyncManager;->releaseDataBaseInstance()I

    .line 628
    :cond_c
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->updateList()V

    goto/16 :goto_0

    .line 260
    :pswitch_2
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    const v6, 0x7f0a0290

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4           #strToastMessage:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 261
    .restart local v4       #strToastMessage:Ljava/lang/String;
    invoke-static {}, Lcom/infraware/filemanager/FmFileProgress;->stopProgress()V

    .line 262
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->DestroyListIterator()V

    .line 263
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->clearAsyncOperation()V

    .line 264
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->updateList()V

    .line 265
    invoke-static {}, Lcom/infraware/filemanager/MTPSyncManager;->releaseDataBaseInstance()I

    goto/16 :goto_0

    .line 268
    :pswitch_3
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    const v6, 0x7f0a02f6

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4           #strToastMessage:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 269
    .restart local v4       #strToastMessage:Ljava/lang/String;
    invoke-static {}, Lcom/infraware/filemanager/FmFileProgress;->stopProgress()V

    goto/16 :goto_0

    .line 272
    :pswitch_4
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getAsyncOperation()Z

    move-result v5

    if-nez v5, :cond_d

    .line 273
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->increaseFailCount()V

    .line 274
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    const v6, 0x7f0a02fc

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4           #strToastMessage:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 275
    .restart local v4       #strToastMessage:Ljava/lang/String;
    invoke-static {}, Lcom/infraware/filemanager/FmFileProgress;->stopProgress()V

    .line 280
    :goto_5
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->updateList()V

    goto/16 :goto_0

    .line 278
    :cond_d
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->increaseFailCount()V

    goto :goto_5

    .line 283
    :pswitch_5
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getAsyncOperation()Z

    move-result v5

    if-nez v5, :cond_e

    .line 284
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->increaseFailCount()V

    .line 285
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    const v6, 0x7f0a0300

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4           #strToastMessage:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 286
    .restart local v4       #strToastMessage:Ljava/lang/String;
    invoke-static {}, Lcom/infraware/filemanager/FmFileProgress;->stopProgress()V

    .line 287
    invoke-static {}, Lcom/infraware/filemanager/MTPSyncManager;->releaseDataBaseInstance()I

    .line 292
    :goto_6
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->updateList()V

    goto/16 :goto_0

    .line 290
    :cond_e
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->increaseFailCount()V

    goto :goto_6

    .line 295
    :pswitch_6
    packed-switch p2, :pswitch_data_2

    .line 366
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4           #strToastMessage:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 367
    .restart local v4       #strToastMessage:Ljava/lang/String;
    invoke-static {}, Lcom/infraware/filemanager/FmFileProgress;->stopProgress()V

    .line 368
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->clearAsyncOperation()V

    .line 369
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->DestroyListIterator()V

    .line 370
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->updateList()V

    goto/16 :goto_0

    .line 299
    :pswitch_7
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getAsyncOperatorNameList()Ljava/util/List;

    move-result-object v0

    .line 300
    .restart local v0       #listProcessingFileList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, ""

    .line 302
    .restart local v2       #strFileName:Ljava/lang/String;
    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_f

    .line 303
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getIteratorIndex()I

    move-result v5

    sub-int/2addr v5, v8

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #strFileName:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 305
    .restart local v2       #strFileName:Ljava/lang/String;
    :cond_f
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->increaseFailCount()V

    .line 306
    if-eqz v2, :cond_11

    .line 307
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    const v7, 0x7f0a02f9

    invoke-virtual {v5, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " : "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 311
    :goto_7
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->hasListIteratorNext()Z

    move-result v5

    if-nez v5, :cond_12

    .line 313
    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v8, :cond_10

    .line 315
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getSuccessCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 316
    .restart local v3       #strSuccessNum:Ljava/lang/String;
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getIteratorIndex()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 317
    .restart local v1       #strCurrentIndex:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    const v7, 0x7f0a02ff

    invoke-virtual {v5, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 320
    .end local v1           #strCurrentIndex:Ljava/lang/String;
    .end local v3           #strSuccessNum:Ljava/lang/String;
    :cond_10
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->clearAsyncOperation()V

    .line 321
    const v5, 0x7f0a02e8

    invoke-static {v9, v5}, Lcom/infraware/filemanager/FmFileProgress;->startTransferProgress(II)V

    .line 322
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->DestroyListIterator()V

    .line 323
    invoke-static {}, Lcom/infraware/filemanager/MTPSyncManager;->releaseDataBaseInstance()I

    .line 328
    :goto_8
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->updateList()V

    goto/16 :goto_0

    .line 309
    :cond_11
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    const v6, 0x7f0a02f9

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4           #strToastMessage:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4       #strToastMessage:Ljava/lang/String;
    goto :goto_7

    .line 326
    :cond_12
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->advanceIterator()V

    goto :goto_8

    .line 333
    .end local v0           #listProcessingFileList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #strFileName:Ljava/lang/String;
    :pswitch_8
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getAsyncOperatorNameList()Ljava/util/List;

    move-result-object v0

    .line 334
    .restart local v0       #listProcessingFileList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, ""

    .line 336
    .restart local v2       #strFileName:Ljava/lang/String;
    if-eqz v0, :cond_13

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_13

    .line 337
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getIteratorIndex()I

    move-result v5

    sub-int/2addr v5, v8

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #strFileName:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 339
    .restart local v2       #strFileName:Ljava/lang/String;
    :cond_13
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->increaseFailCount()V

    .line 340
    if-eqz v2, :cond_15

    .line 341
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    const v7, 0x7f0a02f9

    invoke-virtual {v5, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " : "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 345
    :goto_9
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->hasListIteratorNext()Z

    move-result v5

    if-nez v5, :cond_16

    .line 347
    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v8, :cond_14

    .line 349
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getSuccessCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 350
    .restart local v3       #strSuccessNum:Ljava/lang/String;
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getIteratorIndex()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 351
    .restart local v1       #strCurrentIndex:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    invoke-virtual {v5, v10}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 354
    .end local v1           #strCurrentIndex:Ljava/lang/String;
    .end local v3           #strSuccessNum:Ljava/lang/String;
    :cond_14
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->clearAsyncOperation()V

    .line 355
    const v5, 0x7f0a02e9

    invoke-static {v9, v5}, Lcom/infraware/filemanager/FmFileProgress;->startTransferProgress(II)V

    .line 356
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->DestroyListIterator()V

    .line 361
    :goto_a
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->updateList()V

    goto/16 :goto_0

    .line 343
    :cond_15
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    const v6, 0x7f0a02f9

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4           #strToastMessage:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4       #strToastMessage:Ljava/lang/String;
    goto :goto_9

    .line 359
    :cond_16
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->advanceIterator()V

    goto :goto_a

    .line 376
    .end local v0           #listProcessingFileList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #strFileName:Ljava/lang/String;
    :pswitch_9
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getAsyncOperatorNameList()Ljava/util/List;

    move-result-object v0

    .line 377
    .restart local v0       #listProcessingFileList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, ""

    .line 379
    .restart local v2       #strFileName:Ljava/lang/String;
    if-eqz v0, :cond_17

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_17

    .line 380
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getIteratorIndex()I

    move-result v5

    sub-int/2addr v5, v8

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #strFileName:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 382
    .restart local v2       #strFileName:Ljava/lang/String;
    :cond_17
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->increaseFailCount()V

    .line 383
    if-eqz v2, :cond_19

    .line 384
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    const v7, 0x7f0a02fa

    invoke-virtual {v5, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " : "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 388
    :goto_b
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->hasListIteratorNext()Z

    move-result v5

    if-nez v5, :cond_1a

    .line 390
    if-eqz v0, :cond_18

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v8, :cond_18

    .line 392
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getSuccessCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 393
    .restart local v3       #strSuccessNum:Ljava/lang/String;
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getIteratorIndex()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 394
    .restart local v1       #strCurrentIndex:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    invoke-virtual {v5, v10}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 397
    .end local v1           #strCurrentIndex:Ljava/lang/String;
    .end local v3           #strSuccessNum:Ljava/lang/String;
    :cond_18
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->clearAsyncOperation()V

    .line 398
    const v5, 0x7f0a02e9

    invoke-static {v9, v5}, Lcom/infraware/filemanager/FmFileProgress;->startTransferProgress(II)V

    .line 399
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->DestroyListIterator()V

    .line 404
    :goto_c
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->updateList()V

    goto/16 :goto_0

    .line 386
    :cond_19
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    const v6, 0x7f0a02fa

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4           #strToastMessage:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4       #strToastMessage:Ljava/lang/String;
    goto :goto_b

    .line 402
    :cond_1a
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->advanceIterator()V

    goto :goto_c

    .line 408
    .end local v0           #listProcessingFileList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #strFileName:Ljava/lang/String;
    :pswitch_a
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    const v6, 0x7f0a02fd

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4           #strToastMessage:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 409
    .restart local v4       #strToastMessage:Ljava/lang/String;
    invoke-static {}, Lcom/infraware/filemanager/FmFileProgress;->stopProgress()V

    .line 410
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->clearAsyncOperation()V

    .line 411
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->DestroyListIterator()V

    .line 412
    if-ne p2, v7, :cond_1b

    .line 413
    invoke-static {}, Lcom/infraware/filemanager/MTPSyncManager;->releaseDataBaseInstance()I

    .line 414
    :cond_1b
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->updateList()V

    goto/16 :goto_0

    .line 418
    :pswitch_b
    sget-boolean v5, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->m_bCancel:Z

    if-eqz v5, :cond_1c

    .line 419
    sput-boolean v9, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->m_bCancel:Z

    goto/16 :goto_0

    .line 422
    :cond_1c
    packed-switch p2, :pswitch_data_3

    .line 436
    :goto_d
    invoke-static {}, Lcom/infraware/filemanager/FmFileProgress;->stopProgress()V

    .line 437
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->clearAsyncOperation()V

    .line 438
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->DestroyListIterator()V

    .line 439
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->updateList()V

    goto/16 :goto_0

    .line 426
    :pswitch_c
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    const v6, 0x7f0a0328

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4           #strToastMessage:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 427
    .restart local v4       #strToastMessage:Ljava/lang/String;
    invoke-static {}, Lcom/infraware/filemanager/MTPSyncManager;->releaseDataBaseInstance()I

    goto :goto_d

    .line 431
    :pswitch_d
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    const v6, 0x7f0a0329

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4           #strToastMessage:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 432
    .restart local v4       #strToastMessage:Ljava/lang/String;
    goto :goto_d

    .line 443
    :pswitch_e
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    const v6, 0x7f0a02f7

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4           #strToastMessage:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 444
    .restart local v4       #strToastMessage:Ljava/lang/String;
    invoke-static {}, Lcom/infraware/filemanager/FmFileProgress;->stopProgress()V

    .line 445
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->clearAsyncOperation()V

    .line 446
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->DestroyListIterator()V

    .line 447
    if-ne p2, v7, :cond_1d

    .line 448
    invoke-static {}, Lcom/infraware/filemanager/MTPSyncManager;->releaseDataBaseInstance()I

    .line 449
    :cond_1d
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->updateList()V

    goto/16 :goto_0

    .line 452
    :pswitch_f
    packed-switch p2, :pswitch_data_4

    .line 470
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4           #strToastMessage:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 471
    .restart local v4       #strToastMessage:Ljava/lang/String;
    invoke-static {}, Lcom/infraware/filemanager/FmFileProgress;->stopProgress()V

    .line 472
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->clearAsyncOperation()V

    .line 473
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->DestroyListIterator()V

    .line 476
    :goto_e
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->updateList()V

    goto/16 :goto_0

    .line 455
    :pswitch_10
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->increaseFailCount()V

    .line 456
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    const v6, 0x7f0a032c

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4           #strToastMessage:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 457
    .restart local v4       #strToastMessage:Ljava/lang/String;
    invoke-static {}, Lcom/infraware/filemanager/FmFileProgress;->stopProgress()V

    .line 458
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->clearAsyncOperation()V

    .line 459
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->DestroyListIterator()V

    .line 460
    invoke-static {}, Lcom/infraware/filemanager/MTPSyncManager;->releaseDataBaseInstance()I

    goto :goto_e

    .line 463
    :pswitch_11
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->increaseFailCount()V

    .line 464
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    const v6, 0x7f0a032c

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4           #strToastMessage:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 465
    .restart local v4       #strToastMessage:Ljava/lang/String;
    invoke-static {}, Lcom/infraware/filemanager/FmFileProgress;->stopProgress()V

    .line 466
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->clearAsyncOperation()V

    .line 467
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->DestroyListIterator()V

    goto :goto_e

    .line 482
    :pswitch_12
    sparse-switch p2, :sswitch_data_1

    .line 596
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4           #strToastMessage:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 597
    .restart local v4       #strToastMessage:Ljava/lang/String;
    invoke-static {}, Lcom/infraware/filemanager/FmFileProgress;->stopProgress()V

    .line 598
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->DestroyListIterator()V

    .line 599
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->clearAsyncOperation()V

    .line 600
    if-ne p2, v7, :cond_1e

    .line 601
    invoke-static {}, Lcom/infraware/filemanager/MTPSyncManager;->releaseDataBaseInstance()I

    .line 602
    :cond_1e
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->updateList()V

    goto/16 :goto_0

    .line 486
    :sswitch_4
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getAsyncOperatorNameList()Ljava/util/List;

    move-result-object v0

    .line 487
    .restart local v0       #listProcessingFileList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, ""

    .line 489
    .restart local v2       #strFileName:Ljava/lang/String;
    if-eqz v0, :cond_1f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1f

    .line 490
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getIteratorIndex()I

    move-result v5

    sub-int/2addr v5, v8

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #strFileName:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 492
    .restart local v2       #strFileName:Ljava/lang/String;
    :cond_1f
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->increaseFailCount()V

    .line 493
    sparse-switch p3, :sswitch_data_2

    .line 514
    :goto_f
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->hasListIteratorNext()Z

    move-result v5

    if-nez v5, :cond_24

    .line 516
    if-eqz v0, :cond_20

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v8, :cond_20

    .line 518
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getSuccessCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 519
    .restart local v3       #strSuccessNum:Ljava/lang/String;
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getIteratorIndex()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 520
    .restart local v1       #strCurrentIndex:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    const v7, 0x7f0a02ff

    invoke-virtual {v5, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 523
    .end local v1           #strCurrentIndex:Ljava/lang/String;
    .end local v3           #strSuccessNum:Ljava/lang/String;
    :cond_20
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->clearAsyncOperation()V

    .line 524
    const v5, 0x7f0a02e8

    invoke-static {v9, v5}, Lcom/infraware/filemanager/FmFileProgress;->startTransferProgress(II)V

    .line 525
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->DestroyListIterator()V

    .line 526
    invoke-static {}, Lcom/infraware/filemanager/MTPSyncManager;->releaseDataBaseInstance()I

    .line 531
    :goto_10
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->updateList()V

    goto/16 :goto_0

    .line 495
    :sswitch_5
    if-eqz v2, :cond_21

    .line 496
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    const v7, 0x7f0a0300

    invoke-virtual {v5, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " : "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_f

    .line 498
    :cond_21
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    const v6, 0x7f0a0300

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4           #strToastMessage:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 499
    .restart local v4       #strToastMessage:Ljava/lang/String;
    goto/16 :goto_f

    .line 501
    :sswitch_6
    if-eqz v2, :cond_22

    .line 502
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    const v7, 0x7f0a032a

    invoke-virtual {v5, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " : "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_f

    .line 504
    :cond_22
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    const v6, 0x7f0a032a

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4           #strToastMessage:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 505
    .restart local v4       #strToastMessage:Ljava/lang/String;
    goto/16 :goto_f

    .line 507
    :sswitch_7
    if-eqz v2, :cond_23

    .line 508
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    const v7, 0x7f0a032b

    invoke-virtual {v5, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " : "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_f

    .line 510
    :cond_23
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    const v6, 0x7f0a032b

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4           #strToastMessage:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4       #strToastMessage:Ljava/lang/String;
    goto/16 :goto_f

    .line 529
    :cond_24
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->advanceIterator()V

    goto/16 :goto_10

    .line 536
    .end local v0           #listProcessingFileList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #strFileName:Ljava/lang/String;
    :sswitch_8
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getAsyncOperatorNameList()Ljava/util/List;

    move-result-object v0

    .line 537
    .restart local v0       #listProcessingFileList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, ""

    .line 539
    .restart local v2       #strFileName:Ljava/lang/String;
    if-eqz v0, :cond_25

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_25

    .line 540
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getIteratorIndex()I

    move-result v5

    sub-int/2addr v5, v8

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #strFileName:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 542
    .restart local v2       #strFileName:Ljava/lang/String;
    :cond_25
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->increaseFailCount()V

    .line 544
    sparse-switch p3, :sswitch_data_3

    .line 565
    :goto_11
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->hasListIteratorNext()Z

    move-result v5

    if-nez v5, :cond_2a

    .line 567
    if-eqz v0, :cond_26

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v8, :cond_26

    .line 569
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getSuccessCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 570
    .restart local v3       #strSuccessNum:Ljava/lang/String;
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getIteratorIndex()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 571
    .restart local v1       #strCurrentIndex:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    invoke-virtual {v5, v10}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 574
    .end local v1           #strCurrentIndex:Ljava/lang/String;
    .end local v3           #strSuccessNum:Ljava/lang/String;
    :cond_26
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->clearAsyncOperation()V

    .line 575
    const v5, 0x7f0a02e9

    invoke-static {v9, v5}, Lcom/infraware/filemanager/FmFileProgress;->startTransferProgress(II)V

    .line 576
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->DestroyListIterator()V

    .line 581
    :goto_12
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->updateList()V

    goto/16 :goto_0

    .line 546
    :sswitch_9
    if-eqz v2, :cond_27

    .line 547
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    const v7, 0x7f0a02fc

    invoke-virtual {v5, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " : "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_11

    .line 549
    :cond_27
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    const v6, 0x7f0a02fc

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4           #strToastMessage:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 550
    .restart local v4       #strToastMessage:Ljava/lang/String;
    goto/16 :goto_11

    .line 552
    :sswitch_a
    if-eqz v2, :cond_28

    .line 553
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    const v7, 0x7f0a032a

    invoke-virtual {v5, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " : "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_11

    .line 555
    :cond_28
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    const v6, 0x7f0a032a

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4           #strToastMessage:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 556
    .restart local v4       #strToastMessage:Ljava/lang/String;
    goto/16 :goto_11

    .line 558
    :sswitch_b
    if-eqz v2, :cond_29

    .line 559
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    const v7, 0x7f0a032b

    invoke-virtual {v5, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " : "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_11

    .line 561
    :cond_29
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    const v6, 0x7f0a032b

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4           #strToastMessage:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4       #strToastMessage:Ljava/lang/String;
    goto/16 :goto_11

    .line 579
    :cond_2a
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->advanceIterator()V

    goto/16 :goto_12

    .line 588
    .end local v0           #listProcessingFileList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #strFileName:Ljava/lang/String;
    :sswitch_c
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    const v6, 0x7f0a0313

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4           #strToastMessage:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 589
    .restart local v4       #strToastMessage:Ljava/lang/String;
    invoke-static {}, Lcom/infraware/filemanager/FmFileProgress;->stopProgress()V

    .line 590
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->DestroyListIterator()V

    .line 591
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->clearAsyncOperation()V

    .line 592
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->updateList()V

    goto/16 :goto_0

    .line 607
    :pswitch_13
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    const v6, 0x7f0a0272

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4           #strToastMessage:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 608
    .restart local v4       #strToastMessage:Ljava/lang/String;
    invoke-static {}, Lcom/infraware/filemanager/FmFileProgress;->stopProgress()V

    .line 609
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->clearAsyncOperation()V

    .line 610
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->DestroyListIterator()V

    goto/16 :goto_0

    .line 613
    :pswitch_14
    sget-boolean v5, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->m_bCancel:Z

    if-eqz v5, :cond_2b

    .line 614
    sput-boolean v9, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->m_bCancel:Z

    .line 615
    :cond_2b
    invoke-static {}, Lcom/infraware/filemanager/FmFileProgress;->stopProgress()V

    .line 616
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->clearAsyncOperation()V

    .line 617
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->DestroyListIterator()V

    .line 618
    if-ne p2, v7, :cond_0

    .line 619
    invoke-static {}, Lcom/infraware/filemanager/MTPSyncManager;->releaseDataBaseInstance()I

    goto/16 :goto_0

    .line 150
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0xb -> :sswitch_1
        0xc -> :sswitch_0
        0x10 -> :sswitch_2
    .end sparse-switch

    .line 246
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch

    .line 258
    :pswitch_data_1
    .packed-switch -0xf
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_f
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_6
        :pswitch_2
        :pswitch_b
        :pswitch_3
        :pswitch_1
        :pswitch_a
        :pswitch_9
        :pswitch_e
        :pswitch_12
        :pswitch_1
        :pswitch_14
    .end packed-switch

    .line 295
    :pswitch_data_2
    .packed-switch 0xb
        :pswitch_8
        :pswitch_7
    .end packed-switch

    .line 422
    :pswitch_data_3
    .packed-switch 0xb
        :pswitch_d
        :pswitch_c
    .end packed-switch

    .line 452
    :pswitch_data_4
    .packed-switch 0xb
        :pswitch_11
        :pswitch_10
    .end packed-switch

    .line 482
    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_c
        0xb -> :sswitch_8
        0xc -> :sswitch_4
        0x10 -> :sswitch_c
        0x14 -> :sswitch_c
    .end sparse-switch

    .line 493
    :sswitch_data_2
    .sparse-switch
        -0xe -> :sswitch_7
        -0xd -> :sswitch_6
        0x0 -> :sswitch_5
    .end sparse-switch

    .line 544
    :sswitch_data_3
    .sparse-switch
        -0xe -> :sswitch_b
        -0xd -> :sswitch_a
        0x0 -> :sswitch_9
    .end sparse-switch
.end method

.method public onSelect(Landroid/app/Activity;I)I
    .locals 9
    .parameter "a_oActivity"
    .parameter "a_nIndex"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 797
    iget-object v4, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    invoke-virtual {v4, p2}, Lcom/infraware/filemanager/FmFileListData;->getFileItem(I)Lcom/infraware/filemanager/FmFileItem;

    move-result-object v0

    .line 798
    .local v0, oFileItem:Lcom/infraware/filemanager/FmFileItem;
    if-nez v0, :cond_0

    move v4, v6

    .line 823
    :goto_0
    return v4

    .line 801
    :cond_0
    iget-boolean v4, v0, Lcom/infraware/filemanager/FmFileItem;->m_bIsFolder:Z

    if-eqz v4, :cond_2

    .line 803
    iget-object v4, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    invoke-virtual {v4, p2}, Lcom/infraware/filemanager/FmFileListData;->getSubFolderPath(I)Ljava/lang/String;

    move-result-object v3

    .line 804
    .local v3, strNewPath:Ljava/lang/String;
    if-nez v3, :cond_1

    move v4, v6

    .line 805
    goto :goto_0

    .line 807
    :cond_1
    iget-object v4, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iget-object v4, v4, Lcom/infraware/filemanager/FmFileListData;->m_oFileAdapter:Lcom/infraware/filemanager/FmFileAdapter;

    invoke-virtual {v4}, Lcom/infraware/filemanager/FmFileAdapter;->clearList()V

    .line 808
    iget-object v4, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iput-object v3, v4, Lcom/infraware/filemanager/FmFileListData;->m_strCurPath:Ljava/lang/String;

    .line 809
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->makeWebFileList()I

    move-result v4

    goto :goto_0

    .line 812
    .end local v3           #strNewPath:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Lcom/infraware/filemanager/FmFileItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 813
    .local v1, strAbsolutePath:Ljava/lang/String;
    iget v4, v0, Lcom/infraware/filemanager/FmFileItem;->m_nExtType:I

    const/16 v5, 0x17

    if-ne v4, v5, :cond_3

    move v4, v6

    .line 814
    goto :goto_0

    .line 816
    :cond_3
    sget-object v4, Lcom/infraware/filemanager/FmFileDefine;->WEB_TEMP_PATH:Ljava/lang/String;

    invoke-static {v4}, Lcom/infraware/filemanager/FmFileUtil;->deleteFileInFolder(Ljava/lang/String;)V

    .line 817
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/infraware/filemanager/FmFileDefine;->WEB_TEMP_PATH:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/infraware/filemanager/FmFileItem;->getFullFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 818
    .local v2, strDestPath:Ljava/lang/String;
    sget-object v4, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Web_ViewFile:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-static {p0, v8, v4, v2, v8}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->setAsyncOperation(Lcom/infraware/filemanager/operator/FmFileOperator;Lcom/infraware/filemanager/operator/FmFileOperator;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;Ljava/lang/String;Ljava/util/List;)Z

    .line 820
    const v4, 0x7f0a0359

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/infraware/filemanager/FmFileItem;->getFullFileName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v7, v4, v5}, Lcom/infraware/filemanager/FmFileProgress;->startProgress(II[Ljava/lang/Object;)V

    .line 821
    invoke-static {p0}, Lcom/infraware/filemanager/FmFileProgress;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 823
    invoke-virtual {p0, v2, v1}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->downloadbyThread(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method

.method public onToastText(Ljava/lang/String;)V
    .locals 1
    .parameter "a_strMessage"

    .prologue
    .line 1117
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->onToastMessage(Ljava/lang/String;)V

    .line 1118
    return-void
.end method

.method public onUpdate()V
    .locals 0

    .prologue
    .line 1110
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->updateList()V

    .line 1111
    return-void
.end method

.method public prepareOverrideFile(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .parameter "a_oContext"
    .parameter "a_strFileName"

    .prologue
    .line 682
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 684
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getAsyncOperationName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 685
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getCurrentIteratorNode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/infraware/filemanager/FmFileUtil;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 684
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 687
    .local v0, strTargetFile:Ljava/lang/String;
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getAsyncTargetOperator()Lcom/infraware/filemanager/operator/FmFileOperator;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/infraware/filemanager/operator/FmFileOperator;->deleteFile(Landroid/content/Context;Ljava/lang/String;)I

    .line 694
    .end local v0           #strTargetFile:Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 691
    :cond_1
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getAsyncTargetOperator()Lcom/infraware/filemanager/operator/FmFileOperator;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/infraware/filemanager/operator/FmFileOperator;->deleteFile(Landroid/content/Context;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public refresh(Landroid/content/Context;)I
    .locals 3
    .parameter "a_oContext"

    .prologue
    .line 664
    const/4 v0, 0x0

    const v1, 0x7f0a0268

    invoke-static {v0, v1}, Lcom/infraware/filemanager/FmFileProgress;->startProgress(II)V

    .line 665
    iget-object v0, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    sput-object v0, Lcom/infraware/filemanager/webstorage/WebStorageDefine;->m_oContextForBroadCast:Landroid/content/Context;

    .line 666
    sget-object v0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oFmWebFileOperatorThread:Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;

    sget-object v1, Lcom/infraware/filemanager/FmWebStorageAccount;->m_strCurrentID:Ljava/lang/String;

    invoke-direct {p0}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->getServiceType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->refreshData(Ljava/lang/String;I)Z

    .line 667
    const/4 v0, 0x3

    return v0
.end method

.method public rename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "a_oContext"
    .parameter "a_strOldName"
    .parameter "a_strNewName"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 127
    const-string v2, "/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_0

    const-string v2, "/"

    invoke-virtual {p3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    :cond_0
    move v2, v5

    .line 141
    :goto_0
    return v2

    .line 130
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iget-object v3, v3, Lcom/infraware/filemanager/FmFileListData;->m_strCurPath:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, strOldFilePath:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iget-object v3, v3, Lcom/infraware/filemanager/FmFileListData;->m_strCurPath:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, strNewFilePath:Ljava/lang/String;
    const v2, 0x7f0a02e5

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    aput-object p3, v3, v5

    invoke-static {v4, v2, v3}, Lcom/infraware/filemanager/FmFileProgress;->startProgress(II[Ljava/lang/Object;)V

    .line 135
    sget-object v2, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oFmWebFileOperatorThread:Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;

    sget-object v3, Lcom/infraware/filemanager/FmWebStorageAccount;->m_strCurrentID:Ljava/lang/String;

    .line 138
    invoke-direct {p0}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->getServiceType()I

    move-result v4

    .line 135
    invoke-virtual {v2, v3, v1, v0, v4}, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->rename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v5

    .line 139
    goto :goto_0

    .line 141
    :cond_2
    const/4 v2, 0x3

    goto :goto_0
.end method

.method public updateFileList()I
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->clearFileList()V

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->makeFileList(Ljava/lang/String;)I

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public updateList()V
    .locals 13

    .prologue
    const/4 v12, 0x5

    const/16 v11, 0x100

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 936
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getAsyncOperation()Z

    move-result v7

    if-nez v7, :cond_4

    .line 938
    iget-object v7, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iget-object v7, v7, Lcom/infraware/filemanager/FmFileListData;->m_oFileAdapter:Lcom/infraware/filemanager/FmFileAdapter;

    invoke-virtual {v7}, Lcom/infraware/filemanager/FmFileAdapter;->clearList()V

    .line 940
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->makeWebFileList()I

    .line 942
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getAsyncTargetOperator()Lcom/infraware/filemanager/operator/FmFileOperator;

    move-result-object v2

    .line 943
    .local v2, oTargetOperator:Lcom/infraware/filemanager/operator/FmFileOperator;
    if-eqz v2, :cond_0

    .line 945
    invoke-virtual {v2}, Lcom/infraware/filemanager/operator/FmFileOperator;->updateFileList()I

    .line 946
    invoke-virtual {v2, v11, v9, v10}, Lcom/infraware/filemanager/operator/FmFileOperator;->onEvent(IILjava/lang/String;)V

    .line 949
    :cond_0
    iget-object v7, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iget-object v7, v7, Lcom/infraware/filemanager/FmFileListData;->m_oFileAdapter:Lcom/infraware/filemanager/FmFileAdapter;

    invoke-virtual {v7}, Lcom/infraware/filemanager/FmFileAdapter;->getCount()I

    move-result v7

    if-lez v7, :cond_1

    .line 950
    iget-object v7, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iget-object v7, v7, Lcom/infraware/filemanager/FmFileListData;->m_oFileAdapter:Lcom/infraware/filemanager/FmFileAdapter;

    invoke-virtual {v7}, Lcom/infraware/filemanager/FmFileAdapter;->sortFileList()V

    .line 952
    :cond_1
    iget-object v7, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oIEventListener:Lcom/infraware/filemanager/operator/FmFileOperator$IEventListener;

    if-eqz v7, :cond_2

    .line 953
    iget-object v7, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oIEventListener:Lcom/infraware/filemanager/operator/FmFileOperator$IEventListener;

    invoke-interface {v7, v11, v9, v10}, Lcom/infraware/filemanager/operator/FmFileOperator$IEventListener;->onEvent(IILjava/lang/String;)V

    .line 955
    :cond_2
    iget-object v7, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    instance-of v7, v7, Lcom/infraware/filemanager/FmFileSyncActivity;

    if-eqz v7, :cond_3

    .line 956
    iget-object p0, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    .end local p0
    check-cast p0, Lcom/infraware/filemanager/FmFileSyncActivity;

    invoke-virtual {p0}, Lcom/infraware/filemanager/FmFileSyncActivity;->updateLocalList()V

    .line 1023
    .end local v2           #oTargetOperator:Lcom/infraware/filemanager/operator/FmFileOperator;
    :cond_3
    :goto_0
    return-void

    .line 961
    .restart local p0
    :cond_4
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getAsyncOperationCommand()Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    move-result-object v7

    sget-object v8, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Web_ViewFile:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    if-ne v7, v8, :cond_6

    .line 963
    iget-object v7, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oIEventListener:Lcom/infraware/filemanager/operator/FmFileOperator$IEventListener;

    if-eqz v7, :cond_5

    .line 964
    iget-object v7, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oIEventListener:Lcom/infraware/filemanager/operator/FmFileOperator$IEventListener;

    invoke-interface {v7, v11, v9, v10}, Lcom/infraware/filemanager/operator/FmFileOperator$IEventListener;->onEvent(IILjava/lang/String;)V

    .line 965
    :cond_5
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->clearAsyncOperation()V

    .line 966
    invoke-static {}, Lcom/infraware/filemanager/FmFileProgress;->stopProgress()V

    .line 967
    invoke-direct {p0}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->getWebTempFileName()Ljava/lang/String;

    move-result-object v5

    .line 969
    .local v5, strTempPath:Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 970
    iget-object v7, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    invoke-virtual {p0, v7, v5, v9, v9}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->excuteFile(Landroid/app/Activity;Ljava/lang/String;IZ)I

    goto :goto_0

    .line 981
    .end local v5           #strTempPath:Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getAsyncOperationCommand()Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    move-result-object v7

    sget-object v8, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_FileUpload:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    if-ne v7, v8, :cond_7

    .line 983
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->upload()I

    goto :goto_0

    .line 987
    :cond_7
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getAsyncOperationCommand()Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    move-result-object v7

    sget-object v8, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_FileDownload:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    if-ne v7, v8, :cond_3

    .line 991
    invoke-virtual {p0, v10, v10}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->download(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 992
    .local v0, nResult:I
    if-eq v0, v12, :cond_8

    const/4 v7, 0x6

    if-ne v0, v7, :cond_3

    .line 993
    :cond_8
    const/4 v6, 0x0

    .line 994
    .local v6, strTitle:Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 995
    .local v4, strMessage:Ljava/lang/CharSequence;
    if-ne v12, v0, :cond_9

    .line 996
    iget-object v7, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a02de

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 997
    iget-object v7, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a035b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1002
    :goto_1
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getCurrentIteratorNode()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/infraware/filemanager/FmFileUtil;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1003
    .local v3, strFileName:Ljava/lang/String;
    new-instance v1, Lcom/infraware/uxcontrol/uicontrol/UiFileOverridingDialog;

    iget-object v7, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    invoke-direct {v1, v7, v6, v4, v3}, Lcom/infraware/uxcontrol/uicontrol/UiFileOverridingDialog;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1005
    .local v1, oOverridingDialog:Lcom/infraware/uxcontrol/uicontrol/UiFileOverridingDialog;
    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uicontrol/UiFileOverridingDialog;->createView()V

    .line 1006
    invoke-static {v3}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->setNewFileName(Ljava/lang/String;)V

    .line 1010
    sget-object v7, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Download_Overwrite:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    .line 1009
    invoke-virtual {v1, v7, v9}, Lcom/infraware/uxcontrol/uicontrol/UiFileOverridingDialog;->setPositiveDismissCommand(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;I)V

    .line 1013
    sget-object v7, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Download_Skip:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    .line 1012
    invoke-virtual {v1, v7, v9}, Lcom/infraware/uxcontrol/uicontrol/UiFileOverridingDialog;->setNeutralDismissCommand(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;I)V

    .line 1016
    sget-object v7, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Download_Cancel:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    .line 1015
    invoke-virtual {v1, v7, v9}, Lcom/infraware/uxcontrol/uicontrol/UiFileOverridingDialog;->setNagativeDismissCommand(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;I)V

    .line 1017
    iget-object p0, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    .end local p0
    check-cast p0, Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;

    invoke-virtual {v1, p0}, Lcom/infraware/uxcontrol/uicontrol/UiFileOverridingDialog;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 1019
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lcom/infraware/uxcontrol/uicontrol/UiFileOverridingDialog;->show(Z)V

    goto/16 :goto_0

    .line 999
    .end local v1           #oOverridingDialog:Lcom/infraware/uxcontrol/uicontrol/UiFileOverridingDialog;
    .end local v3           #strFileName:Ljava/lang/String;
    .restart local p0
    :cond_9
    iget-object v7, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0317

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1000
    iget-object v7, p0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oContext:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0318

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public upload()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 767
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getCurrentIteratorNode()Ljava/lang/String;

    move-result-object v1

    .line 769
    .local v1, strFileName:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 771
    :cond_0
    invoke-static {}, Lcom/infraware/filemanager/FmFileProgress;->stopProgress()V

    .line 772
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->DestroyListIterator()V

    .line 773
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->clearAsyncOperation()V

    move v2, v3

    .line 791
    :goto_0
    return v2

    .line 777
    :cond_1
    const v2, 0x7f0a02e9

    invoke-static {v3, v2}, Lcom/infraware/filemanager/FmFileProgress;->startTransferProgress(II)V

    .line 778
    invoke-static {p0}, Lcom/infraware/filemanager/FmFileProgress;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 782
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getAsyncOperationName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/infraware/filemanager/FmFileUtil;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 784
    .local v0, strDestPath:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->uploadbyThread(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 786
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->DestroyListIterator()V

    .line 787
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->clearAsyncOperation()V

    .line 788
    invoke-static {}, Lcom/infraware/filemanager/FmFileProgress;->stopProgress()V

    move v2, v4

    .line 789
    goto :goto_0

    .line 791
    :cond_2
    const/4 v2, 0x3

    goto :goto_0
.end method

.method public uploadbyThread(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "a_strDestName"
    .parameter "a_strName"

    .prologue
    .line 837
    sget-object v0, Lcom/infraware/filemanager/operator/FmWebFileOperator;->m_oFmWebFileOperatorThread:Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;

    sget-object v1, Lcom/infraware/filemanager/FmWebStorageAccount;->m_strCurrentID:Ljava/lang/String;

    .line 840
    invoke-direct {p0}, Lcom/infraware/filemanager/operator/FmWebFileOperator;->getServiceType()I

    move-result v2

    .line 837
    invoke-virtual {v0, v1, p2, p1, v2}, Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;->upload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 841
    const/4 v0, 0x1

    .line 843
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.class public Lcom/infraware/filemanager/operator/FmLocalFileOperator;
.super Lcom/infraware/filemanager/operator/FmFileOperator;
.source "FmLocalFileOperator.java"

# interfaces
.implements Lcom/infraware/filemanager/FmFileUnzip$IZipEventListener;
.implements Lcom/infraware/filemanager/FmLocalFileObserver$IFileObservingListener;


# static fields
.field private static synthetic $SWITCH_TABLE$com$infraware$uxcontrol$uiunit$UiEnum$EUnitCommand:[I = null

.field static final MAXFILENAME:I = 0x3c


# instance fields
.field m_bFolderOnly:Z

.field m_bKeepSrcFile:Z

.field m_oFileObserver:Lcom/infraware/filemanager/FmLocalFileObserver;

.field m_oFmLocalFileOperatorThread:Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;

.field private m_oHandler:Landroid/os/Handler;

.field m_srcFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field m_strDestPath:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$com$infraware$uxcontrol$uiunit$UiEnum$EUnitCommand()[I
    .locals 3

    .prologue
    .line 40
    sget-object v0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->$SWITCH_TABLE$com$infraware$uxcontrol$uiunit$UiEnum$EUnitCommand:[I

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
    sput-object v0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->$SWITCH_TABLE$com$infraware$uxcontrol$uiunit$UiEnum$EUnitCommand:[I

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

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 2
    .parameter "a_oContext"
    .parameter "a_bFolderOnly"

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Lcom/infraware/filemanager/operator/FmFileOperator;-><init>()V

    .line 42
    iput-boolean v1, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_bFolderOnly:Z

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_bKeepSrcFile:Z

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_srcFileList:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;

    invoke-direct {v0, p0}, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;-><init>(Lcom/infraware/filemanager/operator/FmLocalFileOperator;)V

    iput-object v0, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oFmLocalFileOperatorThread:Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;

    .line 637
    new-instance v0, Lcom/infraware/filemanager/operator/FmLocalFileOperator$1;

    invoke-direct {v0, p0}, Lcom/infraware/filemanager/operator/FmLocalFileOperator$1;-><init>(Lcom/infraware/filemanager/operator/FmLocalFileOperator;)V

    iput-object v0, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oHandler:Landroid/os/Handler;

    .line 54
    iput-object p1, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oContext:Landroid/app/Activity;

    .line 55
    new-instance v0, Lcom/infraware/filemanager/FmFileListData;

    invoke-direct {v0, p1}, Lcom/infraware/filemanager/FmFileListData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    .line 56
    iget-object v0, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iput v1, v0, Lcom/infraware/filemanager/FmFileListData;->m_nAdapterMode:I

    .line 57
    iget-object v0, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    invoke-static {}, Lcom/infraware/filemanager/FmFileDefine;->getRootFileManagerPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/infraware/filemanager/FmFileListData;->m_strCurPath:Ljava/lang/String;

    .line 58
    invoke-static {}, Lcom/infraware/filemanager/FmFileDefine;->getRootFileManagerPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_strRootPath:Ljava/lang/String;

    .line 59
    iput-boolean p2, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_bFolderOnly:Z

    .line 61
    new-instance v0, Lcom/infraware/filemanager/FmLocalFileObserver;

    iget-object v1, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oContext:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/infraware/filemanager/FmLocalFileObserver;-><init>(Landroid/content/Context;Lcom/infraware/filemanager/FmLocalFileObserver$IFileObservingListener;)V

    iput-object v0, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oFileObserver:Lcom/infraware/filemanager/FmLocalFileObserver;

    .line 62
    return-void
.end method


# virtual methods
.method public copy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .parameter "a_oContext"
    .parameter "a_strSrcPath"
    .parameter "a_strDestPath"

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    .line 247
    iput-object p3, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_strDestPath:Ljava/lang/String;

    .line 249
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_strDestPath:Ljava/lang/String;

    iget-object v6, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_strDestPath:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2f

    if-eq v5, v6, :cond_0

    .line 250
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_strDestPath:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_strDestPath:Ljava/lang/String;

    .line 252
    :cond_0
    if-nez p2, :cond_2

    .line 254
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getAsyncOperation()Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v7

    .line 309
    :goto_0
    return v5

    .line 257
    :cond_1
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getAsyncOperationName()Ljava/lang/String;

    move-result-object p2

    .line 259
    if-nez p2, :cond_2

    move v5, v7

    .line 260
    goto :goto_0

    .line 263
    :cond_2
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getAsyncOperatorNameList()Ljava/util/List;

    move-result-object v2

    .line 265
    .local v2, oFileSrcPathList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 266
    .local v0, bMultifileOperation:Z
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_4

    .line 267
    :cond_3
    const/4 v0, 0x0

    .line 269
    :cond_4
    invoke-static {v9}, Lcom/infraware/filemanager/FmFileUtil;->setCancel(Z)V

    .line 270
    invoke-static {}, Lcom/infraware/filemanager/FmFileUtil;->clearSize()V

    .line 271
    invoke-static {}, Lcom/infraware/filemanager/FmFileUtil;->clearCount()V

    .line 272
    invoke-static {}, Lcom/infraware/filemanager/FmFileUtil;->clearPathList()V

    .line 273
    invoke-static {}, Lcom/infraware/filemanager/FmFileUtil;->clearFlags()V

    .line 274
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_srcFileList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 276
    if-nez v0, :cond_7

    .line 278
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 279
    .local v3, oSrcPathFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5

    move v5, v7

    .line 280
    goto :goto_0

    .line 282
    :cond_5
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_srcFileList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    .end local v3           #oSrcPathFile:Ljava/io/File;
    :cond_6
    const v5, 0x7f0a023b

    invoke-static {v9, v5}, Lcom/infraware/filemanager/FmFileProgress;->startProgress(II)V

    .line 300
    invoke-static {p0}, Lcom/infraware/filemanager/FmFileProgress;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 302
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getAsyncOperationCommand()Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    move-result-object v5

    sget-object v6, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_File_ContextMove:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    if-ne v5, v6, :cond_9

    .line 303
    iput-boolean v9, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_bKeepSrcFile:Z

    .line 307
    :goto_1
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oFmLocalFileOperatorThread:Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;

    iget-object v6, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_srcFileList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_strDestPath:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_bKeepSrcFile:Z

    invoke-virtual {v5, p1, v6, v7, v8}, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->countFile(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Z)Z

    move v5, v9

    .line 309
    goto :goto_0

    .line 287
    :cond_7
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_6

    .line 289
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 290
    .local v4, strSrcPath:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 292
    .restart local v3       #oSrcPathFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_8

    move v5, v7

    .line 293
    goto :goto_0

    .line 295
    :cond_8
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_srcFileList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 305
    .end local v1           #i:I
    .end local v3           #oSrcPathFile:Ljava/io/File;
    .end local v4           #strSrcPath:Ljava/lang/String;
    :cond_9
    iput-boolean v7, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_bKeepSrcFile:Z

    goto :goto_1
.end method

.method public deleteFile(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9
    .parameter "a_oContext"
    .parameter "a_strFileName"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 369
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v4, srcFileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    if-eqz p2, :cond_3

    .line 373
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 374
    .local v3, oSrcPathFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_1

    .line 376
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 377
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 381
    invoke-static {p1}, Lcom/infraware/filemanager/MTPSyncManager;->createDataBaseInstance(Landroid/content/Context;)I

    .line 382
    invoke-static {p2}, Lcom/infraware/filemanager/MTPSyncManager;->updateItemDeleted(Ljava/lang/String;)I

    .line 383
    invoke-static {}, Lcom/infraware/filemanager/MTPSyncManager;->releaseDataBaseInstance()I

    .line 384
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->updateFileList()I

    move v6, v8

    .line 424
    .end local v3           #oSrcPathFile:Ljava/io/File;
    :goto_0
    return v6

    .restart local v3       #oSrcPathFile:Ljava/io/File;
    :cond_0
    move v6, v7

    .line 379
    goto :goto_0

    .line 389
    :cond_1
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    .end local v3           #oSrcPathFile:Ljava/io/File;
    :cond_2
    invoke-static {p1}, Lcom/infraware/filemanager/MTPSyncManager;->createDataBaseInstance(Landroid/content/Context;)I

    .line 420
    const v6, 0x7f0a0314

    invoke-static {v8, v6}, Lcom/infraware/filemanager/FmFileProgress;->startProgress(II)V

    .line 421
    invoke-static {p0}, Lcom/infraware/filemanager/FmFileProgress;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 422
    iget-object v6, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oFmLocalFileOperatorThread:Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;

    invoke-virtual {v6, p1, v4}, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->delete(Landroid/content/Context;Ljava/util/ArrayList;)Z

    .line 424
    const/4 v6, 0x3

    goto :goto_0

    .line 394
    :cond_3
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getAsyncOperatorNameList()Ljava/util/List;

    move-result-object v2

    .line 398
    .local v2, oFileSrcPathList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_4

    .line 400
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->getFileListData()Lcom/infraware/filemanager/FmFileListData;

    move-result-object v0

    .line 401
    .local v0, FmFileList:Lcom/infraware/filemanager/FmFileListData;
    invoke-virtual {v0}, Lcom/infraware/filemanager/FmFileListData;->getSelectedFileItems()Ljava/util/List;

    move-result-object v2

    .line 404
    .end local v0           #FmFileList:Lcom/infraware/filemanager/FmFileListData;
    :cond_4
    if-nez v2, :cond_5

    move v6, v7

    .line 405
    goto :goto_0

    .line 407
    :cond_5
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 409
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 410
    .local v5, strSrcPath:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 412
    .restart local v3       #oSrcPathFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_6

    move v6, v7

    .line 413
    goto :goto_0

    .line 415
    :cond_6
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getRefreshedFileCount()I
    .locals 5

    .prologue
    .line 86
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iget-object v3, v3, Lcom/infraware/filemanager/FmFileListData;->m_strCurPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    .local v2, oPathFile:Ljava/io/File;
    invoke-static {v2}, Lcom/infraware/filemanager/FmFileUtil;->get1DepthCount(Ljava/io/File;)I

    move-result v0

    .line 89
    .local v0, nRealFileCount:I
    iget-object v3, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/infraware/filemanager/FmFileListData;->getFileItem(I)Lcom/infraware/filemanager/FmFileItem;

    move-result-object v1

    .line 90
    .local v1, oFileItem:Lcom/infraware/filemanager/FmFileItem;
    iget-object v3, v1, Lcom/infraware/filemanager/FmFileItem;->m_strName:Ljava/lang/String;

    const-string v4, ".."

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 91
    add-int/lit8 v0, v0, 0x1

    .line 93
    :cond_0
    return v0
.end method

.method public makeFileList(Ljava/lang/String;)I
    .locals 2
    .parameter "a_strPath"

    .prologue
    const/4 v1, 0x0

    .line 66
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iget-object v0, v0, Lcom/infraware/filemanager/FmFileListData;->m_strCurPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iput-object p1, v0, Lcom/infraware/filemanager/FmFileListData;->m_strCurPath:Ljava/lang/String;

    .line 69
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->makeLocalFileList()I

    move v0, v1

    .line 76
    :goto_0
    return v0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iget-object v0, v0, Lcom/infraware/filemanager/FmFileListData;->m_oFileAdapter:Lcom/infraware/filemanager/FmFileAdapter;

    invoke-virtual {v0}, Lcom/infraware/filemanager/FmFileAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->makeLocalFileList()I

    :cond_1
    move v0, v1

    .line 76
    goto :goto_0
.end method

.method public makeLocalFileList()I
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 463
    const/4 v3, 0x0

    .line 465
    .local v3, oFileItem:Lcom/infraware/filemanager/FmFileItem;
    iget-object v4, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iget-object v4, v4, Lcom/infraware/filemanager/FmFileListData;->m_strCurPath:Ljava/lang/String;

    invoke-static {}, Lcom/infraware/filemanager/FmFileDefine;->getRootFileManagerPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 466
    iget-object v4, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iget-object v4, v4, Lcom/infraware/filemanager/FmFileListData;->m_strCurPath:Ljava/lang/String;

    invoke-static {}, Lcom/infraware/filemanager/FmFileDefine;->getMicroSD()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 467
    iget-object v4, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iget-object v4, v4, Lcom/infraware/filemanager/FmFileListData;->m_strCurPath:Ljava/lang/String;

    const-string v5, "/Removable/USBdisk1/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 468
    iget-object v4, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iget-object v4, v4, Lcom/infraware/filemanager/FmFileListData;->m_strCurPath:Ljava/lang/String;

    const-string v5, "/Removable/USBdisk2/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 469
    iget-object v4, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iget-object v4, v4, Lcom/infraware/filemanager/FmFileListData;->m_strCurPath:Ljava/lang/String;

    const-string v5, "/Removable/SD/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 471
    new-instance v3, Lcom/infraware/filemanager/FmFileItem;

    .end local v3           #oFileItem:Lcom/infraware/filemanager/FmFileItem;
    invoke-direct {v3}, Lcom/infraware/filemanager/FmFileItem;-><init>()V

    .line 472
    .restart local v3       #oFileItem:Lcom/infraware/filemanager/FmFileItem;
    iput-boolean v9, v3, Lcom/infraware/filemanager/FmFileItem;->m_bIsFolder:Z

    .line 473
    iput v9, v3, Lcom/infraware/filemanager/FmFileItem;->m_nType:I

    .line 474
    iget-object v4, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iget-object v4, v4, Lcom/infraware/filemanager/FmFileListData;->m_strCurPath:Ljava/lang/String;

    iput-object v4, v3, Lcom/infraware/filemanager/FmFileItem;->m_strPath:Ljava/lang/String;

    .line 475
    const-string v4, ".."

    iput-object v4, v3, Lcom/infraware/filemanager/FmFileItem;->m_strName:Ljava/lang/String;

    .line 476
    const/16 v4, 0x8

    iput v4, v3, Lcom/infraware/filemanager/FmFileItem;->m_nExtType:I

    .line 477
    iput-wide v10, v3, Lcom/infraware/filemanager/FmFileItem;->m_nUpdateTime:J

    .line 478
    iget-object v4, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iget-object v4, v4, Lcom/infraware/filemanager/FmFileListData;->m_oFileAdapter:Lcom/infraware/filemanager/FmFileAdapter;

    invoke-virtual {v4, v3}, Lcom/infraware/filemanager/FmFileAdapter;->addList(Lcom/infraware/filemanager/FmFileItem;)V

    .line 481
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iget-object v4, v4, Lcom/infraware/filemanager/FmFileListData;->m_strCurPath:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 482
    .local v2, oCurrentPathFile:Ljava/io/File;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    move v4, v9

    .line 521
    :goto_0
    return v4

    .line 485
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 486
    .local v1, fileList:[Ljava/io/File;
    if-nez v1, :cond_3

    move v4, v8

    .line 487
    goto :goto_0

    .line 489
    :cond_3
    array-length v4, v1

    move v5, v8

    :goto_1
    if-lt v5, v4, :cond_4

    .line 520
    iget-object v4, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iget-object v4, v4, Lcom/infraware/filemanager/FmFileListData;->m_oFileAdapter:Lcom/infraware/filemanager/FmFileAdapter;

    invoke-virtual {v4}, Lcom/infraware/filemanager/FmFileAdapter;->sortFileList()V

    move v4, v8

    .line 521
    goto :goto_0

    .line 489
    :cond_4
    aget-object v0, v1, v5

    .line 491
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_6

    .line 489
    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 494
    :cond_6
    new-instance v3, Lcom/infraware/filemanager/FmFileItem;

    .end local v3           #oFileItem:Lcom/infraware/filemanager/FmFileItem;
    invoke-direct {v3}, Lcom/infraware/filemanager/FmFileItem;-><init>()V

    .line 495
    .restart local v3       #oFileItem:Lcom/infraware/filemanager/FmFileItem;
    iput v9, v3, Lcom/infraware/filemanager/FmFileItem;->m_nType:I

    .line 496
    iget-object v6, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iget-object v6, v6, Lcom/infraware/filemanager/FmFileListData;->m_strCurPath:Ljava/lang/String;

    iput-object v6, v3, Lcom/infraware/filemanager/FmFileItem;->m_strPath:Ljava/lang/String;

    .line 497
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    iput-wide v6, v3, Lcom/infraware/filemanager/FmFileItem;->m_nUpdateTime:J

    .line 499
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_7

    .line 501
    iget-boolean v6, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_bFolderOnly:Z

    if-nez v6, :cond_5

    .line 503
    iput-boolean v8, v3, Lcom/infraware/filemanager/FmFileItem;->m_bIsFolder:Z

    .line 504
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Lcom/infraware/filemanager/FmFileItem;->setName(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    iput-wide v6, v3, Lcom/infraware/filemanager/FmFileItem;->m_nSize:J

    .line 506
    iget-object v6, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iget-object v6, v6, Lcom/infraware/filemanager/FmFileListData;->m_oFileAdapter:Lcom/infraware/filemanager/FmFileAdapter;

    invoke-virtual {v6, v3}, Lcom/infraware/filemanager/FmFileAdapter;->addList(Lcom/infraware/filemanager/FmFileItem;)V

    goto :goto_2

    .line 511
    :cond_7
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/infraware/filemanager/FmFileItem;->m_strName:Ljava/lang/String;

    .line 512
    iput-boolean v9, v3, Lcom/infraware/filemanager/FmFileItem;->m_bIsFolder:Z

    .line 513
    iput-wide v10, v3, Lcom/infraware/filemanager/FmFileItem;->m_nSize:J

    .line 514
    const/4 v6, 0x7

    iput v6, v3, Lcom/infraware/filemanager/FmFileItem;->m_nExtType:I

    .line 515
    iget-object v6, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iget-object v6, v6, Lcom/infraware/filemanager/FmFileListData;->m_oFileAdapter:Lcom/infraware/filemanager/FmFileAdapter;

    invoke-virtual {v6, v3}, Lcom/infraware/filemanager/FmFileAdapter;->addList(Lcom/infraware/filemanager/FmFileItem;)V

    goto :goto_2
.end method

.method public makeNewFile(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6
    .parameter "a_oContext"
    .parameter "a_strFileName"

    .prologue
    const/4 v5, 0x1

    .line 98
    const-string v3, "/"

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    move v3, v5

    .line 121
    :goto_0
    return v3

    .line 101
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iget-object v4, v4, Lcom/infraware/filemanager/FmFileListData;->m_strCurPath:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, strNewFilePath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .local v1, oNewPathFile:Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 106
    invoke-static {p1}, Lcom/infraware/filemanager/MTPSyncManager;->createDataBaseInstance(Landroid/content/Context;)I

    .line 107
    invoke-static {v2}, Lcom/infraware/filemanager/MTPSyncManager;->updateFileCreated(Ljava/lang/String;)I

    .line 108
    invoke-static {}, Lcom/infraware/filemanager/MTPSyncManager;->releaseDataBaseInstance()I

    .line 109
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->updateFileList()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    :cond_1
    move v3, v5

    .line 114
    goto :goto_0

    .line 116
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 118
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v3, v5

    .line 121
    goto :goto_0
.end method

.method public makeNewFolder(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7
    .parameter "a_oContext"
    .parameter "a_strFolderName"

    .prologue
    const/4 v6, 0x1

    .line 126
    const-string v2, "/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    move v2, v6

    .line 149
    :goto_0
    return v2

    .line 129
    :cond_0
    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 130
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 133
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iget-object v3, v3, Lcom/infraware/filemanager/FmFileListData;->m_strCurPath:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, strNewFolderPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/infraware/filemanager/FmFileUtil;->isExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 136
    iget-object v2, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oIEventListener:Lcom/infraware/filemanager/operator/FmFileOperator$IEventListener;

    const/high16 v3, 0x1000

    .line 137
    const v4, 0x7f0a0282

    .line 138
    const/4 v5, 0x0

    .line 136
    invoke-interface {v2, v3, v4, v5}, Lcom/infraware/filemanager/operator/FmFileOperator$IEventListener;->onEvent(IILjava/lang/String;)V

    move v2, v6

    .line 139
    goto :goto_0

    .line 141
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    .local v0, oNewPathFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v6

    .line 143
    goto :goto_0

    .line 145
    :cond_3
    invoke-static {p1}, Lcom/infraware/filemanager/MTPSyncManager;->createDataBaseInstance(Landroid/content/Context;)I

    .line 146
    invoke-static {v1}, Lcom/infraware/filemanager/MTPSyncManager;->updateFolderCreated(Ljava/lang/String;)I

    .line 147
    invoke-static {}, Lcom/infraware/filemanager/MTPSyncManager;->releaseDataBaseInstance()I

    .line 149
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->updateFileList()I

    move-result v2

    goto :goto_0
.end method

.method public onClrKey(Landroid/app/Activity;)I
    .locals 5
    .parameter "a_oActivity"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 428
    iget-object v1, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    invoke-virtual {v1, v3}, Lcom/infraware/filemanager/FmFileListData;->getFileItem(I)Lcom/infraware/filemanager/FmFileItem;

    move-result-object v0

    .line 429
    .local v0, oFileItem:Lcom/infraware/filemanager/FmFileItem;
    if-nez v0, :cond_0

    move v1, v4

    .line 435
    :goto_0
    return v1

    .line 432
    :cond_0
    iget-object v1, v0, Lcom/infraware/filemanager/FmFileItem;->m_strName:Ljava/lang/String;

    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    .line 433
    goto :goto_0

    .line 435
    :cond_1
    invoke-virtual {p0, p1, v3}, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->onSelect(Landroid/app/Activity;I)I

    move-result v1

    goto :goto_0
.end method

.method public varargs onCommand(Lcom/infraware/uxcontrol/uiunit/UiUnitView;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;[Ljava/lang/Object;)V
    .locals 4
    .parameter "a_oView"
    .parameter "a_eCommand"
    .parameter "a_aoArgs"

    .prologue
    const/4 v3, 0x1

    .line 613
    invoke-static {}, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->$SWITCH_TABLE$com$infraware$uxcontrol$uiunit$UiEnum$EUnitCommand()[I

    move-result-object v1

    invoke-virtual {p2}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v2

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 635
    :goto_0
    return-void

    .line 615
    :sswitch_0
    invoke-static {}, Lcom/infraware/filemanager/FmFileProgress;->showTransgerProgress()V

    .line 616
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->paste()V

    goto :goto_0

    .line 619
    :sswitch_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v3, v1, v2}, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->onEvent(IILjava/lang/String;)V

    .line 620
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->updateFileList()I

    goto :goto_0

    .line 623
    :sswitch_2
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getAsyncOperationCommand()Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    move-result-object v1

    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_File_ContextDelete:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    if-eq v1, v2, :cond_0

    .line 624
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getAsyncOperationCommand()Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    move-result-object v1

    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_File_ContextCopy:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    if-eq v1, v2, :cond_0

    .line 625
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getAsyncOperationCommand()Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    move-result-object v1

    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_File_ContextMove:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    if-ne v1, v2, :cond_1

    .line 626
    :cond_0
    invoke-static {v3}, Lcom/infraware/filemanager/FmFileUtil;->setCancel(Z)V

    .line 632
    :goto_1
    invoke-static {}, Lcom/infraware/filemanager/MTPSyncManager;->releaseDataBaseInstance()I

    goto :goto_0

    .line 629
    :cond_1
    invoke-static {}, Lcom/infraware/filemanager/FmFileUnzip;->instance()Lcom/infraware/filemanager/FmFileUnzip;

    move-result-object v0

    .line 630
    .local v0, oFmFileUnzip:Lcom/infraware/filemanager/FmFileUnzip;
    invoke-virtual {v0}, Lcom/infraware/filemanager/FmFileUnzip;->Cancel()V

    goto :goto_1

    .line 613
    :sswitch_data_0
    .sparse-switch
        0xba -> :sswitch_2
        0xc5 -> :sswitch_0
        0xc6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onEvent(IILjava/lang/String;)V
    .locals 1
    .parameter "a_eFileOperation"
    .parameter "a_nIndex"
    .parameter "a_strName"

    .prologue
    .line 453
    iget-object v0, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oIEventListener:Lcom/infraware/filemanager/operator/FmFileOperator$IEventListener;

    if-nez v0, :cond_0

    .line 460
    :goto_0
    return-void

    .line 456
    :cond_0
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->clearAsyncOperation()V

    .line 457
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/infraware/filemanager/FmFileUtil;->setCancel(Z)V

    .line 459
    iget-object v0, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oIEventListener:Lcom/infraware/filemanager/operator/FmFileOperator$IEventListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/infraware/filemanager/operator/FmFileOperator$IEventListener;->onEvent(IILjava/lang/String;)V

    goto :goto_0
.end method

.method public onResult(II)V
    .locals 11
    .parameter "a_nOperation"
    .parameter "a_nResult"

    .prologue
    const-wide/16 v7, 0x1f4

    const/4 v10, 0x1

    const/4 v9, 0x0

    const v6, 0x7f0a024b

    .line 525
    packed-switch p1, :pswitch_data_0

    .line 610
    :goto_0
    return-void

    .line 527
    :pswitch_0
    const/4 v5, -0x3

    if-ne p2, v5, :cond_0

    .line 528
    invoke-static {}, Lcom/infraware/filemanager/FmFileProgress;->stopProgress()V

    .line 530
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oContext:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 531
    .local v4, strTitle:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oContext:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a036e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 533
    .local v3, strMessage:Ljava/lang/CharSequence;
    new-instance v2, Lcom/infraware/uxcontrol/uicontrol/UiLocalCopyOverridingDialog;

    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oContext:Landroid/app/Activity;

    invoke-direct {v2, v5, v4, v3}, Lcom/infraware/uxcontrol/uicontrol/UiLocalCopyOverridingDialog;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 535
    .local v2, oOverridingDialog:Lcom/infraware/uxcontrol/uicontrol/UiLocalCopyOverridingDialog;
    invoke-virtual {v2}, Lcom/infraware/uxcontrol/uicontrol/UiLocalCopyOverridingDialog;->createView()V

    .line 539
    sget-object v5, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Copy_Overwrite:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    .line 538
    invoke-virtual {v2, v5, v9}, Lcom/infraware/uxcontrol/uicontrol/UiLocalCopyOverridingDialog;->setPositiveDismissCommand(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;I)V

    .line 542
    sget-object v5, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Copy_Cancel:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    .line 541
    invoke-virtual {v2, v5, v9}, Lcom/infraware/uxcontrol/uicontrol/UiLocalCopyOverridingDialog;->setNagativeDismissCommand(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;I)V

    .line 543
    invoke-virtual {v2, p0}, Lcom/infraware/uxcontrol/uicontrol/UiLocalCopyOverridingDialog;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 545
    invoke-virtual {v2, v10}, Lcom/infraware/uxcontrol/uicontrol/UiLocalCopyOverridingDialog;->show(Z)V

    goto :goto_0

    .line 547
    .end local v2           #oOverridingDialog:Lcom/infraware/uxcontrol/uicontrol/UiLocalCopyOverridingDialog;
    .end local v3           #strMessage:Ljava/lang/CharSequence;
    .end local v4           #strTitle:Ljava/lang/CharSequence;
    :cond_0
    if-nez p2, :cond_3

    .line 548
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->hasListIteratorNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 550
    invoke-static {}, Lcom/infraware/filemanager/FmFileUtil;->getDeletePathList()Ljava/util/ArrayList;

    move-result-object v0

    .line 552
    .local v0, deleteFileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 553
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oFmLocalFileOperatorThread:Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;

    iget-object v6, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oContext:Landroid/app/Activity;

    invoke-virtual {v5, v6, v0}, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->delete(Landroid/content/Context;Ljava/util/ArrayList;)Z

    goto :goto_0

    .line 556
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 557
    .local v1, msg:Landroid/os/Message;
    iput v9, v1, Landroid/os/Message;->what:I

    .line 558
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 564
    .end local v0           #deleteFileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    .end local v1           #msg:Landroid/os/Message;
    :cond_2
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->advanceIterator()V

    .line 565
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->paste()V

    goto :goto_0

    .line 569
    :cond_3
    const/16 v5, -0x16

    if-ne p2, v5, :cond_5

    .line 570
    iget-object v7, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oContext:Landroid/app/Activity;

    .line 571
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oContext:Landroid/app/Activity;

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 572
    iget-object v6, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oContext:Landroid/app/Activity;

    const v8, 0x7f0a0288

    invoke-virtual {v6, v8}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 570
    invoke-static {v7, v5, v6}, Lcom/infraware/common/CoNotification;->Error(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 599
    :cond_4
    :goto_1
    invoke-static {}, Lcom/infraware/filemanager/MTPSyncManager;->releaseDataBaseInstance()I

    .line 600
    const/4 v5, 0x0

    invoke-virtual {p0, v10, v9, v5}, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->onEvent(IILjava/lang/String;)V

    .line 601
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->updateFileList()I

    goto/16 :goto_0

    .line 574
    :cond_5
    const/4 v5, -0x2

    if-ne p2, v5, :cond_6

    .line 575
    iget-object v7, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oContext:Landroid/app/Activity;

    .line 576
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oContext:Landroid/app/Activity;

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 577
    iget-object v6, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oContext:Landroid/app/Activity;

    const v8, 0x7f0a0289

    invoke-virtual {v6, v8}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 575
    invoke-static {v7, v5, v6}, Lcom/infraware/common/CoNotification;->Error(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 579
    :cond_6
    const/16 v5, -0x15

    if-ne p2, v5, :cond_7

    .line 580
    iget-object v7, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oContext:Landroid/app/Activity;

    .line 581
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oContext:Landroid/app/Activity;

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 582
    iget-object v6, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oContext:Landroid/app/Activity;

    const v8, 0x7f0a028a

    invoke-virtual {v6, v8}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 580
    invoke-static {v7, v5, v6}, Lcom/infraware/common/CoNotification;->Error(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 584
    :cond_7
    const/16 v5, -0xd

    if-ne p2, v5, :cond_8

    .line 585
    iget-object v7, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oContext:Landroid/app/Activity;

    .line 586
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oContext:Landroid/app/Activity;

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 587
    iget-object v6, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oContext:Landroid/app/Activity;

    const v8, 0x7f0a028f

    invoke-virtual {v6, v8}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 585
    invoke-static {v7, v5, v6}, Lcom/infraware/common/CoNotification;->Error(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 589
    :cond_8
    const/4 v5, -0x1

    if-ne p2, v5, :cond_9

    .line 590
    iget-object v7, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oContext:Landroid/app/Activity;

    .line 591
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oContext:Landroid/app/Activity;

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 592
    iget-object v6, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oContext:Landroid/app/Activity;

    const v8, 0x7f0a0369

    invoke-virtual {v6, v8}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 590
    invoke-static {v7, v5, v6}, Lcom/infraware/common/CoNotification;->Error(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 594
    :cond_9
    const/16 v5, -0x12

    if-ne p2, v5, :cond_4

    .line 595
    iget-object v7, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oContext:Landroid/app/Activity;

    .line 596
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oContext:Landroid/app/Activity;

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 597
    iget-object v6, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oContext:Landroid/app/Activity;

    const v8, 0x7f0a0286

    invoke-virtual {v6, v8}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 595
    invoke-static {v7, v5, v6}, Lcom/infraware/common/CoNotification;->Error(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 605
    :pswitch_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 606
    .restart local v1       #msg:Landroid/os/Message;
    iput v9, v1, Landroid/os/Message;->what:I

    .line 607
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 525
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSelect(Landroid/app/Activity;I)I
    .locals 9
    .parameter "a_oActivity"
    .parameter "a_nIndex"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 192
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    invoke-virtual {v5, p2}, Lcom/infraware/filemanager/FmFileListData;->getFileItem(I)Lcom/infraware/filemanager/FmFileItem;

    move-result-object v0

    .line 193
    .local v0, oFileItem:Lcom/infraware/filemanager/FmFileItem;
    if-nez v0, :cond_0

    move v5, v7

    .line 243
    :goto_0
    return v5

    .line 196
    :cond_0
    iget-boolean v5, v0, Lcom/infraware/filemanager/FmFileItem;->m_bIsFolder:Z

    if-eqz v5, :cond_3

    .line 198
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    invoke-virtual {v5, p2}, Lcom/infraware/filemanager/FmFileListData;->getSubFolderPath(I)Ljava/lang/String;

    move-result-object v4

    .line 199
    .local v4, strNewPath:Ljava/lang/String;
    if-nez v4, :cond_1

    move v5, v7

    .line 200
    goto :goto_0

    .line 202
    :cond_1
    invoke-static {}, Lcom/infraware/filemanager/FmFileProgress;->startTitleProgress()V

    .line 203
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iget-object v5, v5, Lcom/infraware/filemanager/FmFileListData;->m_oFileAdapter:Lcom/infraware/filemanager/FmFileAdapter;

    invoke-virtual {v5}, Lcom/infraware/filemanager/FmFileAdapter;->clearList()V

    .line 204
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iput-object v4, v5, Lcom/infraware/filemanager/FmFileListData;->m_strCurPath:Ljava/lang/String;

    .line 206
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oFileObserver:Lcom/infraware/filemanager/FmLocalFileObserver;

    if-eqz v5, :cond_2

    .line 208
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oFileObserver:Lcom/infraware/filemanager/FmLocalFileObserver;

    iget-object v6, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iget-object v6, v6, Lcom/infraware/filemanager/FmFileListData;->m_strCurPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/infraware/filemanager/FmLocalFileObserver;->createFileObserver(Ljava/lang/String;)Z

    .line 209
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oFileObserver:Lcom/infraware/filemanager/FmLocalFileObserver;

    invoke-virtual {v5}, Lcom/infraware/filemanager/FmLocalFileObserver;->startObserving()V

    .line 212
    :cond_2
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->makeLocalFileList()I

    move-result v5

    goto :goto_0

    .line 215
    .end local v4           #strNewPath:Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Lcom/infraware/filemanager/FmFileItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, strAbsolutePath:Ljava/lang/String;
    iget v5, v0, Lcom/infraware/filemanager/FmFileItem;->m_nExtType:I

    const/16 v6, 0x17

    if-ne v5, v6, :cond_7

    .line 218
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oContext:Landroid/app/Activity;

    if-eqz v5, :cond_4

    .line 219
    iget-object v5, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oContext:Landroid/app/Activity;

    instance-of v5, v5, Lcom/infraware/filemanager/FmFileSyncActivity;

    if-eqz v5, :cond_4

    .line 220
    const/16 v5, 0x8

    goto :goto_0

    .line 223
    :cond_4
    invoke-static {v3}, Lcom/infraware/filemanager/FmFileUnzip;->getType(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x2

    if-ne v5, v6, :cond_5

    .line 225
    const/4 v5, 0x7

    goto :goto_0

    .line 229
    :cond_5
    const/4 v5, 0x0

    const v6, 0x7f0a035a

    invoke-static {v5, v6}, Lcom/infraware/filemanager/FmFileProgress;->startProgress(II)V

    .line 230
    invoke-static {p0}, Lcom/infraware/filemanager/FmFileProgress;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 231
    invoke-static {}, Lcom/infraware/filemanager/FmFileUnzip;->instance()Lcom/infraware/filemanager/FmFileUnzip;

    move-result-object v2

    .line 232
    .local v2, oFmFileUnzip:Lcom/infraware/filemanager/FmFileUnzip;
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, p0}, Lcom/infraware/filemanager/FmFileUnzip;->unzipFile(Ljava/lang/String;Ljava/lang/String;Lcom/infraware/filemanager/FmFileUnzip$IZipEventListener;)I

    .line 233
    invoke-static {}, Lcom/infraware/filemanager/FmFileDomain;->instance()Lcom/infraware/filemanager/FmFileDomain;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/infraware/filemanager/FmFileDomain;->getOperator(I)Lcom/infraware/filemanager/operator/FmFileOperator;

    move-result-object v1

    .line 234
    .local v1, oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;
    if-nez v1, :cond_6

    .line 235
    invoke-static {}, Lcom/infraware/filemanager/FmFileDomain;->instance()Lcom/infraware/filemanager/FmFileDomain;

    move-result-object v5

    invoke-virtual {v5, p1, v8}, Lcom/infraware/filemanager/FmFileDomain;->createOperator(Landroid/app/Activity;I)Lcom/infraware/filemanager/operator/FmFileOperator;

    move-result-object v1

    .line 236
    :cond_6
    invoke-static {v3}, Lcom/infraware/filemanager/FmFileUtil;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/infraware/filemanager/operator/FmFileOperator;->makeFileList(Ljava/lang/String;)I

    .line 237
    invoke-static {}, Lcom/infraware/filemanager/FmFileDomain;->instance()Lcom/infraware/filemanager/FmFileDomain;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/infraware/filemanager/FmFileDomain;->releaseOperator(Lcom/infraware/filemanager/operator/FmFileOperator;)V

    .line 240
    const/4 v5, 0x3

    goto/16 :goto_0

    .line 243
    .end local v1           #oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;
    .end local v2           #oFmFileUnzip:Lcom/infraware/filemanager/FmFileUnzip;
    :cond_7
    iget v5, v0, Lcom/infraware/filemanager/FmFileItem;->m_nExtType:I

    invoke-virtual {p0, p1, v3, v5, v7}, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->excuteFile(Landroid/app/Activity;Ljava/lang/String;IZ)I

    move-result v5

    goto/16 :goto_0
.end method

.method public onUpdateList()V
    .locals 3

    .prologue
    .line 648
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->onEvent(IILjava/lang/String;)V

    .line 649
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->updateFileList()I

    .line 650
    return-void
.end method

.method public onZipEvent(Z)V
    .locals 4
    .parameter "a_bResult"

    .prologue
    .line 439
    iget-object v0, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oIEventListener:Lcom/infraware/filemanager/operator/FmFileOperator$IEventListener;

    if-nez v0, :cond_0

    .line 450
    :goto_0
    return-void

    .line 442
    :cond_0
    if-nez p1, :cond_1

    .line 444
    invoke-static {}, Lcom/infraware/filemanager/FmFileProgress;->stopProgress()V

    goto :goto_0

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oIEventListener:Lcom/infraware/filemanager/operator/FmFileOperator$IEventListener;

    const/high16 v1, 0x1

    .line 448
    const/4 v2, 0x2

    .line 449
    const/4 v3, 0x0

    .line 447
    invoke-interface {v0, v1, v2, v3}, Lcom/infraware/filemanager/operator/FmFileOperator$IEventListener;->onEvent(IILjava/lang/String;)V

    goto :goto_0
.end method

.method public paste()V
    .locals 10

    .prologue
    const/16 v9, 0x2f

    const/4 v8, 0x1

    .line 333
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getCurrentIteratorNode()Ljava/lang/String;

    move-result-object v5

    .line 334
    .local v5, strSrcPath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 336
    .local v1, oSrcPathFile:Ljava/io/File;
    invoke-static {}, Lcom/infraware/filemanager/FmFileUtil;->getDestPath()Ljava/lang/String;

    move-result-object v2

    .line 340
    .local v2, strDestPath:Ljava/lang/String;
    const/4 v0, 0x0

    .line 342
    .local v0, oDestPathFile:Ljava/io/File;
    if-eqz v2, :cond_2

    .line 343
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    .line 345
    .local v4, strSrcParentPath:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v8

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v9, :cond_0

    .line 346
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 348
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v8

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v9, :cond_1

    .line 349
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 351
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 352
    .local v3, strNewDestPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    .end local v0           #oDestPathFile:Ljava/io/File;
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 364
    .restart local v0       #oDestPathFile:Ljava/io/File;
    :goto_0
    iget-object v6, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oFmLocalFileOperatorThread:Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;

    iget-boolean v7, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_bKeepSrcFile:Z

    invoke-virtual {v6, v1, v0, v7}, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->paste(Ljava/io/File;Ljava/io/File;Z)Z

    .line 365
    return-void

    .line 355
    .end local v3           #strNewDestPath:Ljava/lang/String;
    .end local v4           #strSrcParentPath:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/infraware/filemanager/FmFileUtil;->getSrcParentPath()Ljava/lang/String;

    move-result-object v4

    .line 357
    .restart local v4       #strSrcParentPath:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v8

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v9, :cond_3

    .line 358
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 360
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_strDestPath:Ljava/lang/String;

    invoke-virtual {v6, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 361
    .restart local v3       #strNewDestPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    .end local v0           #oDestPathFile:Ljava/io/File;
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0       #oDestPathFile:Ljava/io/File;
    goto :goto_0
.end method

.method public preparePaste(I)V
    .locals 5
    .parameter "a_nFileMaxCount"

    .prologue
    const/4 v4, 0x0

    .line 313
    const v2, 0x7f0a023b

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v4, v2, p1, v3}, Lcom/infraware/filemanager/FmFileProgress;->startTransferProgress(III[Ljava/lang/Object;)V

    .line 314
    invoke-static {p0}, Lcom/infraware/filemanager/FmFileProgress;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 316
    invoke-static {}, Lcom/infraware/filemanager/FmFileUtil;->getSrcPathList()Ljava/util/ArrayList;

    move-result-object v1

    .line 317
    .local v1, srcPathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 318
    const/4 v2, 0x2

    const/4 v3, -0x2

    invoke-virtual {p0, v2, v3}, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->onResult(II)V

    .line 330
    :goto_0
    return-void

    .line 322
    :cond_0
    iget-object v2, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oContext:Landroid/app/Activity;

    invoke-static {v2}, Lcom/infraware/filemanager/MTPSyncManager;->createDataBaseInstance(Landroid/content/Context;)I

    .line 323
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getAsyncOperationCommand()Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    move-result-object v0

    .line 324
    .local v0, m_nAsyncOperationCommand:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->clearAsyncOperation()V

    .line 325
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_strDestPath:Ljava/lang/String;

    invoke-static {p0, v2, v0, v3, v1}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->setAsyncOperation(Lcom/infraware/filemanager/operator/FmFileOperator;Lcom/infraware/filemanager/operator/FmFileOperator;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;Ljava/lang/String;Ljava/util/List;)Z

    .line 326
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->CreateListIterator()Z

    .line 327
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->advanceIterator()V

    .line 328
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->paste()V

    goto :goto_0
.end method

.method public rename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .parameter "a_oContext"
    .parameter "a_strOldName"
    .parameter "a_strNewName"

    .prologue
    const/4 v8, 0x1

    .line 155
    iget-object v6, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oFileListData:Lcom/infraware/filemanager/FmFileListData;

    iget-object v3, v6, Lcom/infraware/filemanager/FmFileListData;->m_strCurPath:Ljava/lang/String;

    .line 158
    .local v3, strCurPath:Ljava/lang/String;
    const-string v6, "/"

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-gtz v6, :cond_0

    const-string v6, "/"

    invoke-virtual {p3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_1

    :cond_0
    move v6, v8

    .line 187
    :goto_0
    return v6

    .line 161
    :cond_1
    const-string v6, " "

    invoke-virtual {p3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 162
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 165
    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x3c

    if-le v6, v7, :cond_3

    .line 166
    const/16 v6, -0x12

    goto :goto_0

    .line 169
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 170
    .local v5, strOldFilePath:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 172
    .local v4, strNewFilePath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    .local v1, oNewFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 174
    const/16 v6, 0x9

    goto :goto_0

    .line 176
    :cond_4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    .local v2, oOldFile:Ljava/io/File;
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_5

    move v6, v8

    .line 178
    goto :goto_0

    .line 180
    :cond_5
    new-instance v0, Lcom/infraware/filemanager/bookclip/BookClipHelper;

    invoke-direct {v0}, Lcom/infraware/filemanager/bookclip/BookClipHelper;-><init>()V

    .line 181
    .local v0, book:Lcom/infraware/filemanager/bookclip/BookClipHelper;
    invoke-virtual {v0, v5, v4}, Lcom/infraware/filemanager/bookclip/BookClipHelper;->MoveFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 183
    invoke-static {p1}, Lcom/infraware/filemanager/MTPSyncManager;->createDataBaseInstance(Landroid/content/Context;)I

    .line 184
    invoke-static {v5, v4}, Lcom/infraware/filemanager/MTPSyncManager;->updateItemMoved(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-static {}, Lcom/infraware/filemanager/MTPSyncManager;->releaseDataBaseInstance()I

    .line 187
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->updateFileList()I

    move-result v6

    goto :goto_0
.end method

.method public startObserving()V
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oFileObserver:Lcom/infraware/filemanager/FmLocalFileObserver;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oFileObserver:Lcom/infraware/filemanager/FmLocalFileObserver;

    invoke-virtual {v0}, Lcom/infraware/filemanager/FmLocalFileObserver;->startObserving()V

    .line 656
    :cond_0
    return-void
.end method

.method public stopObserving()V
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oFileObserver:Lcom/infraware/filemanager/FmLocalFileObserver;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->m_oFileObserver:Lcom/infraware/filemanager/FmLocalFileObserver;

    invoke-virtual {v0}, Lcom/infraware/filemanager/FmLocalFileObserver;->stopObserving()V

    .line 662
    :cond_0
    return-void
.end method

.method public updateFileList()I
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->clearFileList()V

    .line 82
    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->makeLocalFileList()I

    .line 83
    const/4 v0, 0x0

    return v0
.end method

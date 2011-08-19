.class public Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;
.super Ljava/lang/Object;
.source "UiLocalFileList.java"

# interfaces
.implements Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;
.implements Lcom/infraware/filemanager/operator/IFmFileOperation;
.implements Lcom/infraware/filemanager/operator/FmFileOperator$IEventListener;
.implements Lcom/infraware/filemanager/FmFileUnzip$IZipEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileItemViewWrapper;,
        Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$infraware$uxcontrol$uiunit$UiEnum$EUnitCommand:[I


# instance fields
.field m_bShowFileExt:Z

.field m_bSyncMode:Z

.field m_eMultiOperationStatus:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

.field m_nAdapterMode:I

.field m_nAdapterPrevMode:I

.field private m_nCheckedCheckBoxCount:I

.field m_nContextIndex:I

.field m_nExternalStorageMode:I

.field protected m_nHolderId:I

.field m_nTempFileIndex:I

.field m_oActivity:Landroid/app/Activity;

.field m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

.field m_oFileQuickMenu:Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu;

.field m_oLocalFileContextMenu:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileContextMenu;

.field m_oLocalFileList:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

.field protected m_oMenu:Landroid/view/Menu;

.field m_oPropertyDialog:Lcom/infraware/uxcontrol/uicontrol/UiPropertyDialog;

.field m_oToast:Landroid/widget/Toast;

.field m_strDestPath:Ljava/lang/String;

.field m_strFileName:Ljava/lang/String;

.field m_strNewFileName:Ljava/lang/String;

.field m_strTempFileName:Ljava/lang/String;

.field m_strTitle:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$com$infraware$uxcontrol$uiunit$UiEnum$EUnitCommand()[I
    .locals 3

    .prologue
    .line 55
    sget-object v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->$SWITCH_TABLE$com$infraware$uxcontrol$uiunit$UiEnum$EUnitCommand:[I

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
    sput-object v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->$SWITCH_TABLE$com$infraware$uxcontrol$uiunit$UiEnum$EUnitCommand:[I

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

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 2
    .parameter "a_oActivity"
    .parameter "a_nAdapterMode"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    .line 58
    iput-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oLocalFileList:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    .line 59
    iput v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_nHolderId:I

    .line 60
    iput-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    .line 62
    iput-boolean v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_bShowFileExt:Z

    .line 63
    iput-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oMenu:Landroid/view/Menu;

    .line 64
    iput v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_nTempFileIndex:I

    .line 65
    iput-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oToast:Landroid/widget/Toast;

    .line 67
    iput-boolean v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_bSyncMode:Z

    .line 71
    iput-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileQuickMenu:Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu;

    .line 72
    iput v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_nCheckedCheckBoxCount:I

    .line 79
    iput v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_nExternalStorageMode:I

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_nAdapterPrevMode:I

    .line 84
    iput-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oLocalFileContextMenu:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileContextMenu;

    .line 85
    iput-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oPropertyDialog:Lcom/infraware/uxcontrol/uicontrol/UiPropertyDialog;

    .line 89
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    .line 90
    invoke-static {}, Lcom/infraware/filemanager/FmFileDomain;->instance()Lcom/infraware/filemanager/FmFileDomain;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/infraware/filemanager/FmFileDomain;->getOperator(I)Lcom/infraware/filemanager/operator/FmFileOperator;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    .line 91
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    if-nez v0, :cond_0

    .line 92
    invoke-static {}, Lcom/infraware/filemanager/FmFileDomain;->instance()Lcom/infraware/filemanager/FmFileDomain;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p2}, Lcom/infraware/filemanager/FmFileDomain;->createOperator(Landroid/app/Activity;I)Lcom/infraware/filemanager/operator/FmFileOperator;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p0}, Lcom/infraware/filemanager/operator/FmFileOperator;->setEventListener(Landroid/app/Activity;Lcom/infraware/filemanager/operator/FmFileOperator$IEventListener;)V

    .line 95
    invoke-static {p1}, Lcom/infraware/filemanager/FmSettingActivity;->getFmSetting_FileExtension(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_bShowFileExt:Z

    .line 97
    iput p2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_nAdapterMode:I

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;II)V
    .locals 0
    .parameter "a_oActivity"
    .parameter "a_nAdapterMode"
    .parameter "a_nHolderId"

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;-><init>(Landroid/app/Activity;I)V

    .line 116
    iput p3, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_nHolderId:I

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;III)V
    .locals 2
    .parameter "a_oActivity"
    .parameter "a_nAdapterMode"
    .parameter "a_nExternalStorageMode"
    .parameter "a_nHolderId"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    .line 58
    iput-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oLocalFileList:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    .line 59
    iput v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_nHolderId:I

    .line 60
    iput-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    .line 62
    iput-boolean v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_bShowFileExt:Z

    .line 63
    iput-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oMenu:Landroid/view/Menu;

    .line 64
    iput v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_nTempFileIndex:I

    .line 65
    iput-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oToast:Landroid/widget/Toast;

    .line 67
    iput-boolean v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_bSyncMode:Z

    .line 71
    iput-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileQuickMenu:Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu;

    .line 72
    iput v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_nCheckedCheckBoxCount:I

    .line 79
    iput v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_nExternalStorageMode:I

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_nAdapterPrevMode:I

    .line 84
    iput-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oLocalFileContextMenu:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileContextMenu;

    .line 85
    iput-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oPropertyDialog:Lcom/infraware/uxcontrol/uicontrol/UiPropertyDialog;

    .line 102
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    .line 103
    invoke-static {}, Lcom/infraware/filemanager/FmFileDomain;->instance()Lcom/infraware/filemanager/FmFileDomain;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/infraware/filemanager/FmFileDomain;->getOperator(I)Lcom/infraware/filemanager/operator/FmFileOperator;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    .line 104
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    if-nez v0, :cond_0

    .line 105
    invoke-static {}, Lcom/infraware/filemanager/FmFileDomain;->instance()Lcom/infraware/filemanager/FmFileDomain;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p2}, Lcom/infraware/filemanager/FmFileDomain;->createOperator(Landroid/app/Activity;I)Lcom/infraware/filemanager/operator/FmFileOperator;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p0}, Lcom/infraware/filemanager/operator/FmFileOperator;->setEventListener(Landroid/app/Activity;Lcom/infraware/filemanager/operator/FmFileOperator$IEventListener;)V

    .line 108
    invoke-static {p1}, Lcom/infraware/filemanager/FmSettingActivity;->getFmSetting_FileExtension(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_bShowFileExt:Z

    .line 110
    iput p2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_nAdapterMode:I

    .line 111
    iput p3, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_nExternalStorageMode:I

    .line 112
    return-void
.end method

.method private IsEnableExtentionType(I)Z
    .locals 1
    .parameter "a_nExtType"

    .prologue
    .line 1092
    packed-switch p1, :pswitch_data_0

    .line 1111
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1109
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1092
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$0(Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;)Z
    .locals 1
    .parameter

    .prologue
    .line 1075
    invoke-direct {p0}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->isEnableCheckBoxByAdapterMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;)I
    .locals 1
    .parameter

    .prologue
    .line 72
    iget v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_nCheckedCheckBoxCount:I

    return v0
.end method

.method static synthetic access$2(Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput p1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_nCheckedCheckBoxCount:I

    return-void
.end method

.method static synthetic access$3(Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1609
    invoke-direct {p0, p1}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->showUploadDownloadButton(Z)V

    return-void
.end method

.method private changeMenu()V
    .locals 3

    .prologue
    .line 988
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oMenu:Landroid/view/Menu;

    if-nez v2, :cond_0

    .line 998
    :goto_0
    return-void

    .line 990
    :cond_0
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 991
    .local v0, inflater:Landroid/view/MenuInflater;
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->getMenuID()I

    move-result v1

    .line 992
    .local v1, nMenuID:I
    if-nez v1, :cond_1

    .line 994
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oMenu:Landroid/view/Menu;

    invoke-interface {v2}, Landroid/view/Menu;->clear()V

    goto :goto_0

    .line 997
    :cond_1
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oMenu:Landroid/view/Menu;

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method private clearCheckedCheckBoxCount()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1116
    invoke-direct {p0}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->isEnableCheckBoxByAdapterMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1125
    :goto_0
    return-void

    .line 1119
    :cond_0
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileQuickMenu:Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu;

    if-eqz v0, :cond_1

    .line 1120
    invoke-virtual {p0, v1}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->showQuickMenu(Z)V

    .line 1122
    :cond_1
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v0}, Lcom/infraware/filemanager/operator/FmFileOperator;->getFileListData()Lcom/infraware/filemanager/FmFileListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/filemanager/FmFileListData;->ClearSelectedFileItems()V

    .line 1124
    iput v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_nCheckedCheckBoxCount:I

    goto :goto_0
.end method

.method private createPropertiesDialog(I)V
    .locals 9
    .parameter "a_nIndex"

    .prologue
    const/4 v8, 0x1

    .line 1502
    new-instance v4, Lcom/infraware/uxcontrol/uicontrol/UiPropertyDialog;

    iget-object v5, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Lcom/infraware/uxcontrol/uicontrol/UiPropertyDialog;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oPropertyDialog:Lcom/infraware/uxcontrol/uicontrol/UiPropertyDialog;

    .line 1503
    iget-object v4, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oPropertyDialog:Lcom/infraware/uxcontrol/uicontrol/UiPropertyDialog;

    invoke-virtual {v4}, Lcom/infraware/uxcontrol/uicontrol/UiPropertyDialog;->createView()V

    .line 1505
    iget-object v4, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v4}, Lcom/infraware/filemanager/operator/FmFileOperator;->getFileListData()Lcom/infraware/filemanager/FmFileListData;

    move-result-object v1

    .line 1506
    .local v1, oFmFileList:Lcom/infraware/filemanager/FmFileListData;
    invoke-virtual {v1, p1}, Lcom/infraware/filemanager/FmFileListData;->getFileItem(I)Lcom/infraware/filemanager/FmFileItem;

    move-result-object v0

    .line 1508
    .local v0, oFileItem:Lcom/infraware/filemanager/FmFileItem;
    iget-object v4, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oPropertyDialog:Lcom/infraware/uxcontrol/uicontrol/UiPropertyDialog;

    invoke-virtual {v0}, Lcom/infraware/filemanager/FmFileItem;->getFileResID()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/infraware/uxcontrol/uicontrol/UiPropertyDialog;->setFileIcon(I)V

    .line 1509
    iget-object v4, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oPropertyDialog:Lcom/infraware/uxcontrol/uicontrol/UiPropertyDialog;

    invoke-virtual {v0}, Lcom/infraware/filemanager/FmFileItem;->getFullFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/infraware/uxcontrol/uicontrol/UiPropertyDialog;->setFileName(Ljava/lang/String;)V

    .line 1510
    iget-boolean v4, v0, Lcom/infraware/filemanager/FmFileItem;->m_bIsFolder:Z

    if-eqz v4, :cond_4

    .line 1512
    iget-object v4, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oPropertyDialog:Lcom/infraware/uxcontrol/uicontrol/UiPropertyDialog;

    iget-object v5, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0293

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/infraware/uxcontrol/uicontrol/UiPropertyDialog;->setType(Ljava/lang/String;)V

    .line 1513
    iget-object v4, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oPropertyDialog:Lcom/infraware/uxcontrol/uicontrol/UiPropertyDialog;

    invoke-virtual {v4, v8}, Lcom/infraware/uxcontrol/uicontrol/UiPropertyDialog;->showSizeText(Z)V

    .line 1520
    :goto_0
    invoke-virtual {v0}, Lcom/infraware/filemanager/FmFileItem;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1521
    .local v2, strPath:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 1522
    :cond_0
    const-string v2, "/"

    .line 1523
    :cond_1
    iget-object v4, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oPropertyDialog:Lcom/infraware/uxcontrol/uicontrol/UiPropertyDialog;

    invoke-virtual {v4, v2}, Lcom/infraware/uxcontrol/uicontrol/UiPropertyDialog;->setLocation(Ljava/lang/String;)V

    .line 1525
    iget-object v4, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v4}, Lcom/infraware/filemanager/operator/FmFileOperator;->getAdapterMode()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2

    .line 1526
    iget-object v4, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v4}, Lcom/infraware/filemanager/operator/FmFileOperator;->getAdapterMode()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 1528
    :cond_2
    iget-object v4, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oPropertyDialog:Lcom/infraware/uxcontrol/uicontrol/UiPropertyDialog;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/infraware/uxcontrol/uicontrol/UiPropertyDialog;->showSizeText(Z)V

    .line 1531
    :cond_3
    const-string v3, "  ("

    .line 1532
    .local v3, strSize:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, v0, Lcom/infraware/filemanager/FmFileItem;->m_nSize:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0271

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1533
    iget-boolean v4, v0, Lcom/infraware/filemanager/FmFileItem;->m_bIsFolder:Z

    if-eqz v4, :cond_5

    .line 1534
    iget-object v4, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oPropertyDialog:Lcom/infraware/uxcontrol/uicontrol/UiPropertyDialog;

    invoke-virtual {v0}, Lcom/infraware/filemanager/FmFileItem;->getSizeString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/infraware/uxcontrol/uicontrol/UiPropertyDialog;->setSize(Ljava/lang/String;)V

    .line 1543
    :goto_1
    iget-object v4, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oPropertyDialog:Lcom/infraware/uxcontrol/uicontrol/UiPropertyDialog;

    iget-object v5, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    invoke-virtual {v0, v5}, Lcom/infraware/filemanager/FmFileItem;->getDateString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/infraware/uxcontrol/uicontrol/UiPropertyDialog;->setModified(Ljava/lang/String;)V

    .line 1544
    iget-object v4, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oPropertyDialog:Lcom/infraware/uxcontrol/uicontrol/UiPropertyDialog;

    invoke-virtual {v4, v8}, Lcom/infraware/uxcontrol/uicontrol/UiPropertyDialog;->show(Z)V

    .line 1547
    return-void

    .line 1517
    .end local v2           #strPath:Ljava/lang/String;
    .end local v3           #strSize:Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oPropertyDialog:Lcom/infraware/uxcontrol/uicontrol/UiPropertyDialog;

    iget-object v4, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    iget v6, v0, Lcom/infraware/filemanager/FmFileItem;->m_nExtType:I

    invoke-static {v6}, Lcom/infraware/filemanager/FmFileUtil;->getFileTypeStringResID(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/infraware/uxcontrol/uicontrol/UiPropertyDialog;->setType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1537
    .restart local v2       #strPath:Ljava/lang/String;
    .restart local v3       #strSize:Ljava/lang/String;
    :cond_5
    iget-wide v4, v0, Lcom/infraware/filemanager/FmFileItem;->m_nSize:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_6

    .line 1538
    iget-object v4, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oPropertyDialog:Lcom/infraware/uxcontrol/uicontrol/UiPropertyDialog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/infraware/filemanager/FmFileItem;->getSizeString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/infraware/uxcontrol/uicontrol/UiPropertyDialog;->setSize(Ljava/lang/String;)V

    goto :goto_1

    .line 1540
    :cond_6
    iget-object v4, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oPropertyDialog:Lcom/infraware/uxcontrol/uicontrol/UiPropertyDialog;

    invoke-virtual {v0}, Lcom/infraware/filemanager/FmFileItem;->getSizeString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/infraware/uxcontrol/uicontrol/UiPropertyDialog;->setSize(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getContextArrayID(I)I
    .locals 7
    .parameter "a_nIndex"

    .prologue
    .line 183
    const/4 v1, 0x0

    .line 185
    .local v1, nArrayID:I
    iget-object v5, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    if-nez v5, :cond_0

    move v2, v1

    .line 225
    .end local v1           #nArrayID:I
    .local v2, nArrayID:I
    :goto_0
    return v2

    .line 186
    .end local v2           #nArrayID:I
    .restart local v1       #nArrayID:I
    :cond_0
    iget-object v5, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v5}, Lcom/infraware/filemanager/operator/FmFileOperator;->getFileListData()Lcom/infraware/filemanager/FmFileListData;

    move-result-object v4

    .line 188
    .local v4, oFmFileList:Lcom/infraware/filemanager/FmFileListData;
    if-nez v4, :cond_1

    move v2, v1

    .end local v1           #nArrayID:I
    .restart local v2       #nArrayID:I
    goto :goto_0

    .line 189
    .end local v2           #nArrayID:I
    .restart local v1       #nArrayID:I
    :cond_1
    invoke-virtual {v4, p1}, Lcom/infraware/filemanager/FmFileListData;->getFileItem(I)Lcom/infraware/filemanager/FmFileItem;

    move-result-object v3

    .line 190
    .local v3, oFileItem:Lcom/infraware/filemanager/FmFileItem;
    if-nez v3, :cond_2

    move v2, v1

    .end local v1           #nArrayID:I
    .restart local v2       #nArrayID:I
    goto :goto_0

    .line 192
    .end local v2           #nArrayID:I
    .restart local v1       #nArrayID:I
    :cond_2
    iget-object v5, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v5}, Lcom/infraware/filemanager/operator/FmFileOperator;->getAdapterMode()I

    move-result v0

    .line 193
    .local v0, nAdapterMode:I
    const/4 v5, 0x1

    if-ne v0, v5, :cond_3

    move v2, v1

    .end local v1           #nArrayID:I
    .restart local v2       #nArrayID:I
    goto :goto_0

    .line 194
    .end local v2           #nArrayID:I
    .restart local v1       #nArrayID:I
    :cond_3
    const/4 v5, 0x2

    if-ne v0, v5, :cond_4

    move v2, v1

    .end local v1           #nArrayID:I
    .restart local v2       #nArrayID:I
    goto :goto_0

    .line 196
    .end local v2           #nArrayID:I
    .restart local v1       #nArrayID:I
    :cond_4
    if-nez v0, :cond_8

    .line 198
    iget-boolean v5, v3, Lcom/infraware/filemanager/FmFileItem;->m_bIsFolder:Z

    if-nez v5, :cond_6

    .line 200
    invoke-virtual {v3}, Lcom/infraware/filemanager/FmFileItem;->getFileExtType()I

    move-result v5

    const/16 v6, 0x17

    if-ne v5, v6, :cond_5

    .line 201
    const v1, 0x7f060035

    :goto_1
    move v2, v1

    .line 217
    .end local v1           #nArrayID:I
    .restart local v2       #nArrayID:I
    goto :goto_0

    .line 203
    .end local v2           #nArrayID:I
    .restart local v1       #nArrayID:I
    :cond_5
    const v1, 0x7f060034

    goto :goto_1

    .line 207
    :cond_6
    iget-object v5, v3, Lcom/infraware/filemanager/FmFileItem;->m_strName:Ljava/lang/String;

    const-string v6, ".."

    if-ne v5, v6, :cond_7

    .line 209
    const v1, 0x7f060037

    goto :goto_1

    .line 213
    :cond_7
    const v1, 0x7f060036

    goto :goto_1

    .line 221
    :cond_8
    iget-boolean v5, v3, Lcom/infraware/filemanager/FmFileItem;->m_bIsFolder:Z

    if-nez v5, :cond_9

    .line 222
    const v1, 0x7f060038

    :goto_2
    move v2, v1

    .line 225
    .end local v1           #nArrayID:I
    .restart local v2       #nArrayID:I
    goto :goto_0

    .line 224
    .end local v2           #nArrayID:I
    .restart local v1       #nArrayID:I
    :cond_9
    const v1, 0x7f060039

    goto :goto_2
.end method

.method private isEnableCheckBoxByAdapterMode()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1077
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v0}, Lcom/infraware/filemanager/operator/FmFileOperator;->getAdapterMode()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 1086
    :goto_0
    return v0

    .line 1080
    :cond_0
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v0}, Lcom/infraware/filemanager/operator/FmFileOperator;->getAdapterMode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    move v0, v2

    .line 1081
    goto :goto_0

    .line 1083
    :cond_1
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v0}, Lcom/infraware/filemanager/operator/FmFileOperator;->getAdapterMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    move v0, v2

    .line 1084
    goto :goto_0

    .line 1086
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private renameFile(Ljava/lang/String;I)V
    .locals 8
    .parameter "a_strNewName"
    .parameter "a_nFileIndex"

    .prologue
    const v6, 0x7f0a024d

    .line 1550
    iget-object v4, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v4}, Lcom/infraware/filemanager/operator/FmFileOperator;->getFileListData()Lcom/infraware/filemanager/FmFileListData;

    move-result-object v2

    .line 1551
    .local v2, oFmFileList:Lcom/infraware/filemanager/FmFileListData;
    invoke-virtual {v2, p2}, Lcom/infraware/filemanager/FmFileListData;->getFileItem(I)Lcom/infraware/filemanager/FmFileItem;

    move-result-object v1

    .line 1552
    .local v1, oFileItem:Lcom/infraware/filemanager/FmFileItem;
    invoke-virtual {v1}, Lcom/infraware/filemanager/FmFileItem;->getFullFileName()Ljava/lang/String;

    move-result-object v3

    .line 1560
    .local v3, strOldName:Ljava/lang/String;
    invoke-static {p1}, Lcom/infraware/filemanager/FmFileUtil;->isAvailableFilename(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1561
    iget-object v5, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    .line 1562
    iget-object v4, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1563
    iget-object v6, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    const v7, 0x7f0a0285

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    .line 1561
    invoke-static {v5, v4, p0}, Lcom/infraware/common/CoNotification;->Error(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1586
    :cond_0
    :goto_0
    return-void

    .line 1567
    .restart local p0
    :cond_1
    iget-object v4, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    iget-object v5, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    invoke-virtual {v4, v5, v3, p1}, Lcom/infraware/filemanager/operator/FmFileOperator;->rename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1568
    .local v0, nReturn:I
    if-nez v0, :cond_2

    .line 1569
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->updateListControl()V

    goto :goto_0

    .line 1570
    :cond_2
    const/16 v4, -0x12

    if-ne v0, v4, :cond_3

    .line 1571
    iget-object v5, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    .line 1572
    iget-object v4, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1573
    iget-object v6, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    const v7, 0x7f0a0286

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    .line 1571
    invoke-static {v5, v4, p0}, Lcom/infraware/common/CoNotification;->Error(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1575
    .restart local p0
    :cond_3
    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    .line 1578
    const/16 v4, 0x9

    if-ne v0, v4, :cond_4

    .line 1579
    iget-object v5, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    .line 1580
    iget-object v4, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1581
    iget-object v6, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    const v7, 0x7f0a0282

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    .line 1579
    invoke-static {v5, v4, p0}, Lcom/infraware/common/CoNotification;->Error(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1583
    .restart local p0
    :cond_4
    iget-object v5, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    .line 1584
    iget-object v4, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1585
    iget-object v6, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    const v7, 0x7f0a02dd

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    .line 1583
    invoke-static {v5, v4, p0}, Lcom/infraware/common/CoNotification;->Error(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showUploadDownloadButton(Z)V
    .locals 2
    .parameter "a_bShow"

    .prologue
    .line 1610
    iget v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_nAdapterMode:I

    if-nez v0, :cond_1

    .line 1611
    iget-object p0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    .end local p0
    check-cast p0, Lcom/infraware/filemanager/FmFileSyncActivity;

    invoke-virtual {p0, p1}, Lcom/infraware/filemanager/FmFileSyncActivity;->setEnableUploadBtn(Z)V

    .line 1614
    :cond_0
    :goto_0
    return-void

    .line 1612
    .restart local p0
    :cond_1
    iget v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_nAdapterMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_nAdapterMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1613
    :cond_2
    iget-object p0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    .end local p0
    check-cast p0, Lcom/infraware/filemanager/FmFileSyncActivity;

    invoke-virtual {p0, p1}, Lcom/infraware/filemanager/FmFileSyncActivity;->setEnableDownloadBtn(Z)V

    goto :goto_0
.end method


# virtual methods
.method public NotifyExternalStorageUnMount(I)V
    .locals 2
    .parameter "a_nExternalStorageMode"

    .prologue
    .line 817
    iget v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_nExternalStorageMode:I

    if-ne v1, p1, :cond_0

    .line 819
    const/4 v1, 0x0

    iput v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_nExternalStorageMode:I

    .line 821
    invoke-static {}, Lcom/infraware/filemanager/FmFileProgress;->startProgress()V

    .line 823
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v1}, Lcom/infraware/filemanager/operator/FmFileOperator;->clearFileList()V

    .line 824
    invoke-static {}, Lcom/infraware/filemanager/FmFileDefine;->getRootFileManagerPath()Ljava/lang/String;

    move-result-object v0

    .line 825
    .local v0, strRootPath:Ljava/lang/String;
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v1, v0}, Lcom/infraware/filemanager/operator/FmFileOperator;->makeFileList(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 826
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->updateListControl()V

    .line 828
    .end local v0           #strRootPath:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public changeFileAdapeteMode(IZ)V
    .locals 7
    .parameter "a_nAdapterMode"
    .parameter "a_bUpdate"

    .prologue
    .line 946
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v1}, Lcom/infraware/filemanager/operator/FmFileOperator;->getAdapterMode()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 977
    :goto_0
    return-void

    .line 949
    :cond_0
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v1}, Lcom/infraware/filemanager/operator/FmFileOperator;->getAdapterMode()I

    move-result v1

    iput v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_nAdapterPrevMode:I

    .line 951
    invoke-static {}, Lcom/infraware/filemanager/FmFileDomain;->instance()Lcom/infraware/filemanager/FmFileDomain;

    move-result-object v1

    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v1, v2}, Lcom/infraware/filemanager/FmFileDomain;->releaseOperator(Lcom/infraware/filemanager/operator/FmFileOperator;)V

    .line 952
    invoke-static {}, Lcom/infraware/filemanager/FmFileDomain;->instance()Lcom/infraware/filemanager/FmFileDomain;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/infraware/filemanager/FmFileDomain;->getOperator(I)Lcom/infraware/filemanager/operator/FmFileOperator;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    .line 953
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    if-nez v1, :cond_1

    .line 955
    invoke-static {}, Lcom/infraware/filemanager/FmFileDomain;->instance()Lcom/infraware/filemanager/FmFileDomain;

    move-result-object v1

    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2, p1}, Lcom/infraware/filemanager/FmFileDomain;->createOperator(Landroid/app/Activity;I)Lcom/infraware/filemanager/operator/FmFileOperator;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    .line 956
    const/4 p2, 0x1

    .line 959
    :cond_1
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2, p0}, Lcom/infraware/filemanager/operator/FmFileOperator;->setEventListener(Landroid/app/Activity;Lcom/infraware/filemanager/operator/FmFileOperator$IEventListener;)V

    .line 962
    if-eqz p2, :cond_2

    .line 964
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v1}, Lcom/infraware/filemanager/operator/FmFileOperator;->clearFileList()V

    .line 965
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/infraware/filemanager/operator/FmFileOperator;->makeFileList(Ljava/lang/String;)I

    .line 968
    :cond_2
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v1}, Lcom/infraware/filemanager/operator/FmFileOperator;->getFileListData()Lcom/infraware/filemanager/FmFileListData;

    move-result-object v6

    .line 969
    .local v6, oFmFileList:Lcom/infraware/filemanager/FmFileListData;
    new-instance v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;

    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    .line 970
    const v3, 0x7f030044

    .line 971
    iget-object v1, v6, Lcom/infraware/filemanager/FmFileListData;->m_oFileAdapter:Lcom/infraware/filemanager/FmFileAdapter;

    invoke-virtual {v1}, Lcom/infraware/filemanager/FmFileAdapter;->getFileList()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oLocalFileList:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    move-object v1, p0

    .line 969
    invoke-direct/range {v0 .. v5}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;-><init>(Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;Landroid/content/Context;ILjava/util/List;Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;)V

    .line 972
    .local v0, oAdapter:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oLocalFileList:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    invoke-virtual {v1, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->setCustomAdapter(Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;)V

    .line 974
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->updateListControl()V

    .line 976
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->invalidateOptionsMenuIfPossible(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public copy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "a_oContext"
    .parameter "a_nSrcPath"
    .parameter "a_strDestPath"

    .prologue
    .line 792
    const/4 v0, 0x1

    return v0
.end method

.method protected createListControl()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 1017
    new-instance v1, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v4, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;-><init>(Landroid/app/Activity;ILjava/util/List;)V

    iput-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oLocalFileList:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    .line 1018
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oLocalFileList:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_ItemSelected:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_ItemSelect:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 1019
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oLocalFileList:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    sget-object v2, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;->eUE_ItemLongClicked:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_File_LongpressContext:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    invoke-virtual {v1, v2, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->setEvent(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitEvent;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 1020
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oLocalFileList:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->getNativeView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1021
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oLocalFileList:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->getNativeView()Landroid/widget/ListView;

    move-result-object v1

    const v2, 0x7f02029c

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelector(I)V

    .line 1022
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oLocalFileList:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->getNativeView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 1026
    iget v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_nHolderId:I

    if-nez v1, :cond_1

    .line 1027
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    const v2, 0x7f0c0018

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 1031
    .local v7, oMainLayout:Landroid/widget/LinearLayout;
    :goto_0
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oLocalFileList:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->getNativeView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v7, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 1033
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oLocalFileList:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    invoke-virtual {v1, p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 1035
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v1}, Lcom/infraware/filemanager/operator/FmFileOperator;->getFileListData()Lcom/infraware/filemanager/FmFileListData;

    move-result-object v6

    .line 1036
    .local v6, oFmFileList:Lcom/infraware/filemanager/FmFileListData;
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oLocalFileList:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->getAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1037
    new-instance v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;

    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    .line 1038
    const v3, 0x7f030044

    .line 1039
    iget-object v1, v6, Lcom/infraware/filemanager/FmFileListData;->m_oFileAdapter:Lcom/infraware/filemanager/FmFileAdapter;

    invoke-virtual {v1}, Lcom/infraware/filemanager/FmFileAdapter;->getFileList()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oLocalFileList:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    move-object v1, p0

    .line 1037
    invoke-direct/range {v0 .. v5}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;-><init>(Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;Landroid/content/Context;ILjava/util/List;Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;)V

    .line 1040
    .local v0, oAdapter:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oLocalFileList:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    invoke-virtual {v1, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->setCustomAdapter(Lcom/infraware/uxcontrol/uiunit/UiCustomAdapter;)V

    .line 1043
    .end local v0           #oAdapter:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList$FileListAdapter;
    :cond_0
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->updateTitle()V

    .line 1044
    return-void

    .line 1029
    .end local v6           #oFmFileList:Lcom/infraware/filemanager/FmFileListData;
    .end local v7           #oMainLayout:Landroid/widget/LinearLayout;
    :cond_1
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_nHolderId:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .restart local v7       #oMainLayout:Landroid/widget/LinearLayout;
    goto :goto_0
.end method

.method public createQuickMenu()V
    .locals 4

    .prologue
    .line 1047
    invoke-direct {p0}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->isEnableCheckBoxByAdapterMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1053
    :goto_0
    return-void

    .line 1050
    :cond_0
    new-instance v0, Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v2}, Lcom/infraware/filemanager/operator/FmFileOperator;->getAdapterMode()I

    move-result v2

    iget-object v3, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oLocalFileList:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu;-><init>(Landroid/app/Activity;ILcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;)V

    iput-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileQuickMenu:Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu;

    .line 1051
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileQuickMenu:Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu;->createView()V

    .line 1052
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileQuickMenu:Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu;

    invoke-virtual {v0, p0}, Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    goto :goto_0
.end method

.method public createView()V
    .locals 3

    .prologue
    .line 922
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v1}, Lcom/infraware/filemanager/operator/FmFileOperator;->clearFileList()V

    .line 923
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v1}, Lcom/infraware/filemanager/operator/FmFileOperator;->getAdapterMode()I

    move-result v1

    if-eqz v1, :cond_1

    .line 925
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/infraware/filemanager/operator/FmFileOperator;->makeFileList(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 926
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->updateListControl()V

    .line 939
    :cond_0
    :goto_0
    return-void

    .line 928
    :cond_1
    iget v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_nExternalStorageMode:I

    if-nez v1, :cond_2

    .line 930
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-static {}, Lcom/infraware/filemanager/FmFileDefine;->getRootFileManagerPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/infraware/filemanager/operator/FmFileOperator;->makeFileList(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 931
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->updateListControl()V

    goto :goto_0

    .line 935
    :cond_2
    iget v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_nExternalStorageMode:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v1}, Lcom/infraware/filemanager/FmExternalStorageHelper;->getExternalStoragePath(I)Ljava/lang/String;

    move-result-object v0

    .line 936
    .local v0, strExternStoragePath:Ljava/lang/String;
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v1, v0}, Lcom/infraware/filemanager/operator/FmFileOperator;->makeFileList(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 937
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->updateListControl()V

    goto :goto_0
.end method

.method public deleteFile(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .parameter "a_oContext"
    .parameter "a_strFileName"

    .prologue
    .line 793
    const/4 v0, 0x1

    return v0
.end method

.method public deleteFolder(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .parameter "a_oContext"
    .parameter "a_strFolderName"

    .prologue
    .line 794
    const/4 v0, 0x1

    return v0
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "a_strDestName"
    .parameter "a_strSrcName"

    .prologue
    .line 796
    const/4 v0, 0x1

    return v0
.end method

.method public getAdaptorMode()I
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v0}, Lcom/infraware/filemanager/operator/FmFileOperator;->getAdapterMode()I

    move-result v0

    return v0
.end method

.method public getCurrentPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    if-nez v0, :cond_0

    .line 177
    const/4 v0, 0x0

    .line 179
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v0}, Lcom/infraware/filemanager/operator/FmFileOperator;->getCurrentPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFileOperator()Lcom/infraware/filemanager/operator/FmFileOperator;
    .locals 1

    .prologue
    .line 942
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    return-object v0
.end method

.method public getMenuID()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1001
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v0}, Lcom/infraware/filemanager/operator/FmFileOperator;->getAdapterMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 1013
    :goto_0
    return v0

    .line 1004
    :pswitch_0
    const v0, 0x7f0b0001

    goto :goto_0

    .line 1006
    :pswitch_1
    const v0, 0x7f0b0002

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 1008
    goto :goto_0

    .line 1011
    :pswitch_3
    const v0, 0x7f0b0006

    goto :goto_0

    .line 1001
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public getSelectedItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 980
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v0}, Lcom/infraware/filemanager/operator/FmFileOperator;->getFileListData()Lcom/infraware/filemanager/FmFileListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/filemanager/FmFileListData;->getSelectedFileItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isActionModeEnabled()Z
    .locals 1

    .prologue
    .line 1072
    invoke-static {}, Lcom/infraware/uxcontrol/uicontrol/UiHoneycombUtils;->isHoneycombAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileQuickMenu:Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileQuickMenu:Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeFileList(Ljava/lang/String;)I
    .locals 1
    .parameter "a_strPath"

    .prologue
    .line 744
    const/4 v0, 0x1

    return v0
.end method

.method public makeListControlItem()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1451
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    invoke-static {v7}, Lcom/infraware/filemanager/FmSettingActivity;->getFmSetting_FileExtension(Landroid/content/Context;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_bShowFileExt:Z

    .line 1453
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v7}, Lcom/infraware/filemanager/operator/FmFileOperator;->getFileListData()Lcom/infraware/filemanager/FmFileListData;

    move-result-object v4

    .line 1455
    .local v4, oFmFileList:Lcom/infraware/filemanager/FmFileListData;
    invoke-virtual {v4}, Lcom/infraware/filemanager/FmFileListData;->getCount()I

    move-result v2

    .line 1457
    .local v2, nFileCount:I
    new-array v5, v2, [Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    .line 1460
    .local v5, oItems:[Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;
    const/4 v0, 0x1

    .line 1461
    .local v0, bShowSize:Z
    iget-object v7, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v7}, Lcom/infraware/filemanager/operator/FmFileOperator;->getAdapterMode()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    .line 1462
    const/4 v0, 0x0

    .line 1465
    :cond_0
    const/4 v1, 0x0

    .local v1, nCount:I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 1489
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    return-object v7

    .line 1467
    :cond_1
    invoke-virtual {v4, v1}, Lcom/infraware/filemanager/FmFileListData;->getFileItem(I)Lcom/infraware/filemanager/FmFileItem;

    move-result-object v3

    .line 1468
    .local v3, oFileItem:Lcom/infraware/filemanager/FmFileItem;
    iget-boolean v7, v3, Lcom/infraware/filemanager/FmFileItem;->m_bIsFolder:Z

    if-eqz v7, :cond_2

    .line 1469
    new-instance v7, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    invoke-virtual {v3}, Lcom/infraware/filemanager/FmFileItem;->getFullFileName()Ljava/lang/String;

    move-result-object v8

    .line 1470
    invoke-virtual {v3}, Lcom/infraware/filemanager/FmFileItem;->getFileResID()I

    move-result v9

    invoke-direct {v7, v8, v9}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;-><init>(Ljava/lang/String;I)V

    .line 1469
    aput-object v7, v5, v1

    .line 1465
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1473
    :cond_2
    iget-boolean v7, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_bShowFileExt:Z

    if-eqz v7, :cond_3

    .line 1474
    invoke-virtual {v3}, Lcom/infraware/filemanager/FmFileItem;->getFullFileName()Ljava/lang/String;

    move-result-object v6

    .line 1478
    .local v6, strFileName:Ljava/lang/String;
    :goto_2
    if-eqz v0, :cond_4

    .line 1479
    new-instance v7, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    .line 1480
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    invoke-virtual {v3, v9}, Lcom/infraware/filemanager/FmFileItem;->getDateString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "   "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/infraware/filemanager/FmFileItem;->getSizeString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1481
    invoke-virtual {v3}, Lcom/infraware/filemanager/FmFileItem;->getFileResID()I

    move-result v9

    invoke-direct {v7, v6, v8, v9}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1479
    aput-object v7, v5, v1

    goto :goto_1

    .line 1476
    .end local v6           #strFileName:Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Lcom/infraware/filemanager/FmFileItem;->getFileName()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #strFileName:Ljava/lang/String;
    goto :goto_2

    .line 1483
    :cond_4
    new-instance v7, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    .line 1484
    iget-object v8, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    invoke-virtual {v3, v8}, Lcom/infraware/filemanager/FmFileItem;->getDateString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 1485
    invoke-virtual {v3}, Lcom/infraware/filemanager/FmFileItem;->getFileResID()I

    move-result v9

    invoke-direct {v7, v6, v8, v9}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1483
    aput-object v7, v5, v1

    goto :goto_1
.end method

.method public makeNewFile(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .parameter "a_oContext"
    .parameter "a_strFileName"

    .prologue
    .line 748
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/filemanager/operator/FmFileOperator;->makeNewFile(Landroid/content/Context;Ljava/lang/String;)I

    .line 749
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->updateListControl()V

    .line 750
    const/4 v0, 0x1

    return v0
.end method

.method public makeNewFolder(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .parameter "a_oContext"
    .parameter "a_strFolderName"

    .prologue
    const/4 v3, 0x1

    .line 756
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v1}, Lcom/infraware/filemanager/operator/FmFileOperator;->getFileListData()Lcom/infraware/filemanager/FmFileListData;

    move-result-object v0

    .line 758
    .local v0, oFmFileList:Lcom/infraware/filemanager/FmFileListData;
    invoke-virtual {v0, p2}, Lcom/infraware/filemanager/FmFileListData;->existFolderName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 760
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0272

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->onToastText(Ljava/lang/String;)V

    move v1, v3

    .line 766
    :goto_0
    return v1

    .line 764
    :cond_0
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v1, p1, p2}, Lcom/infraware/filemanager/operator/FmFileOperator;->makeNewFolder(Landroid/content/Context;Ljava/lang/String;)I

    .line 765
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->updateListControl()V

    move v1, v3

    .line 766
    goto :goto_0
.end method

.method public onClrKey(Landroid/app/Activity;)I
    .locals 2
    .parameter "a_oActivity"

    .prologue
    .line 807
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/operator/FmFileOperator;->onClrKey(Landroid/app/Activity;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    const/4 v0, 0x1

    .line 811
    :goto_0
    return v0

    .line 810
    :cond_0
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->updateListControl()V

    .line 811
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs onCommand(Lcom/infraware/uxcontrol/uiunit/UiUnitView;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;[Ljava/lang/Object;)V
    .locals 41
    .parameter "a_oView"
    .parameter "a_eCommand"
    .parameter "a_aoArgs"

    .prologue
    .line 231
    invoke-static {}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->$SWITCH_TABLE$com$infraware$uxcontrol$uiunit$UiEnum$EUnitCommand()[I

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->ordinal()I

    move-result v6

    aget v5, v5, v6

    sparse-switch v5, :sswitch_data_0

    .line 738
    .end local p0
    .end local p1
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 235
    .restart local p0
    .restart local p1
    .restart local p2
    :sswitch_0
    new-instance v5, Ljava/lang/Integer;

    const/4 v6, 0x0

    aget-object p1, p3, v6

    .end local p1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 237
    .local v13, nIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/infraware/filemanager/operator/FmFileOperator;->getFileListData()Lcom/infraware/filemanager/FmFileListData;

    move-result-object v21

    .line 238
    .local v21, oFmFileList:Lcom/infraware/filemanager/FmFileListData;
    move-object/from16 v0, v21

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/FmFileListData;->getFileItem(I)Lcom/infraware/filemanager/FmFileItem;

    move-result-object v17

    .line 240
    .local v17, oFileItem:Lcom/infraware/filemanager/FmFileItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/infraware/filemanager/operator/FmFileOperator;->getAdapterMode()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/infraware/filemanager/operator/FmFileOperator;->getAdapterMode()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 243
    :cond_1
    move-object/from16 v0, v17

    iget v0, v0, Lcom/infraware/filemanager/FmFileItem;->m_nExtType:I

    move v5, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->IsEnableExtentionType(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v6, v0

    const v7, 0x7f0a0251

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v6, v0

    const v7, 0x7f0a02f9

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    .line 245
    move-object v0, v5

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lcom/infraware/common/CoNotification;->Error(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 253
    .restart local p0
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v5, v0

    instance-of v5, v5, Lcom/infraware/filemanager/FmFileSyncActivity;

    if-eqz v5, :cond_5

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object/from16 p1, v0

    check-cast p1, Lcom/infraware/filemanager/FmFileSyncActivity;

    invoke-virtual/range {p1 .. p1}, Lcom/infraware/filemanager/FmFileSyncActivity;->isLockSyncListOperation()Z

    move-result v5

    if-nez v5, :cond_4

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object/from16 p1, v0

    check-cast p1, Lcom/infraware/filemanager/FmFileSyncActivity;

    const/4 v5, 0x1

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/FmFileSyncActivity;->lockSyncListOperation(Z)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v6, v0

    invoke-virtual {v5, v6, v13}, Lcom/infraware/filemanager/operator/FmFileOperator;->onSelect(Landroid/app/Activity;I)I

    move-result v14

    .line 268
    .local v14, nOperationResult:I
    :goto_1
    if-nez v14, :cond_7

    .line 270
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->updateListControl()V

    .line 272
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/infraware/filemanager/FmFileItem;->m_bIsFolder:Z

    move v5, v0

    if-eqz v5, :cond_3

    .line 274
    const/16 v35, 0x0

    .line 275
    .local v35, strPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/infraware/filemanager/operator/FmFileOperator;->getAdapterMode()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/infraware/filemanager/operator/FmFileOperator;->getCurrentPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/infraware/filemanager/FmFileUnzip;->getReleativePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 283
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->onToastText(Ljava/lang/String;)V

    .line 298
    .end local v35           #strPath:Ljava/lang/String;
    .end local p2
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v5, v0

    instance-of v5, v5, Lcom/infraware/filemanager/FmFileSyncActivity;

    if-eqz v5, :cond_0

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Lcom/infraware/filemanager/FmFileSyncActivity;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/FmFileSyncActivity;->lockSyncListOperation(Z)V

    goto/16 :goto_0

    .line 262
    .end local v14           #nOperationResult:I
    .restart local p0
    .restart local p2
    :cond_4
    const/4 v14, 0x1

    .restart local v14       #nOperationResult:I
    goto :goto_1

    .line 266
    .end local v14           #nOperationResult:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v6, v0

    invoke-virtual {v5, v6, v13}, Lcom/infraware/filemanager/operator/FmFileOperator;->onSelect(Landroid/app/Activity;I)I

    move-result v14

    .restart local v14       #nOperationResult:I
    goto :goto_1

    .line 281
    .restart local v35       #strPath:Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/infraware/filemanager/FmFileDefine;->getRootFileManagerPath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/infraware/filemanager/operator/FmFileOperator;->getCurrentPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/infraware/filemanager/FmFileUtil;->getReleativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    goto :goto_2

    .line 286
    .end local v35           #strPath:Ljava/lang/String;
    :cond_7
    const/4 v5, 0x7

    if-ne v14, v5, :cond_8

    .line 288
    new-instance v25, Lcom/infraware/uxcontrol/uicontrol/UiPasswordDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v5, v0

    move-object/from16 v0, v25

    move-object v1, v5

    move v2, v13

    invoke-direct {v0, v1, v2}, Lcom/infraware/uxcontrol/uicontrol/UiPasswordDialog;-><init>(Landroid/app/Activity;I)V

    .line 289
    .local v25, oPasswordDlg:Lcom/infraware/uxcontrol/uicontrol/UiPasswordDialog;
    invoke-virtual/range {v25 .. v25}, Lcom/infraware/uxcontrol/uicontrol/UiPasswordDialog;->createView()V

    .line 290
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/UiPasswordDialog;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 291
    const/4 v5, 0x1

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/UiPasswordDialog;->show(Z)V

    goto :goto_3

    .line 293
    .end local v25           #oPasswordDlg:Lcom/infraware/uxcontrol/uicontrol/UiPasswordDialog;
    :cond_8
    const/16 v5, 0x8

    if-ne v14, v5, :cond_3

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v6, v0

    const v7, 0x7f0a026b

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v6, v0

    const v7, 0x7f0a02f9

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .end local p2
    check-cast p2, Ljava/lang/String;

    .line 295
    move-object v0, v5

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/infraware/common/CoNotification;->Error(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 306
    .end local v13           #nIndex:I
    .end local v14           #nOperationResult:I
    .end local v17           #oFileItem:Lcom/infraware/filemanager/FmFileItem;
    .end local v21           #oFmFileList:Lcom/infraware/filemanager/FmFileListData;
    .restart local p1
    .restart local p2
    :sswitch_1
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    aget-object p1, p3, v6

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_strTempFileName:Ljava/lang/String;

    .line 307
    new-instance v5, Ljava/lang/Integer;

    const/4 v6, 0x1

    aget-object p1, p3, v6

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_nTempFileIndex:I

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/infraware/filemanager/operator/FmFileOperator;->getFileListData()Lcom/infraware/filemanager/FmFileListData;

    move-result-object v21

    .line 309
    .restart local v21       #oFmFileList:Lcom/infraware/filemanager/FmFileListData;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_nTempFileIndex:I

    move v5, v0

    move-object/from16 v0, v21

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/FmFileListData;->getFileItem(I)Lcom/infraware/filemanager/FmFileItem;

    move-result-object v17

    .line 310
    .restart local v17       #oFileItem:Lcom/infraware/filemanager/FmFileItem;
    invoke-virtual/range {v17 .. v17}, Lcom/infraware/filemanager/FmFileItem;->getFullFileName()Ljava/lang/String;

    move-result-object v34

    .line 311
    .local v34, strOldName:Ljava/lang/String;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/infraware/filemanager/FmFileItem;->m_bIsFolder:Z

    move v5, v0

    if-eqz v5, :cond_9

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_strTempFileName:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_nTempFileIndex:I

    move v6, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->renameFile(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 313
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_strTempFileName:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Lcom/infraware/filemanager/FmFileUtil;->getExtType(Ljava/lang/String;)I

    move-result v5

    invoke-static/range {v34 .. v34}, Lcom/infraware/filemanager/FmFileUtil;->getExtType(Ljava/lang/String;)I

    move-result v6

    if-eq v5, v6, :cond_a

    .line 314
    invoke-static {}, Lcom/infraware/filemanager/FmWebStorageAccount;->getServiceType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    .line 315
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_strTempFileName:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_nTempFileIndex:I

    move v6, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->renameFile(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 317
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v6, v0

    const v7, 0x7f0a024d

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v6, v0

    const v7, 0x7f0a02bb

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .end local p2
    check-cast p2, Ljava/lang/String;

    sget-object v6, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_File_Rename_Exttype:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    .line 317
    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Lcom/infraware/common/CoNotification;->Confirm(Landroid/app/Activity;Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    goto/16 :goto_0

    .line 322
    .end local v17           #oFileItem:Lcom/infraware/filemanager/FmFileItem;
    .end local v21           #oFmFileList:Lcom/infraware/filemanager/FmFileListData;
    .end local v34           #strOldName:Ljava/lang/String;
    .restart local p1
    .restart local p2
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_strTempFileName:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_nTempFileIndex:I

    move v6, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->renameFile(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 326
    :sswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_nCheckedCheckBoxCount:I

    move v5, v0

    if-nez v5, :cond_0

    .line 328
    new-instance v5, Ljava/lang/Integer;

    const/4 v6, 0x0

    aget-object p1, p3, v6

    .end local p1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 329
    .restart local v13       #nIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/infraware/filemanager/operator/FmFileOperator;->getFileListData()Lcom/infraware/filemanager/FmFileListData;

    move-result-object v21

    .line 330
    .restart local v21       #oFmFileList:Lcom/infraware/filemanager/FmFileListData;
    move-object/from16 v0, v21

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/FmFileListData;->getFileItem(I)Lcom/infraware/filemanager/FmFileItem;

    move-result-object v17

    .line 331
    .restart local v17       #oFileItem:Lcom/infraware/filemanager/FmFileItem;
    if-eqz v17, :cond_c

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/infraware/filemanager/FmFileItem;->m_strName:Ljava/lang/String;

    move-object v5, v0

    const-string v6, ".."

    if-eq v5, v6, :cond_c

    .line 333
    move-object/from16 v0, p0

    move v1, v13

    invoke-direct {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->getContextArrayID(I)I

    move-result v12

    .line 334
    .local v12, nArrayID:I
    if-eqz v12, :cond_0

    .line 336
    new-instance v5, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileContextMenu;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v6, v0

    invoke-direct {v5, v6, v12, v13}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileContextMenu;-><init>(Landroid/app/Activity;II)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oLocalFileContextMenu:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileContextMenu;

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oLocalFileContextMenu:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileContextMenu;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileContextMenu;->createView()V

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oLocalFileContextMenu:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileContextMenu;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileContextMenu;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oLocalFileContextMenu:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileContextMenu;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileContextMenu;->show(Z)V

    .line 341
    .end local v12           #nArrayID:I
    :cond_c
    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_nContextIndex:I

    goto/16 :goto_0

    .line 347
    .end local v13           #nIndex:I
    .end local v17           #oFileItem:Lcom/infraware/filemanager/FmFileItem;
    .end local v21           #oFmFileList:Lcom/infraware/filemanager/FmFileListData;
    .restart local p1
    :sswitch_4
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->clearAsyncOperation()V

    .line 349
    new-instance v5, Ljava/lang/Integer;

    const/4 v6, 0x0

    aget-object p1, p3, v6

    .end local p1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 350
    .restart local v13       #nIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/infraware/filemanager/operator/FmFileOperator;->getFileListData()Lcom/infraware/filemanager/FmFileListData;

    move-result-object v21

    .line 351
    .restart local v21       #oFmFileList:Lcom/infraware/filemanager/FmFileListData;
    move-object/from16 v0, v21

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/FmFileListData;->getFileItem(I)Lcom/infraware/filemanager/FmFileItem;

    move-result-object v17

    .line 352
    .restart local v17       #oFileItem:Lcom/infraware/filemanager/FmFileItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/infraware/filemanager/FmFileItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p2

    move-object v3, v7

    move-object v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->setAsyncOperation(Lcom/infraware/filemanager/operator/FmFileOperator;Lcom/infraware/filemanager/operator/FmFileOperator;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;Ljava/lang/String;Ljava/util/List;)Z

    .line 354
    new-instance v26, Lcom/infraware/uxcontrol/uicontrol/UiSelectFolderDialog;

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v5, v0

    .line 354
    move-object/from16 v0, v26

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/UiSelectFolderDialog;-><init>(Landroid/app/Activity;)V

    .line 356
    .local v26, oSelectFolderDlg:Lcom/infraware/uxcontrol/uicontrol/UiSelectFolderDialog;
    invoke-virtual/range {v26 .. v26}, Lcom/infraware/uxcontrol/uicontrol/UiSelectFolderDialog;->createView()V

    .line 357
    const/4 v5, 0x1

    move-object/from16 v0, v26

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/UiSelectFolderDialog;->show(Z)V

    .line 358
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/UiSelectFolderDialog;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 360
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_eMultiOperationStatus:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v5, v0

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/media/AudioManager;

    .line 362
    .local v16, oAudioManager:Landroid/media/AudioManager;
    invoke-virtual/range {v16 .. v16}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v5, v0

    const v6, 0x7f0a0386

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->onToastText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 365
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v5, v0

    const v6, 0x7f0a027c

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual/range {p0 .. p1}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->onToastText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 370
    .end local v13           #nIndex:I
    .end local v16           #oAudioManager:Landroid/media/AudioManager;
    .end local v17           #oFileItem:Lcom/infraware/filemanager/FmFileItem;
    .end local v21           #oFmFileList:Lcom/infraware/filemanager/FmFileListData;
    .end local v26           #oSelectFolderDlg:Lcom/infraware/uxcontrol/uicontrol/UiSelectFolderDialog;
    .restart local p1
    :sswitch_5
    new-instance v5, Ljava/lang/Integer;

    const/4 v6, 0x0

    aget-object p1, p3, v6

    .end local p1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 371
    .restart local v13       #nIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/infraware/filemanager/operator/FmFileOperator;->getFileListData()Lcom/infraware/filemanager/FmFileListData;

    move-result-object v21

    .line 372
    .restart local v21       #oFmFileList:Lcom/infraware/filemanager/FmFileListData;
    move-object/from16 v0, v21

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/FmFileListData;->getFileItem(I)Lcom/infraware/filemanager/FmFileItem;

    move-result-object v17

    .line 374
    .restart local v17       #oFileItem:Lcom/infraware/filemanager/FmFileItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/infraware/filemanager/FmFileItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/infraware/filemanager/operator/FmFileOperator;->copy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 375
    .local v15, nResult:I
    const/4 v5, 0x1

    if-ne v15, v5, :cond_0

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v5, v0

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v6, v0

    const v7, 0x7f0a024b

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v6, v0

    const v7, 0x7f0a0282

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    .line 376
    move-object v0, v5

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lcom/infraware/common/CoNotification;->Error(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 384
    .end local v13           #nIndex:I
    .end local v15           #nResult:I
    .end local v17           #oFileItem:Lcom/infraware/filemanager/FmFileItem;
    .end local v21           #oFmFileList:Lcom/infraware/filemanager/FmFileListData;
    .restart local p0
    .restart local p1
    :sswitch_6
    new-instance v5, Ljava/lang/Integer;

    const/4 v6, 0x0

    aget-object p1, p3, v6

    .end local p1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 385
    .restart local v13       #nIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/infraware/filemanager/operator/FmFileOperator;->getFileListData()Lcom/infraware/filemanager/FmFileListData;

    move-result-object v21

    .line 386
    .restart local v21       #oFmFileList:Lcom/infraware/filemanager/FmFileListData;
    move-object/from16 v0, v21

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/FmFileListData;->getFileItem(I)Lcom/infraware/filemanager/FmFileItem;

    move-result-object v17

    .line 387
    .restart local v17       #oFileItem:Lcom/infraware/filemanager/FmFileItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v5, v0

    invoke-virtual/range {v17 .. v17}, Lcom/infraware/filemanager/FmFileItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/infraware/filemanager/FmFileUtil;->onAttachFile(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 392
    .end local v13           #nIndex:I
    .end local v17           #oFileItem:Lcom/infraware/filemanager/FmFileItem;
    .end local v21           #oFmFileList:Lcom/infraware/filemanager/FmFileListData;
    .restart local p1
    :sswitch_7
    new-instance v5, Ljava/lang/Integer;

    const/4 v6, 0x0

    aget-object p1, p3, v6

    .end local p1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 393
    .restart local v13       #nIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v5, v0

    invoke-static {v5}, Lcom/infraware/filemanager/MTPSyncManager;->createDataBaseInstance(Landroid/content/Context;)I

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/infraware/filemanager/operator/FmFileOperator;->getFileListData()Lcom/infraware/filemanager/FmFileListData;

    move-result-object v21

    .line 395
    .restart local v21       #oFmFileList:Lcom/infraware/filemanager/FmFileListData;
    move-object/from16 v0, v21

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/FmFileListData;->getFileItem(I)Lcom/infraware/filemanager/FmFileItem;

    move-result-object v17

    .line 396
    .restart local v17       #oFileItem:Lcom/infraware/filemanager/FmFileItem;
    invoke-static {}, Lcom/infraware/filemanager/FmFileUnzip;->instance()Lcom/infraware/filemanager/FmFileUnzip;

    move-result-object v22

    .line 397
    .local v22, oFmFileUnzip:Lcom/infraware/filemanager/FmFileUnzip;
    invoke-virtual/range {v17 .. v17}, Lcom/infraware/filemanager/FmFileItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/infraware/filemanager/FmFileUnzip;->getType(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x2

    if-ne v5, v6, :cond_e

    .line 399
    new-instance v25, Lcom/infraware/uxcontrol/uicontrol/UiPasswordDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v5, v0

    move-object/from16 v0, v25

    move-object v1, v5

    move v2, v13

    invoke-direct {v0, v1, v2}, Lcom/infraware/uxcontrol/uicontrol/UiPasswordDialog;-><init>(Landroid/app/Activity;I)V

    .line 400
    .restart local v25       #oPasswordDlg:Lcom/infraware/uxcontrol/uicontrol/UiPasswordDialog;
    invoke-virtual/range {v25 .. v25}, Lcom/infraware/uxcontrol/uicontrol/UiPasswordDialog;->createView()V

    .line 401
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/UiPasswordDialog;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 402
    const/4 v5, 0x1

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/UiPasswordDialog;->show(Z)V

    goto/16 :goto_0

    .line 407
    .end local v25           #oPasswordDlg:Lcom/infraware/uxcontrol/uicontrol/UiPasswordDialog;
    :cond_e
    const/4 v5, 0x0

    const v6, 0x7f0a035a

    invoke-static {v5, v6}, Lcom/infraware/filemanager/FmFileProgress;->startProgress(II)V

    .line 408
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->getFileOperator()Lcom/infraware/filemanager/operator/FmFileOperator;

    move-result-object v5

    invoke-static {v5}, Lcom/infraware/filemanager/FmFileProgress;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 409
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Lcom/infraware/filemanager/FmFileItem;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Lcom/infraware/filemanager/FmFileItem;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 410
    .local v33, strNewPath:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lcom/infraware/filemanager/FmFileItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v5

    move-object/from16 v2, v33

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/infraware/filemanager/FmFileUnzip;->unzipFile(Ljava/lang/String;Ljava/lang/String;Lcom/infraware/filemanager/FmFileUnzip$IZipEventListener;)I

    goto/16 :goto_0

    .line 415
    .end local v13           #nIndex:I
    .end local v17           #oFileItem:Lcom/infraware/filemanager/FmFileItem;
    .end local v21           #oFmFileList:Lcom/infraware/filemanager/FmFileListData;
    .end local v22           #oFmFileUnzip:Lcom/infraware/filemanager/FmFileUnzip;
    .end local v33           #strNewPath:Ljava/lang/String;
    .restart local p1
    :sswitch_8
    new-instance v5, Ljava/lang/Integer;

    const/4 v6, 0x0

    aget-object p1, p3, v6

    .end local p1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 416
    .restart local v13       #nIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/infraware/filemanager/operator/FmFileOperator;->getFileListData()Lcom/infraware/filemanager/FmFileListData;

    move-result-object v21

    .line 417
    .restart local v21       #oFmFileList:Lcom/infraware/filemanager/FmFileListData;
    move-object/from16 v0, v21

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/FmFileListData;->getFileItem(I)Lcom/infraware/filemanager/FmFileItem;

    move-result-object v17

    .line 419
    .restart local v17       #oFileItem:Lcom/infraware/filemanager/FmFileItem;
    const/16 v18, 0x0

    .line 420
    .local v18, oFileRenameDialog:Lcom/infraware/uxcontrol/uicontrol/UiFileRenameDialog;
    new-instance v18, Lcom/infraware/uxcontrol/uicontrol/UiFileRenameDialog;

    .end local v18           #oFileRenameDialog:Lcom/infraware/uxcontrol/uicontrol/UiFileRenameDialog;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v5, v0

    move-object/from16 v0, v18

    move-object v1, v5

    move-object/from16 v2, v17

    move v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/infraware/uxcontrol/uicontrol/UiFileRenameDialog;-><init>(Landroid/app/Activity;Lcom/infraware/filemanager/FmFileItem;I)V

    .line 421
    .restart local v18       #oFileRenameDialog:Lcom/infraware/uxcontrol/uicontrol/UiFileRenameDialog;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_nAdapterMode:I

    move v5, v0

    const/4 v6, 0x3

    if-eq v5, v6, :cond_f

    .line 422
    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_nAdapterMode:I

    move v5, v0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_10

    .line 423
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_nAdapterMode:I

    move v5, v0

    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/UiFileRenameDialog;->setAdapterMode(I)V

    .line 424
    :cond_10
    invoke-virtual/range {v18 .. v18}, Lcom/infraware/uxcontrol/uicontrol/UiFileRenameDialog;->createView()V

    .line 425
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/UiFileRenameDialog;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 426
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/UiFileRenameDialog;->show(Z)V

    goto/16 :goto_0

    .line 431
    .end local v13           #nIndex:I
    .end local v17           #oFileItem:Lcom/infraware/filemanager/FmFileItem;
    .end local v18           #oFileRenameDialog:Lcom/infraware/uxcontrol/uicontrol/UiFileRenameDialog;
    .end local v21           #oFmFileList:Lcom/infraware/filemanager/FmFileListData;
    .restart local p1
    :sswitch_9
    new-instance v5, Ljava/lang/Integer;

    const/4 v6, 0x0

    aget-object p1, p3, v6

    .end local p1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 432
    .restart local v13       #nIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/infraware/filemanager/operator/FmFileOperator;->getFileListData()Lcom/infraware/filemanager/FmFileListData;

    move-result-object v21

    .line 433
    .restart local v21       #oFmFileList:Lcom/infraware/filemanager/FmFileListData;
    move-object/from16 v0, v21

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/FmFileListData;->getFileItem(I)Lcom/infraware/filemanager/FmFileItem;

    move-result-object v17

    .line 434
    .restart local v17       #oFileItem:Lcom/infraware/filemanager/FmFileItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/infraware/filemanager/FmFileItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p2

    move-object v3, v7

    move-object v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->setAsyncOperation(Lcom/infraware/filemanager/operator/FmFileOperator;Lcom/infraware/filemanager/operator/FmFileOperator;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;Ljava/lang/String;Ljava/util/List;)Z

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v5, v0

    const v6, 0x7f0a024c

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v39

    .line 437
    .local v39, szTitle:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v5, v0

    const v6, 0x7f0a0281

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 438
    .local v38, szMessage:Ljava/lang/CharSequence;
    sget-object v40, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;->eUS_Dialog2Button:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;

    .line 440
    .local v40, usButton:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;
    new-instance v23, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v5, v0

    move-object/from16 v0, v23

    move-object v1, v5

    move-object/from16 v2, v39

    move-object/from16 v3, v38

    move-object/from16 v4, v40

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;)V

    .line 441
    .local v23, oMsgDialog:Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;
    sget-object v5, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_FileDelete:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    move-object/from16 v0, v23

    move-object v1, v5

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->setPositiveDismissCommand(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;I)V

    .line 442
    invoke-virtual/range {v23 .. v23}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->createView()V

    .line 444
    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->setTextMessage(Ljava/lang/CharSequence;)V

    .line 445
    const/4 v5, 0x1

    move-object/from16 v0, v23

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->show(Z)V

    .line 446
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    goto/16 :goto_0

    .line 451
    .end local v13           #nIndex:I
    .end local v17           #oFileItem:Lcom/infraware/filemanager/FmFileItem;
    .end local v21           #oFmFileList:Lcom/infraware/filemanager/FmFileListData;
    .end local v23           #oMsgDialog:Lcom/infraware/uxcontrol/uicontrol/UiMessageDialog;
    .end local v38           #szMessage:Ljava/lang/CharSequence;
    .end local v39           #szTitle:Ljava/lang/CharSequence;
    .end local v40           #usButton:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitStyle;
    .restart local p1
    :sswitch_a
    new-instance v5, Ljava/lang/Integer;

    const/4 v6, 0x0

    aget-object p1, p3, v6

    .end local p1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 452
    .restart local v13       #nIndex:I
    move-object/from16 v0, p0

    move v1, v13

    invoke-direct {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->createPropertiesDialog(I)V

    .line 453
    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_nContextIndex:I

    goto/16 :goto_0

    .line 458
    .end local v13           #nIndex:I
    .restart local p1
    :sswitch_b
    new-instance v5, Ljava/lang/Integer;

    const/4 v6, 0x0

    aget-object p1, p3, v6

    .end local p1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 459
    .restart local v13       #nIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/infraware/filemanager/operator/FmFileOperator;->getFileListData()Lcom/infraware/filemanager/FmFileListData;

    move-result-object v21

    .line 460
    .restart local v21       #oFmFileList:Lcom/infraware/filemanager/FmFileListData;
    move-object/from16 v0, v21

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/FmFileListData;->getFileItem(I)Lcom/infraware/filemanager/FmFileItem;

    move-result-object v17

    .line 462
    .restart local v17       #oFileItem:Lcom/infraware/filemanager/FmFileItem;
    new-instance v19, Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v5, v0

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;-><init>(Landroid/app/Activity;)V

    .line 463
    .local v19, oFileSaveDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;
    invoke-virtual/range {v17 .. v17}, Lcom/infraware/filemanager/FmFileItem;->getFullFileName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;->setFileName(Ljava/lang/String;)V

    .line 464
    invoke-virtual/range {v19 .. v19}, Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;->createViewForDownload()V

    .line 465
    invoke-virtual/range {v17 .. v17}, Lcom/infraware/filemanager/FmFileItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;->setOriginFilePath(Ljava/lang/String;)V

    .line 466
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 467
    const/4 v5, 0x1

    move-object/from16 v0, v19

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;->show(Z)V

    goto/16 :goto_0

    .line 472
    .end local v13           #nIndex:I
    .end local v17           #oFileItem:Lcom/infraware/filemanager/FmFileItem;
    .end local v19           #oFileSaveDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiFileSaveDialog;
    .end local v21           #oFmFileList:Lcom/infraware/filemanager/FmFileListData;
    .restart local p1
    :sswitch_c
    new-instance v5, Ljava/lang/Integer;

    const/4 v6, 0x0

    aget-object p1, p3, v6

    .end local p1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 473
    .restart local v13       #nIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/infraware/filemanager/operator/FmFileOperator;->getFileListData()Lcom/infraware/filemanager/FmFileListData;

    move-result-object v21

    .line 474
    .restart local v21       #oFmFileList:Lcom/infraware/filemanager/FmFileListData;
    move-object/from16 v0, v21

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/FmFileListData;->getFileItem(I)Lcom/infraware/filemanager/FmFileItem;

    move-result-object v17

    .line 475
    .restart local v17       #oFileItem:Lcom/infraware/filemanager/FmFileItem;
    const/4 v15, 0x0

    .line 477
    .restart local v15       #nResult:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    move-object v5, v0

    const/4 v6, 0x0

    .line 478
    sget-object v7, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_File_ContextDelete:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 477
    invoke-static {v5, v6, v7, v8, v9}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->setAsyncOperation(Lcom/infraware/filemanager/operator/FmFileOperator;Lcom/infraware/filemanager/operator/FmFileOperator;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;Ljava/lang/String;Ljava/util/List;)Z

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v6, v0

    invoke-virtual/range {v17 .. v17}, Lcom/infraware/filemanager/FmFileItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/infraware/filemanager/operator/FmFileOperator;->deleteFile(Landroid/content/Context;Ljava/lang/String;)I

    move-result v15

    .line 481
    if-nez v15, :cond_11

    .line 482
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->updateListControl()V

    .line 485
    :cond_11
    if-nez v15, :cond_12

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v5, v0

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v6, v0

    const v7, 0x7f0a0227

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v6, v0

    const v7, 0x7f0a028b

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    .line 486
    move-object v0, v5

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lcom/infraware/common/CoNotification;->Error(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 490
    .restart local p0
    :cond_12
    const/4 v5, 0x1

    if-ne v15, v5, :cond_0

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v5, v0

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v6, v0

    const v7, 0x7f0a0227

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v6, v0

    const v7, 0x7f0a0313

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    .line 491
    move-object v0, v5

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lcom/infraware/common/CoNotification;->Error(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 499
    .end local v13           #nIndex:I
    .end local v15           #nResult:I
    .end local v17           #oFileItem:Lcom/infraware/filemanager/FmFileItem;
    .end local v21           #oFmFileList:Lcom/infraware/filemanager/FmFileListData;
    .restart local p0
    .restart local p1
    :sswitch_d
    const/4 v5, 0x0

    aget-object v29, p3, v5

    check-cast v29, Ljava/lang/String;

    .line 501
    .local v29, strDestFullPath:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lcom/infraware/filemanager/FmFileUtil;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_strDestPath:Ljava/lang/String;

    .line 502
    const/4 v5, 0x1

    aget-object p1, p3, v5

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_strFileName:Ljava/lang/String;

    .line 503
    invoke-static/range {v29 .. v29}, Lcom/infraware/filemanager/FmFileUtil;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_strNewFileName:Ljava/lang/String;

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_strNewFileName:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Lcom/infraware/filemanager/FmFileUtil;->getExtType(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_strFileName:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v6}, Lcom/infraware/filemanager/FmFileUtil;->getExtType(Ljava/lang/String;)I

    move-result v6

    if-eq v5, v6, :cond_13

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v6, v0

    const v7, 0x7f0a024d

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v6, v0

    const v8, 0x7f0a02bb

    invoke-virtual {v6, v8}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sget-object v9, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_File_Download:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    sget-object v10, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Download_Cancel:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    move-object/from16 v6, p0

    .line 506
    invoke-static/range {v5 .. v10}, Lcom/infraware/common/CoNotification;->Confirm(Landroid/app/Activity;Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    goto/16 :goto_0

    .line 511
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    move-object v5, v0

    const/4 v6, 0x0

    sget-object v7, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_FileDownload:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object v2, v7

    move-object/from16 v3, v29

    move-object v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->setAsyncOperation(Lcom/infraware/filemanager/operator/FmFileOperator;Lcom/infraware/filemanager/operator/FmFileOperator;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;Ljava/lang/String;Ljava/util/List;)Z

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_strFileName:Ljava/lang/String;

    move-object v6, v0

    move-object v0, v5

    move-object/from16 v1, v29

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/infraware/filemanager/operator/FmFileOperator;->download(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 514
    .restart local v15       #nResult:I
    const/4 v5, 0x5

    if-eq v5, v15, :cond_14

    const/4 v5, 0x6

    if-ne v5, v15, :cond_0

    .line 515
    :cond_14
    const/16 v36, 0x0

    .line 516
    .local v36, strTitle:Ljava/lang/CharSequence;
    const/16 v30, 0x0

    .line 517
    .local v30, strMessage:Ljava/lang/CharSequence;
    const/4 v5, 0x5

    if-ne v5, v15, :cond_15

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a02de

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a035b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 524
    :goto_4
    new-instance v24, Lcom/infraware/uxcontrol/uicontrol/UiFileOverridingDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v5, v0

    invoke-static/range {v29 .. v29}, Lcom/infraware/filemanager/FmFileUtil;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v24

    move-object v1, v5

    move-object/from16 v2, v36

    move-object/from16 v3, v30

    move-object v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/infraware/uxcontrol/uicontrol/UiFileOverridingDialog;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 526
    .local v24, oOverridingDialog:Lcom/infraware/uxcontrol/uicontrol/UiFileOverridingDialog;
    invoke-virtual/range {v24 .. v24}, Lcom/infraware/uxcontrol/uicontrol/UiFileOverridingDialog;->createViewForContextDownload()V

    .line 530
    sget-object v5, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Download_Overwrite:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    const/4 v6, 0x0

    .line 529
    move-object/from16 v0, v24

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/infraware/uxcontrol/uicontrol/UiFileOverridingDialog;->setPositiveDismissCommand(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;I)V

    .line 533
    sget-object v5, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Download_Cancel:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    const/4 v6, 0x0

    .line 532
    move-object/from16 v0, v24

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/infraware/uxcontrol/uicontrol/UiFileOverridingDialog;->setNagativeDismissCommand(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;I)V

    .line 534
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/UiFileOverridingDialog;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 536
    const/4 v5, 0x1

    move-object/from16 v0, v24

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/UiFileOverridingDialog;->show(Z)V

    goto/16 :goto_0

    .line 521
    .end local v24           #oOverridingDialog:Lcom/infraware/uxcontrol/uicontrol/UiFileOverridingDialog;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0317

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0318

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    goto :goto_4

    .line 543
    .end local v15           #nResult:I
    .end local v29           #strDestFullPath:Ljava/lang/String;
    .end local v30           #strMessage:Ljava/lang/CharSequence;
    .end local v36           #strTitle:Ljava/lang/CharSequence;
    .restart local p1
    :sswitch_e
    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_strDestPath:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_strNewFileName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 545
    .restart local v29       #strDestFullPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    move-object v5, v0

    const/4 v6, 0x0

    sget-object v7, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_FileDownload:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object v2, v7

    move-object/from16 v3, v29

    move-object v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->setAsyncOperation(Lcom/infraware/filemanager/operator/FmFileOperator;Lcom/infraware/filemanager/operator/FmFileOperator;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;Ljava/lang/String;Ljava/util/List;)Z

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_strFileName:Ljava/lang/String;

    move-object v6, v0

    move-object v0, v5

    move-object/from16 v1, v29

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/infraware/filemanager/operator/FmFileOperator;->download(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 547
    .restart local v15       #nResult:I
    const/4 v5, 0x5

    if-eq v5, v15, :cond_16

    const/4 v5, 0x6

    if-ne v5, v15, :cond_0

    .line 548
    :cond_16
    const/16 v36, 0x0

    .line 549
    .restart local v36       #strTitle:Ljava/lang/CharSequence;
    const/16 v30, 0x0

    .line 550
    .restart local v30       #strMessage:Ljava/lang/CharSequence;
    const/4 v5, 0x5

    if-ne v5, v15, :cond_17

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a02de

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a035b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 557
    :goto_5
    new-instance v24, Lcom/infraware/uxcontrol/uicontrol/UiFileOverridingDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v5, v0

    invoke-static/range {v29 .. v29}, Lcom/infraware/filemanager/FmFileUtil;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v24

    move-object v1, v5

    move-object/from16 v2, v36

    move-object/from16 v3, v30

    move-object v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/infraware/uxcontrol/uicontrol/UiFileOverridingDialog;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 559
    .restart local v24       #oOverridingDialog:Lcom/infraware/uxcontrol/uicontrol/UiFileOverridingDialog;
    invoke-virtual/range {v24 .. v24}, Lcom/infraware/uxcontrol/uicontrol/UiFileOverridingDialog;->createViewForContextDownload()V

    .line 563
    sget-object v5, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Download_Overwrite:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    const/4 v6, 0x0

    .line 562
    move-object/from16 v0, v24

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/infraware/uxcontrol/uicontrol/UiFileOverridingDialog;->setPositiveDismissCommand(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;I)V

    .line 566
    sget-object v5, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Download_Cancel:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    const/4 v6, 0x0

    .line 565
    move-object/from16 v0, v24

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/infraware/uxcontrol/uicontrol/UiFileOverridingDialog;->setNagativeDismissCommand(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;I)V

    .line 567
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/UiFileOverridingDialog;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 569
    const/4 v5, 0x1

    move-object/from16 v0, v24

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/UiFileOverridingDialog;->show(Z)V

    goto/16 :goto_0

    .line 554
    .end local v24           #oOverridingDialog:Lcom/infraware/uxcontrol/uicontrol/UiFileOverridingDialog;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0317

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0318

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    goto :goto_5

    .line 577
    .end local v15           #nResult:I
    .end local v29           #strDestFullPath:Ljava/lang/String;
    .end local v30           #strMessage:Ljava/lang/CharSequence;
    .end local v36           #strTitle:Ljava/lang/CharSequence;
    :sswitch_f
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->clearAsyncOperation()V

    .line 578
    new-instance v26, Lcom/infraware/uxcontrol/uicontrol/UiSelectFolderDialog;

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v5, v0

    .line 578
    move-object/from16 v0, v26

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/UiSelectFolderDialog;-><init>(Landroid/app/Activity;)V

    .line 580
    .restart local v26       #oSelectFolderDlg:Lcom/infraware/uxcontrol/uicontrol/UiSelectFolderDialog;
    invoke-virtual/range {v26 .. v26}, Lcom/infraware/uxcontrol/uicontrol/UiSelectFolderDialog;->createView()V

    .line 581
    const/4 v5, 0x1

    move-object/from16 v0, v26

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/UiSelectFolderDialog;->show(Z)V

    .line 582
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/UiSelectFolderDialog;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 584
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_eMultiOperationStatus:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v5, v0

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/media/AudioManager;

    .line 587
    .restart local v16       #oAudioManager:Landroid/media/AudioManager;
    invoke-virtual/range {v16 .. v16}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v5, v0

    const v6, 0x7f0a0386

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->onToastText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 590
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v5, v0

    const v6, 0x7f0a027c

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-virtual/range {p0 .. p1}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->onToastText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 594
    .end local v16           #oAudioManager:Landroid/media/AudioManager;
    .end local v26           #oSelectFolderDlg:Lcom/infraware/uxcontrol/uicontrol/UiSelectFolderDialog;
    .restart local p1
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/infraware/filemanager/operator/FmFileOperator;->getFileListData()Lcom/infraware/filemanager/FmFileListData;

    move-result-object v11

    .line 595
    .local v11, FmFileList:Lcom/infraware/filemanager/FmFileListData;
    invoke-virtual {v11}, Lcom/infraware/filemanager/FmFileListData;->getSelectedFileItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_19

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v5, v0

    const v6, 0x7f0a0281

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 600
    .restart local v38       #szMessage:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v6, v0

    const v7, 0x7f0a024c

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .line 601
    sget-object v6, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_File_CheckedFileDelete_Confirm:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    .line 600
    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v38

    move-object v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Lcom/infraware/common/CoNotification;->Confirm(Landroid/app/Activity;Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    goto/16 :goto_0

    .line 605
    .end local v38           #szMessage:Ljava/lang/CharSequence;
    .restart local p1
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v5, v0

    const v6, 0x7f0a0316

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 606
    .restart local v38       #szMessage:Ljava/lang/CharSequence;
    invoke-interface/range {v38 .. v38}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v11}, Lcom/infraware/filemanager/FmFileListData;->getSelectedFileItems()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    .line 607
    .local v28, strDeleteMsg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v6, v0

    const v7, 0x7f0a024c

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    .line 608
    sget-object v6, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_File_CheckedFileDelete_Confirm:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    .line 607
    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v28

    move-object v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Lcom/infraware/common/CoNotification;->Confirm(Landroid/app/Activity;Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    goto/16 :goto_0

    .line 614
    .end local v11           #FmFileList:Lcom/infraware/filemanager/FmFileListData;
    .end local v28           #strDeleteMsg:Ljava/lang/String;
    .end local v38           #szMessage:Ljava/lang/CharSequence;
    .restart local p1
    :sswitch_11
    new-instance v37, Ljava/lang/String;

    const/4 v5, 0x0

    aget-object p1, p3, v5

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 615
    .local v37, szDestFolderPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/infraware/filemanager/operator/FmFileOperator;->getFileListData()Lcom/infraware/filemanager/FmFileListData;

    move-result-object v21

    .line 617
    .restart local v21       #oFmFileList:Lcom/infraware/filemanager/FmFileListData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_eMultiOperationStatus:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    move-object v5, v0

    sget-object v6, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_File_CheckedMove:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    if-ne v5, v6, :cond_1c

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    move-object v5, v0

    const/4 v6, 0x0

    .line 619
    sget-object v7, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_File_ContextMove:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    .line 620
    invoke-virtual/range {v21 .. v21}, Lcom/infraware/filemanager/FmFileListData;->getSelectedFileItems()Ljava/util/List;

    move-result-object v8

    .line 618
    move-object v0, v5

    move-object v1, v6

    move-object v2, v7

    move-object/from16 v3, v37

    move-object v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->setAsyncOperation(Lcom/infraware/filemanager/operator/FmFileOperator;Lcom/infraware/filemanager/operator/FmFileOperator;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;Ljava/lang/String;Ljava/util/List;)Z

    .line 627
    :cond_1a
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v6, v0

    const/4 v7, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object v2, v7

    move-object/from16 v3, v37

    invoke-virtual {v0, v1, v2, v3}, Lcom/infraware/filemanager/operator/FmFileOperator;->copy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 628
    .restart local v15       #nResult:I
    const/4 v5, 0x1

    if-ne v15, v5, :cond_1b

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v5, v0

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v6, v0

    const v7, 0x7f0a024a

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v6, v0

    const v7, 0x7f0a0369

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .end local p2
    check-cast p2, Ljava/lang/String;

    .line 629
    move-object v0, v5

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/infraware/common/CoNotification;->Error(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 634
    :cond_1b
    sget-object v5, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_None:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_eMultiOperationStatus:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    goto/16 :goto_0

    .line 621
    .end local v15           #nResult:I
    .restart local p2
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_eMultiOperationStatus:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    move-object v5, v0

    sget-object v6, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_File_CheckedCopy:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    if-ne v5, v6, :cond_1a

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    move-object v5, v0

    const/4 v6, 0x0

    .line 623
    sget-object v7, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_File_ContextCopy:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    .line 624
    invoke-virtual/range {v21 .. v21}, Lcom/infraware/filemanager/FmFileListData;->getSelectedFileItems()Ljava/util/List;

    move-result-object v8

    .line 622
    move-object v0, v5

    move-object v1, v6

    move-object v2, v7

    move-object/from16 v3, v37

    move-object v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->setAsyncOperation(Lcom/infraware/filemanager/operator/FmFileOperator;Lcom/infraware/filemanager/operator/FmFileOperator;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;Ljava/lang/String;Ljava/util/List;)Z

    goto :goto_6

    .line 639
    .end local v21           #oFmFileList:Lcom/infraware/filemanager/FmFileListData;
    .end local v37           #szDestFolderPath:Ljava/lang/String;
    .restart local p1
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/infraware/filemanager/operator/FmFileOperator;->getFileListData()Lcom/infraware/filemanager/FmFileListData;

    move-result-object v20

    .line 641
    .local v20, oFmFile:Lcom/infraware/filemanager/FmFileListData;
    const/4 v15, 0x0

    .line 643
    .restart local v15       #nResult:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    move-object v5, v0

    const/4 v6, 0x0

    .line 644
    sget-object v7, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_File_ContextDelete:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    const/4 v8, 0x0

    invoke-virtual/range {v20 .. v20}, Lcom/infraware/filemanager/FmFileListData;->getSelectedFileItems()Ljava/util/List;

    move-result-object v9

    .line 643
    invoke-static {v5, v6, v7, v8, v9}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->setAsyncOperation(Lcom/infraware/filemanager/operator/FmFileOperator;Lcom/infraware/filemanager/operator/FmFileOperator;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;Ljava/lang/String;Ljava/util/List;)Z

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/infraware/filemanager/operator/FmFileOperator;->deleteFile(Landroid/content/Context;Ljava/lang/String;)I

    move-result v15

    .line 649
    if-nez v15, :cond_0

    .line 651
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->updateListControl()V

    goto/16 :goto_0

    .line 658
    .end local v15           #nResult:I
    .end local v20           #oFmFile:Lcom/infraware/filemanager/FmFileListData;
    :sswitch_13
    new-instance v31, Ljava/lang/String;

    const/4 v5, 0x0

    aget-object p1, p3, v5

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 659
    .local v31, strNewFileName:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_strDestPath:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 660
    .local v32, strNewFilePath:Ljava/lang/String;
    if-eqz v31, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_strNewFileName:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 662
    new-instance v27, Ljava/io/File;

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 663
    .local v27, oSrcPathFile:Ljava/io/File;
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->delete()Z

    .line 666
    .end local v27           #oSrcPathFile:Ljava/io/File;
    :cond_1d
    invoke-static/range {v31 .. v31}, Lcom/infraware/filemanager/FmFileUtil;->getExtType(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_strNewFileName:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v6}, Lcom/infraware/filemanager/FmFileUtil;->getExtType(Ljava/lang/String;)I

    move-result v6

    if-eq v5, v6, :cond_1e

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v6, v0

    const v7, 0x7f0a024d

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v6, v0

    const v8, 0x7f0a02bb

    invoke-virtual {v6, v8}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sget-object v9, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_File_Download:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    sget-object v10, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Download_Cancel:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    move-object/from16 v6, p0

    .line 667
    invoke-static/range {v5 .. v10}, Lcom/infraware/common/CoNotification;->Confirm(Landroid/app/Activity;Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;)V

    .line 670
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_strNewFileName:Ljava/lang/String;

    goto/16 :goto_0

    .line 674
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    move-object v5, v0

    const/4 v6, 0x0

    sget-object v7, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_FileDownload:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object v2, v7

    move-object/from16 v3, v32

    move-object v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->setAsyncOperation(Lcom/infraware/filemanager/operator/FmFileOperator;Lcom/infraware/filemanager/operator/FmFileOperator;Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;Ljava/lang/String;Ljava/util/List;)Z

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_strFileName:Ljava/lang/String;

    move-object v6, v0

    move-object v0, v5

    move-object/from16 v1, v32

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/infraware/filemanager/operator/FmFileOperator;->download(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 678
    .restart local v15       #nResult:I
    const/4 v5, 0x5

    if-eq v5, v15, :cond_1f

    const/4 v5, 0x6

    if-ne v5, v15, :cond_0

    .line 684
    :cond_1f
    const/16 v36, 0x0

    .line 685
    .restart local v36       #strTitle:Ljava/lang/CharSequence;
    const/16 v30, 0x0

    .line 686
    .restart local v30       #strMessage:Ljava/lang/CharSequence;
    const/4 v5, 0x5

    if-ne v5, v15, :cond_20

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a02de

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a035b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 693
    :goto_7
    new-instance v24, Lcom/infraware/uxcontrol/uicontrol/UiFileOverridingDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v5, v0

    invoke-static/range {v32 .. v32}, Lcom/infraware/filemanager/FmFileUtil;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v24

    move-object v1, v5

    move-object/from16 v2, v36

    move-object/from16 v3, v30

    move-object v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/infraware/uxcontrol/uicontrol/UiFileOverridingDialog;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 695
    .restart local v24       #oOverridingDialog:Lcom/infraware/uxcontrol/uicontrol/UiFileOverridingDialog;
    invoke-virtual/range {v24 .. v24}, Lcom/infraware/uxcontrol/uicontrol/UiFileOverridingDialog;->createViewForContextDownload()V

    .line 696
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_strNewFileName:Ljava/lang/String;

    .line 700
    sget-object v5, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Download_Overwrite:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    const/4 v6, 0x0

    .line 699
    move-object/from16 v0, v24

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/infraware/uxcontrol/uicontrol/UiFileOverridingDialog;->setPositiveDismissCommand(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;I)V

    .line 703
    sget-object v5, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_Download_Cancel:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    const/4 v6, 0x0

    .line 702
    move-object/from16 v0, v24

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/infraware/uxcontrol/uicontrol/UiFileOverridingDialog;->setNagativeDismissCommand(Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;I)V

    .line 704
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/UiFileOverridingDialog;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 706
    const/4 v5, 0x1

    move-object/from16 v0, v24

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/UiFileOverridingDialog;->show(Z)V

    goto/16 :goto_0

    .line 690
    .end local v24           #oOverridingDialog:Lcom/infraware/uxcontrol/uicontrol/UiFileOverridingDialog;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0317

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0318

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    goto :goto_7

    .line 713
    .end local v15           #nResult:I
    .end local v30           #strMessage:Ljava/lang/CharSequence;
    .end local v31           #strNewFileName:Ljava/lang/String;
    .end local v32           #strNewFilePath:Ljava/lang/String;
    .end local v36           #strTitle:Ljava/lang/CharSequence;
    .restart local p1
    :sswitch_14
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->clearAsyncOperation()V

    .line 714
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->DestroyListIterator()V

    goto/16 :goto_0

    .line 718
    :sswitch_15
    new-instance v5, Ljava/lang/Integer;

    const/4 v6, 0x0

    aget-object p1, p3, v6

    .end local p1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 719
    .restart local v13       #nIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/infraware/filemanager/operator/FmFileOperator;->getFileListData()Lcom/infraware/filemanager/FmFileListData;

    move-result-object v21

    .line 720
    .restart local v21       #oFmFileList:Lcom/infraware/filemanager/FmFileListData;
    move-object/from16 v0, v21

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/FmFileListData;->getFileItem(I)Lcom/infraware/filemanager/FmFileItem;

    move-result-object v17

    .line 721
    .restart local v17       #oFileItem:Lcom/infraware/filemanager/FmFileItem;
    invoke-static {}, Lcom/infraware/filemanager/FmFileUnzip;->instance()Lcom/infraware/filemanager/FmFileUnzip;

    move-result-object v22

    .line 723
    .restart local v22       #oFmFileUnzip:Lcom/infraware/filemanager/FmFileUnzip;
    const/4 v5, 0x0

    const v6, 0x7f0a035a

    invoke-static {v5, v6}, Lcom/infraware/filemanager/FmFileProgress;->startProgress(II)V

    .line 724
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->getFileOperator()Lcom/infraware/filemanager/operator/FmFileOperator;

    move-result-object v5

    invoke-static {v5}, Lcom/infraware/filemanager/FmFileProgress;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 725
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Lcom/infraware/filemanager/FmFileItem;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Lcom/infraware/filemanager/FmFileItem;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 727
    .restart local v33       #strNewPath:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->getAdaptorMode()I

    move-result v5

    if-nez v5, :cond_21

    .line 729
    invoke-virtual/range {v17 .. v17}, Lcom/infraware/filemanager/FmFileItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->getFileOperator()Lcom/infraware/filemanager/operator/FmFileOperator;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;

    const/4 v7, 0x1

    aget-object p1, p3, v7

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/infraware/filemanager/FmFileUnzip;->unzipEncryptionFile(Ljava/lang/String;Ljava/lang/String;Lcom/infraware/filemanager/FmFileUnzip$IZipEventListener;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 731
    .restart local p0
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->getAdaptorMode()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 733
    invoke-virtual/range {v17 .. v17}, Lcom/infraware/filemanager/FmFileItem;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->getFileOperator()Lcom/infraware/filemanager/operator/FmFileOperator;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/infraware/filemanager/operator/FmZipFileOperator;

    const/4 v7, 0x1

    aget-object p1, p3, v7

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/infraware/filemanager/FmFileUnzip;->unzipEncryptionFile(Ljava/lang/String;Ljava/lang/String;Lcom/infraware/filemanager/FmFileUnzip$IZipEventListener;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 231
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_c
        0x15 -> :sswitch_0
        0xa2 -> :sswitch_3
        0xa3 -> :sswitch_1
        0xa4 -> :sswitch_d
        0xa6 -> :sswitch_4
        0xa7 -> :sswitch_5
        0xa8 -> :sswitch_4
        0xa9 -> :sswitch_6
        0xaa -> :sswitch_7
        0xab -> :sswitch_8
        0xac -> :sswitch_9
        0xad -> :sswitch_a
        0xae -> :sswitch_b
        0xaf -> :sswitch_e
        0xb1 -> :sswitch_f
        0xb2 -> :sswitch_f
        0xb3 -> :sswitch_10
        0xb4 -> :sswitch_11
        0xb5 -> :sswitch_12
        0xc0 -> :sswitch_2
        0xc2 -> :sswitch_13
        0xc4 -> :sswitch_14
        0xc8 -> :sswitch_15
    .end sparse-switch
.end method

.method public onEvent(IILjava/lang/String;)V
    .locals 4
    .parameter "a_eFileOperation"
    .parameter "a_nIndex"
    .parameter "a_strName"

    .prologue
    .line 122
    sparse-switch p1, :sswitch_data_0

    .line 159
    .end local p0
    :goto_0
    :sswitch_0
    return-void

    .line 126
    .restart local p0
    :sswitch_1
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->updateListControl()V

    goto :goto_0

    .line 132
    :sswitch_2
    iget p2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_nAdapterPrevMode:I

    .line 133
    iget v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_nAdapterPrevMode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 135
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 140
    :cond_0
    :sswitch_3
    const/4 v0, 0x0

    .line 141
    .local v0, bUpdate:Z
    packed-switch p2, :pswitch_data_0

    .line 150
    :goto_1
    invoke-virtual {p0, p2, v0}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->changeFileAdapeteMode(IZ)V

    goto :goto_0

    .line 146
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_1

    .line 154
    .end local v0           #bUpdate:Z
    :sswitch_4
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    .line 155
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    const v3, 0x7f0a0036

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 156
    iget-object v3, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    invoke-virtual {v3, p2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    .line 154
    invoke-static {v2, v1, p0}, Lcom/infraware/common/CoNotification;->Error(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 122
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x10 -> :sswitch_0
        0x100 -> :sswitch_1
        0x1000 -> :sswitch_2
        0x10000 -> :sswitch_3
        0x10000000 -> :sswitch_4
    .end sparse-switch

    .line 141
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 1
    .parameter "a_oActivity"

    .prologue
    .line 912
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v0}, Lcom/infraware/filemanager/operator/FmFileOperator;->getAdapterMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    instance-of v0, v0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;

    if-eqz v0, :cond_0

    .line 915
    iget-object p0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    .end local p0
    check-cast p0, Lcom/infraware/filemanager/operator/FmLocalFileOperator;

    invoke-virtual {p0}, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->stopObserving()V

    .line 917
    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 4
    .parameter "a_oActivity"

    .prologue
    .line 831
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    .line 832
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v2}, Lcom/infraware/filemanager/operator/FmFileOperator;->getAdapterMode()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 833
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v2}, Lcom/infraware/filemanager/operator/FmFileOperator;->getAdapterMode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 835
    :cond_0
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    if-eqz v2, :cond_1

    .line 836
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v2}, Lcom/infraware/filemanager/operator/FmFileOperator;->initFileOperatorThreadEvent()V

    .line 844
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/infraware/filemanager/FmSettingActivity;->getFmSetting_FileExtension(Landroid/content/Context;)Z

    move-result v0

    .line 845
    .local v0, bShowFileExt:Z
    iget-boolean v2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_bShowFileExt:Z

    if-eq v2, v0, :cond_4

    .line 847
    iput-boolean v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_bShowFileExt:Z

    .line 848
    invoke-static {}, Lcom/infraware/filemanager/FmFileProgress;->startProgress()V

    .line 849
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->updateListControl()V

    .line 898
    :cond_2
    :goto_1
    return-void

    .line 838
    .end local v0           #bShowFileExt:Z
    :cond_3
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v2}, Lcom/infraware/filemanager/operator/FmFileOperator;->getAdapterMode()I

    move-result v2

    if-nez v2, :cond_1

    .line 840
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    instance-of v2, v2, Lcom/infraware/filemanager/operator/FmLocalFileOperator;

    if-eqz v2, :cond_1

    .line 841
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    check-cast v2, Lcom/infraware/filemanager/operator/FmLocalFileOperator;

    invoke-virtual {v2}, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->startObserving()V

    goto :goto_0

    .line 853
    .restart local v0       #bShowFileExt:Z
    :cond_4
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v2}, Lcom/infraware/filemanager/operator/FmFileOperator;->getAdapterMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 858
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v2}, Lcom/infraware/filemanager/operator/FmFileOperator;->getFileListData()Lcom/infraware/filemanager/FmFileListData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/infraware/filemanager/FmFileListData;->getCount()I

    move-result v2

    invoke-static {p1}, Lcom/infraware/filemanager/FmFileRecent;->getRecentFileCount(Landroid/content/Context;)I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 862
    :cond_5
    iget v2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_nCheckedCheckBoxCount:I

    if-nez v2, :cond_2

    .line 864
    invoke-static {}, Lcom/infraware/filemanager/FmFileProgress;->startProgress()V

    .line 866
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v2}, Lcom/infraware/filemanager/operator/FmFileOperator;->clearFileList()V

    .line 868
    iget v2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_nExternalStorageMode:I

    if-nez v2, :cond_6

    .line 870
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/infraware/filemanager/operator/FmFileOperator;->makeFileList(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 871
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->updateListControl()V

    goto :goto_1

    .line 875
    :cond_6
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v2}, Lcom/infraware/filemanager/operator/FmFileOperator;->getFileListData()Lcom/infraware/filemanager/FmFileListData;

    move-result-object v1

    .line 877
    .local v1, oFmFileList:Lcom/infraware/filemanager/FmFileListData;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    iget-object v3, v1, Lcom/infraware/filemanager/FmFileListData;->m_strCurPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/infraware/filemanager/operator/FmFileOperator;->makeFileList(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 878
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->updateListControl()V

    goto :goto_1
.end method

.method public onSelect(Landroid/app/Activity;I)I
    .locals 1
    .parameter "a_oActivity"
    .parameter "a_nIndex"

    .prologue
    .line 790
    const/4 v0, 0x1

    return v0
.end method

.method public onToastText(Ljava/lang/String;)V
    .locals 2
    .parameter "a_strToastText"

    .prologue
    .line 1589
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 1600
    :goto_0
    return-void

    .line 1592
    :cond_0
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oToast:Landroid/widget/Toast;

    if-nez v0, :cond_2

    .line 1593
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oToast:Landroid/widget/Toast;

    .line 1599
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1595
    :cond_2
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 1596
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1597
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    goto :goto_1
.end method

.method public onZipEvent(Z)V
    .locals 1
    .parameter "a_bResult"

    .prologue
    .line 163
    if-eqz p1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v0}, Lcom/infraware/filemanager/operator/FmFileOperator;->updateFileList()I

    move-result v0

    if-nez v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->updateListControl()V

    .line 169
    :cond_0
    return-void
.end method

.method public refresh(Landroid/content/Context;)I
    .locals 1
    .parameter "a_oContext"

    .prologue
    .line 804
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v0, p1}, Lcom/infraware/filemanager/operator/FmFileOperator;->refresh(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public rename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "a_oContext"
    .parameter "a_strOldName"
    .parameter "a_strNewName"

    .prologue
    .line 770
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v1, p1, p2, p3}, Lcom/infraware/filemanager/operator/FmFileOperator;->rename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 772
    .local v0, result:I
    return v0
.end method

.method public setFileList(Ljava/lang/String;)I
    .locals 1
    .parameter "a_strPath"

    .prologue
    .line 1603
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    if-nez v0, :cond_0

    .line 1604
    const/4 v0, -0x1

    .line 1606
    :goto_0
    return v0

    .line 1605
    :cond_0
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v0}, Lcom/infraware/filemanager/operator/FmFileOperator;->clearFileList()V

    .line 1606
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v0, p1}, Lcom/infraware/filemanager/operator/FmFileOperator;->makeFileList(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public setMenu(Landroid/view/Menu;)V
    .locals 0
    .parameter "a_oMenu"

    .prologue
    .line 984
    iput-object p1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oMenu:Landroid/view/Menu;

    .line 985
    return-void
.end method

.method public setSyncMode(Z)V
    .locals 0
    .parameter "a_bSyncMode"

    .prologue
    .line 1432
    iput-boolean p1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_bSyncMode:Z

    .line 1433
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 6
    .parameter "a_szTitle"

    .prologue
    .line 1436
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_strTitle:Ljava/lang/String;

    .line 1439
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_strTitle:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1440
    .local v0, nIndex:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1441
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_strTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1447
    :goto_0
    return-void

    .line 1444
    :cond_0
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_strTitle:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1445
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_strTitle:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_strTitle:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showContextMenu()V
    .locals 4

    .prologue
    .line 1617
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oLocalFileContextMenu:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileContextMenu;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oLocalFileContextMenu:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileContextMenu;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileContextMenu;->isShow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1618
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oLocalFileContextMenu:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileContextMenu;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileContextMenu;->show(Z)V

    .line 1620
    iget v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_nContextIndex:I

    invoke-direct {p0, v1}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->getContextArrayID(I)I

    move-result v0

    .line 1621
    .local v0, nArrayID:I
    new-instance v1, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileContextMenu;

    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    iget v3, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_nContextIndex:I

    invoke-direct {v1, v2, v0, v3}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileContextMenu;-><init>(Landroid/app/Activity;II)V

    iput-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oLocalFileContextMenu:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileContextMenu;

    .line 1622
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oLocalFileContextMenu:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileContextMenu;

    invoke-virtual {v1}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileContextMenu;->createView()V

    .line 1623
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oLocalFileContextMenu:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileContextMenu;

    invoke-virtual {v1, p0}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileContextMenu;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 1624
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oLocalFileContextMenu:Lcom/infraware/uxcontrol/uicontrol/UiLocalFileContextMenu;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileContextMenu;->show(Z)V

    .line 1626
    .end local v0           #nArrayID:I
    :cond_0
    return-void
.end method

.method public showContextProperties()V
    .locals 2

    .prologue
    .line 1629
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oPropertyDialog:Lcom/infraware/uxcontrol/uicontrol/UiPropertyDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oPropertyDialog:Lcom/infraware/uxcontrol/uicontrol/UiPropertyDialog;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/UiPropertyDialog;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1630
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oPropertyDialog:Lcom/infraware/uxcontrol/uicontrol/UiPropertyDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/UiPropertyDialog;->show(Z)V

    .line 1631
    iget v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_nContextIndex:I

    invoke-direct {p0, v0}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->createPropertiesDialog(I)V

    .line 1633
    :cond_0
    return-void
.end method

.method public showQuickMenu(Z)V
    .locals 1
    .parameter "a_bShow"

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/infraware/filemanager/FmFileSyncActivity;

    if-eqz v0, :cond_1

    .line 1069
    :cond_0
    :goto_0
    return-void

    .line 1059
    :cond_1
    invoke-direct {p0}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->isEnableCheckBoxByAdapterMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1062
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileQuickMenu:Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu;

    if-nez v0, :cond_2

    .line 1063
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->createQuickMenu()V

    .line 1065
    :cond_2
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileQuickMenu:Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu;

    if-eqz v0, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileQuickMenu:Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu;

    invoke-virtual {v0, p1}, Lcom/infraware/uxcontrol/uicontrol/UiFileQuickMenu;->show(Z)V

    goto :goto_0
.end method

.method public sort(IZ)I
    .locals 3
    .parameter "a_nSortType"
    .parameter "a_bAscending"

    .prologue
    .line 776
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0267

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 777
    .local v0, strProgressMessage:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/infraware/filemanager/FmFileProgress;->setProgressText(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    invoke-static {}, Lcom/infraware/filemanager/FmFileProgress;->startProgress()V

    .line 779
    iget-object v1, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v1, p1, p2}, Lcom/infraware/filemanager/operator/FmFileOperator;->sort(IZ)I

    move-result v1

    if-eqz v1, :cond_0

    .line 781
    invoke-static {}, Lcom/infraware/filemanager/FmFileProgress;->stopProgress()V

    .line 782
    const/4 v1, 0x1

    .line 786
    :goto_0
    return v1

    .line 785
    :cond_0
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->updateListControl()V

    .line 786
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateFileList()I
    .locals 1

    .prologue
    .line 797
    const/4 v0, 0x1

    return v0
.end method

.method public updateListControl()V
    .locals 1

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oLocalFileList:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    if-nez v0, :cond_0

    .line 1368
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->createListControl()V

    .line 1370
    :cond_0
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oLocalFileList:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->getAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1371
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oLocalFileList:Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;->getAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 1372
    :cond_1
    invoke-static {}, Lcom/infraware/filemanager/FmFileProgress;->stopProgress()V

    .line 1374
    invoke-direct {p0}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->clearCheckedCheckBoxCount()V

    .line 1375
    iget-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/infraware/filemanager/FmFileSyncActivity;

    if-eqz v0, :cond_2

    .line 1376
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->showUploadDownloadButton(Z)V

    .line 1377
    :cond_2
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->updateTitle()V

    .line 1378
    return-void
.end method

.method public updateTitle()V
    .locals 5

    .prologue
    .line 1382
    const/4 v0, 0x0

    .line 1383
    .local v0, strMainTitle:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1385
    .local v1, strSubTitle:Ljava/lang/String;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v2}, Lcom/infraware/filemanager/operator/FmFileOperator;->getAdapterMode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1418
    :goto_0
    if-eqz v1, :cond_0

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1419
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1421
    :cond_0
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_strTitle:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 1422
    iput-object v0, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_strTitle:Ljava/lang/String;

    .line 1427
    :cond_1
    invoke-virtual {p0, v0}, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->setTitle(Ljava/lang/CharSequence;)V

    .line 1428
    :goto_1
    return-void

    .line 1388
    :pswitch_0
    iget v2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_nExternalStorageMode:I

    if-nez v2, :cond_2

    .line 1390
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0269

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1391
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v2}, Lcom/infraware/filemanager/operator/FmFileOperator;->getReleativePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1395
    :cond_2
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v2}, Lcom/infraware/filemanager/operator/FmFileOperator;->getReleativePath()Ljava/lang/String;

    move-result-object v0

    .line 1397
    goto :goto_0

    .line 1399
    :pswitch_1
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a026a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1400
    goto :goto_0

    .line 1402
    :pswitch_2
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a026b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1403
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v2}, Lcom/infraware/filemanager/operator/FmFileOperator;->getFileListData()Lcom/infraware/filemanager/FmFileListData;

    move-result-object v2

    iget-object v2, v2, Lcom/infraware/filemanager/FmFileListData;->m_strCurPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/infraware/filemanager/FmFileUnzip;->getReleativePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1404
    goto :goto_0

    .line 1407
    :pswitch_3
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v2}, Lcom/infraware/filemanager/operator/FmFileOperator;->getAdapterMode()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 1408
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a026c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1409
    const-string v3, " ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/infraware/filemanager/FmWebStorageAccount;->m_strCurrentID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1408
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1414
    :goto_2
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oFileOperator:Lcom/infraware/filemanager/operator/FmFileOperator;

    invoke-virtual {v2}, Lcom/infraware/filemanager/operator/FmFileOperator;->getFileListData()Lcom/infraware/filemanager/FmFileListData;

    move-result-object v2

    iget-object v1, v2, Lcom/infraware/filemanager/FmFileListData;->m_strCurPath:Ljava/lang/String;

    goto/16 :goto_0

    .line 1411
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_oActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a026d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1412
    const-string v3, " ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/infraware/filemanager/FmWebStorageAccount;->m_strCurrentID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1411
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1424
    :cond_4
    iget-object v2, p0, Lcom/infraware/uxcontrol/uicontrol/UiLocalFileList;->m_strTitle:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    .line 1385
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public upload()I
    .locals 1

    .prologue
    .line 795
    const/4 v0, 0x1

    return v0
.end method

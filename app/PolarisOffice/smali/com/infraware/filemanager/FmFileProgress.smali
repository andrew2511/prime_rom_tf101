.class public Lcom/infraware/filemanager/FmFileProgress;
.super Ljava/lang/Object;
.source "FmFileProgress.java"


# static fields
.field private static m_nAccumulate:I

.field private static m_nMax:I

.field private static m_nNormalProgressMessageID:I

.field private static m_nNormalProgressTitleID:I

.field private static m_nProgress:I

.field private static m_nTransperProgressMessageID:I

.field private static m_nTransperProgressTitleID:I

.field private static m_oNormalProgressObjects:[Ljava/lang/Object;

.field private static m_oProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

.field public static m_oProgressThread:Ljava/lang/Thread;

.field private static m_oTitleProgressDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Progressbar;

.field private static m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

.field private static m_oTransperProgressObjects:[Ljava/lang/Object;

.field private static m_strProgressNum:Ljava/lang/String;

.field private static m_strTransperProgressText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initProgress()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 470
    sput-object v0, Lcom/infraware/filemanager/FmFileProgress;->m_oProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    .line 471
    sput-object v0, Lcom/infraware/filemanager/FmFileProgress;->m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    .line 472
    sput-object v0, Lcom/infraware/filemanager/FmFileProgress;->m_oTitleProgressDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Progressbar;

    .line 473
    return-void
.end method

.method public static isShowNormalProgress()Z
    .locals 1

    .prologue
    .line 398
    sget-object v0, Lcom/infraware/filemanager/FmFileProgress;->m_oProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    if-nez v0, :cond_0

    .line 399
    const/4 v0, 0x0

    .line 400
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/infraware/filemanager/FmFileProgress;->m_oProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->isShow()Z

    move-result v0

    goto :goto_0
.end method

.method public static isShowTransferProgress()Z
    .locals 1

    .prologue
    .line 392
    sget-object v0, Lcom/infraware/filemanager/FmFileProgress;->m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    if-nez v0, :cond_0

    .line 393
    const/4 v0, 0x0

    .line 394
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/infraware/filemanager/FmFileProgress;->m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    invoke-virtual {v0}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->isShow()Z

    move-result v0

    goto :goto_0
.end method

.method public static registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V
    .locals 1
    .parameter "a_oOnCommandListener"

    .prologue
    .line 431
    sget-object v0, Lcom/infraware/filemanager/FmFileProgress;->m_oProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    if-eqz v0, :cond_0

    .line 432
    sget-object v0, Lcom/infraware/filemanager/FmFileProgress;->m_oProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    invoke-virtual {v0, p0}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 433
    :cond_0
    sget-object v0, Lcom/infraware/filemanager/FmFileProgress;->m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    if-eqz v0, :cond_1

    .line 434
    sget-object v0, Lcom/infraware/filemanager/FmFileProgress;->m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    invoke-virtual {v0, p0}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->registerCommandListener(Lcom/infraware/uxcontrol/uiunit/UiUnitView$OnCommandListener;)V

    .line 435
    :cond_1
    return-void
.end method

.method public static relocaleText()V
    .locals 4

    .prologue
    .line 438
    sget-object v2, Lcom/infraware/filemanager/FmFileProgress;->m_oProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    if-nez v2, :cond_1

    sget-object v2, Lcom/infraware/filemanager/FmFileProgress;->m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    if-nez v2, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    const/4 v1, 0x0

    .line 442
    .local v1, strTitle:Ljava/lang/String;
    const/4 v0, 0x0

    .line 444
    .local v0, strMessage:Ljava/lang/String;
    sget-object v2, Lcom/infraware/filemanager/FmFileProgress;->m_oProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    if-eqz v2, :cond_5

    .line 445
    sget v2, Lcom/infraware/filemanager/FmFileProgress;->m_nNormalProgressTitleID:I

    if-eqz v2, :cond_2

    .line 446
    sget-object v2, Lcom/infraware/filemanager/FmFileProgress;->m_oProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    sget v3, Lcom/infraware/filemanager/FmFileProgress;->m_nNormalProgressTitleID:I

    invoke-virtual {v2, v3}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 447
    :cond_2
    sget v2, Lcom/infraware/filemanager/FmFileProgress;->m_nNormalProgressMessageID:I

    if-eqz v2, :cond_3

    .line 448
    sget-object v2, Lcom/infraware/filemanager/FmFileProgress;->m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    sget v3, Lcom/infraware/filemanager/FmFileProgress;->m_nNormalProgressMessageID:I

    invoke-virtual {v2, v3}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 449
    :cond_3
    sget-object v2, Lcom/infraware/filemanager/FmFileProgress;->m_oNormalProgressObjects:[Ljava/lang/Object;

    if-eqz v2, :cond_4

    .line 450
    sget-object v2, Lcom/infraware/filemanager/FmFileProgress;->m_oNormalProgressObjects:[Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 452
    :cond_4
    sget-object v2, Lcom/infraware/filemanager/FmFileProgress;->m_oProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    invoke-virtual {v2, v1, v0}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setProgressText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 453
    sget-object v2, Lcom/infraware/filemanager/FmFileProgress;->m_oProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    invoke-virtual {v2}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->relocalButton()V

    .line 456
    :cond_5
    sget-object v2, Lcom/infraware/filemanager/FmFileProgress;->m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    if-eqz v2, :cond_0

    .line 457
    sget v2, Lcom/infraware/filemanager/FmFileProgress;->m_nTransperProgressTitleID:I

    if-eqz v2, :cond_6

    .line 458
    sget-object v2, Lcom/infraware/filemanager/FmFileProgress;->m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    sget v3, Lcom/infraware/filemanager/FmFileProgress;->m_nTransperProgressTitleID:I

    invoke-virtual {v2, v3}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 459
    :cond_6
    sget v2, Lcom/infraware/filemanager/FmFileProgress;->m_nTransperProgressMessageID:I

    if-eqz v2, :cond_7

    .line 460
    sget-object v2, Lcom/infraware/filemanager/FmFileProgress;->m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    sget v3, Lcom/infraware/filemanager/FmFileProgress;->m_nTransperProgressMessageID:I

    invoke-virtual {v2, v3}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 461
    :cond_7
    sget-object v2, Lcom/infraware/filemanager/FmFileProgress;->m_oTransperProgressObjects:[Ljava/lang/Object;

    if-eqz v2, :cond_8

    .line 462
    sget-object v2, Lcom/infraware/filemanager/FmFileProgress;->m_oTransperProgressObjects:[Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 464
    :cond_8
    sget-object v2, Lcom/infraware/filemanager/FmFileProgress;->m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    invoke-virtual {v2, v1, v0}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setProgressText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 465
    sget-object v2, Lcom/infraware/filemanager/FmFileProgress;->m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    invoke-virtual {v2}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->relocalButton()V

    goto :goto_0
.end method

.method public static setHorizonAccumulateProgressText(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "a_strTitle"
    .parameter "a_strProgressText"
    .parameter "a_nIncrease"

    .prologue
    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/infraware/filemanager/FmFileProgress;->m_strTransperProgressText:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, strProgressText:Ljava/lang/String;
    sget-object v1, Lcom/infraware/filemanager/FmFileProgress;->m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    invoke-virtual {v1, p0, v0}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setHorizonProgressText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 383
    return-void
.end method

.method public static setProgress(Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;Lcom/infraware/uxcontrol/uiunit/UiUnit_Progressbar;)V
    .locals 2
    .parameter "a_oProgressDialog"
    .parameter "a_oTitleProgressDialog"

    .prologue
    .line 37
    sget-object v0, Lcom/infraware/filemanager/FmFileProgress;->m_oProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    if-ne v0, p0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 41
    :cond_0
    sput-object p0, Lcom/infraware/filemanager/FmFileProgress;->m_oProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    .line 43
    sget-object v0, Lcom/infraware/filemanager/FmFileProgress;->m_oTitleProgressDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Progressbar;

    if-eqz v0, :cond_1

    .line 44
    sget-object v0, Lcom/infraware/filemanager/FmFileProgress;->m_oTitleProgressDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Progressbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Progressbar;->show(Z)V

    .line 45
    :cond_1
    sput-object p1, Lcom/infraware/filemanager/FmFileProgress;->m_oTitleProgressDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Progressbar;

    goto :goto_0
.end method

.method public static setProgressIncreaseBy(I)V
    .locals 2
    .parameter "a_nProgress"

    .prologue
    .line 386
    sget v0, Lcom/infraware/filemanager/FmFileProgress;->m_nProgress:I

    add-int/2addr v0, p0

    sput v0, Lcom/infraware/filemanager/FmFileProgress;->m_nProgress:I

    .line 388
    sget-object v0, Lcom/infraware/filemanager/FmFileProgress;->m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    sget v1, Lcom/infraware/filemanager/FmFileProgress;->m_nProgress:I

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setProgress(I)V

    .line 389
    return-void
.end method

.method public static setProgressText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "a_strTitle"
    .parameter "a_strProgressText"

    .prologue
    .line 404
    sget-object v0, Lcom/infraware/filemanager/FmFileProgress;->m_oProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    if-nez v0, :cond_0

    .line 407
    :goto_0
    return-void

    .line 406
    :cond_0
    sget-object v0, Lcom/infraware/filemanager/FmFileProgress;->m_oProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    invoke-virtual {v0, p0, p1}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setProgressText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static setTransferProgress(Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;)V
    .locals 0
    .parameter "a_oProgressDialog"

    .prologue
    .line 54
    sput-object p0, Lcom/infraware/filemanager/FmFileProgress;->m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    .line 55
    return-void
.end method

.method public static showTransgerProgress()V
    .locals 2

    .prologue
    .line 410
    sget-object v0, Lcom/infraware/filemanager/FmFileProgress;->m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    if-eqz v0, :cond_0

    .line 411
    sget-object v0, Lcom/infraware/filemanager/FmFileProgress;->m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 412
    :cond_0
    return-void
.end method

.method public static startProgress()V
    .locals 2

    .prologue
    .line 48
    sget-object v0, Lcom/infraware/filemanager/FmFileProgress;->m_oProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    if-nez v0, :cond_0

    .line 51
    :goto_0
    return-void

    .line 50
    :cond_0
    sget-object v0, Lcom/infraware/filemanager/FmFileProgress;->m_oProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    goto :goto_0
.end method

.method public static startProgress(II)V
    .locals 4
    .parameter "a_nTitleID"
    .parameter "a_nMessageID"

    .prologue
    .line 73
    sget-object v2, Lcom/infraware/filemanager/FmFileProgress;->m_oProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    if-nez v2, :cond_0

    .line 88
    :goto_0
    return-void

    .line 76
    :cond_0
    sput p0, Lcom/infraware/filemanager/FmFileProgress;->m_nNormalProgressTitleID:I

    .line 77
    sput p1, Lcom/infraware/filemanager/FmFileProgress;->m_nNormalProgressMessageID:I

    .line 79
    const/4 v1, 0x0

    .line 80
    .local v1, strTitle:Ljava/lang/String;
    const/4 v0, 0x0

    .line 81
    .local v0, strMessage:Ljava/lang/String;
    sget v2, Lcom/infraware/filemanager/FmFileProgress;->m_nNormalProgressTitleID:I

    if-eqz v2, :cond_1

    .line 82
    sget-object v2, Lcom/infraware/filemanager/FmFileProgress;->m_oProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    sget v3, Lcom/infraware/filemanager/FmFileProgress;->m_nNormalProgressTitleID:I

    invoke-virtual {v2, v3}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 83
    :cond_1
    sget v2, Lcom/infraware/filemanager/FmFileProgress;->m_nNormalProgressMessageID:I

    if-eqz v2, :cond_2

    .line 84
    sget-object v2, Lcom/infraware/filemanager/FmFileProgress;->m_oProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    sget v3, Lcom/infraware/filemanager/FmFileProgress;->m_nNormalProgressMessageID:I

    invoke-virtual {v2, v3}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 86
    :cond_2
    invoke-static {v1, v0}, Lcom/infraware/filemanager/FmFileProgress;->setProgressText(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    sget-object v2, Lcom/infraware/filemanager/FmFileProgress;->m_oProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    goto :goto_0
.end method

.method public static varargs startProgress(II[Ljava/lang/Object;)V
    .locals 4
    .parameter "a_nTitleID"
    .parameter "a_nMessageID"
    .parameter "args"

    .prologue
    .line 91
    sget-object v2, Lcom/infraware/filemanager/FmFileProgress;->m_oProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    if-nez v2, :cond_0

    .line 115
    :goto_0
    return-void

    .line 94
    :cond_0
    array-length v2, p2

    if-eqz v2, :cond_1

    .line 95
    const/4 v2, 0x0

    sput-object v2, Lcom/infraware/filemanager/FmFileProgress;->m_oNormalProgressObjects:[Ljava/lang/Object;

    .line 96
    sput-object p2, Lcom/infraware/filemanager/FmFileProgress;->m_oNormalProgressObjects:[Ljava/lang/Object;

    .line 99
    :cond_1
    sput p0, Lcom/infraware/filemanager/FmFileProgress;->m_nNormalProgressTitleID:I

    .line 100
    sput p1, Lcom/infraware/filemanager/FmFileProgress;->m_nNormalProgressMessageID:I

    .line 102
    const/4 v1, 0x0

    .line 103
    .local v1, strTitle:Ljava/lang/String;
    const/4 v0, 0x0

    .line 104
    .local v0, strMessage:Ljava/lang/String;
    sget v2, Lcom/infraware/filemanager/FmFileProgress;->m_nNormalProgressTitleID:I

    if-eqz v2, :cond_2

    .line 105
    sget-object v2, Lcom/infraware/filemanager/FmFileProgress;->m_oProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    sget v3, Lcom/infraware/filemanager/FmFileProgress;->m_nNormalProgressTitleID:I

    invoke-virtual {v2, v3}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 106
    :cond_2
    sget v2, Lcom/infraware/filemanager/FmFileProgress;->m_nNormalProgressMessageID:I

    if-eqz v2, :cond_3

    .line 107
    sget-object v2, Lcom/infraware/filemanager/FmFileProgress;->m_oProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    sget v3, Lcom/infraware/filemanager/FmFileProgress;->m_nNormalProgressMessageID:I

    invoke-virtual {v2, v3}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 109
    :cond_3
    array-length v2, p2

    if-eqz v2, :cond_4

    .line 110
    sget-object v2, Lcom/infraware/filemanager/FmFileProgress;->m_oNormalProgressObjects:[Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 113
    :cond_4
    invoke-static {v1, v0}, Lcom/infraware/filemanager/FmFileProgress;->setProgressText(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    sget-object v2, Lcom/infraware/filemanager/FmFileProgress;->m_oProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    goto :goto_0
.end method

.method public static startProgress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "a_strTitle"
    .parameter "a_strProgressText"

    .prologue
    .line 64
    sget-object v0, Lcom/infraware/filemanager/FmFileProgress;->m_oProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    if-nez v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-static {p0, p1}, Lcom/infraware/filemanager/FmFileProgress;->setProgressText(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    sget-object v0, Lcom/infraware/filemanager/FmFileProgress;->m_oProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    goto :goto_0
.end method

.method public static startTitleProgress()V
    .locals 2

    .prologue
    .line 58
    sget-object v0, Lcom/infraware/filemanager/FmFileProgress;->m_oTitleProgressDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Progressbar;

    if-nez v0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 60
    :cond_0
    sget-object v0, Lcom/infraware/filemanager/FmFileProgress;->m_oTitleProgressDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Progressbar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Progressbar;->show(Z)V

    goto :goto_0
.end method

.method public static startTransferProgress()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 118
    sget-object v4, Lcom/infraware/filemanager/FmFileProgress;->m_oProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    if-eqz v4, :cond_0

    .line 119
    sget-object v4, Lcom/infraware/filemanager/FmFileProgress;->m_oProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 121
    :cond_0
    sget-object v4, Lcom/infraware/filemanager/FmFileProgress;->m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    if-nez v4, :cond_1

    .line 151
    :goto_0
    return-void

    .line 124
    :cond_1
    const/4 v3, 0x0

    .line 125
    .local v3, strProgressTitle:Ljava/lang/String;
    const/4 v2, 0x0

    .line 127
    .local v2, strProgressText:Ljava/lang/String;
    sget v4, Lcom/infraware/filemanager/FmFileProgress;->m_nTransperProgressTitleID:I

    if-eqz v4, :cond_2

    .line 128
    sget-object v4, Lcom/infraware/filemanager/FmFileProgress;->m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    sget v5, Lcom/infraware/filemanager/FmFileProgress;->m_nTransperProgressTitleID:I

    invoke-virtual {v4, v5}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    .line 129
    :cond_2
    sget v4, Lcom/infraware/filemanager/FmFileProgress;->m_nTransperProgressMessageID:I

    if-eqz v4, :cond_3

    .line 130
    sget-object v4, Lcom/infraware/filemanager/FmFileProgress;->m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    sget v5, Lcom/infraware/filemanager/FmFileProgress;->m_nTransperProgressMessageID:I

    invoke-virtual {v4, v5}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 134
    :cond_3
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getAsyncOperation()Z

    move-result v4

    if-nez v4, :cond_5

    .line 135
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getIteratorIndex()I

    move-result v1

    .line 136
    .local v1, nTotalCount:I
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getIteratorIndex()I

    move-result v0

    .line 144
    .local v0, nCompleteCount:I
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 145
    sget-object v4, Lcom/infraware/filemanager/FmFileProgress;->m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    invoke-virtual {v4, v3, v2}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setHorizonProgressText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 147
    if-eqz v1, :cond_4

    .line 148
    sget-object v4, Lcom/infraware/filemanager/FmFileProgress;->m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    mul-int/lit8 v5, v0, 0x64

    div-int/2addr v5, v1

    invoke-virtual {v4, v5}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setProgress(I)V

    .line 150
    :cond_4
    sget-object v4, Lcom/infraware/filemanager/FmFileProgress;->m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    invoke-virtual {v4, v6}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    goto :goto_0

    .line 140
    .end local v0           #nCompleteCount:I
    .end local v1           #nTotalCount:I
    :cond_5
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getAsyncOperationNameTotalCount()I

    move-result v1

    .line 142
    .restart local v1       #nTotalCount:I
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getIteratorIndex()I

    move-result v4

    sub-int v0, v4, v6

    .restart local v0       #nCompleteCount:I
    goto :goto_1
.end method

.method public static startTransferProgress(II)V
    .locals 7
    .parameter "a_nTitleID"
    .parameter "a_nMessageID"

    .prologue
    const/4 v6, 0x1

    .line 184
    sget-object v4, Lcom/infraware/filemanager/FmFileProgress;->m_oProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    if-eqz v4, :cond_0

    .line 185
    sget-object v4, Lcom/infraware/filemanager/FmFileProgress;->m_oProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 187
    :cond_0
    sget-object v4, Lcom/infraware/filemanager/FmFileProgress;->m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    if-nez v4, :cond_1

    .line 219
    :goto_0
    return-void

    .line 190
    :cond_1
    sput p0, Lcom/infraware/filemanager/FmFileProgress;->m_nTransperProgressTitleID:I

    .line 191
    sput p1, Lcom/infraware/filemanager/FmFileProgress;->m_nTransperProgressMessageID:I

    .line 193
    const/4 v3, 0x0

    .line 194
    .local v3, strTitle:Ljava/lang/String;
    const/4 v2, 0x0

    .line 195
    .local v2, strMessage:Ljava/lang/String;
    sget v4, Lcom/infraware/filemanager/FmFileProgress;->m_nTransperProgressTitleID:I

    if-eqz v4, :cond_2

    .line 196
    sget-object v4, Lcom/infraware/filemanager/FmFileProgress;->m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    sget v5, Lcom/infraware/filemanager/FmFileProgress;->m_nTransperProgressTitleID:I

    invoke-virtual {v4, v5}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    .line 197
    :cond_2
    sget v4, Lcom/infraware/filemanager/FmFileProgress;->m_nTransperProgressMessageID:I

    if-eqz v4, :cond_3

    .line 198
    sget-object v4, Lcom/infraware/filemanager/FmFileProgress;->m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    sget v5, Lcom/infraware/filemanager/FmFileProgress;->m_nTransperProgressMessageID:I

    invoke-virtual {v4, v5}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 202
    :cond_3
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getAsyncOperation()Z

    move-result v4

    if-nez v4, :cond_5

    .line 203
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getIteratorIndex()I

    move-result v1

    .line 204
    .local v1, nTotalCount:I
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getIteratorIndex()I

    move-result v0

    .line 212
    .local v0, nCompleteCount:I
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 213
    sget-object v4, Lcom/infraware/filemanager/FmFileProgress;->m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    invoke-virtual {v4, v3, v2}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setHorizonProgressText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 215
    if-eqz v1, :cond_4

    .line 216
    sget-object v4, Lcom/infraware/filemanager/FmFileProgress;->m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    mul-int/lit8 v5, v0, 0x64

    div-int/2addr v5, v1

    invoke-virtual {v4, v5}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setProgress(I)V

    .line 218
    :cond_4
    sget-object v4, Lcom/infraware/filemanager/FmFileProgress;->m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    invoke-virtual {v4, v6}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    goto :goto_0

    .line 208
    .end local v0           #nCompleteCount:I
    .end local v1           #nTotalCount:I
    :cond_5
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getAsyncOperationNameTotalCount()I

    move-result v1

    .line 210
    .restart local v1       #nTotalCount:I
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getIteratorIndex()I

    move-result v4

    sub-int v0, v4, v6

    .restart local v0       #nCompleteCount:I
    goto :goto_1
.end method

.method public static varargs startTransferProgress(III[Ljava/lang/Object;)V
    .locals 4
    .parameter "a_nTitleID"
    .parameter "a_nMessageID"
    .parameter "a_nMax"
    .parameter "args"

    .prologue
    const/4 v3, 0x0

    .line 341
    sget-object v1, Lcom/infraware/filemanager/FmFileProgress;->m_oProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    if-eqz v1, :cond_0

    .line 342
    sget-object v1, Lcom/infraware/filemanager/FmFileProgress;->m_oProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    invoke-virtual {v1, v3}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 344
    :cond_0
    sget-object v1, Lcom/infraware/filemanager/FmFileProgress;->m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    if-nez v1, :cond_1

    .line 375
    :goto_0
    return-void

    .line 347
    :cond_1
    array-length v1, p3

    if-eqz v1, :cond_2

    .line 348
    const/4 v1, 0x0

    sput-object v1, Lcom/infraware/filemanager/FmFileProgress;->m_oTransperProgressObjects:[Ljava/lang/Object;

    .line 349
    sput-object p3, Lcom/infraware/filemanager/FmFileProgress;->m_oTransperProgressObjects:[Ljava/lang/Object;

    .line 352
    :cond_2
    sget-object v1, Lcom/infraware/filemanager/FmFileProgress;->m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    invoke-virtual {v1, p2}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setMax(I)V

    .line 354
    sput p0, Lcom/infraware/filemanager/FmFileProgress;->m_nTransperProgressTitleID:I

    .line 355
    sput p1, Lcom/infraware/filemanager/FmFileProgress;->m_nTransperProgressMessageID:I

    .line 357
    sget v1, Lcom/infraware/filemanager/FmFileProgress;->m_nTransperProgressMessageID:I

    if-eqz v1, :cond_3

    .line 358
    sget-object v1, Lcom/infraware/filemanager/FmFileProgress;->m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    sget v2, Lcom/infraware/filemanager/FmFileProgress;->m_nTransperProgressMessageID:I

    invoke-virtual {v1, v2}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/infraware/filemanager/FmFileProgress;->m_strTransperProgressText:Ljava/lang/String;

    .line 360
    :cond_3
    array-length v1, p3

    if-eqz v1, :cond_4

    .line 361
    sget-object v1, Lcom/infraware/filemanager/FmFileProgress;->m_strTransperProgressText:Ljava/lang/String;

    sget-object v2, Lcom/infraware/filemanager/FmFileProgress;->m_oTransperProgressObjects:[Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/infraware/filemanager/FmFileProgress;->m_strTransperProgressText:Ljava/lang/String;

    .line 363
    :cond_4
    sput v3, Lcom/infraware/filemanager/FmFileProgress;->m_nAccumulate:I

    .line 364
    sput p2, Lcom/infraware/filemanager/FmFileProgress;->m_nMax:I

    .line 365
    sput v3, Lcom/infraware/filemanager/FmFileProgress;->m_nProgress:I

    .line 367
    const/4 v0, 0x0

    .line 368
    .local v0, strTitle:Ljava/lang/String;
    sget v1, Lcom/infraware/filemanager/FmFileProgress;->m_nTransperProgressMessageID:I

    if-eqz v1, :cond_5

    .line 369
    sget-object v1, Lcom/infraware/filemanager/FmFileProgress;->m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    sget v2, Lcom/infraware/filemanager/FmFileProgress;->m_nTransperProgressMessageID:I

    invoke-virtual {v1, v2}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 371
    :cond_5
    invoke-static {v3}, Lcom/infraware/filemanager/FmFileProgress;->setProgressIncreaseBy(I)V

    .line 372
    sget-object v1, Lcom/infraware/filemanager/FmFileProgress;->m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    sget v2, Lcom/infraware/filemanager/FmFileProgress;->m_nTransperProgressMessageID:I

    invoke-virtual {v1, v2}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/infraware/filemanager/FmFileProgress;->setHorizonAccumulateProgressText(Ljava/lang/String;Ljava/lang/String;I)V

    .line 374
    sget-object v1, Lcom/infraware/filemanager/FmFileProgress;->m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    goto :goto_0
.end method

.method public static varargs startTransferProgress(II[Ljava/lang/Object;)V
    .locals 7
    .parameter "a_nTitleID"
    .parameter "a_nMessageID"
    .parameter "args"

    .prologue
    const/4 v6, 0x1

    .line 222
    sget-object v4, Lcom/infraware/filemanager/FmFileProgress;->m_oProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    if-eqz v4, :cond_0

    .line 223
    sget-object v4, Lcom/infraware/filemanager/FmFileProgress;->m_oProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 225
    :cond_0
    sget-object v4, Lcom/infraware/filemanager/FmFileProgress;->m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    if-nez v4, :cond_1

    .line 267
    :goto_0
    return-void

    .line 228
    :cond_1
    array-length v4, p2

    if-eqz v4, :cond_2

    .line 229
    const/4 v4, 0x0

    sput-object v4, Lcom/infraware/filemanager/FmFileProgress;->m_oTransperProgressObjects:[Ljava/lang/Object;

    .line 230
    sput-object p2, Lcom/infraware/filemanager/FmFileProgress;->m_oTransperProgressObjects:[Ljava/lang/Object;

    .line 233
    :cond_2
    sput p0, Lcom/infraware/filemanager/FmFileProgress;->m_nTransperProgressTitleID:I

    .line 234
    sput p1, Lcom/infraware/filemanager/FmFileProgress;->m_nTransperProgressMessageID:I

    .line 236
    const/4 v3, 0x0

    .line 237
    .local v3, strTitle:Ljava/lang/String;
    const/4 v2, 0x0

    .line 238
    .local v2, strProgressText:Ljava/lang/String;
    sget v4, Lcom/infraware/filemanager/FmFileProgress;->m_nTransperProgressTitleID:I

    if-eqz v4, :cond_3

    .line 239
    sget-object v4, Lcom/infraware/filemanager/FmFileProgress;->m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    sget v5, Lcom/infraware/filemanager/FmFileProgress;->m_nTransperProgressTitleID:I

    invoke-virtual {v4, v5}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    .line 241
    :cond_3
    sget v4, Lcom/infraware/filemanager/FmFileProgress;->m_nTransperProgressTitleID:I

    if-eqz v4, :cond_4

    .line 242
    sget-object v4, Lcom/infraware/filemanager/FmFileProgress;->m_oProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    sget v5, Lcom/infraware/filemanager/FmFileProgress;->m_nTransperProgressTitleID:I

    invoke-virtual {v4, v5}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    .line 243
    :cond_4
    sget v4, Lcom/infraware/filemanager/FmFileProgress;->m_nTransperProgressMessageID:I

    if-eqz v4, :cond_5

    .line 244
    sget-object v4, Lcom/infraware/filemanager/FmFileProgress;->m_oProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    sget v5, Lcom/infraware/filemanager/FmFileProgress;->m_nTransperProgressMessageID:I

    invoke-virtual {v4, v5}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 246
    :cond_5
    array-length v4, p2

    if-eqz v4, :cond_6

    .line 247
    sget-object v4, Lcom/infraware/filemanager/FmFileProgress;->m_oTransperProgressObjects:[Ljava/lang/Object;

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 251
    :cond_6
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getAsyncOperation()Z

    move-result v4

    if-nez v4, :cond_8

    .line 252
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getIteratorIndex()I

    move-result v1

    .line 253
    .local v1, nTotalCount:I
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getIteratorIndex()I

    move-result v0

    .line 260
    .local v0, nCompleteCount:I
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 261
    sget-object v4, Lcom/infraware/filemanager/FmFileProgress;->m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    invoke-virtual {v4, v3, v2}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setHorizonProgressText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 263
    if-eqz v1, :cond_7

    .line 264
    sget-object v4, Lcom/infraware/filemanager/FmFileProgress;->m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    mul-int/lit8 v5, v0, 0x64

    div-int/2addr v5, v1

    invoke-virtual {v4, v5}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setProgress(I)V

    .line 266
    :cond_7
    sget-object v4, Lcom/infraware/filemanager/FmFileProgress;->m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    invoke-virtual {v4, v6}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    goto/16 :goto_0

    .line 257
    .end local v0           #nCompleteCount:I
    .end local v1           #nTotalCount:I
    :cond_8
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getAsyncOperationNameTotalCount()I

    move-result v1

    .line 258
    .restart local v1       #nTotalCount:I
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getIteratorIndex()I

    move-result v4

    sub-int v0, v4, v6

    .restart local v0       #nCompleteCount:I
    goto :goto_1
.end method

.method public static startTransferProgress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "a_strTitle"
    .parameter "a_strProgressText"

    .prologue
    const/4 v5, 0x1

    .line 154
    sget-object v3, Lcom/infraware/filemanager/FmFileProgress;->m_oProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    if-eqz v3, :cond_0

    .line 155
    sget-object v3, Lcom/infraware/filemanager/FmFileProgress;->m_oProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 157
    :cond_0
    sget-object v3, Lcom/infraware/filemanager/FmFileProgress;->m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    if-nez v3, :cond_1

    .line 180
    :goto_0
    return-void

    .line 160
    :cond_1
    move-object v2, p1

    .line 163
    .local v2, strProgressText:Ljava/lang/String;
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getAsyncOperation()Z

    move-result v3

    if-nez v3, :cond_3

    .line 164
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getIteratorIndex()I

    move-result v1

    .line 165
    .local v1, nTotalCount:I
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getIteratorIndex()I

    move-result v0

    .line 173
    .local v0, nCompleteCount:I
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 174
    sget-object v3, Lcom/infraware/filemanager/FmFileProgress;->m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    invoke-virtual {v3, p0, v2}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setHorizonProgressText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 176
    if-eqz v1, :cond_2

    .line 177
    sget-object v3, Lcom/infraware/filemanager/FmFileProgress;->m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    mul-int/lit8 v4, v0, 0x64

    div-int/2addr v4, v1

    invoke-virtual {v3, v4}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setProgress(I)V

    .line 179
    :cond_2
    sget-object v3, Lcom/infraware/filemanager/FmFileProgress;->m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    invoke-virtual {v3, v5}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    goto :goto_0

    .line 169
    .end local v0           #nCompleteCount:I
    .end local v1           #nTotalCount:I
    :cond_3
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getAsyncOperationNameTotalCount()I

    move-result v1

    .line 171
    .restart local v1       #nTotalCount:I
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getIteratorIndex()I

    move-result v3

    sub-int v0, v3, v5

    .restart local v0       #nCompleteCount:I
    goto :goto_1
.end method

.method public static startTransferProgress(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "a_strTitle"
    .parameter "a_strProgressText"
    .parameter "a_nMax"

    .prologue
    const/4 v1, 0x0

    .line 270
    sget-object v0, Lcom/infraware/filemanager/FmFileProgress;->m_oProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    if-eqz v0, :cond_0

    .line 271
    sget-object v0, Lcom/infraware/filemanager/FmFileProgress;->m_oProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 273
    :cond_0
    sget-object v0, Lcom/infraware/filemanager/FmFileProgress;->m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    if-nez v0, :cond_1

    .line 338
    :goto_0
    return-void

    .line 276
    :cond_1
    sget-object v0, Lcom/infraware/filemanager/FmFileProgress;->m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    invoke-virtual {v0, p2}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->setMax(I)V

    .line 278
    sput-object p1, Lcom/infraware/filemanager/FmFileProgress;->m_strTransperProgressText:Ljava/lang/String;

    .line 279
    sput v1, Lcom/infraware/filemanager/FmFileProgress;->m_nAccumulate:I

    .line 280
    sput p2, Lcom/infraware/filemanager/FmFileProgress;->m_nMax:I

    .line 281
    sput v1, Lcom/infraware/filemanager/FmFileProgress;->m_nProgress:I

    .line 283
    invoke-static {v1}, Lcom/infraware/filemanager/FmFileProgress;->setProgressIncreaseBy(I)V

    .line 284
    invoke-static {p0, p1, v1}, Lcom/infraware/filemanager/FmFileProgress;->setHorizonAccumulateProgressText(Ljava/lang/String;Ljava/lang/String;I)V

    .line 286
    sget-object v0, Lcom/infraware/filemanager/FmFileProgress;->m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    goto :goto_0
.end method

.method public static stopProgress()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 420
    sget-object v0, Lcom/infraware/filemanager/FmFileProgress;->m_oProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    if-eqz v0, :cond_0

    .line 421
    sget-object v0, Lcom/infraware/filemanager/FmFileProgress;->m_oProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 423
    :cond_0
    sget-object v0, Lcom/infraware/filemanager/FmFileProgress;->m_oTitleProgressDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Progressbar;

    if-eqz v0, :cond_1

    .line 424
    sget-object v0, Lcom/infraware/filemanager/FmFileProgress;->m_oTitleProgressDialog:Lcom/infraware/uxcontrol/uiunit/UiUnit_Progressbar;

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_Progressbar;->show(Z)V

    .line 426
    :cond_1
    sget-object v0, Lcom/infraware/filemanager/FmFileProgress;->m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    if-eqz v0, :cond_2

    .line 427
    sget-object v0, Lcom/infraware/filemanager/FmFileProgress;->m_oTransferProgressDialog:Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;

    invoke-virtual {v0, v1}, Lcom/infraware/uxcontrol/uicontrol/common/UiProgressDialog;->show(Z)V

    .line 428
    :cond_2
    return-void
.end method

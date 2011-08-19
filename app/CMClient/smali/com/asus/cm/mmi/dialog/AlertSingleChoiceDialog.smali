.class public Lcom/asus/cm/mmi/dialog/AlertSingleChoiceDialog;
.super Lcom/asus/cm/mmi/dialog/DMDialog;
.source "AlertSingleChoiceDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/asus/cm/mmi/dialog/DMDialog;-><init>()V

    return-void
.end method


# virtual methods
.method customSetupDialog()V
    .locals 5

    .prologue
    .line 14
    iget-object v0, p0, Lcom/asus/cm/mmi/dialog/AlertSingleChoiceDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 15
    iget-object v0, p0, Lcom/asus/cm/mmi/dialog/AlertSingleChoiceDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    sget-object v1, Lcom/asus/cm/mmi/dialog/AlertSingleChoiceDialog;->mUAPd:Lcom/asus/cm/UIAlertParaDescriptor;

    iget-object v1, v1, Lcom/asus/cm/UIAlertParaDescriptor;->mChoiceOptions:[Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 16
    iget-object v0, p0, Lcom/asus/cm/mmi/dialog/AlertSingleChoiceDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 18
    sget-object v0, Lcom/asus/cm/mmi/dialog/AlertSingleChoiceDialog;->mUAPd:Lcom/asus/cm/UIAlertParaDescriptor;

    iget v0, v0, Lcom/asus/cm/UIAlertParaDescriptor;->mChoicedFlag:I

    if-nez v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/asus/cm/mmi/dialog/AlertSingleChoiceDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    .line 27
    :goto_0
    iget-object v0, p0, Lcom/asus/cm/mmi/dialog/AlertSingleChoiceDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x1040009

    invoke-virtual {p0, v1}, Lcom/asus/cm/mmi/dialog/AlertSingleChoiceDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 28
    iget-object v0, p0, Lcom/asus/cm/mmi/dialog/AlertSingleChoiceDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 31
    iget-object v0, p0, Lcom/asus/cm/mmi/dialog/AlertSingleChoiceDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    sget-object v1, Lcom/asus/cm/mmi/dialog/AlertSingleChoiceDialog;->mUAPd:Lcom/asus/cm/UIAlertParaDescriptor;

    iget-object v1, v1, Lcom/asus/cm/UIAlertParaDescriptor;->mDialogContent:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 32
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/asus/cm/mmi/dialog/AlertSingleChoiceDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    sget-object v1, Lcom/asus/cm/mmi/dialog/AlertSingleChoiceDialog;->mUAPd:Lcom/asus/cm/UIAlertParaDescriptor;

    iget v1, v1, Lcom/asus/cm/UIAlertParaDescriptor;->mChoicedFlag:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4000

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    div-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "pDialog"
    .parameter "pWhich"

    .prologue
    .line 35
    packed-switch p2, :pswitch_data_0

    .line 63
    sget-object v1, Lcom/asus/cm/mmi/dialog/AlertSingleChoiceDialog;->mUAPd:Lcom/asus/cm/UIAlertParaDescriptor;

    const-wide/high16 v2, 0x4000

    int-to-double v4, p2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v1, Lcom/asus/cm/UIAlertParaDescriptor;->mChoicedFlag:I

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "========================= ChoiceFlage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/asus/cm/mmi/dialog/AlertSingleChoiceDialog;->mUAPd:Lcom/asus/cm/UIAlertParaDescriptor;

    iget v2, v2, Lcom/asus/cm/UIAlertParaDescriptor;->mChoicedFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "========================="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    :goto_0
    return-void

    .line 37
    :pswitch_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 38
    sget-object v1, Lcom/asus/cm/mmi/dialog/AlertSingleChoiceDialog;->mTimer:Lcom/asus/cm/util/UIAlertDialogTimer;

    invoke-virtual {v1}, Lcom/asus/cm/util/UIAlertDialogTimer;->cancelTimer()V

    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/asus/cm/mmi/dialog/AlertSingleChoiceDialog;->mService:Lcom/asus/cm/IMmiCallback;

    sget-object v2, Lcom/asus/cm/CMService$UIAlertResult;->CHOICE_LIST_SELECTION:Lcom/asus/cm/CMService$UIAlertResult;

    invoke-virtual {v2}, Lcom/asus/cm/CMService$UIAlertResult;->ordinal()I

    move-result v2

    sget-object v3, Lcom/asus/cm/mmi/dialog/AlertSingleChoiceDialog;->mUAPd:Lcom/asus/cm/UIAlertParaDescriptor;

    iget v3, v3, Lcom/asus/cm/UIAlertParaDescriptor;->mChoicedFlag:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/asus/cm/IMmiCallback;->notifyUIAlertDialogResult(IIZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 44
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 50
    .end local v0           #ex:Landroid/os/RemoteException;
    :pswitch_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 51
    sget-object v1, Lcom/asus/cm/mmi/dialog/AlertSingleChoiceDialog;->mTimer:Lcom/asus/cm/util/UIAlertDialogTimer;

    invoke-virtual {v1}, Lcom/asus/cm/util/UIAlertDialogTimer;->cancelTimer()V

    .line 55
    :try_start_1
    iget-object v1, p0, Lcom/asus/cm/mmi/dialog/AlertSingleChoiceDialog;->mService:Lcom/asus/cm/IMmiCallback;

    sget-object v2, Lcom/asus/cm/CMService$UIAlertResult;->CANCEL:Lcom/asus/cm/CMService$UIAlertResult;

    invoke-virtual {v2}, Lcom/asus/cm/CMService$UIAlertResult;->ordinal()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/asus/cm/IMmiCallback;->notifyUIAlertDialogResult(IIZLjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 56
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 57
    .restart local v0       #ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

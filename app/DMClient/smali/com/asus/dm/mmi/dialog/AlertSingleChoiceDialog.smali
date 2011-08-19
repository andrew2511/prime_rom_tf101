.class public Lcom/asus/dm/mmi/dialog/AlertSingleChoiceDialog;
.super Lcom/asus/dm/mmi/dialog/DMDialog;
.source "AlertSingleChoiceDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/asus/dm/mmi/dialog/DMDialog;-><init>()V

    return-void
.end method


# virtual methods
.method customSetupDialog()V
    .locals 5

    .prologue
    .line 15
    iget-object v0, p0, Lcom/asus/dm/mmi/dialog/AlertSingleChoiceDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 16
    iget-object v0, p0, Lcom/asus/dm/mmi/dialog/AlertSingleChoiceDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    sget-object v1, Lcom/asus/dm/mmi/dialog/AlertSingleChoiceDialog;->mUAPd:Lcom/asus/dm/UIAlertParaDescriptor;

    iget-object v1, v1, Lcom/asus/dm/UIAlertParaDescriptor;->mChoiceOptions:[Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 17
    iget-object v0, p0, Lcom/asus/dm/mmi/dialog/AlertSingleChoiceDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 19
    sget-object v0, Lcom/asus/dm/mmi/dialog/AlertSingleChoiceDialog;->mUAPd:Lcom/asus/dm/UIAlertParaDescriptor;

    iget v0, v0, Lcom/asus/dm/UIAlertParaDescriptor;->mChoicedFlag:I

    if-nez v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/asus/dm/mmi/dialog/AlertSingleChoiceDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    .line 28
    :goto_0
    iget-object v0, p0, Lcom/asus/dm/mmi/dialog/AlertSingleChoiceDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f060023

    invoke-virtual {p0, v1}, Lcom/asus/dm/mmi/dialog/AlertSingleChoiceDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 29
    iget-object v0, p0, Lcom/asus/dm/mmi/dialog/AlertSingleChoiceDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 32
    iget-object v0, p0, Lcom/asus/dm/mmi/dialog/AlertSingleChoiceDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    sget-object v1, Lcom/asus/dm/mmi/dialog/AlertSingleChoiceDialog;->mUAPd:Lcom/asus/dm/UIAlertParaDescriptor;

    iget-object v1, v1, Lcom/asus/dm/UIAlertParaDescriptor;->mDialogContent:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 33
    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/asus/dm/mmi/dialog/AlertSingleChoiceDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    sget-object v1, Lcom/asus/dm/mmi/dialog/AlertSingleChoiceDialog;->mUAPd:Lcom/asus/dm/UIAlertParaDescriptor;

    iget v1, v1, Lcom/asus/dm/UIAlertParaDescriptor;->mChoicedFlag:I

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
    .line 36
    packed-switch p2, :pswitch_data_0

    .line 64
    sget-object v1, Lcom/asus/dm/mmi/dialog/AlertSingleChoiceDialog;->mUAPd:Lcom/asus/dm/UIAlertParaDescriptor;

    const-wide/high16 v2, 0x4000

    int-to-double v4, p2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v1, Lcom/asus/dm/UIAlertParaDescriptor;->mChoicedFlag:I

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "========================= ChoiceFlage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/asus/dm/mmi/dialog/AlertSingleChoiceDialog;->mUAPd:Lcom/asus/dm/UIAlertParaDescriptor;

    iget v2, v2, Lcom/asus/dm/UIAlertParaDescriptor;->mChoicedFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "========================="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    :goto_0
    return-void

    .line 38
    :pswitch_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 39
    sget-object v1, Lcom/asus/dm/mmi/dialog/AlertSingleChoiceDialog;->mTimer:Lcom/asus/dm/util/UIAlertDialogTimer;

    invoke-virtual {v1}, Lcom/asus/dm/util/UIAlertDialogTimer;->cancelTimer()V

    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/asus/dm/mmi/dialog/AlertSingleChoiceDialog;->mService:Lcom/asus/dm/IMmiCallback;

    sget-object v2, Lcom/asus/dm/DMService$UIAlertResult;->CHOICE_LIST_SELECTION:Lcom/asus/dm/DMService$UIAlertResult;

    invoke-virtual {v2}, Lcom/asus/dm/DMService$UIAlertResult;->ordinal()I

    move-result v2

    sget-object v3, Lcom/asus/dm/mmi/dialog/AlertSingleChoiceDialog;->mUAPd:Lcom/asus/dm/UIAlertParaDescriptor;

    iget v3, v3, Lcom/asus/dm/UIAlertParaDescriptor;->mChoicedFlag:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/asus/dm/IMmiCallback;->notifyUIAlertDialogResult(IIZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 45
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 51
    .end local v0           #ex:Landroid/os/RemoteException;
    :pswitch_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 52
    sget-object v1, Lcom/asus/dm/mmi/dialog/AlertSingleChoiceDialog;->mTimer:Lcom/asus/dm/util/UIAlertDialogTimer;

    invoke-virtual {v1}, Lcom/asus/dm/util/UIAlertDialogTimer;->cancelTimer()V

    .line 56
    :try_start_1
    iget-object v1, p0, Lcom/asus/dm/mmi/dialog/AlertSingleChoiceDialog;->mService:Lcom/asus/dm/IMmiCallback;

    sget-object v2, Lcom/asus/dm/DMService$UIAlertResult;->CANCEL:Lcom/asus/dm/DMService$UIAlertResult;

    invoke-virtual {v2}, Lcom/asus/dm/DMService$UIAlertResult;->ordinal()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/asus/dm/IMmiCallback;->notifyUIAlertDialogResult(IIZLjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 57
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 58
    .restart local v0       #ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

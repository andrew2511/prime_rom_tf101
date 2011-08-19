.class public abstract Lcom/asus/cm/mmi/dialog/DMDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "DMDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field protected static mTimer:Lcom/asus/cm/util/UIAlertDialogTimer;

.field protected static mUAPd:Lcom/asus/cm/UIAlertParaDescriptor;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mPassInIntent:Landroid/content/Intent;

.field protected mRegMgr:Lcom/asus/cm/CMCRegistryManager;

.field protected mService:Lcom/asus/cm/IMmiCallback;

.field protected misStartTimer:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/asus/cm/mmi/dialog/DMDialog;->mContext:Landroid/content/Context;

    .line 21
    iput-object v0, p0, Lcom/asus/cm/mmi/dialog/DMDialog;->mService:Lcom/asus/cm/IMmiCallback;

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/cm/mmi/dialog/DMDialog;->misStartTimer:Z

    return-void
.end method


# virtual methods
.method abstract customSetupDialog()V
.end method

.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .parameter "whichButton"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/asus/cm/mmi/dialog/DMDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getDialog()V
    .locals 4

    .prologue
    .line 49
    const v2, 0x1040013

    invoke-virtual {p0, v2}, Lcom/asus/cm/mmi/dialog/DMDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, positiveButtonText:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/asus/cm/mmi/dialog/DMDialog;->mService:Lcom/asus/cm/IMmiCallback;

    invoke-interface {v2}, Lcom/asus/cm/IMmiCallback;->getUIAlertParaDescriptor()Lcom/asus/cm/UIAlertParaDescriptor;

    move-result-object v2

    sput-object v2, Lcom/asus/cm/mmi/dialog/DMDialog;->mUAPd:Lcom/asus/cm/UIAlertParaDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    sget-object v2, Lcom/asus/cm/mmi/dialog/DMDialog;->mUAPd:Lcom/asus/cm/UIAlertParaDescriptor;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/asus/cm/mmi/dialog/DMDialog;->mUAPd:Lcom/asus/cm/UIAlertParaDescriptor;

    iget-object v2, v2, Lcom/asus/cm/UIAlertParaDescriptor;->mPositiveButtonText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 57
    sget-object v2, Lcom/asus/cm/mmi/dialog/DMDialog;->mUAPd:Lcom/asus/cm/UIAlertParaDescriptor;

    iget-object v1, v2, Lcom/asus/cm/UIAlertParaDescriptor;->mPositiveButtonText:Ljava/lang/String;

    .line 62
    :cond_0
    iget-object v2, p0, Lcom/asus/cm/mmi/dialog/DMDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    .line 63
    iget-object v2, p0, Lcom/asus/cm/mmi/dialog/DMDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v1, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 64
    iget-object v2, p0, Lcom/asus/cm/mmi/dialog/DMDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 67
    invoke-virtual {p0}, Lcom/asus/cm/mmi/dialog/DMDialog;->customSetupDialog()V

    .line 70
    invoke-virtual {p0}, Lcom/asus/cm/mmi/dialog/DMDialog;->setupAlert()V

    .line 76
    return-void

    .line 53
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 54
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    iput-object p0, p0, Lcom/asus/cm/mmi/dialog/DMDialog;->mContext:Landroid/content/Context;

    .line 31
    invoke-virtual {p0}, Lcom/asus/cm/mmi/dialog/DMDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/cm/mmi/dialog/DMDialog;->mPassInIntent:Landroid/content/Intent;

    .line 32
    iget-object v0, p0, Lcom/asus/cm/mmi/dialog/DMDialog;->mPassInIntent:Landroid/content/Intent;

    const-string v1, "mmicallback"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/asus/cm/IMmiCallback;

    iput-object v0, p0, Lcom/asus/cm/mmi/dialog/DMDialog;->mService:Lcom/asus/cm/IMmiCallback;

    .line 33
    invoke-static {p0}, Lcom/asus/cm/CMCRegistryManager;->getInstance(Landroid/content/Context;)Lcom/asus/cm/CMCRegistryManager;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/cm/mmi/dialog/DMDialog;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    .line 35
    iget-object v0, p0, Lcom/asus/cm/mmi/dialog/DMDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    .line 36
    iget-object v0, p0, Lcom/asus/cm/mmi/dialog/DMDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const/high16 v1, 0x104

    invoke-virtual {p0, v1}, Lcom/asus/cm/mmi/dialog/DMDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 37
    invoke-virtual {p0}, Lcom/asus/cm/mmi/dialog/DMDialog;->getDialog()V

    .line 38
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 88
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 42
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStart()V

    .line 43
    iget-object v0, p0, Lcom/asus/cm/mmi/dialog/DMDialog;->mPassInIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/cm/mmi/dialog/DMDialog;->mPassInIntent:Landroid/content/Intent;

    const-string v1, "setupTimer"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/asus/cm/mmi/dialog/DMDialog;->setupTimer()V

    .line 46
    :cond_0
    return-void
.end method

.method public setupTimer()V
    .locals 3

    .prologue
    .line 91
    sget-object v0, Lcom/asus/cm/mmi/dialog/DMDialog;->mUAPd:Lcom/asus/cm/UIAlertParaDescriptor;

    if-nez v0, :cond_0

    .line 92
    const-string v0, "Error @ setupTimer, mUAPd is null\n"

    invoke-static {p0, v0}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    :goto_0
    return-void

    .line 95
    :cond_0
    sget-object v0, Lcom/asus/cm/mmi/dialog/DMDialog;->mTimer:Lcom/asus/cm/util/UIAlertDialogTimer;

    if-eqz v0, :cond_1

    .line 96
    const-string v0, "Timer has set\n"

    invoke-static {p0, v0}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "================================\n(mMaxTime, mMinTime) : ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/asus/cm/mmi/dialog/DMDialog;->mUAPd:Lcom/asus/cm/UIAlertParaDescriptor;

    iget v1, v1, Lcom/asus/cm/UIAlertParaDescriptor;->mMaxTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/asus/cm/mmi/dialog/DMDialog;->mUAPd:Lcom/asus/cm/UIAlertParaDescriptor;

    iget v1, v1, Lcom/asus/cm/UIAlertParaDescriptor;->mMinTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n================================"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    new-instance v0, Lcom/asus/cm/util/UIAlertDialogTimer;

    sget-object v1, Lcom/asus/cm/mmi/dialog/DMDialog;->mUAPd:Lcom/asus/cm/UIAlertParaDescriptor;

    iget v1, v1, Lcom/asus/cm/UIAlertParaDescriptor;->mMaxTime:I

    mul-int/lit16 v1, v1, 0x3e8

    sget-object v2, Lcom/asus/cm/mmi/dialog/DMDialog;->mUAPd:Lcom/asus/cm/UIAlertParaDescriptor;

    iget v2, v2, Lcom/asus/cm/UIAlertParaDescriptor;->mMinTime:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-direct {v0, p0, v1, v2}, Lcom/asus/cm/util/UIAlertDialogTimer;-><init>(Lcom/asus/cm/mmi/dialog/DMDialog;II)V

    sput-object v0, Lcom/asus/cm/mmi/dialog/DMDialog;->mTimer:Lcom/asus/cm/util/UIAlertDialogTimer;

    .line 106
    sget-object v0, Lcom/asus/cm/mmi/dialog/DMDialog;->mTimer:Lcom/asus/cm/util/UIAlertDialogTimer;

    new-instance v1, Lcom/asus/cm/mmi/dialog/DMDialog$1;

    invoke-direct {v1, p0}, Lcom/asus/cm/mmi/dialog/DMDialog$1;-><init>(Lcom/asus/cm/mmi/dialog/DMDialog;)V

    invoke-virtual {v0, v1}, Lcom/asus/cm/util/UIAlertDialogTimer;->setDialogDismissCallback(Ljava/lang/Runnable;)V

    .line 117
    sget-object v0, Lcom/asus/cm/mmi/dialog/DMDialog;->mTimer:Lcom/asus/cm/util/UIAlertDialogTimer;

    invoke-virtual {v0}, Lcom/asus/cm/util/UIAlertDialogTimer;->start()V

    goto :goto_0
.end method

.class public Lcom/asus/dm/mmi/dialog/AlertFirmwareUpgradeFail;
.super Lcom/asus/dm/mmi/dialog/AlertDisplayDialog;
.source "AlertFirmwareUpgradeFail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/dm/mmi/dialog/AlertFirmwareUpgradeFail$TimerThread;
    }
.end annotation


# static fields
.field static final timer_period:J = 0x1388L


# instance fields
.field private mTimer:Ljava/util/Timer;

.field private timer_task:Lcom/asus/dm/mmi/dialog/AlertFirmwareUpgradeFail$TimerThread;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/asus/dm/mmi/dialog/AlertDisplayDialog;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public cancelTimer()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "cancelTimer()"

    invoke-static {p0, v0}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/asus/dm/mmi/dialog/AlertFirmwareUpgradeFail;->timer_task:Lcom/asus/dm/mmi/dialog/AlertFirmwareUpgradeFail$TimerThread;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/asus/dm/mmi/dialog/AlertFirmwareUpgradeFail;->timer_task:Lcom/asus/dm/mmi/dialog/AlertFirmwareUpgradeFail$TimerThread;

    invoke-virtual {v0}, Lcom/asus/dm/mmi/dialog/AlertFirmwareUpgradeFail$TimerThread;->cancel()Z

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/asus/dm/mmi/dialog/AlertFirmwareUpgradeFail;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/asus/dm/mmi/dialog/AlertFirmwareUpgradeFail;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 40
    :cond_1
    return-void
.end method

.method customSetupDialog()V
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/asus/dm/mmi/dialog/AlertFirmwareUpgradeFail;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f060004

    invoke-virtual {p0, v1}, Lcom/asus/dm/mmi/dialog/AlertFirmwareUpgradeFail;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 24
    iget-object v0, p0, Lcom/asus/dm/mmi/dialog/AlertFirmwareUpgradeFail;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    sget-object v1, Lcom/asus/dm/mmi/dialog/AlertFirmwareUpgradeFail;->mUAPd:Lcom/asus/dm/UIAlertParaDescriptor;

    iget-object v1, v1, Lcom/asus/dm/UIAlertParaDescriptor;->mDialogContent:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 26
    iget-object v0, p0, Lcom/asus/dm/mmi/dialog/AlertFirmwareUpgradeFail;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 27
    iget-object v0, p0, Lcom/asus/dm/mmi/dialog/AlertFirmwareUpgradeFail;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 29
    iget-object v0, p0, Lcom/asus/dm/mmi/dialog/AlertFirmwareUpgradeFail;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 30
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 66
    const-string v0, "onCancel()"

    invoke-static {p0, v0}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/asus/dm/mmi/dialog/AlertFirmwareUpgradeFail;->cancelTimer()V

    .line 68
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "pDialog"
    .parameter "pWhich"

    .prologue
    .line 72
    const-string v0, "onClick()"

    invoke-static {p0, v0}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/asus/dm/mmi/dialog/AlertFirmwareUpgradeFail;->cancelTimer()V

    .line 74
    packed-switch p2, :pswitch_data_0

    .line 79
    :goto_0
    return-void

    .line 76
    :pswitch_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasFocus"

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowFocusChanged hasFocus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    if-eqz p1, :cond_0

    .line 59
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/asus/dm/mmi/dialog/AlertFirmwareUpgradeFail;->mTimer:Ljava/util/Timer;

    .line 60
    new-instance v0, Lcom/asus/dm/mmi/dialog/AlertFirmwareUpgradeFail$TimerThread;

    invoke-direct {v0, p0, p0}, Lcom/asus/dm/mmi/dialog/AlertFirmwareUpgradeFail$TimerThread;-><init>(Lcom/asus/dm/mmi/dialog/AlertFirmwareUpgradeFail;Landroid/content/DialogInterface;)V

    iput-object v0, p0, Lcom/asus/dm/mmi/dialog/AlertFirmwareUpgradeFail;->timer_task:Lcom/asus/dm/mmi/dialog/AlertFirmwareUpgradeFail$TimerThread;

    .line 61
    iget-object v0, p0, Lcom/asus/dm/mmi/dialog/AlertFirmwareUpgradeFail;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/asus/dm/mmi/dialog/AlertFirmwareUpgradeFail;->timer_task:Lcom/asus/dm/mmi/dialog/AlertFirmwareUpgradeFail$TimerThread;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 63
    :cond_0
    return-void
.end method

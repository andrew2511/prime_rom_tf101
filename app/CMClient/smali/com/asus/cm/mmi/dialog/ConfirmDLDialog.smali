.class public Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;
.super Lcom/asus/cm/mmi/dialog/DMDialog;
.source "ConfirmDLDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/cm/mmi/dialog/ConfirmDLDialog$TimerThread;
    }
.end annotation


# static fields
.field static final timer_period:J = 0x7530L


# instance fields
.field private mRBDd:Lcom/asus/cm/RBDownloadDescriptor;

.field mRegMgr:Lcom/asus/cm/CMCRegistryManager;

.field private mTimer:Ljava/util/Timer;

.field private timer_task:Lcom/asus/cm/mmi/dialog/ConfirmDLDialog$TimerThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/asus/cm/mmi/dialog/DMDialog;-><init>()V

    .line 24
    invoke-static {p0}, Lcom/asus/cm/CMCRegistryManager;->getInstance(Landroid/content/Context;)Lcom/asus/cm/CMCRegistryManager;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    .line 159
    return-void
.end method


# virtual methods
.method public cancelTimer()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;->timer_task:Lcom/asus/cm/mmi/dialog/ConfirmDLDialog$TimerThread;

    invoke-virtual {v0}, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog$TimerThread;->cancel()Z

    .line 121
    iget-object v0, p0, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 122
    return-void
.end method

.method customSetupDialog()V
    .locals 11

    .prologue
    const-wide/high16 v9, 0x4090

    .line 54
    :try_start_0
    iget-object v7, p0, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;->mService:Lcom/asus/cm/IMmiCallback;

    invoke-interface {v7}, Lcom/asus/cm/IMmiCallback;->getDLDescriptor()Lcom/asus/cm/RBDownloadDescriptor;

    move-result-object v7

    iput-object v7, p0, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;->mRBDd:Lcom/asus/cm/RBDownloadDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    iget-object v7, p0, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;->mRBDd:Lcom/asus/cm/RBDownloadDescriptor;

    if-eqz v7, :cond_2

    .line 58
    iget-object v7, p0, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;->mRBDd:Lcom/asus/cm/RBDownloadDescriptor;

    iget-wide v7, v7, Lcom/asus/cm/RBDownloadDescriptor;->size:J

    long-to-double v7, v7

    div-double/2addr v7, v9

    div-double v3, v7, v9

    .line 59
    .local v3, ddSize:D
    iget-object v7, p0, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;->mRBDd:Lcom/asus/cm/RBDownloadDescriptor;

    iget-object v7, v7, Lcom/asus/cm/RBDownloadDescriptor;->field:[Ljava/lang/String;

    const/4 v8, 0x3

    aget-object v1, v7, v8

    .line 60
    .local v1, ddName:Ljava/lang/String;
    iget-object v7, p0, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;->mRBDd:Lcom/asus/cm/RBDownloadDescriptor;

    iget-object v7, v7, Lcom/asus/cm/RBDownloadDescriptor;->field:[Ljava/lang/String;

    const/4 v8, 0x6

    aget-object v0, v7, v8

    .line 61
    .local v0, ddDescription:Ljava/lang/String;
    iget-object v7, p0, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;->mRBDd:Lcom/asus/cm/RBDownloadDescriptor;

    invoke-virtual {v7}, Lcom/asus/cm/RBDownloadDescriptor;->getPriority()Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, ddPriotity:Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .local v5, message:Ljava/lang/StringBuilder;
    new-instance v7, Ljava/text/DecimalFormat;

    const-string v8, "###,###,###.##"

    invoke-direct {v7, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    .line 71
    .local v6, sSize:Ljava/lang/String;
    iget-object v7, p0, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;->mContext:Landroid/content/Context;

    const v8, 0x7f06000a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v7, " ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v7, " MB)\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-object v7, p0, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;->mContext:Landroid/content/Context;

    const v8, 0x7f06000b

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-object v7, p0, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;->mContext:Landroid/content/Context;

    const v8, 0x7f06000c

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-object v7, p0, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;->mContext:Landroid/content/Context;

    const v8, 0x7f06000d

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-object v7, p0, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;->mContext:Landroid/content/Context;

    const v8, 0x7f06000e

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 93
    iget-object v7, p0, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v8, 0x7f060010

    invoke-virtual {p0, v8}, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 101
    :cond_0
    iget-object v7, p0, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v5, v7, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 102
    iget-object v7, p0, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    .line 103
    iget-object v7, p0, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v8, 0x1040013

    invoke-virtual {p0, v8}, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 104
    iget-object v7, p0, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v7, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 106
    iget-object v7, p0, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v7, Lcom/android/internal/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 108
    const-string v7, "priority"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 110
    iget-object v7, p0, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v7, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 111
    iget-object v7, p0, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v8, 0x1040009

    invoke-virtual {p0, v8}, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 114
    iget-object v7, p0, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v7, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 115
    iget-object v7, p0, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v8, 0x7f06000f

    invoke-virtual {p0, v8}, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 117
    :cond_1
    return-void

    .line 63
    .end local v0           #ddDescription:Ljava/lang/String;
    .end local v1           #ddName:Ljava/lang/String;
    .end local v2           #ddPriotity:Ljava/lang/String;
    .end local v3           #ddSize:D
    .end local v5           #message:Ljava/lang/StringBuilder;
    .end local v6           #sSize:Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v7}, Lcom/asus/cm/CMCRegistryManager;->getDLTotalSize()I

    move-result v7

    int-to-double v7, v7

    div-double/2addr v7, v9

    div-double v3, v7, v9

    .line 64
    .restart local v3       #ddSize:D
    iget-object v7, p0, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v7}, Lcom/asus/cm/CMCRegistryManager;->getDLName()Ljava/lang/String;

    move-result-object v1

    .line 65
    .restart local v1       #ddName:Ljava/lang/String;
    iget-object v7, p0, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v7}, Lcom/asus/cm/CMCRegistryManager;->getDLDescriotion()Ljava/lang/String;

    move-result-object v0

    .line 66
    .restart local v0       #ddDescription:Ljava/lang/String;
    iget-object v7, p0, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v7}, Lcom/asus/cm/CMCRegistryManager;->getPackagePriority()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #ddPriotity:Ljava/lang/String;
    goto/16 :goto_1

    .line 55
    .end local v0           #ddDescription:Ljava/lang/String;
    .end local v1           #ddName:Ljava/lang/String;
    .end local v2           #ddPriotity:Ljava/lang/String;
    .end local v3           #ddSize:D
    :catch_0
    move-exception v7

    goto/16 :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 178
    const-string v0, "onCancel()"

    invoke-static {p0, v0}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;->cancelTimer()V

    .line 180
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "pDialog"
    .parameter "pWhich"

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;->cancelTimer()V

    .line 127
    packed-switch p2, :pswitch_data_0

    .line 157
    :goto_0
    return-void

    .line 129
    :pswitch_0
    iget-object v3, p0, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    sget-object v4, Lcom/asus/cm/CMClient$DMClientState;->IDLE:Lcom/asus/cm/CMClient$DMClientState;

    invoke-virtual {v3, v4}, Lcom/asus/cm/CMCRegistryManager;->setState(Lcom/asus/cm/CMClient$DMClientState;)V

    .line 131
    :try_start_0
    iget-object v3, p0, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;->mService:Lcom/asus/cm/IMmiCallback;

    invoke-interface {v3}, Lcom/asus/cm/IMmiCallback;->doDownload()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_0

    .line 132
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 133
    .local v2, e2:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 139
    .end local v2           #e2:Landroid/os/RemoteException;
    :pswitch_1
    iget-object v3, p0, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    sget-object v4, Lcom/asus/cm/CMClient$DMClientState;->IDLE:Lcom/asus/cm/CMClient$DMClientState;

    invoke-virtual {v3, v4}, Lcom/asus/cm/CMCRegistryManager;->setState(Lcom/asus/cm/CMClient$DMClientState;)V

    .line 141
    :try_start_1
    iget-object v3, p0, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;->mService:Lcom/asus/cm/IMmiCallback;

    const/16 v4, 0x191

    invoke-interface {v3, v4}, Lcom/asus/cm/IMmiCallback;->doCancelDMSession(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 145
    :goto_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_0

    .line 142
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 143
    .local v1, e1:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 150
    .end local v1           #e1:Landroid/os/RemoteException;
    :pswitch_2
    :try_start_2
    iget-object v3, p0, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;->mService:Lcom/asus/cm/IMmiCallback;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/asus/cm/IMmiCallback;->prepareDLNotification(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 154
    :goto_3
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_0

    .line 151
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 152
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 127
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-static {p0}, Lcom/asus/cm/CMDLNotification;->clearNotification(Landroid/content/Context;)V

    .line 34
    invoke-super {p0, p1}, Lcom/asus/cm/mmi/dialog/DMDialog;->onCreate(Landroid/os/Bundle;)V

    .line 35
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 39
    invoke-super {p0}, Lcom/asus/cm/mmi/dialog/DMDialog;->onResume()V

    .line 41
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;->mTimer:Ljava/util/Timer;

    .line 42
    new-instance v0, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog$TimerThread;

    invoke-direct {v0, p0, p0}, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog$TimerThread;-><init>(Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;Landroid/content/DialogInterface;)V

    iput-object v0, p0, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;->timer_task:Lcom/asus/cm/mmi/dialog/ConfirmDLDialog$TimerThread;

    .line 43
    iget-object v0, p0, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;->timer_task:Lcom/asus/cm/mmi/dialog/ConfirmDLDialog$TimerThread;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 44
    return-void
.end method

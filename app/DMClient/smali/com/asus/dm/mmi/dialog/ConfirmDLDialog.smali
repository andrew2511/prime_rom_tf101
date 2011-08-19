.class public Lcom/asus/dm/mmi/dialog/ConfirmDLDialog;
.super Lcom/asus/dm/mmi/dialog/DMDialog;
.source "ConfirmDLDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/dm/mmi/dialog/ConfirmDLDialog$TimerThread;
    }
.end annotation


# static fields
.field static final timer_period:J = 0x7530L


# instance fields
.field private mRBDd:Lcom/asus/dm/RBDownloadDescriptor;

.field mRegMgr:Lcom/asus/dm/DMCRegistryManager;

.field private mTimer:Ljava/util/Timer;

.field private timer_task:Lcom/asus/dm/mmi/dialog/ConfirmDLDialog$TimerThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/asus/dm/mmi/dialog/DMDialog;-><init>()V

    .line 25
    invoke-static {p0}, Lcom/asus/dm/DMCRegistryManager;->getInstance(Landroid/content/Context;)Lcom/asus/dm/DMCRegistryManager;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dm/mmi/dialog/ConfirmDLDialog;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    .line 167
    return-void
.end method


# virtual methods
.method public cancelTimer()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/asus/dm/mmi/dialog/ConfirmDLDialog;->timer_task:Lcom/asus/dm/mmi/dialog/ConfirmDLDialog$TimerThread;

    invoke-virtual {v0}, Lcom/asus/dm/mmi/dialog/ConfirmDLDialog$TimerThread;->cancel()Z

    .line 129
    iget-object v0, p0, Lcom/asus/dm/mmi/dialog/ConfirmDLDialog;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 130
    return-void
.end method

.method customSetupDialog()V
    .locals 11

    .prologue
    const-wide/high16 v9, 0x4090

    .line 55
    :try_start_0
    iget-object v7, p0, Lcom/asus/dm/mmi/dialog/ConfirmDLDialog;->mService:Lcom/asus/dm/IMmiCallback;

    invoke-interface {v7}, Lcom/asus/dm/IMmiCallback;->getDLDescriptor()Lcom/asus/dm/RBDownloadDescriptor;

    move-result-object v7

    iput-object v7, p0, Lcom/asus/dm/mmi/dialog/ConfirmDLDialog;->mRBDd:Lcom/asus/dm/RBDownloadDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    iget-object v7, p0, Lcom/asus/dm/mmi/dialog/ConfirmDLDialog;->mRBDd:Lcom/asus/dm/RBDownloadDescriptor;

    if-eqz v7, :cond_3

    .line 59
    iget-object v7, p0, Lcom/asus/dm/mmi/dialog/ConfirmDLDialog;->mRBDd:Lcom/asus/dm/RBDownloadDescriptor;

    iget-wide v7, v7, Lcom/asus/dm/RBDownloadDescriptor;->size:J

    long-to-double v7, v7

    div-double/2addr v7, v9

    div-double v3, v7, v9

    .line 60
    .local v3, ddSize:D
    iget-object v7, p0, Lcom/asus/dm/mmi/dialog/ConfirmDLDialog;->mRBDd:Lcom/asus/dm/RBDownloadDescriptor;

    iget-object v7, v7, Lcom/asus/dm/RBDownloadDescriptor;->field:[Ljava/lang/String;

    const/4 v8, 0x3

    aget-object v1, v7, v8

    .line 61
    .local v1, ddName:Ljava/lang/String;
    iget-object v7, p0, Lcom/asus/dm/mmi/dialog/ConfirmDLDialog;->mRBDd:Lcom/asus/dm/RBDownloadDescriptor;

    iget-object v7, v7, Lcom/asus/dm/RBDownloadDescriptor;->field:[Ljava/lang/String;

    const/4 v8, 0x6

    aget-object v0, v7, v8

    .line 62
    .local v0, ddDescription:Ljava/lang/String;
    iget-object v7, p0, Lcom/asus/dm/mmi/dialog/ConfirmDLDialog;->mRBDd:Lcom/asus/dm/RBDownloadDescriptor;

    invoke-virtual {v7}, Lcom/asus/dm/RBDownloadDescriptor;->getPriority()Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, ddPriotity:Ljava/lang/String;
    :goto_1
    if-nez v0, :cond_0

    .line 71
    const-string v0, ""

    .line 74
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .local v5, message:Ljava/lang/StringBuilder;
    new-instance v7, Ljava/text/DecimalFormat;

    const-string v8, "###,###,###.##"

    invoke-direct {v7, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    .line 77
    .local v6, sSize:Ljava/lang/String;
    iget-object v7, p0, Lcom/asus/dm/mmi/dialog/ConfirmDLDialog;->mContext:Landroid/content/Context;

    const v8, 0x7f06002c

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v7, " ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v7, " MB)\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-object v7, p0, Lcom/asus/dm/mmi/dialog/ConfirmDLDialog;->mContext:Landroid/content/Context;

    const v8, 0x7f060007

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v7, p0, Lcom/asus/dm/mmi/dialog/ConfirmDLDialog;->mContext:Landroid/content/Context;

    const v8, 0x7f060008

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-object v7, p0, Lcom/asus/dm/mmi/dialog/ConfirmDLDialog;->mContext:Landroid/content/Context;

    const v8, 0x7f060009

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v7, p0, Lcom/asus/dm/mmi/dialog/ConfirmDLDialog;->mContext:Landroid/content/Context;

    const v8, 0x7f06000a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string v7, "ro.pad.features.modem"

    const/4 v8, 0x1

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 101
    iget-object v7, p0, Lcom/asus/dm/mmi/dialog/ConfirmDLDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v8, 0x7f06000c

    invoke-virtual {p0, v8}, Lcom/asus/dm/mmi/dialog/ConfirmDLDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 109
    :cond_1
    iget-object v7, p0, Lcom/asus/dm/mmi/dialog/ConfirmDLDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v5, v7, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 110
    iget-object v7, p0, Lcom/asus/dm/mmi/dialog/ConfirmDLDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    .line 111
    iget-object v7, p0, Lcom/asus/dm/mmi/dialog/ConfirmDLDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v8, 0x7f060024

    invoke-virtual {p0, v8}, Lcom/asus/dm/mmi/dialog/ConfirmDLDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 112
    iget-object v7, p0, Lcom/asus/dm/mmi/dialog/ConfirmDLDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v7, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 114
    iget-object v7, p0, Lcom/asus/dm/mmi/dialog/ConfirmDLDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v7, Lcom/android/internal/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 116
    const-string v7, "priority"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 118
    iget-object v7, p0, Lcom/asus/dm/mmi/dialog/ConfirmDLDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v7, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 119
    iget-object v7, p0, Lcom/asus/dm/mmi/dialog/ConfirmDLDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v8, 0x7f060025

    invoke-virtual {p0, v8}, Lcom/asus/dm/mmi/dialog/ConfirmDLDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 122
    iget-object v7, p0, Lcom/asus/dm/mmi/dialog/ConfirmDLDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v7, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 123
    iget-object v7, p0, Lcom/asus/dm/mmi/dialog/ConfirmDLDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v8, 0x7f06000b

    invoke-virtual {p0, v8}, Lcom/asus/dm/mmi/dialog/ConfirmDLDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 125
    :cond_2
    return-void

    .line 64
    .end local v0           #ddDescription:Ljava/lang/String;
    .end local v1           #ddName:Ljava/lang/String;
    .end local v2           #ddPriotity:Ljava/lang/String;
    .end local v3           #ddSize:D
    .end local v5           #message:Ljava/lang/StringBuilder;
    .end local v6           #sSize:Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/asus/dm/mmi/dialog/ConfirmDLDialog;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v7}, Lcom/asus/dm/DMCRegistryManager;->getDLTotalSize()I

    move-result v7

    int-to-double v7, v7

    div-double/2addr v7, v9

    div-double v3, v7, v9

    .line 65
    .restart local v3       #ddSize:D
    iget-object v7, p0, Lcom/asus/dm/mmi/dialog/ConfirmDLDialog;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v7}, Lcom/asus/dm/DMCRegistryManager;->getDLName()Ljava/lang/String;

    move-result-object v1

    .line 66
    .restart local v1       #ddName:Ljava/lang/String;
    iget-object v7, p0, Lcom/asus/dm/mmi/dialog/ConfirmDLDialog;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v7}, Lcom/asus/dm/DMCRegistryManager;->getDLDescriotion()Ljava/lang/String;

    move-result-object v0

    .line 67
    .restart local v0       #ddDescription:Ljava/lang/String;
    iget-object v7, p0, Lcom/asus/dm/mmi/dialog/ConfirmDLDialog;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v7}, Lcom/asus/dm/DMCRegistryManager;->getPackagePriority()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #ddPriotity:Ljava/lang/String;
    goto/16 :goto_1

    .line 56
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
    .line 186
    const-string v0, "onCancel()"

    invoke-static {p0, v0}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/asus/dm/mmi/dialog/ConfirmDLDialog;->cancelTimer()V

    .line 188
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "pDialog"
    .parameter "pWhich"

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/asus/dm/mmi/dialog/ConfirmDLDialog;->cancelTimer()V

    .line 135
    packed-switch p2, :pswitch_data_0

    .line 165
    :goto_0
    return-void

    .line 137
    :pswitch_0
    iget-object v3, p0, Lcom/asus/dm/mmi/dialog/ConfirmDLDialog;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    sget-object v4, Lcom/asus/dm/DMClient$DMClientState;->IDLE:Lcom/asus/dm/DMClient$DMClientState;

    invoke-virtual {v3, v4}, Lcom/asus/dm/DMCRegistryManager;->setState(Lcom/asus/dm/DMClient$DMClientState;)V

    .line 139
    :try_start_0
    iget-object v3, p0, Lcom/asus/dm/mmi/dialog/ConfirmDLDialog;->mService:Lcom/asus/dm/IMmiCallback;

    invoke-interface {v3}, Lcom/asus/dm/IMmiCallback;->doDownload()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_0

    .line 140
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 141
    .local v2, e2:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 147
    .end local v2           #e2:Landroid/os/RemoteException;
    :pswitch_1
    iget-object v3, p0, Lcom/asus/dm/mmi/dialog/ConfirmDLDialog;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    sget-object v4, Lcom/asus/dm/DMClient$DMClientState;->IDLE:Lcom/asus/dm/DMClient$DMClientState;

    invoke-virtual {v3, v4}, Lcom/asus/dm/DMCRegistryManager;->setState(Lcom/asus/dm/DMClient$DMClientState;)V

    .line 149
    :try_start_1
    iget-object v3, p0, Lcom/asus/dm/mmi/dialog/ConfirmDLDialog;->mService:Lcom/asus/dm/IMmiCallback;

    const/16 v4, 0x191

    invoke-interface {v3, v4}, Lcom/asus/dm/IMmiCallback;->doCancelDMSession(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 153
    :goto_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_0

    .line 150
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 151
    .local v1, e1:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 158
    .end local v1           #e1:Landroid/os/RemoteException;
    :pswitch_2
    :try_start_2
    iget-object v3, p0, Lcom/asus/dm/mmi/dialog/ConfirmDLDialog;->mService:Lcom/asus/dm/IMmiCallback;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/asus/dm/IMmiCallback;->prepareDLNotification(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 162
    :goto_3
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_0

    .line 159
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 160
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 135
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
    .line 34
    invoke-static {p0}, Lcom/asus/dm/DMDLNotification;->clearNotification(Landroid/content/Context;)V

    .line 35
    invoke-super {p0, p1}, Lcom/asus/dm/mmi/dialog/DMDialog;->onCreate(Landroid/os/Bundle;)V

    .line 36
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 40
    invoke-super {p0}, Lcom/asus/dm/mmi/dialog/DMDialog;->onResume()V

    .line 42
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/asus/dm/mmi/dialog/ConfirmDLDialog;->mTimer:Ljava/util/Timer;

    .line 43
    new-instance v0, Lcom/asus/dm/mmi/dialog/ConfirmDLDialog$TimerThread;

    invoke-direct {v0, p0, p0}, Lcom/asus/dm/mmi/dialog/ConfirmDLDialog$TimerThread;-><init>(Lcom/asus/dm/mmi/dialog/ConfirmDLDialog;Landroid/content/DialogInterface;)V

    iput-object v0, p0, Lcom/asus/dm/mmi/dialog/ConfirmDLDialog;->timer_task:Lcom/asus/dm/mmi/dialog/ConfirmDLDialog$TimerThread;

    .line 44
    iget-object v0, p0, Lcom/asus/dm/mmi/dialog/ConfirmDLDialog;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/asus/dm/mmi/dialog/ConfirmDLDialog;->timer_task:Lcom/asus/dm/mmi/dialog/ConfirmDLDialog$TimerThread;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 45
    return-void
.end method

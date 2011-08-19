.class public Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;
.super Landroid/content/BroadcastReceiver;
.source "StreamingWarningHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/videos/ui/StreamingWarningHelper$Listener;
    }
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private dialog:Landroid/app/Dialog;

.field private final listener:Lcom/google/android/youtube/videos/ui/StreamingWarningHelper$Listener;

.field private final preferences:Landroid/content/SharedPreferences;

.field private stream:Lcom/google/android/youtube/core/model/Stream;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/google/android/youtube/videos/ui/StreamingWarningHelper$Listener;)V
    .locals 1
    .parameter "activity"
    .parameter "preferences"
    .parameter "listener"

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 48
    const-string v0, "activity can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->activity:Landroid/app/Activity;

    .line 49
    const-string v0, "preferences can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->preferences:Landroid/content/SharedPreferences;

    .line 50
    const-string v0, "listener can\'t be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper$Listener;

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->listener:Lcom/google/android/youtube/videos/ui/StreamingWarningHelper$Listener;

    .line 51
    return-void
.end method

.method private isWarningNeeded()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 64
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->stream:Lcom/google/android/youtube/core/model/Stream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->stream:Lcom/google/android/youtube/core/model/Stream;

    iget-boolean v0, v0, Lcom/google/android/youtube/core/model/Stream;->isOffline:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->isWiFiNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "warning_streaming_bandwidth"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public init(Lcom/google/android/youtube/core/model/Stream;)V
    .locals 2
    .parameter "stream"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->stream:Lcom/google/android/youtube/core/model/Stream;

    .line 55
    invoke-direct {p0}, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->isWarningNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->activity:Landroid/app/Activity;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 61
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->listener:Lcom/google/android/youtube/videos/ui/StreamingWarningHelper$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper$Listener;->onStreamingAccepted(Lcom/google/android/youtube/core/model/Stream;)V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->stream:Lcom/google/android/youtube/core/model/Stream;

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->listener:Lcom/google/android/youtube/videos/ui/StreamingWarningHelper$Listener;

    invoke-interface {v0}, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper$Listener;->onStreamingDeclined()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->stream:Lcom/google/android/youtube/core/model/Stream;

    .line 99
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 82
    packed-switch p2, :pswitch_data_0

    .line 94
    :goto_0
    return-void

    .line 84
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "warning_streaming_bandwidth"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 87
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->listener:Lcom/google/android/youtube/videos/ui/StreamingWarningHelper$Listener;

    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->stream:Lcom/google/android/youtube/core/model/Stream;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper$Listener;->onStreamingAccepted(Lcom/google/android/youtube/core/model/Stream;)V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->stream:Lcom/google/android/youtube/core/model/Stream;

    goto :goto_0

    .line 91
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/ExternalIntents;->startWifiSettingsActivity(Landroid/content/Context;)V

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateDialog()Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c006c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00a4

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00a5

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->dialog:Landroid/app/Dialog;

    .line 78
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->isWarningNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->activity:Landroid/app/Activity;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 119
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->listener:Lcom/google/android/youtube/videos/ui/StreamingWarningHelper$Listener;

    invoke-interface {v0}, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper$Listener;->onWifiDisconnected()V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 122
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->listener:Lcom/google/android/youtube/videos/ui/StreamingWarningHelper$Listener;

    invoke-interface {v0}, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper$Listener;->onWifiConnected()V

    goto :goto_0
.end method

.method public register()V
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->activity:Landroid/app/Activity;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 113
    return-void
.end method

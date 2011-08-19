.class public Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;
.super Ljava/lang/Object;
.source "DownloadServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$IncomingHandler;,
        Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$OnDownloadCompleteListener;,
        Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$OnDownloadProgressListener;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mIsBound:Z

.field private final mMessenger:Landroid/os/Messenger;

.field private mOnDownloadCompleteListener:Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$OnDownloadCompleteListener;

.field private mOnDownloadProgressListener:Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$OnDownloadProgressListener;

.field private mService:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->mService:Landroid/os/Messenger;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->mIsBound:Z

    .line 75
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$IncomingHandler;

    invoke-direct {v1, p0, v2}, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$IncomingHandler;-><init>(Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$IncomingHandler;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->mMessenger:Landroid/os/Messenger;

    .line 77
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$1;

    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$1;-><init>(Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;)V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->mConnection:Landroid/content/ServiceConnection;

    .line 53
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->mActivity:Landroid/app/Activity;

    .line 54
    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;Landroid/os/Messenger;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->mService:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic access$1(Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;)Landroid/os/Messenger;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->mMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;)Landroid/os/Messenger;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->mService:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$3(Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;)Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$OnDownloadProgressListener;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->mOnDownloadProgressListener:Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$OnDownloadProgressListener;

    return-object v0
.end method

.method static synthetic access$4(Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;)Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$OnDownloadCompleteListener;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->mOnDownloadCompleteListener:Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$OnDownloadCompleteListener;

    return-object v0
.end method


# virtual methods
.method public bindService()V
    .locals 4

    .prologue
    .line 97
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->mActivity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/newspaperdirect/pressreader/android/core/DownloadService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->mIsBound:Z

    .line 98
    const-string v0, "DownloadServiceHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->mIsBound:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void
.end method

.method public removeOnDownloadCompleteListener()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->mOnDownloadCompleteListener:Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$OnDownloadCompleteListener;

    .line 45
    return-void
.end method

.method public removeOnDownloadProgressListener()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->mOnDownloadProgressListener:Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$OnDownloadProgressListener;

    .line 35
    return-void
.end method

.method public setOnDownloadCompleteListener(Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$OnDownloadCompleteListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->mOnDownloadCompleteListener:Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$OnDownloadCompleteListener;

    .line 41
    return-void
.end method

.method public setOnDownloadProgressListener(Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$OnDownloadProgressListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->mOnDownloadProgressListener:Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$OnDownloadProgressListener;

    .line 32
    return-void
.end method

.method public startDownloading()V
    .locals 6

    .prologue
    .line 120
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->mService:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 121
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    new-instance v2, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$2;

    invoke-direct {v2, p0}, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$2;-><init>(Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;)V

    .line 126
    const-wide/16 v3, 0x3e8

    .line 121
    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 134
    :goto_0
    return-void

    .line 130
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->mService:Landroid/os/Messenger;

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 132
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public startDownloading(J)V
    .locals 6
    .parameter "id"

    .prologue
    .line 137
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->mService:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 138
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    new-instance v2, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$3;-><init>(Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;J)V

    .line 143
    const-wide/16 v3, 0x3e8

    .line 138
    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 151
    :goto_0
    return-void

    .line 147
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->mService:Landroid/os/Messenger;

    const/4 v2, 0x0

    const/4 v3, 0x3

    long-to-int v4, p1

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 149
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public stopDownloading()V
    .locals 6

    .prologue
    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->mService:Landroid/os/Messenger;

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 157
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public stopDownloading(J)V
    .locals 6
    .parameter "id"

    .prologue
    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->mService:Landroid/os/Messenger;

    const/4 v2, 0x0

    const/4 v3, 0x4

    long-to-int v4, p1

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 165
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public unbindService()V
    .locals 4

    .prologue
    .line 102
    iget-boolean v2, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->mIsBound:Z

    if-eqz v2, :cond_1

    .line 103
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->mService:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    .line 105
    const/4 v2, 0x0

    const/4 v3, 0x2

    :try_start_0
    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 106
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->mMessenger:Landroid/os/Messenger;

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 107
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->mService:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 115
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->mIsBound:Z

    .line 117
    :cond_1
    return-void

    .line 108
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 109
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

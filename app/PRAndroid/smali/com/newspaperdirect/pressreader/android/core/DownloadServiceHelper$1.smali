.class Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$1;
.super Ljava/lang/Object;
.source "DownloadServiceHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "name"
    .parameter "service"

    .prologue
    .line 80
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;

    new-instance v3, Landroid/os/Messenger;

    invoke-direct {v3, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v2, v3}, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->access$0(Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;Landroid/os/Messenger;)V

    .line 82
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 83
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->access$1(Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;)Landroid/os/Messenger;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 84
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->access$2(Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;)Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v1           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 86
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$1;->this$0:Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->access$0(Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;Landroid/os/Messenger;)V

    .line 92
    return-void
.end method

.class public Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;
.super Ljava/lang/Object;
.source "DownloadService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaScannerConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/DownloadService;


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/DownloadService;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public disconnectMediaScanner()V
    .locals 5

    .prologue
    .line 149
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    monitor-enter v1

    .line 150
    :try_start_0
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/providers/downloads/DownloadService;->access$102(Lcom/android/providers/downloads/DownloadService;Z)Z

    .line 151
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-static {v2}, Lcom/android/providers/downloads/DownloadService;->access$200(Lcom/android/providers/downloads/DownloadService;)Landroid/media/IMediaScannerService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 152
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/providers/downloads/DownloadService;->access$202(Lcom/android/providers/downloads/DownloadService;Landroid/media/IMediaScannerService;)Landroid/media/IMediaScannerService;

    .line 153
    sget-boolean v2, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v2, :cond_0

    .line 154
    const-string v2, "DownloadManager"

    const-string v3, "Disconnecting from Media Scanner"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v2, p0}, Lcom/android/providers/downloads/DownloadService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 162
    :try_start_2
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 165
    :cond_1
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    return-void

    .line 158
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 159
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    :try_start_3
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unbindService failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 162
    :try_start_4
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .line 165
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 162
    :catchall_1
    move-exception v2

    :try_start_5
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "service"

    .prologue
    .line 131
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v0, :cond_0

    .line 132
    const-string v0, "DownloadManager"

    const-string v1, "Connected to Media Scanner"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/providers/downloads/DownloadService;->access$102(Lcom/android/providers/downloads/DownloadService;Z)Z

    .line 137
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-static {p2}, Landroid/media/IMediaScannerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaScannerService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/providers/downloads/DownloadService;->access$202(Lcom/android/providers/downloads/DownloadService;Landroid/media/IMediaScannerService;)Landroid/media/IMediaScannerService;

    .line 138
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-static {v1}, Lcom/android/providers/downloads/DownloadService;->access$200(Lcom/android/providers/downloads/DownloadService;)Landroid/media/IMediaScannerService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-static {v1}, Lcom/android/providers/downloads/DownloadService;->access$000(Lcom/android/providers/downloads/DownloadService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 145
    monitor-exit v0

    .line 146
    return-void

    .line 143
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    throw v1

    .line 145
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .parameter "className"

    .prologue
    .line 170
    :try_start_0
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v0, :cond_0

    .line 171
    const-string v0, "DownloadManager"

    const-string v1, "Disconnected from Media Scanner"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    monitor-enter v0

    .line 175
    :try_start_1
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/providers/downloads/DownloadService;->access$202(Lcom/android/providers/downloads/DownloadService;Landroid/media/IMediaScannerService;)Landroid/media/IMediaScannerService;

    .line 176
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/providers/downloads/DownloadService;->access$102(Lcom/android/providers/downloads/DownloadService;Z)Z

    .line 178
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 179
    monitor-exit v0

    .line 181
    return-void

    .line 179
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 174
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    monitor-enter v1

    .line 175
    :try_start_2
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/providers/downloads/DownloadService;->access$202(Lcom/android/providers/downloads/DownloadService;Landroid/media/IMediaScannerService;)Landroid/media/IMediaScannerService;

    .line 176
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/providers/downloads/DownloadService;->access$102(Lcom/android/providers/downloads/DownloadService;Z)Z

    .line 178
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 179
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

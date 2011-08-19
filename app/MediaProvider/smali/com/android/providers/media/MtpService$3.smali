.class Lcom/android/providers/media/MtpService$3;
.super Lcom/android/providers/media/IMtpService$Stub;
.source "MtpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MtpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MtpService;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MtpService;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/providers/media/MtpService$3;->this$0:Lcom/android/providers/media/MtpService;

    invoke-direct {p0}, Lcom/android/providers/media/IMtpService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendObjectAdded(I)V
    .locals 2
    .parameter "objectHandle"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/providers/media/MtpService$3;->this$0:Lcom/android/providers/media/MtpService;

    invoke-static {v0}, Lcom/android/providers/media/MtpService;->access$100(Lcom/android/providers/media/MtpService;)Lcom/android/providers/media/IMtpService$Stub;

    move-result-object v0

    monitor-enter v0

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/media/MtpService$3;->this$0:Lcom/android/providers/media/MtpService;

    invoke-static {v1}, Lcom/android/providers/media/MtpService;->access$700(Lcom/android/providers/media/MtpService;)Landroid/mtp/MtpServer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/android/providers/media/MtpService$3;->this$0:Lcom/android/providers/media/MtpService;

    invoke-static {v1}, Lcom/android/providers/media/MtpService;->access$700(Lcom/android/providers/media/MtpService;)Landroid/mtp/MtpServer;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/mtp/MtpServer;->sendObjectAdded(I)V

    .line 176
    :cond_0
    monitor-exit v0

    .line 177
    return-void

    .line 176
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendObjectRemoved(I)V
    .locals 2
    .parameter "objectHandle"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/providers/media/MtpService$3;->this$0:Lcom/android/providers/media/MtpService;

    invoke-static {v0}, Lcom/android/providers/media/MtpService;->access$100(Lcom/android/providers/media/MtpService;)Lcom/android/providers/media/IMtpService$Stub;

    move-result-object v0

    monitor-enter v0

    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/media/MtpService$3;->this$0:Lcom/android/providers/media/MtpService;

    invoke-static {v1}, Lcom/android/providers/media/MtpService;->access$700(Lcom/android/providers/media/MtpService;)Landroid/mtp/MtpServer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/android/providers/media/MtpService$3;->this$0:Lcom/android/providers/media/MtpService;

    invoke-static {v1}, Lcom/android/providers/media/MtpService;->access$700(Lcom/android/providers/media/MtpService;)Landroid/mtp/MtpServer;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/mtp/MtpServer;->sendObjectRemoved(I)V

    .line 184
    :cond_0
    monitor-exit v0

    .line 185
    return-void

    .line 184
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

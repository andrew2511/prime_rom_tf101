.class Lcom/amazon/kcp/application/internal/commands/RegisterCommand$2;
.super Ljava/lang/Object;
.source "RegisterCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/internal/commands/RegisterCommand;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/internal/commands/RegisterCommand;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand$2;->this$0:Lcom/amazon/kcp/application/internal/commands/RegisterCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand$2;->this$0:Lcom/amazon/kcp/application/internal/commands/RegisterCommand;

    invoke-static {v0}, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->access$100(Lcom/amazon/kcp/application/internal/commands/RegisterCommand;)Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/sync/internal/SyncType;->LOGIN:Lcom/amazon/kcp/application/sync/internal/SyncType;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/sync/internal/SyncType;->isThrottled()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->primeSyncMetadataRequest(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

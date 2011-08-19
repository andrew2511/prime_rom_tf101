.class Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$5;
.super Ljava/lang/Object;
.source "DownloadContentCommand.java"

# interfaces
.implements Lcom/amazon/foundation/IStringCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;)V
    .locals 0
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$5;->this$0:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 374
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$5;->this$0:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->access$1002(Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;J)J

    .line 375
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$5;->this$0:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;

    invoke-static {v0}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->access$1100(Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;)Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;->updateMaxProgress()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

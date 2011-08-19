.class Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$6;
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
    .line 385
    iput-object p1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$6;->this$0:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 399
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$6;->this$0:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;

    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->access$1202(Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;J)J

    .line 400
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$6;->this$0:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;

    invoke-static {v0}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->access$1100(Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;)Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;->updateMaxProgress()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.class Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand$1;
.super Ljava/lang/Object;
.source "DownloadSidecarCommand.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand$1;->this$0:Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand$1;->this$0:Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;

    invoke-static {v0}, Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;->access$000(Lcom/amazon/kcp/application/internal/commands/DownloadSidecarCommand;)V

    .line 53
    return-void
.end method

.class Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$2;
.super Ljava/lang/Object;
.source "DownloadContentCommand.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


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
    .line 341
    iput-object p1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$2;->this$0:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$2;->this$0:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;

    invoke-static {v0}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->access$500(Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;)Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$2;->this$0:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;

    invoke-static {v0}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->access$600(Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;)Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$2;->this$0:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;

    invoke-static {v0}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->access$700(Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;)V

    .line 349
    :cond_0
    return-void
.end method

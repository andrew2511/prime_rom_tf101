.class Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$4;
.super Ljava/lang/Object;
.source "DownloadContentCommand.java"

# interfaces
.implements Lcom/amazon/foundation/IIntCallback;


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
    .line 361
    iput-object p1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$4;->this$0:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(I)V
    .locals 1
    .parameter "status"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$4;->this$0:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;

    invoke-static {v0, p1}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->access$900(Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;I)V

    .line 365
    return-void
.end method

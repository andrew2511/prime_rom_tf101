.class Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$3;
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
    .line 353
    iput-object p1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$3;->this$0:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$3;->this$0:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;

    invoke-static {v0, p1}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->access$800(Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;Ljava/lang/String;)V

    .line 357
    return-void
.end method

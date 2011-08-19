.class Lcom/amazon/kcp/application/internal/commands/CSyncMetadataCommand$1;
.super Ljava/lang/Object;
.source "CSyncMetadataCommand.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IBooleanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/internal/commands/CSyncMetadataCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/internal/commands/CSyncMetadataCommand;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/internal/commands/CSyncMetadataCommand;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/commands/CSyncMetadataCommand$1;->this$0:Lcom/amazon/kcp/application/internal/commands/CSyncMetadataCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/CSyncMetadataCommand$1;->this$0:Lcom/amazon/kcp/application/internal/commands/CSyncMetadataCommand;

    invoke-static {v0, p1}, Lcom/amazon/kcp/application/internal/commands/CSyncMetadataCommand;->access$000(Lcom/amazon/kcp/application/internal/commands/CSyncMetadataCommand;Z)V

    .line 32
    return-void
.end method

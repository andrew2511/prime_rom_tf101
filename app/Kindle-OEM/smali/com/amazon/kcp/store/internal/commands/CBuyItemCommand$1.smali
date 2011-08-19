.class Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand$1;
.super Ljava/lang/Object;
.source "CBuyItemCommand.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand$1;->this$0:Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand$1;->this$0:Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;

    invoke-static {v0}, Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;->access$000(Lcom/amazon/kcp/store/internal/commands/CBuyItemCommand;)V

    .line 47
    return-void
.end method

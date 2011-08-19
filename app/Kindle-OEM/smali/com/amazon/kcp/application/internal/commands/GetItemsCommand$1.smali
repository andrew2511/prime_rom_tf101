.class Lcom/amazon/kcp/application/internal/commands/GetItemsCommand$1;
.super Ljava/lang/Object;
.source "GetItemsCommand.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/internal/commands/GetItemsCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/internal/commands/GetItemsCommand;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/internal/commands/GetItemsCommand;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/commands/GetItemsCommand$1;->this$0:Lcom/amazon/kcp/application/internal/commands/GetItemsCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/GetItemsCommand$1;->this$0:Lcom/amazon/kcp/application/internal/commands/GetItemsCommand;

    invoke-static {v0}, Lcom/amazon/kcp/application/internal/commands/GetItemsCommand;->access$000(Lcom/amazon/kcp/application/internal/commands/GetItemsCommand;)V

    .line 52
    return-void
.end method

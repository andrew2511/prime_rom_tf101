.class Lcom/amazon/kcp/store/internal/commands/UnBuyCommand$1;
.super Ljava/lang/Object;
.source "UnBuyCommand.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/internal/commands/UnBuyCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/store/internal/commands/UnBuyCommand;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/store/internal/commands/UnBuyCommand;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/amazon/kcp/store/internal/commands/UnBuyCommand$1;->this$0:Lcom/amazon/kcp/store/internal/commands/UnBuyCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/UnBuyCommand$1;->this$0:Lcom/amazon/kcp/store/internal/commands/UnBuyCommand;

    invoke-static {v0}, Lcom/amazon/kcp/store/internal/commands/UnBuyCommand;->access$000(Lcom/amazon/kcp/store/internal/commands/UnBuyCommand;)V

    .line 36
    return-void
.end method

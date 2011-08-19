.class Lcom/amazon/kcp/application/internal/commands/RegisterCommand$1;
.super Ljava/lang/Object;
.source "RegisterCommand.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/internal/commands/RegisterCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/internal/commands/RegisterCommand;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/internal/commands/RegisterCommand;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand$1;->this$0:Lcom/amazon/kcp/application/internal/commands/RegisterCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/RegisterCommand$1;->this$0:Lcom/amazon/kcp/application/internal/commands/RegisterCommand;

    invoke-static {v0}, Lcom/amazon/kcp/application/internal/commands/RegisterCommand;->access$000(Lcom/amazon/kcp/application/internal/commands/RegisterCommand;)V

    .line 80
    return-void
.end method

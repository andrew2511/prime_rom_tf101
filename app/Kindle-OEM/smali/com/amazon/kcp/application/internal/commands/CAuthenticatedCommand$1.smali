.class Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand$1;
.super Ljava/lang/Object;
.source "CAuthenticatedCommand.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand$1;->this$0:Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand$1;->this$0:Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;

    invoke-static {v0}, Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;->access$000(Lcom/amazon/kcp/application/internal/commands/CAuthenticatedCommand;)V

    .line 42
    return-void
.end method

.class Lcom/amazon/kcp/application/internal/commands/DeregisterCommand$1;
.super Ljava/lang/Object;
.source "DeregisterCommand.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/commands/DeregisterCommand$1;->this$0:Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/DeregisterCommand$1;->this$0:Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/internal/commands/DeregisterCommand;->onRequestFinished()V

    .line 70
    return-void
.end method

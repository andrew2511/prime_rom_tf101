.class Lcom/amazon/kcp/application/internal/commands/UpdateLocationCommand$1;
.super Ljava/lang/Object;
.source "UpdateLocationCommand.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/internal/commands/UpdateLocationCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/internal/commands/UpdateLocationCommand;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/internal/commands/UpdateLocationCommand;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/commands/UpdateLocationCommand$1;->this$0:Lcom/amazon/kcp/application/internal/commands/UpdateLocationCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/UpdateLocationCommand$1;->this$0:Lcom/amazon/kcp/application/internal/commands/UpdateLocationCommand;

    invoke-static {v0}, Lcom/amazon/kcp/application/internal/commands/UpdateLocationCommand;->access$000(Lcom/amazon/kcp/application/internal/commands/UpdateLocationCommand;)V

    .line 45
    return-void
.end method

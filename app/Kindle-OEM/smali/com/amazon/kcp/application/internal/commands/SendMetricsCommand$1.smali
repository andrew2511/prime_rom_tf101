.class Lcom/amazon/kcp/application/internal/commands/SendMetricsCommand$1;
.super Ljava/lang/Object;
.source "SendMetricsCommand.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/internal/commands/SendMetricsCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/internal/commands/SendMetricsCommand;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/internal/commands/SendMetricsCommand;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/commands/SendMetricsCommand$1;->this$0:Lcom/amazon/kcp/application/internal/commands/SendMetricsCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/SendMetricsCommand$1;->this$0:Lcom/amazon/kcp/application/internal/commands/SendMetricsCommand;

    invoke-static {v0}, Lcom/amazon/kcp/application/internal/commands/SendMetricsCommand;->access$000(Lcom/amazon/kcp/application/internal/commands/SendMetricsCommand;)V

    .line 42
    return-void
.end method

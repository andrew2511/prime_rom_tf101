.class Lcom/amazon/kcp/application/internal/LocalTodoQueue$2;
.super Ljava/lang/Object;
.source "LocalTodoQueue.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/internal/LocalTodoQueue;->launchInitialCommand(Lcom/amazon/foundation/IStatusTracker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/internal/LocalTodoQueue;

.field final synthetic val$statusTracker:Lcom/amazon/foundation/IStatusTracker;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/internal/LocalTodoQueue;Lcom/amazon/foundation/IStatusTracker;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 647
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue$2;->this$0:Lcom/amazon/kcp/application/internal/LocalTodoQueue;

    iput-object p2, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue$2;->val$statusTracker:Lcom/amazon/foundation/IStatusTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 651
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue$2;->this$0:Lcom/amazon/kcp/application/internal/LocalTodoQueue;

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue$2;->val$statusTracker:Lcom/amazon/foundation/IStatusTracker;

    invoke-static {v0, v1}, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->access$200(Lcom/amazon/kcp/application/internal/LocalTodoQueue;Lcom/amazon/foundation/IStatusTracker;)V

    .line 652
    return-void
.end method

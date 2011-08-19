.class Lcom/amazon/kcp/application/internal/LocalTodoQueue$1;
.super Ljava/lang/Object;
.source "LocalTodoQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$todoItem:Lcom/amazon/kcp/application/models/internal/SoftwareUpdateTodoItem;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/internal/LocalTodoQueue;Lcom/amazon/kcp/application/models/internal/SoftwareUpdateTodoItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 577
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue$1;->this$0:Lcom/amazon/kcp/application/internal/LocalTodoQueue;

    iput-object p2, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue$1;->val$todoItem:Lcom/amazon/kcp/application/models/internal/SoftwareUpdateTodoItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 581
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue$1;->this$0:Lcom/amazon/kcp/application/internal/LocalTodoQueue;

    invoke-static {v0}, Lcom/amazon/kcp/application/internal/LocalTodoQueue;->access$100(Lcom/amazon/kcp/application/internal/LocalTodoQueue;)Lcom/amazon/kcp/application/IKindleApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->getUpdateManager()Lcom/amazon/kcp/application/internal/IUpdateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue$1;->val$todoItem:Lcom/amazon/kcp/application/models/internal/SoftwareUpdateTodoItem;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/internal/IUpdateManager;->processUpdateTodoItem(Lcom/amazon/kcp/application/models/internal/SoftwareUpdateTodoItem;)V

    .line 582
    return-void
.end method

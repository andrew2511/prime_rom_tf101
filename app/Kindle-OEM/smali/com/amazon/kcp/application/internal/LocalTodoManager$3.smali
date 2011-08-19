.class Lcom/amazon/kcp/application/internal/LocalTodoManager$3;
.super Ljava/lang/Object;
.source "LocalTodoManager.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/internal/LocalTodoManager;->syncWithRemoteTodoLookingForContent(Ljava/lang/String;Lcom/amazon/kcp/application/models/internal/TodoItem$Action;Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/internal/LocalTodoManager;

.field final synthetic val$item:Lcom/amazon/kcp/application/models/internal/TodoItem;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/internal/LocalTodoManager;Lcom/amazon/kcp/application/models/internal/TodoItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager$3;->this$0:Lcom/amazon/kcp/application/internal/LocalTodoManager;

    iput-object p2, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager$3;->val$item:Lcom/amazon/kcp/application/models/internal/TodoItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .prologue
    .line 284
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager$3;->this$0:Lcom/amazon/kcp/application/internal/LocalTodoManager;

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager$3;->val$item:Lcom/amazon/kcp/application/models/internal/TodoItem;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/application/internal/LocalTodoManager;->access$200(Lcom/amazon/kcp/application/internal/LocalTodoManager;Lcom/amazon/kcp/application/models/internal/TodoItem;Lcom/amazon/foundation/IStatusTracker;)V

    .line 285
    return-void
.end method

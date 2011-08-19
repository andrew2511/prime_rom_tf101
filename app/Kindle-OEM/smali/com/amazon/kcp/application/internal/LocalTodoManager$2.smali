.class Lcom/amazon/kcp/application/internal/LocalTodoManager$2;
.super Ljava/lang/Object;
.source "LocalTodoManager.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/internal/LocalTodoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/internal/LocalTodoManager;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/internal/LocalTodoManager;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager$2;->this$0:Lcom/amazon/kcp/application/internal/LocalTodoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/LocalTodoManager$2;->this$0:Lcom/amazon/kcp/application/internal/LocalTodoManager;

    invoke-static {v0, p1}, Lcom/amazon/kcp/application/internal/LocalTodoManager;->access$100(Lcom/amazon/kcp/application/internal/LocalTodoManager;Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V

    .line 106
    return-void
.end method

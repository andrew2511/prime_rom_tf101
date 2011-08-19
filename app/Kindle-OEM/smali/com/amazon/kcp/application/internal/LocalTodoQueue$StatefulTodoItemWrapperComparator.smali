.class Lcom/amazon/kcp/application/internal/LocalTodoQueue$StatefulTodoItemWrapperComparator;
.super Ljava/lang/Object;
.source "LocalTodoQueue.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/internal/LocalTodoQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatefulTodoItemWrapperComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/internal/LocalTodoQueue;


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/application/internal/LocalTodoQueue;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/LocalTodoQueue$StatefulTodoItemWrapperComparator;->this$0:Lcom/amazon/kcp/application/internal/LocalTodoQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/application/internal/LocalTodoQueue;Lcom/amazon/kcp/application/internal/LocalTodoQueue$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/internal/LocalTodoQueue$StatefulTodoItemWrapperComparator;-><init>(Lcom/amazon/kcp/application/internal/LocalTodoQueue;)V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5
    .parameter "o1"
    .parameter "o2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 81
    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    move-object v1, v0

    .line 82
    .local v1, todo1:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;
    move-object v0, p2

    check-cast v0, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    move-object v2, v0

    .line 84
    .local v2, todo2:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    const/4 v3, 0x0

    .line 96
    :goto_0
    return v3

    .line 88
    :cond_0
    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getPriority()I

    move-result v3

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getPriority()I

    move-result v4

    if-gt v3, v4, :cond_1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getPriority()I

    move-result v3

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;->getTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getPriority()I

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    if-le v3, v4, :cond_2

    .line 92
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 96
    :cond_2
    const/4 v3, -0x1

    goto :goto_0
.end method

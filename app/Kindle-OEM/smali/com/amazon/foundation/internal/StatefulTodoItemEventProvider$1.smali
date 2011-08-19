.class Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider$1;
.super Ljava/lang/Object;
.source "StatefulTodoItemEventProvider.java"

# interfaces
.implements Lcom/amazon/foundation/internal/CallbackManager$ICallbackExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;->notifyListeners(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;

.field final synthetic val$value:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;


# direct methods
.method constructor <init>(Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider$1;->this$0:Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider;

    iput-object p2, p0, Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider$1;->val$value:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeCallback(Ljava/lang/Object;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 36
    check-cast p1, Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;

    .end local p1
    iget-object v0, p0, Lcom/amazon/foundation/internal/StatefulTodoItemEventProvider$1;->val$value:Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;

    invoke-interface {p1, v0}, Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;->execute(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V

    .line 37
    return-void
.end method

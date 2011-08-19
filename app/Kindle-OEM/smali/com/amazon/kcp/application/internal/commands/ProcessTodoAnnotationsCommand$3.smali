.class Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand$3;
.super Ljava/lang/Object;
.source "ProcessTodoAnnotationsCommand.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand$3;->this$0:Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand$3;->this$0:Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;

    invoke-static {v0, p1}, Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;->access$200(Lcom/amazon/kcp/application/internal/commands/ProcessTodoAnnotationsCommand;Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V

    .line 54
    return-void
.end method

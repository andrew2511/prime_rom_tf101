.class Lcom/amazon/kcp/library/TransientActivity$4;
.super Ljava/lang/Object;
.source "TransientActivity.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/TransientActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/TransientActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/TransientActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/amazon/kcp/library/TransientActivity$4;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V
    .locals 2
    .parameter "processingItemWrapper"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity$4;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    invoke-static {v0, p1}, Lcom/amazon/kcp/library/TransientActivity;->access$600(Lcom/amazon/kcp/library/TransientActivity;Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity$4;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/amazon/kcp/library/TransientActivity;->access$700(Lcom/amazon/kcp/library/TransientActivity;I)V

    .line 142
    :cond_0
    return-void
.end method

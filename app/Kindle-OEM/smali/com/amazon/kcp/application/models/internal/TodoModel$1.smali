.class Lcom/amazon/kcp/application/models/internal/TodoModel$1;
.super Ljava/lang/Object;
.source "TodoModel.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/models/internal/TodoModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/models/internal/TodoModel;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/models/internal/TodoModel;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/amazon/kcp/application/models/internal/TodoModel$1;->this$0:Lcom/amazon/kcp/application/models/internal/TodoModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/amazon/kcp/application/models/internal/TodoModel$1;->this$0:Lcom/amazon/kcp/application/models/internal/TodoModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoModel;->listModified()V

    .line 49
    return-void
.end method

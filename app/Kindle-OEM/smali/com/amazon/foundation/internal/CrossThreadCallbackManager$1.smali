.class Lcom/amazon/foundation/internal/CrossThreadCallbackManager$1;
.super Ljava/lang/Object;
.source "CrossThreadCallbackManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/foundation/internal/CrossThreadCallbackManager;->executeCallbacks(Lcom/amazon/foundation/internal/CallbackManager$ICallbackExecutor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/foundation/internal/CrossThreadCallbackManager;

.field final synthetic val$executor:Lcom/amazon/foundation/internal/CallbackManager$ICallbackExecutor;


# direct methods
.method constructor <init>(Lcom/amazon/foundation/internal/CrossThreadCallbackManager;Lcom/amazon/foundation/internal/CallbackManager$ICallbackExecutor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/amazon/foundation/internal/CrossThreadCallbackManager$1;->this$0:Lcom/amazon/foundation/internal/CrossThreadCallbackManager;

    iput-object p2, p0, Lcom/amazon/foundation/internal/CrossThreadCallbackManager$1;->val$executor:Lcom/amazon/foundation/internal/CallbackManager$ICallbackExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/amazon/foundation/internal/CrossThreadCallbackManager$1;->this$0:Lcom/amazon/foundation/internal/CrossThreadCallbackManager;

    iget-object v1, p0, Lcom/amazon/foundation/internal/CrossThreadCallbackManager$1;->val$executor:Lcom/amazon/foundation/internal/CallbackManager$ICallbackExecutor;

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/CrossThreadCallbackManager;->executeCallbacks(Lcom/amazon/foundation/internal/CallbackManager$ICallbackExecutor;)V

    .line 73
    return-void
.end method

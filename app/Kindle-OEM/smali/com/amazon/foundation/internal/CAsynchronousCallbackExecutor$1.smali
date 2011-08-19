.class Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor$1;
.super Ljava/lang/Object;
.source "CAsynchronousCallbackExecutor.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;


# direct methods
.method constructor <init>(Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor$1;->this$0:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor$1;->this$0:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-static {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->access$000(Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;)V

    .line 29
    return-void
.end method

.class Lcom/amazon/foundation/internal/LocalBookItemEventProvider$1;
.super Ljava/lang/Object;
.source "LocalBookItemEventProvider.java"

# interfaces
.implements Lcom/amazon/foundation/internal/CallbackManager$ICallbackExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/foundation/internal/LocalBookItemEventProvider;->notifyListeners(Lcom/amazon/kcp/library/models/ILocalBookItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/foundation/internal/LocalBookItemEventProvider;

.field final synthetic val$value:Lcom/amazon/kcp/library/models/ILocalBookItem;


# direct methods
.method constructor <init>(Lcom/amazon/foundation/internal/LocalBookItemEventProvider;Lcom/amazon/kcp/library/models/ILocalBookItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/amazon/foundation/internal/LocalBookItemEventProvider$1;->this$0:Lcom/amazon/foundation/internal/LocalBookItemEventProvider;

    iput-object p2, p0, Lcom/amazon/foundation/internal/LocalBookItemEventProvider$1;->val$value:Lcom/amazon/kcp/library/models/ILocalBookItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeCallback(Ljava/lang/Object;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 34
    check-cast p1, Lcom/amazon/foundation/internal/ILocalBookItemCallback;

    .end local p1
    iget-object v0, p0, Lcom/amazon/foundation/internal/LocalBookItemEventProvider$1;->val$value:Lcom/amazon/kcp/library/models/ILocalBookItem;

    invoke-interface {p1, v0}, Lcom/amazon/foundation/internal/ILocalBookItemCallback;->execute(Lcom/amazon/kcp/library/models/ILocalBookItem;)V

    .line 35
    return-void
.end method

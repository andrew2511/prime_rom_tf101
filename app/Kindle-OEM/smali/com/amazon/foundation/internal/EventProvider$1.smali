.class Lcom/amazon/foundation/internal/EventProvider$1;
.super Ljava/lang/Object;
.source "EventProvider.java"

# interfaces
.implements Lcom/amazon/foundation/internal/CallbackManager$ICallbackExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/foundation/internal/EventProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/foundation/internal/EventProvider;


# direct methods
.method constructor <init>(Lcom/amazon/foundation/internal/EventProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 13
    iput-object p1, p0, Lcom/amazon/foundation/internal/EventProvider$1;->this$0:Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeCallback(Ljava/lang/Object;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 16
    check-cast p1, Lcom/amazon/foundation/ICallback;

    .end local p1
    invoke-interface {p1}, Lcom/amazon/foundation/ICallback;->execute()V

    .line 17
    return-void
.end method

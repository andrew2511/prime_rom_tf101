.class Lcom/amazon/foundation/internal/StringEventProvider$1;
.super Ljava/lang/Object;
.source "StringEventProvider.java"

# interfaces
.implements Lcom/amazon/foundation/internal/CallbackManager$ICallbackExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/foundation/internal/StringEventProvider;->notifyListeners(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/foundation/internal/StringEventProvider;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/foundation/internal/StringEventProvider;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/amazon/foundation/internal/StringEventProvider$1;->this$0:Lcom/amazon/foundation/internal/StringEventProvider;

    iput-object p2, p0, Lcom/amazon/foundation/internal/StringEventProvider$1;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeCallback(Ljava/lang/Object;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 32
    check-cast p1, Lcom/amazon/foundation/IStringCallback;

    .end local p1
    iget-object v0, p0, Lcom/amazon/foundation/internal/StringEventProvider$1;->val$value:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/amazon/foundation/IStringCallback;->execute(Ljava/lang/String;)V

    .line 33
    return-void
.end method

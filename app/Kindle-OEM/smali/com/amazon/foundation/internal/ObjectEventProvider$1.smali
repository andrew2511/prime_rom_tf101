.class Lcom/amazon/foundation/internal/ObjectEventProvider$1;
.super Ljava/lang/Object;
.source "ObjectEventProvider.java"

# interfaces
.implements Lcom/amazon/foundation/internal/CallbackManager$ICallbackExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/foundation/internal/ObjectEventProvider;->notifyListeners(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/foundation/internal/ObjectEventProvider;

.field final synthetic val$o:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/amazon/foundation/internal/ObjectEventProvider;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/amazon/foundation/internal/ObjectEventProvider$1;->this$0:Lcom/amazon/foundation/internal/ObjectEventProvider;

    iput-object p2, p0, Lcom/amazon/foundation/internal/ObjectEventProvider$1;->val$o:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeCallback(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    return-void
.end method

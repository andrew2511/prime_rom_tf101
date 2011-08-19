.class Lcom/amazon/foundation/internal/ImageEventProvider$1;
.super Ljava/lang/Object;
.source "ImageEventProvider.java"

# interfaces
.implements Lcom/amazon/foundation/internal/CallbackManager$ICallbackExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/foundation/internal/ImageEventProvider;->notifyListeners(Lcom/amazon/foundation/internal/IImage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/foundation/internal/ImageEventProvider;

.field final synthetic val$value:Lcom/amazon/foundation/internal/IImage;


# direct methods
.method constructor <init>(Lcom/amazon/foundation/internal/ImageEventProvider;Lcom/amazon/foundation/internal/IImage;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/amazon/foundation/internal/ImageEventProvider$1;->this$0:Lcom/amazon/foundation/internal/ImageEventProvider;

    iput-object p2, p0, Lcom/amazon/foundation/internal/ImageEventProvider$1;->val$value:Lcom/amazon/foundation/internal/IImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeCallback(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    return-void
.end method

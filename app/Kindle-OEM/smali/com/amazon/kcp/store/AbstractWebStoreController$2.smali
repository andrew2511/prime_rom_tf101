.class Lcom/amazon/kcp/store/AbstractWebStoreController$2;
.super Ljava/lang/Object;
.source "AbstractWebStoreController.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/store/AbstractWebStoreController;->updateStoreCookies()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/store/AbstractWebStoreController;

.field final synthetic val$command:Lcom/amazon/kcp/store/internal/commands/StoreCredentialsCommand;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/store/AbstractWebStoreController;Lcom/amazon/kcp/store/internal/commands/StoreCredentialsCommand;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/amazon/kcp/store/AbstractWebStoreController$2;->this$0:Lcom/amazon/kcp/store/AbstractWebStoreController;

    iput-object p2, p0, Lcom/amazon/kcp/store/AbstractWebStoreController$2;->val$command:Lcom/amazon/kcp/store/internal/commands/StoreCredentialsCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/amazon/kcp/store/AbstractWebStoreController$2;->val$command:Lcom/amazon/kcp/store/internal/commands/StoreCredentialsCommand;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/internal/commands/StoreCredentialsCommand;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/amazon/kcp/store/AbstractWebStoreController$2;->this$0:Lcom/amazon/kcp/store/AbstractWebStoreController;

    iget-object v0, v0, Lcom/amazon/kcp/store/AbstractWebStoreController;->credentialsUpdateFailedEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 71
    :cond_0
    return-void
.end method

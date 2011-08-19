.class Lcom/amazon/kcp/store/AbstractWebStoreController$1;
.super Ljava/lang/Object;
.source "AbstractWebStoreController.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/AbstractWebStoreController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/store/AbstractWebStoreController;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/store/AbstractWebStoreController;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/amazon/kcp/store/AbstractWebStoreController$1;->this$0:Lcom/amazon/kcp/store/AbstractWebStoreController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/amazon/kcp/store/AbstractWebStoreController$1;->this$0:Lcom/amazon/kcp/store/AbstractWebStoreController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kcp/store/AbstractWebStoreController;->access$002(Lcom/amazon/kcp/store/AbstractWebStoreController;Z)Z

    .line 35
    return-void
.end method

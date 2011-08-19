.class Lcom/amazon/kcp/store/StoreActivity$7;
.super Ljava/lang/Object;
.source "StoreActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/store/StoreActivity;->showStoreUnavailableMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/store/StoreActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/store/StoreActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 689
    iput-object p1, p0, Lcom/amazon/kcp/store/StoreActivity$7;->this$0:Lcom/amazon/kcp/store/StoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 695
    new-instance v0, Lcom/amazon/kcp/store/StoreUrlBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/store/StoreActivity$7;->this$0:Lcom/amazon/kcp/store/StoreActivity;

    invoke-direct {v0, v1}, Lcom/amazon/kcp/store/StoreUrlBuilder;-><init>(Landroid/content/Context;)V

    .line 696
    .local v0, urlBuilder:Lcom/amazon/kcp/store/StoreUrlBuilder;
    iget-object v1, p0, Lcom/amazon/kcp/store/StoreActivity$7;->this$0:Lcom/amazon/kcp/store/StoreActivity;

    invoke-virtual {v1}, Lcom/amazon/kcp/store/StoreActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreUrlBuilder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->openUrl(Ljava/lang/String;)V

    .line 699
    iget-object v1, p0, Lcom/amazon/kcp/store/StoreActivity$7;->this$0:Lcom/amazon/kcp/store/StoreActivity;

    invoke-virtual {v1}, Lcom/amazon/kcp/store/StoreActivity;->finish()V

    .line 700
    return-void
.end method

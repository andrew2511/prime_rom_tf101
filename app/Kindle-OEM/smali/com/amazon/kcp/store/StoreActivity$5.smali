.class Lcom/amazon/kcp/store/StoreActivity$5;
.super Ljava/lang/Object;
.source "StoreActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/store/StoreActivity;->showNetworkConnectionMessage()V
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
    .line 662
    iput-object p1, p0, Lcom/amazon/kcp/store/StoreActivity$5;->this$0:Lcom/amazon/kcp/store/StoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 666
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreActivity$5;->this$0:Lcom/amazon/kcp/store/StoreActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->startSettingsActivity(Ljava/lang/String;)V

    .line 667
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreActivity$5;->this$0:Lcom/amazon/kcp/store/StoreActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreActivity;->finish()V

    .line 668
    return-void
.end method

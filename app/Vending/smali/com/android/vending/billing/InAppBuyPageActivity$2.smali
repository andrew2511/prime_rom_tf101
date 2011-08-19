.class Lcom/android/vending/billing/InAppBuyPageActivity$2;
.super Ljava/lang/Object;
.source "InAppBuyPageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/billing/InAppBuyPageActivity;->initClass(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/billing/InAppBuyPageActivity;


# direct methods
.method constructor <init>(Lcom/android/vending/billing/InAppBuyPageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/vending/billing/InAppBuyPageActivity$2;->this$0:Lcom/android/vending/billing/InAppBuyPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 189
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/android/vending/billing/InAppBuyPageActivity$2;->this$0:Lcom/android/vending/billing/InAppBuyPageActivity;

    invoke-static {v2}, Lcom/android/vending/billing/InAppBuyPageActivity;->access$300(Lcom/android/vending/billing/InAppBuyPageActivity;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 190
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity$2;->this$0:Lcom/android/vending/billing/InAppBuyPageActivity;

    invoke-virtual {v1, v0}, Lcom/android/vending/billing/InAppBuyPageActivity;->startActivity(Landroid/content/Intent;)V

    .line 191
    iget-object v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity$2;->this$0:Lcom/android/vending/billing/InAppBuyPageActivity;

    invoke-virtual {v1}, Lcom/android/vending/billing/InAppBuyPageActivity;->finish()V

    .line 192
    return-void
.end method

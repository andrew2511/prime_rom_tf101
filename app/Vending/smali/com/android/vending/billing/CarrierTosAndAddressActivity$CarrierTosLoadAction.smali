.class Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosLoadAction;
.super Lcom/android/vending/BaseActivity$BaseAction;
.source "CarrierTosAndAddressActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/billing/CarrierTosAndAddressActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarrierTosLoadAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/billing/CarrierTosAndAddressActivity;


# direct methods
.method public constructor <init>(Lcom/android/vending/billing/CarrierTosAndAddressActivity;Lcom/android/vending/BaseActivity;)V
    .locals 0
    .parameter
    .parameter "activity"

    .prologue
    .line 674
    iput-object p1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosLoadAction;->this$0:Lcom/android/vending/billing/CarrierTosAndAddressActivity;

    .line 675
    invoke-direct {p0, p2}, Lcom/android/vending/BaseActivity$BaseAction;-><init>(Lcom/android/vending/BaseActivity;)V

    .line 676
    return-void
.end method


# virtual methods
.method protected displayResults()V
    .locals 5

    .prologue
    .line 681
    iget-object v3, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosLoadAction;->this$0:Lcom/android/vending/billing/CarrierTosAndAddressActivity;

    invoke-static {v3}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->access$400(Lcom/android/vending/billing/CarrierTosAndAddressActivity;)Ljava/lang/String;

    move-result-object v1

    .line 682
    .local v1, tosUrl:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 683
    const-string v3, "Could not read carrier TOS URL"

    invoke-static {v3}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    .line 684
    iget-object v3, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosLoadAction;->this$0:Lcom/android/vending/billing/CarrierTosAndAddressActivity;

    invoke-static {v3}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->access$300(Lcom/android/vending/billing/CarrierTosAndAddressActivity;)V

    .line 699
    :goto_0
    return-void

    .line 692
    :cond_0
    iget-object v3, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosLoadAction;->this$0:Lcom/android/vending/billing/CarrierTosAndAddressActivity;

    const v4, 0x7f0701bd

    invoke-virtual {v3, v4}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 693
    .local v0, localeReplacement:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 694
    const-string v3, "%locale%"

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 696
    :cond_1
    invoke-static {v1}, Lcom/android/vending/util/Util;->replaceLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 697
    iget-object v3, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosLoadAction;->this$0:Lcom/android/vending/billing/CarrierTosAndAddressActivity;

    invoke-static {v3}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->access$500(Lcom/android/vending/billing/CarrierTosAndAddressActivity;)Landroid/app/Dialog;

    move-result-object v3

    const v4, 0x7f0800a0

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    .line 698
    .local v2, webView:Landroid/webkit/WebView;
    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public prepare()V
    .locals 0

    .prologue
    .line 704
    return-void
.end method

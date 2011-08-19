.class Lcom/android/vending/billing/BaseBuyPageActivity$5;
.super Landroid/webkit/WebViewClient;
.source "BaseBuyPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/billing/BaseBuyPageActivity;->displayCheckoutTosDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/billing/BaseBuyPageActivity;

.field final synthetic val$acceptButton:Landroid/widget/Button;

.field final synthetic val$progressView:Landroid/view/View;

.field final synthetic val$tosView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/vending/billing/BaseBuyPageActivity;Landroid/view/View;Landroid/view/View;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 747
    iput-object p1, p0, Lcom/android/vending/billing/BaseBuyPageActivity$5;->this$0:Lcom/android/vending/billing/BaseBuyPageActivity;

    iput-object p2, p0, Lcom/android/vending/billing/BaseBuyPageActivity$5;->val$progressView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/vending/billing/BaseBuyPageActivity$5;->val$tosView:Landroid/view/View;

    iput-object p4, p0, Lcom/android/vending/billing/BaseBuyPageActivity$5;->val$acceptButton:Landroid/widget/Button;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 750
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity$5;->val$progressView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 751
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity$5;->val$tosView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 752
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity$5;->val$acceptButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 753
    return-void
.end method

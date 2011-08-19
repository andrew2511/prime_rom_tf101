.class public Lcom/android/vending/billing/BuyPageActivity;
.super Lcom/android/vending/billing/BaseBuyPageActivity;
.source "BuyPageActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected createView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "icicle"

    .prologue
    .line 22
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/BuyPageActivity;->requestWindowFeature(I)Z

    .line 23
    const v1, 0x7f040022

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/BuyPageActivity;->setContentView(I)V

    .line 24
    const v1, 0x7f080075

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/BuyPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 25
    .local v0, rootView:Landroid/view/View;
    invoke-virtual {p0, v0, v0}, Lcom/android/vending/billing/BuyPageActivity;->setupWidgets(Landroid/view/View;Landroid/view/View;)V

    .line 26
    return-object v0
.end method

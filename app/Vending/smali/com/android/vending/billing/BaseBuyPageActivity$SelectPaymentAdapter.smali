.class Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BaseBuyPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/billing/BaseBuyPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectPaymentAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mAllItemsValid:Z

.field private mBillingInstruments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/PurchaseInfo$BillingInstrument;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "textViewResourceId"

    .prologue
    .line 2061
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 2062
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 2088
    iget-boolean v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentAdapter;->mAllItemsValid:Z

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 2106
    const/4 v0, 0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 2111
    iget-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentAdapter;->mBillingInstruments:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;

    .line 2115
    .local v0, billingInstrument:Lcom/android/vending/model/PurchaseInfo$BillingInstrument;
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2116
    .local v1, view:Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->isInvalid()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 2117
    return-object v1

    .line 2116
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 2101
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 2095
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentAdapter;->mBillingInstruments:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;

    .line 2096
    .local v0, billingInstrument:Lcom/android/vending/model/PurchaseInfo$BillingInstrument;
    invoke-virtual {v0}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->isInvalid()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBillingInstruments(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/PurchaseInfo$BillingInstrument;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2072
    .local p1, billingInstruments:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/PurchaseInfo$BillingInstrument;>;"
    iput-object p1, p0, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentAdapter;->mBillingInstruments:Ljava/util/List;

    .line 2075
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentAdapter;->mAllItemsValid:Z

    .line 2076
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 2077
    .local v2, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 2078
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;

    .line 2079
    .local v1, instrument:Lcom/android/vending/model/PurchaseInfo$BillingInstrument;
    invoke-virtual {v1}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->isInvalid()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2080
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentAdapter;->mAllItemsValid:Z

    .line 2084
    .end local v1           #instrument:Lcom/android/vending/model/PurchaseInfo$BillingInstrument;
    :cond_0
    return-void

    .line 2077
    .restart local v1       #instrument:Lcom/android/vending/model/PurchaseInfo$BillingInstrument;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

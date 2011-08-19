.class public Lcom/google/android/finsky/adapters/PaymentListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PaymentListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/google/android/finsky/model/FormOfPayment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "textViewResourceId"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 26
    return-void
.end method

.method private checkEnabled(ILandroid/view/View;)V
    .locals 2
    .parameter "position"
    .parameter "view"

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/PaymentListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/model/FormOfPayment;

    .line 79
    .local v0, option:Lcom/google/android/finsky/model/FormOfPayment;
    invoke-virtual {v0}, Lcom/google/android/finsky/model/FormOfPayment;->hasCart()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 80
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 65
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, view:Landroid/view/View;
    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/adapters/PaymentListAdapter;->checkEnabled(ILandroid/view/View;)V

    .line 67
    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, view:Landroid/view/View;
    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/adapters/PaymentListAdapter;->checkEnabled(ILandroid/view/View;)V

    .line 57
    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/PaymentListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/model/FormOfPayment;

    .line 37
    .local v0, option:Lcom/google/android/finsky/model/FormOfPayment;
    invoke-virtual {v0}, Lcom/google/android/finsky/model/FormOfPayment;->hasCart()Z

    move-result v1

    return v1
.end method

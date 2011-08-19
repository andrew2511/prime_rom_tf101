.class public abstract Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter;
.super Landroid/widget/BaseAdapter;
.source "PurchaseDetailsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter$1;,
        Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter$DetailsEntryViewHolder;,
        Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter$DetailsEntry;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getItem(I)Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter$DetailsEntry;
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter;->getItem(I)Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter$DetailsEntry;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 64
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "view"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 76
    if-nez p2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040036

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 78
    new-instance v1, Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter$DetailsEntryViewHolder;

    invoke-direct {v1, v4}, Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter$DetailsEntryViewHolder;-><init>(Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter$1;)V

    .line 79
    .local v1, holder:Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter$DetailsEntryViewHolder;
    const v2, 0x7f090022

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter$DetailsEntryViewHolder;->headerView:Landroid/widget/TextView;

    .line 80
    const v2, 0x7f090086

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter$DetailsEntryViewHolder;->contentView:Landroid/widget/TextView;

    .line 81
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 86
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter;->getItem(I)Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter$DetailsEntry;

    move-result-object v0

    .line 87
    .local v0, entry:Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter$DetailsEntry;
    iget-object v2, v1, Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter$DetailsEntryViewHolder;->headerView:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter$DetailsEntry;->headerText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v2, v1, Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter$DetailsEntryViewHolder;->contentView:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter$DetailsEntry;->contentText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    return-object p2

    .line 83
    .end local v0           #entry:Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter$DetailsEntry;
    .end local v1           #holder:Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter$DetailsEntryViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter$DetailsEntryViewHolder;

    .restart local v1       #holder:Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter$DetailsEntryViewHolder;
    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

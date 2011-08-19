.class Lcom/android/contacts/SplitAggregateView$SplitAggregateAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SplitAggregateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/SplitAggregateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SplitAggregateAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/contacts/SplitAggregateView$RawContactInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/contacts/SplitAggregateView;


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 232
    if-nez p2, :cond_0

    .line 233
    iget-object v4, p0, Lcom/android/contacts/SplitAggregateView$SplitAggregateAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040048

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 236
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/SplitAggregateView$SplitAggregateItemCache;

    .line 237
    .local v1, cache:Lcom/android/contacts/SplitAggregateView$SplitAggregateItemCache;
    if-nez v1, :cond_1

    .line 238
    new-instance v1, Lcom/android/contacts/SplitAggregateView$SplitAggregateItemCache;

    .end local v1           #cache:Lcom/android/contacts/SplitAggregateView$SplitAggregateItemCache;
    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/android/contacts/SplitAggregateView$SplitAggregateItemCache;-><init>(Lcom/android/contacts/SplitAggregateView$1;)V

    .line 239
    .restart local v1       #cache:Lcom/android/contacts/SplitAggregateView$SplitAggregateItemCache;
    const v4, 0x7f070037

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/android/contacts/SplitAggregateView$SplitAggregateItemCache;->name:Landroid/widget/TextView;

    .line 240
    const v4, 0x7f0700b5

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/android/contacts/SplitAggregateView$SplitAggregateItemCache;->additionalData:Landroid/widget/TextView;

    .line 241
    const v4, 0x7f0700b4

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/android/contacts/SplitAggregateView$SplitAggregateItemCache;->sourceIcon:Landroid/widget/ImageView;

    .line 242
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 245
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/contacts/SplitAggregateView$SplitAggregateAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/SplitAggregateView$RawContactInfo;

    .line 246
    .local v3, info:Lcom/android/contacts/SplitAggregateView$RawContactInfo;
    iget-object v4, v1, Lcom/android/contacts/SplitAggregateView$SplitAggregateItemCache;->name:Landroid/widget/TextView;

    iget-object v5, v3, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v4, v1, Lcom/android/contacts/SplitAggregateView$SplitAggregateItemCache;->additionalData:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->getAdditionalData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    const/4 v2, 0x0

    .line 250
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/contacts/SplitAggregateView$SplitAggregateAdapter;->this$0:Lcom/android/contacts/SplitAggregateView;

    invoke-static {v4}, Lcom/android/contacts/SplitAggregateView;->access$200(Lcom/android/contacts/SplitAggregateView;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v4

    iget-object v5, v3, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->accountType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    .line 251
    .local v0, accountType:Lcom/android/contacts/model/AccountType;
    if-eqz v0, :cond_2

    .line 252
    invoke-virtual {p0}, Lcom/android/contacts/SplitAggregateView$SplitAggregateAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/contacts/model/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 254
    :cond_2
    if-eqz v2, :cond_3

    .line 255
    iget-object v4, v1, Lcom/android/contacts/SplitAggregateView$SplitAggregateItemCache;->sourceIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 259
    :goto_0
    return-object p2

    .line 257
    :cond_3
    iget-object v4, v1, Lcom/android/contacts/SplitAggregateView$SplitAggregateItemCache;->sourceIcon:Landroid/widget/ImageView;

    const v5, 0x7f0200b8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

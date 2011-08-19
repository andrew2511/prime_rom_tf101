.class public Lcom/android/vending/CategoriesWithAppsAdapter;
.super Landroid/widget/BaseAdapter;
.source "CategoriesWithAppsAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSubCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/GetCategoriesResponse$Category;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/GetCategoriesResponse$Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, subCategories:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/GetCategoriesResponse$Category;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/vending/CategoriesWithAppsAdapter;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/android/vending/CategoriesWithAppsAdapter;->mSubCategories:Ljava/util/List;

    .line 36
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/vending/CategoriesWithAppsAdapter;->mSubCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/vending/CategoriesWithAppsAdapter;->mSubCategories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 52
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 62
    move-object v3, p2

    .line 63
    .local v3, view:Landroid/view/View;
    if-nez p2, :cond_0

    .line 64
    const v4, 0x7f04002c

    iget-object v5, p0, Lcom/android/vending/CategoriesWithAppsAdapter;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/vending/util/Util;->inflateView(ILandroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 67
    :cond_0
    iget-object v4, p0, Lcom/android/vending/CategoriesWithAppsAdapter;->mSubCategories:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/GetCategoriesResponse$Category;

    .line 68
    .local v0, cat:Lcom/android/vending/model/GetCategoriesResponse$Category;
    const v4, 0x7f0800a9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 69
    .local v2, tv:Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/android/vending/model/GetCategoriesResponse$Category;->getCategoryDisplay()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    const v4, 0x7f0800aa

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #tv:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 72
    .restart local v2       #tv:Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/android/vending/model/GetCategoriesResponse$Category;->getCategorySubtitle()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, categorySubtitle:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 74
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    :goto_0
    const/4 v4, 0x6

    invoke-static {v3, p3, v4}, Lcom/android/vending/velvet/LandscapeOverlappingLayout;->tweakViewPadding(Landroid/view/View;Landroid/view/ViewParent;I)V

    .line 81
    return-object v3

    .line 76
    :cond_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

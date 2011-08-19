.class public Lcom/google/android/finsky/fragments/CategoriesViewBinder;
.super Ljava/lang/Object;
.source "CategoriesViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mChannelId:I

.field private mContext:Landroid/content/Context;

.field private mData:Lcom/google/android/finsky/api/model/DfeBrowse;

.field private mNavManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private populateList(Landroid/view/ViewGroup;Lcom/google/android/finsky/adapters/CategoryPanelAdapter;)V
    .locals 7
    .parameter "root"
    .parameter "adapter"

    .prologue
    .line 66
    const v6, 0x7f09001c

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 67
    .local v1, contentBox:Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v5

    .line 68
    .local v5, scrollPos:I
    iget v6, p0, Lcom/google/android/finsky/fragments/CategoriesViewBinder;->mChannelId:I

    invoke-static {v6}, Lcom/google/android/finsky/utils/CorpusMetadata;->getCategoryBackground(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 69
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 70
    iget-object v6, p0, Lcom/google/android/finsky/fragments/CategoriesViewBinder;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 71
    .local v3, inflater:Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    .local v2, i:I
    invoke-virtual {p2}, Lcom/google/android/finsky/adapters/CategoryPanelAdapter;->getCount()I

    move-result v4

    .local v4, n:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 72
    if-lez v2, :cond_0

    .line 74
    const v6, 0x7f04000a

    invoke-virtual {v3, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 77
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {p2, v2, v6, v1}, Lcom/google/android/finsky/adapters/CategoryPanelAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, child:Landroid/view/View;
    invoke-virtual {p2, v2}, Lcom/google/android/finsky/adapters/CategoryPanelAdapter;->getCategoryUrl(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 79
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 71
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    .end local v0           #child:Landroid/view/View;
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {p1, v6, v5}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 83
    return-void
.end method


# virtual methods
.method public bind(Landroid/view/ViewGroup;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 46
    iget-object v3, p0, Lcom/google/android/finsky/fragments/CategoriesViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/DfeBrowse;->hasCategories()Z

    move-result v3

    if-nez v3, :cond_0

    .line 47
    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 63
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v3, p0, Lcom/google/android/finsky/fragments/CategoriesViewBinder;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/google/android/finsky/fragments/CategoriesViewBinder;->mChannelId:I

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/CorpusMetadata;->getBackendHintColor(Landroid/content/Context;I)I

    move-result v1

    .line 53
    .local v1, color:I
    const v3, 0x7f09001b

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 54
    .local v2, textView:Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    new-instance v0, Lcom/google/android/finsky/adapters/CategoryPanelAdapter;

    iget-object v3, p0, Lcom/google/android/finsky/fragments/CategoriesViewBinder;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/finsky/fragments/CategoriesViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget v5, p0, Lcom/google/android/finsky/fragments/CategoriesViewBinder;->mChannelId:I

    const v6, 0x7f04000c

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/android/finsky/adapters/CategoryPanelAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/utils/BitmapLoader;II)V

    .line 59
    .local v0, adapter:Lcom/google/android/finsky/adapters/CategoryPanelAdapter;
    iget-object v3, p0, Lcom/google/android/finsky/fragments/CategoriesViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/DfeBrowse;->getCategoryList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/adapters/CategoryPanelAdapter;->addAll(Ljava/util/Collection;)V

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/fragments/CategoriesViewBinder;->populateList(Landroid/view/ViewGroup;Lcom/google/android/finsky/adapters/CategoryPanelAdapter;)V

    .line 62
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;)V
    .locals 1
    .parameter "context"
    .parameter "nm"
    .parameter "bitmapLoader"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/android/finsky/fragments/CategoriesViewBinder;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/google/android/finsky/fragments/CategoriesViewBinder;->mNavManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 36
    iput-object p3, p0, Lcom/google/android/finsky/fragments/CategoriesViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/fragments/CategoriesViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeBrowse;

    .line 38
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 87
    iget-object v1, p0, Lcom/google/android/finsky/fragments/CategoriesViewBinder;->mNavManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    if-nez v1, :cond_0

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 92
    .local v0, url:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/finsky/fragments/CategoriesViewBinder;->mNavManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goBrowse(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setData(Lcom/google/android/finsky/api/model/DfeBrowse;I)V
    .locals 0
    .parameter "data"
    .parameter "channelId"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/android/finsky/fragments/CategoriesViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeBrowse;

    .line 42
    iput p2, p0, Lcom/google/android/finsky/fragments/CategoriesViewBinder;->mChannelId:I

    .line 43
    return-void
.end method

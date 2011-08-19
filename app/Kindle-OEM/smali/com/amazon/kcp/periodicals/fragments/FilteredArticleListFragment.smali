.class public Lcom/amazon/kcp/periodicals/fragments/FilteredArticleListFragment;
.super Landroid/support/v4/app/Fragment;
.source "FilteredArticleListFragment.java"

# interfaces
.implements Lcom/amazon/kcp/periodicals/fragments/ColorFontChangeableView;


# instance fields
.field private articlesView:Lcom/amazon/kcp/periodicals/ui/ArticlesView;

.field private bookTOC:Lcom/amazon/kcp/reader/models/IBookTOC;

.field private colorMode:Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

.field private fontSize:I

.field private listener:Lcom/amazon/kcp/periodicals/fragments/ThumbnailCacheHelper;

.field private sectionIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private populateArticlesView()V
    .locals 6

    .prologue
    .line 87
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/FilteredArticleListFragment;->bookTOC:Lcom/amazon/kcp/reader/models/IBookTOC;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookTOC;->getTOCSections()Ljava/util/Vector;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kcp/periodicals/fragments/FilteredArticleListFragment;->sectionIndex:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/ISectionTOCItem;

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/ISectionTOCItem;->getArticles()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 92
    check-cast v0, Lcom/amazon/kcp/reader/models/IArticleTOCItem;

    .line 93
    iget-object v2, p0, Lcom/amazon/kcp/periodicals/fragments/FilteredArticleListFragment;->listener:Lcom/amazon/kcp/periodicals/fragments/ThumbnailCacheHelper;

    invoke-interface {v2, v0}, Lcom/amazon/kcp/periodicals/fragments/ThumbnailCacheHelper;->cacheThumbnail(Lcom/amazon/kcp/reader/models/ITOCItem;)V

    .line 95
    iget-object v2, p0, Lcom/amazon/kcp/periodicals/fragments/FilteredArticleListFragment;->articlesView:Lcom/amazon/kcp/periodicals/ui/ArticlesView;

    iget v3, p0, Lcom/amazon/kcp/periodicals/fragments/FilteredArticleListFragment;->fontSize:I

    iget-object v4, p0, Lcom/amazon/kcp/periodicals/fragments/FilteredArticleListFragment;->colorMode:Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    iget-object v5, p0, Lcom/amazon/kcp/periodicals/fragments/FilteredArticleListFragment;->listener:Lcom/amazon/kcp/periodicals/fragments/ThumbnailCacheHelper;

    invoke-interface {v5, v0}, Lcom/amazon/kcp/periodicals/fragments/ThumbnailCacheHelper;->getCachedThumbnail(Lcom/amazon/kcp/reader/models/ITOCItem;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->addArticle(Lcom/amazon/kcp/reader/models/IArticleTOCItem;ILcom/amazon/kcp/reader/ui/color/AndroidColorMode;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 100
    :cond_0
    return-void
.end method

.method private refreshArticleViews()V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/FilteredArticleListFragment;->articlesView:Lcom/amazon/kcp/periodicals/ui/ArticlesView;

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/fragments/FilteredArticleListFragment;->colorMode:Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    iget v2, p0, Lcom/amazon/kcp/periodicals/fragments/FilteredArticleListFragment;->fontSize:I

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->refresh(Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;I)V

    .line 137
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/fragments/FilteredArticleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/application/ReddingApplication;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/ReddingApplication;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/reader/IReaderController;->getCurrentBook()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    .line 59
    .local v0, bookDocument:Lcom/amazon/kcp/reader/models/IBookDocument;
    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getTOC()Lcom/amazon/kcp/reader/models/IBookTOC;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/kcp/periodicals/fragments/FilteredArticleListFragment;->bookTOC:Lcom/amazon/kcp/reader/models/IBookTOC;

    .line 60
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/fragments/FilteredArticleListFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0c009c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/periodicals/ui/ArticlesView;

    iput-object v2, p0, Lcom/amazon/kcp/periodicals/fragments/FilteredArticleListFragment;->articlesView:Lcom/amazon/kcp/periodicals/ui/ArticlesView;

    .line 61
    iget-object v2, p0, Lcom/amazon/kcp/periodicals/fragments/FilteredArticleListFragment;->articlesView:Lcom/amazon/kcp/periodicals/ui/ArticlesView;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getLocalBookState()Lcom/amazon/kcp/library/models/LocalBookState;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kcp/periodicals/fragments/FilteredArticleListFragment;->bookTOC:Lcom/amazon/kcp/reader/models/IBookTOC;

    invoke-virtual {v2, v3, v4}, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->initialize(Lcom/amazon/kcp/library/models/LocalBookState;Lcom/amazon/kcp/reader/models/IBookTOC;)V

    .line 62
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/fragments/FilteredArticleListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "filterSectionIndex"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/amazon/kcp/periodicals/fragments/FilteredArticleListFragment;->sectionIndex:I

    .line 64
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/fragments/FilteredArticleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/application/ReddingApplication;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/ReddingApplication;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v1

    .line 65
    .local v1, settings:Lcom/amazon/kcp/application/SettingsController;
    sget-object v2, Lcom/mobipocket/android/drawing/AndroidFontFactory;->availableSizes:[I

    invoke-virtual {v1}, Lcom/amazon/kcp/application/SettingsController;->getFontSizeIndex()I

    move-result v3

    aget v2, v2, v3

    iput v2, p0, Lcom/amazon/kcp/periodicals/fragments/FilteredArticleListFragment;->fontSize:I

    .line 66
    invoke-virtual {v1}, Lcom/amazon/kcp/application/SettingsController;->getColorMode()I

    move-result v2

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/fragments/FilteredArticleListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/kcp/reader/ui/color/AndroidColorModeFactory;->getColorMode(ILandroid/content/res/Resources;)Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/kcp/periodicals/fragments/FilteredArticleListFragment;->colorMode:Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    .line 67
    iget-object v2, p0, Lcom/amazon/kcp/periodicals/fragments/FilteredArticleListFragment;->articlesView:Lcom/amazon/kcp/periodicals/ui/ArticlesView;

    iget-object v3, p0, Lcom/amazon/kcp/periodicals/fragments/FilteredArticleListFragment;->colorMode:Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->getBackgroundColor()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->setBackgroundColor(I)V

    .line 69
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/fragments/FilteredArticleListFragment;->populateArticlesView()V

    .line 70
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 45
    check-cast p1, Lcom/amazon/kcp/periodicals/fragments/ThumbnailCacheHelper;

    .end local p1
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/FilteredArticleListFragment;->listener:Lcom/amazon/kcp/periodicals/fragments/ThumbnailCacheHelper;

    .line 46
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 51
    const v0, 0x7f030030

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 78
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/fragments/FilteredArticleListFragment;->refreshArticleViews()V

    .line 79
    return-void
.end method

.method public setColorMode(Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;)V
    .locals 2
    .parameter "color"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/FilteredArticleListFragment;->colorMode:Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    .line 110
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/FilteredArticleListFragment;->articlesView:Lcom/amazon/kcp/periodicals/ui/ArticlesView;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/FilteredArticleListFragment;->articlesView:Lcom/amazon/kcp/periodicals/ui/ArticlesView;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->getBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->setBackgroundColor(I)V

    .line 113
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/fragments/FilteredArticleListFragment;->refreshArticleViews()V

    .line 115
    :cond_0
    return-void
.end method

.method public setFontSize(I)V
    .locals 1
    .parameter "fontSize"

    .prologue
    .line 120
    iput p1, p0, Lcom/amazon/kcp/periodicals/fragments/FilteredArticleListFragment;->fontSize:I

    .line 125
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/FilteredArticleListFragment;->articlesView:Lcom/amazon/kcp/periodicals/ui/ArticlesView;

    if-eqz v0, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/fragments/FilteredArticleListFragment;->refreshArticleViews()V

    .line 129
    :cond_0
    return-void
.end method

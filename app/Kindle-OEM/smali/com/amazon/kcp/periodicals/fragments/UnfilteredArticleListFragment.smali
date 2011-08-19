.class public Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;
.super Landroid/support/v4/app/Fragment;
.source "UnfilteredArticleListFragment.java"

# interfaces
.implements Lcom/amazon/kcp/periodicals/fragments/ColorFontChangeableView;


# static fields
.field private static final MAX_ARTICLES_PER_SECTION:I = 0x3


# instance fields
.field private articlesView:Lcom/amazon/kcp/periodicals/ui/ArticlesView;

.field private bookDocument:Lcom/amazon/kcp/reader/models/IBookDocument;

.field private bookTOC:Lcom/amazon/kcp/reader/models/IBookTOC;

.field private colorMode:Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

.field private fontSize:I

.field private limitNumArticles:Z

.field private listener:Lcom/amazon/kcp/periodicals/fragments/ThumbnailCacheHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private populateArticlesView()V
    .locals 13

    .prologue
    .line 175
    iget-object v9, p0, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->bookTOC:Lcom/amazon/kcp/reader/models/IBookTOC;

    invoke-interface {v9}, Lcom/amazon/kcp/reader/models/IBookTOC;->getTOCSections()Ljava/util/Vector;

    move-result-object v8

    .line 176
    .local v8, sections:Ljava/util/Vector;
    const/4 v7, 0x0

    .line 177
    .local v7, sectionIndex:I
    invoke-virtual {v8}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 179
    .local v6, section:Ljava/lang/Object;
    iget-object v10, p0, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->articlesView:Lcom/amazon/kcp/periodicals/ui/ArticlesView;

    move-object v0, v6

    check-cast v0, Lcom/amazon/kcp/reader/models/ISectionTOCItem;

    move-object v9, v0

    sget-object v11, Lcom/mobipocket/android/drawing/AndroidFontFactory;->availableSizes:[I

    sget v12, Lcom/mobipocket/android/drawing/AndroidFontFactory;->defaultFontIndex:I

    aget v11, v11, v12

    iget-boolean v12, p0, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->limitNumArticles:Z

    invoke-virtual {v10, v9, v7, v11, v12}, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->addSection(Lcom/amazon/kcp/reader/models/ISectionTOCItem;IIZ)V

    .line 181
    check-cast v6, Lcom/amazon/kcp/reader/models/ISectionTOCItem;

    .end local v6           #section:Ljava/lang/Object;
    invoke-interface {v6}, Lcom/amazon/kcp/reader/models/ISectionTOCItem;->getArticles()Ljava/util/Vector;

    move-result-object v2

    .line 183
    .local v2, articles:Ljava/util/Vector;
    iget-boolean v9, p0, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->limitNumArticles:Z

    if-eqz v9, :cond_0

    const/4 v9, 0x3

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    move v5, v9

    .line 184
    .local v5, numArticlesToShow:I
    :goto_1
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v5, :cond_1

    .line 186
    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/models/IArticleTOCItem;

    .line 187
    .local v1, article:Lcom/amazon/kcp/reader/models/IArticleTOCItem;
    iget-object v9, p0, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->listener:Lcom/amazon/kcp/periodicals/fragments/ThumbnailCacheHelper;

    invoke-interface {v9, v1}, Lcom/amazon/kcp/periodicals/fragments/ThumbnailCacheHelper;->cacheThumbnail(Lcom/amazon/kcp/reader/models/ITOCItem;)V

    .line 189
    iget-object v9, p0, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->articlesView:Lcom/amazon/kcp/periodicals/ui/ArticlesView;

    iget v10, p0, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->fontSize:I

    iget-object v11, p0, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->colorMode:Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    iget-object v12, p0, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->listener:Lcom/amazon/kcp/periodicals/fragments/ThumbnailCacheHelper;

    invoke-interface {v12, v1}, Lcom/amazon/kcp/periodicals/fragments/ThumbnailCacheHelper;->getCachedThumbnail(Lcom/amazon/kcp/reader/models/ITOCItem;)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-virtual {v9, v1, v10, v11, v12}, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->addArticle(Lcom/amazon/kcp/reader/models/IArticleTOCItem;ILcom/amazon/kcp/reader/ui/color/AndroidColorMode;Landroid/graphics/Bitmap;)V

    .line 184
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 183
    .end local v1           #article:Lcom/amazon/kcp/reader/models/IArticleTOCItem;
    .end local v3           #i:I
    .end local v5           #numArticlesToShow:I
    :cond_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v9

    move v5, v9

    goto :goto_1

    .line 191
    .restart local v3       #i:I
    .restart local v5       #numArticlesToShow:I
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 192
    goto :goto_0

    .line 193
    .end local v2           #articles:Ljava/util/Vector;
    .end local v3           #i:I
    .end local v5           #numArticlesToShow:I
    :cond_2
    return-void
.end method

.method private refreshArticleViews()V
    .locals 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->articlesView:Lcom/amazon/kcp/periodicals/ui/ArticlesView;

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->colorMode:Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    iget v2, p0, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->fontSize:I

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->refresh(Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;I)V

    .line 230
    return-void
.end method


# virtual methods
.method public getCurrentlyDisplayedIndex()I
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->articlesView:Lcom/amazon/kcp/periodicals/ui/ArticlesView;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->getIndexOfTopVisibleSection()I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v4, 0x7f0c0098

    const/4 v3, 0x0

    .line 71
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/ReddingApplication;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/ReddingApplication;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getCurrentBook()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->bookDocument:Lcom/amazon/kcp/reader/models/IBookDocument;

    .line 73
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->bookDocument:Lcom/amazon/kcp/reader/models/IBookDocument;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getTOC()Lcom/amazon/kcp/reader/models/IBookTOC;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->bookTOC:Lcom/amazon/kcp/reader/models/IBookTOC;

    .line 74
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c009c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/periodicals/ui/ArticlesView;

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->articlesView:Lcom/amazon/kcp/periodicals/ui/ArticlesView;

    .line 75
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->articlesView:Lcom/amazon/kcp/periodicals/ui/ArticlesView;

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->bookDocument:Lcom/amazon/kcp/reader/models/IBookDocument;

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getLocalBookState()Lcom/amazon/kcp/library/models/LocalBookState;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->bookTOC:Lcom/amazon/kcp/reader/models/IBookTOC;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->initialize(Lcom/amazon/kcp/library/models/LocalBookState;Lcom/amazon/kcp/reader/models/IBookTOC;)V

    .line 77
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/ReddingApplication;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/ReddingApplication;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    .line 78
    sget-object v1, Lcom/mobipocket/android/drawing/AndroidFontFactory;->availableSizes:[I

    invoke-virtual {v0}, Lcom/amazon/kcp/application/SettingsController;->getFontSizeIndex()I

    move-result v2

    aget v1, v1, v2

    iput v1, p0, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->fontSize:I

    .line 79
    invoke-virtual {v0}, Lcom/amazon/kcp/application/SettingsController;->getColorMode()I

    move-result v0

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/ui/color/AndroidColorModeFactory;->getColorMode(ILandroid/content/res/Resources;)Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->colorMode:Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    .line 80
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->articlesView:Lcom/amazon/kcp/periodicals/ui/ArticlesView;

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->colorMode:Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->getBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->setBackgroundColor(I)V

    .line 82
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->limitNumArticles:Z

    .line 83
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->articlesView:Lcom/amazon/kcp/periodicals/ui/ArticlesView;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->getSectionClickedEvent()Lcom/amazon/foundation/internal/IntEventProvider;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment$1;-><init>(Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;)V

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/IntEventProvider;->register(Lcom/amazon/foundation/IIntCallback;)Z

    .line 94
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 98
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->isDualPanelPeriodicalViewSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne v0, v6, :cond_4

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f03002f

    invoke-static {v0, v1, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 107
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->isDualPanelPeriodicalViewSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {v1, v6, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->bookDocument:Lcom/amazon/kcp/reader/models/IBookDocument;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/android/util/UIUtils;->formatLongPublicationDate(Lcom/amazon/kcp/library/models/IListableBook;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 113
    const v0, 0x7f0c009a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->bookTOC:Lcom/amazon/kcp/reader/models/IBookTOC;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookTOC;->getTitleImage()[B

    move-result-object v0

    .line 117
    if-eqz v0, :cond_3

    array-length v2, v0

    if-lez v2, :cond_3

    .line 119
    array-length v2, v0

    invoke-static {v0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 120
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 123
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 124
    const v0, 0x7f0c0099

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 136
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->articlesView:Lcom/amazon/kcp/periodicals/ui/ArticlesView;

    iget-object v2, p0, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->colorMode:Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->addMastHead(Landroid/view/View;Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;)V

    .line 153
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->populateArticlesView()V

    .line 158
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->articlesView:Lcom/amazon/kcp/periodicals/ui/ArticlesView;

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "filterSectionIndex"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->setInitialSectionIndex(I)V

    .line 159
    return-void

    .line 129
    :cond_3
    const v0, 0x7f0c0099

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 130
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 131
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    iget-object v2, p0, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->bookDocument:Lcom/amazon/kcp/reader/models/IBookDocument;

    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 142
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f03002e

    invoke-static {v0, v1, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 144
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->bookDocument:Lcom/amazon/kcp/reader/models/IBookDocument;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/android/util/UIUtils;->formatLongPublicationDate(Lcom/amazon/kcp/library/models/IListableBook;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-static {v2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 147
    const v0, 0x7f0c0097

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->articlesView:Lcom/amazon/kcp/periodicals/ui/ArticlesView;

    iget-object v2, p0, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->colorMode:Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->addMastHeadDate(Landroid/view/View;Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;)V

    goto :goto_1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 59
    check-cast p1, Lcom/amazon/kcp/periodicals/fragments/ThumbnailCacheHelper;

    .end local p1
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->listener:Lcom/amazon/kcp/periodicals/fragments/ThumbnailCacheHelper;

    .line 60
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 65
    const v0, 0x7f030030

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 164
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 167
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->refreshArticleViews()V

    .line 168
    return-void
.end method

.method public setColorMode(Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;)V
    .locals 2
    .parameter "color"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->colorMode:Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    .line 203
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->articlesView:Lcom/amazon/kcp/periodicals/ui/ArticlesView;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->articlesView:Lcom/amazon/kcp/periodicals/ui/ArticlesView;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->getBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->setBackgroundColor(I)V

    .line 206
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->refreshArticleViews()V

    .line 208
    :cond_0
    return-void
.end method

.method public setFontSize(I)V
    .locals 1
    .parameter "fontSize"

    .prologue
    .line 213
    iput p1, p0, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->fontSize:I

    .line 218
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->articlesView:Lcom/amazon/kcp/periodicals/ui/ArticlesView;

    if-eqz v0, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/fragments/UnfilteredArticleListFragment;->refreshArticleViews()V

    .line 222
    :cond_0
    return-void
.end method

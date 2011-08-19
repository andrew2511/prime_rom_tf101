.class public Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;
.super Lcom/amazon/kcp/reader/ReaderActivity;
.source "PeriodicalReaderActivity.java"


# static fields
.field private static final METRICS_NAME:Ljava/lang/String; = "PeriodicalReaderActivity"


# instance fields
.field private articlesOption:Landroid/view/MenuItem;

.field private nextArticleOption:Landroid/view/MenuItem;

.field private prevArticleOption:Landroid/view/MenuItem;

.field private storeOption:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;-><init>()V

    return-void
.end method

.method private getArticleAtOffset(I)Lcom/amazon/kcp/reader/models/IArticleTOCItem;
    .locals 7
    .parameter "offset"

    .prologue
    const/4 v6, 0x0

    .line 270
    iget-object v4, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v4}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getTOC()Lcom/amazon/kcp/reader/models/IBookTOC;

    move-result-object v3

    .line 271
    .local v3, toc:Lcom/amazon/kcp/reader/models/IBookTOC;
    if-nez v3, :cond_0

    move-object v4, v6

    .line 283
    .end local p0
    :goto_0
    return-object v4

    .line 276
    .restart local p0
    :cond_0
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/amazon/kcp/reader/models/IBookTOC;->getArticleOnPage(I)Lcom/amazon/kcp/reader/models/IArticleTOCItem;

    move-result-object v1

    .line 277
    .local v1, currentArticle:Lcom/amazon/kcp/reader/models/IArticleTOCItem;
    invoke-interface {v3}, Lcom/amazon/kcp/reader/models/IBookTOC;->getTOCArticles()Ljava/util/Vector;

    move-result-object v0

    .line 278
    .local v0, articles:Ljava/util/Vector;
    invoke-virtual {v0, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 279
    .local v2, index:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    add-int v4, v2, p1

    if-ltz v4, :cond_1

    add-int v4, v2, p1

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v4, v5, :cond_2

    :cond_1
    move-object v4, v6

    .line 281
    goto :goto_0

    .line 283
    :cond_2
    add-int v4, v2, p1

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/kcp/reader/models/IArticleTOCItem;

    move-object v4, p0

    goto :goto_0
.end method

.method private getCurrentSectionID()I
    .locals 3

    .prologue
    .line 292
    iget-object v2, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getTOC()Lcom/amazon/kcp/reader/models/IBookTOC;

    move-result-object v0

    .line 293
    .local v0, bookTOC:Lcom/amazon/kcp/reader/models/IBookTOC;
    if-nez v0, :cond_0

    .line 295
    const/4 v2, -0x1

    .line 299
    :goto_0
    return v2

    .line 298
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/amazon/kcp/reader/models/IBookTOC;->getSectionOnPage(I)Lcom/amazon/kcp/reader/models/ISectionTOCItem;

    move-result-object v1

    .line 299
    .local v1, currentSection:Lcom/amazon/kcp/reader/models/ISectionTOCItem;
    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookTOC;->getTOCSections()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    goto :goto_0
.end method

.method private isBookKept()Z
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getLocalBookState()Lcom/amazon/kcp/library/models/LocalBookState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/LocalBookState;->isBookKept()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected newReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;
    .locals 1

    .prologue
    .line 40
    invoke-static {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->newInstance(Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;)Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    move-result-object v0

    return-object v0
.end method

.method public onAllArticlesPressed(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 242
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "PeriodicalReaderActivity"

    const-string v2, "ArticlesListViaPeriodicalReaderMenu"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-static {p0}, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->isDualPanelPeriodicalViewSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;

    .line 246
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 247
    const/high16 v0, 0x400

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 248
    const-string v0, "filterSectionIndex"

    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->getCurrentSectionID()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 249
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->startActivity(Landroid/content/Intent;)V

    .line 250
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->finish()V

    .line 251
    return-void

    .line 243
    :cond_0
    const-class v0, Lcom/amazon/kcp/periodicals/FilteredArticleListActivity;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 90
    :goto_0
    return v0

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 62
    sget-boolean v0, Lcom/amazon/kcp/application/ReddingApplication;->HAS_SEARCH_VIEW:Z

    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->setupSearchView(Landroid/view/Menu;)V

    .line 68
    :cond_1
    const v0, 0x7f0c00f4

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 71
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 73
    const v1, 0x7f0b00cf

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 85
    :goto_1
    const v0, 0x7f0c00a3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->articlesOption:Landroid/view/MenuItem;

    .line 86
    const v0, 0x7f0c00a1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->prevArticleOption:Landroid/view/MenuItem;

    .line 87
    const v0, 0x7f0c00a4

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->nextArticleOption:Landroid/view/MenuItem;

    .line 88
    const v0, 0x7f0c00fb

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->storeOption:Landroid/view/MenuItem;

    .line 90
    const/4 v0, 0x1

    goto :goto_0

    .line 75
    :cond_2
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getBookType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 77
    const v1, 0x7f0b00d6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 81
    :cond_3
    const v1, 0x7f0b00d5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 317
    packed-switch p1, :pswitch_data_0

    .line 324
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/reader/ReaderActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 320
    :pswitch_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "PeriodicalReaderActivity"

    const-string v2, "PeriodicalSearchViaReaderHWButton"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 317
    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2
    .parameter "featureId"
    .parameter "menu"

    .prologue
    const/4 v1, 0x1

    .line 140
    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/reader/ReaderActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    const/4 v0, 0x0

    .line 147
    :goto_0
    return v0

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)V

    move v0, v1

    .line 147
    goto :goto_0
.end method

.method public onNextPressed(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 255
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->getArticleAtOffset(I)Lcom/amazon/kcp/reader/models/IArticleTOCItem;

    move-result-object v0

    .line 256
    .local v0, nextArticle:Lcom/amazon/kcp/reader/models/IArticleTOCItem;
    if-eqz v0, :cond_0

    .line 258
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "PeriodicalReaderActivity"

    const-string v3, "NextArticleViaPeriodicalReaderMenu"

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IArticleTOCItem;->gotoLocation()V

    .line 261
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 165
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 223
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 226
    :goto_0
    return v0

    .line 168
    :sswitch_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "PeriodicalReaderActivity"

    const-string v2, "HomeViaPeriodicalReaderMenu"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryController;->showLibraryPage()Lcom/amazon/kcp/library/pages/ILibraryPage;

    .line 170
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->finish()V

    :goto_1
    move v0, v5

    .line 226
    goto :goto_0

    .line 173
    :sswitch_1
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "PeriodicalReaderActivity"

    const-string v2, "FrontPageViaPeriodicalReaderMenu"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {p0}, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->createIntentForPeriodicalLaunch(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 175
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 176
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->startActivity(Landroid/content/Intent;)V

    .line 177
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->finish()V

    goto :goto_1

    .line 180
    :sswitch_2
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->onAllArticlesPressed(Landroid/view/View;)V

    goto :goto_1

    .line 183
    :sswitch_3
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "PeriodicalReaderActivity"

    const-string v2, "ViewOptionsViaPeriodicalReaderMenu"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setViewOptionsVisible(Z)Z

    goto :goto_1

    .line 188
    :sswitch_4
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setFontSizeViewOptionsVisible(Z)Z

    goto :goto_1

    .line 192
    :sswitch_5
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setBrightnessTextColorViewOptionsVisible(Z)Z

    goto :goto_1

    .line 195
    :sswitch_6
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->onSearchRequested()Z

    goto :goto_1

    .line 198
    :sswitch_7
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->onPrevPressed(Landroid/view/View;)V

    goto :goto_1

    .line 201
    :sswitch_8
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->onNextPressed(Landroid/view/View;)V

    goto :goto_1

    .line 204
    :sswitch_9
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getWebStoreController()Lcom/amazon/kcp/store/IWebStoreController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/store/IWebStoreController;->showStorefront()V

    goto :goto_1

    .line 208
    :sswitch_a
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->isBookKept()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Unkept"

    .line 209
    :goto_2
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getLocalBookState()Lcom/amazon/kcp/library/models/LocalBookState;

    move-result-object v1

    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->isBookKept()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v5

    :goto_3
    invoke-virtual {v1, v2}, Lcom/amazon/kcp/library/models/LocalBookState;->setBookKept(Z)V

    .line 211
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "PeriodicalReaderActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Periodical"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "ViaContext"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getLocalBookState()Lcom/amazon/kcp/library/models/LocalBookState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/LocalBookState;->persist()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 218
    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 208
    :cond_0
    const-string v0, "Kept"

    goto :goto_2

    .line 209
    :cond_1
    const/4 v2, 0x0

    goto :goto_3

    .line 165
    :sswitch_data_0
    .sparse-switch
        0x7f0c00a1 -> :sswitch_7
        0x7f0c00a3 -> :sswitch_2
        0x7f0c00a4 -> :sswitch_8
        0x7f0c00f3 -> :sswitch_0
        0x7f0c00f4 -> :sswitch_1
        0x7f0c00f6 -> :sswitch_3
        0x7f0c00f7 -> :sswitch_a
        0x7f0c00f8 -> :sswitch_6
        0x7f0c00f9 -> :sswitch_5
        0x7f0c00fa -> :sswitch_4
        0x7f0c00fb -> :sswitch_9
    .end sparse-switch
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 3
    .parameter "menu"

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 155
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->isSearching()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)V

    .line 160
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 96
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    .line 134
    :goto_0
    return v0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->articlesOption:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->articlesOption:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->getCurrentSectionID()I

    move-result v1

    if-eq v1, v4, :cond_6

    move v1, v2

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->prevArticleOption:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->prevArticleOption:Landroid/view/MenuItem;

    invoke-direct {p0, v4}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->getArticleAtOffset(I)Lcom/amazon/kcp/reader/models/IArticleTOCItem;

    move-result-object v1

    if-eqz v1, :cond_7

    move v1, v2

    :goto_2
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->nextArticleOption:Landroid/view/MenuItem;

    if-eqz v0, :cond_3

    .line 112
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->nextArticleOption:Landroid/view/MenuItem;

    invoke-direct {p0, v2}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->getArticleAtOffset(I)Lcom/amazon/kcp/reader/models/IArticleTOCItem;

    move-result-object v1

    if-eqz v1, :cond_8

    move v1, v2

    :goto_3
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->storeOption:Landroid/view/MenuItem;

    if-eqz v0, :cond_4

    .line 116
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->storeOption:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->canGotoStore()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 118
    :cond_4
    const v0, 0x7f0c00f7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_5

    .line 121
    invoke-direct {p0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->isBookKept()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 123
    const v1, 0x7f02004f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 124
    const v1, 0x7f0b00d4

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 125
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getLocalStorage()Lcom/amazon/kcp/application/ILocalStorage;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/ILocalStorage;->isAvailable()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_5
    :goto_4
    move v0, v2

    .line 134
    goto :goto_0

    :cond_6
    move v1, v3

    .line 104
    goto :goto_1

    :cond_7
    move v1, v3

    .line 108
    goto :goto_2

    :cond_8
    move v1, v3

    .line 112
    goto :goto_3

    .line 129
    :cond_9
    const v1, 0x7f020055

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 130
    const v1, 0x7f0b00d3

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 131
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getLocalStorage()Lcom/amazon/kcp/application/ILocalStorage;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/ILocalStorage;->isAvailable()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_4
.end method

.method public onPrevPressed(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 232
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->getArticleAtOffset(I)Lcom/amazon/kcp/reader/models/IArticleTOCItem;

    move-result-object v0

    .line 233
    .local v0, prevArticle:Lcom/amazon/kcp/reader/models/IArticleTOCItem;
    if-eqz v0, :cond_0

    .line 235
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "PeriodicalReaderActivity"

    const-string v3, "PreviousArticleViaPeriodicalReaderMenu"

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IArticleTOCItem;->gotoLocation()V

    .line 238
    :cond_0
    return-void
.end method

.method public onSoftBackButtonClicked(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 337
    return-void
.end method

.method protected setTitleVisibility(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setTitleVisibility(Z)V

    .line 348
    return-void
.end method

.method public startSearch(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 46
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/search/PeriodicalReaderSearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    const-string v1, "android.intent.action.SEARCH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const-string v1, "query"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->startActivity(Landroid/content/Intent;)V

    .line 50
    return-void
.end method

.method public supportsAnnotations()Z
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x0

    return v0
.end method

.method public supportsBookmarks()Z
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    return v0
.end method

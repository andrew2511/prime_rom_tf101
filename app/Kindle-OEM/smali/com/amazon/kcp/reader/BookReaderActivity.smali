.class public Lcom/amazon/kcp/reader/BookReaderActivity;
.super Lcom/amazon/kcp/reader/ReaderActivity;
.source "BookReaderActivity.java"


# instance fields
.field private storeOption:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderActivity;-><init>()V

    return-void
.end method

.method private getBookLayout()Lcom/amazon/kcp/reader/ui/BookLayout;
    .locals 0

    .prologue
    .line 330
    iget-object p0, p0, Lcom/amazon/kcp/reader/BookReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .end local p0
    check-cast p0, Lcom/amazon/kcp/reader/ui/BookLayout;

    return-object p0
.end method

.method private getBookmarkItem(Landroid/view/Menu;)Landroid/view/MenuItem;
    .locals 2
    .parameter "menu"

    .prologue
    .line 336
    const v1, 0x7f0c0106

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 337
    .local v0, xlargeScreenBkmrkItem:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x7f0c0103

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method protected newReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;
    .locals 1

    .prologue
    .line 36
    invoke-static {p0}, Lcom/amazon/kcp/reader/ui/BookLayout;->newInstance(Lcom/amazon/kcp/reader/BookReaderActivity;)Lcom/amazon/kcp/reader/ui/BookLayout;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 69
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x0

    .line 103
    :goto_0
    return v0

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/BookReaderActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 77
    sget-boolean v0, Lcom/amazon/kcp/application/ReddingApplication;->HAS_SEARCH_VIEW:Z

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/BookReaderActivity;->setupSearchView(Landroid/view/Menu;)V

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/BookReaderActivity;->readerController:Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderController;->getCurrentBook()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v0

    .line 86
    const v1, 0x7f0c00fd

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookNavigator;->hasCoverPage()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 87
    const v1, 0x7f0c00fe

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookNavigator;->hasTOC()Z

    move-result v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 88
    const v0, 0x7f0c00fb

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/BookReaderActivity;->storeOption:Landroid/view/MenuItem;

    .line 90
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/BookReaderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "should_show_color_modes"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/BookReaderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "should_show_color_modes"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 95
    const v1, 0x7f0c00f9

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 96
    if-eqz v1, :cond_2

    .line 98
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 99
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    move v0, v3

    .line 103
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-super {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->onDestroy()V

    .line 112
    sget-boolean v0, Lcom/amazon/kcp/application/ReddingApplication;->HAS_SEARCH_VIEW:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/BookReaderActivity;->searchView:Lcom/amazon/android/widget/SearchViewWrapper;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/amazon/kcp/reader/BookReaderActivity;->searchView:Lcom/amazon/android/widget/SearchViewWrapper;

    invoke-virtual {v0, v1}, Lcom/amazon/android/widget/SearchViewWrapper;->setOnQueryTextListener(Lcom/amazon/android/widget/SearchViewWrapper$OnQueryTextListenerWrapper;)V

    .line 115
    iget-object v0, p0, Lcom/amazon/kcp/reader/BookReaderActivity;->searchView:Lcom/amazon/android/widget/SearchViewWrapper;

    invoke-virtual {v0, v1}, Lcom/amazon/android/widget/SearchViewWrapper;->setOnCloseListener(Lcom/amazon/android/widget/SearchViewWrapper$OnCloseListenerWrapper;)V

    .line 116
    iget-object v0, p0, Lcom/amazon/kcp/reader/BookReaderActivity;->searchView:Lcom/amazon/android/widget/SearchViewWrapper;

    invoke-virtual {v0, v1}, Lcom/amazon/android/widget/SearchViewWrapper;->setOnQueryTextFocusChangeListener(Lcom/amazon/android/widget/SearchViewWrapper$OnFocusChangeListenerWrapper;)V

    .line 118
    :cond_0
    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 171
    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/reader/ReaderActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    const/4 v0, 0x0

    .line 178
    :goto_0
    return v0

    .line 177
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/reader/BookReaderActivity;->getBookLayout()Lcom/amazon/kcp/reader/ui/BookLayout;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/reader/ui/BookLayout;->setVisibleOverlays(IZ)Z

    move v0, v2

    .line 178
    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 201
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    .line 299
    :goto_0
    return v0

    .line 208
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    move v0, v4

    .line 299
    goto :goto_0

    .line 211
    :pswitch_1
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/BookReaderActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryController;->showLibraryPage()Lcom/amazon/kcp/library/pages/ILibraryPage;

    .line 214
    new-instance v0, Lcom/amazon/kcp/reader/BookReaderActivity$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/BookReaderActivity$1;-><init>(Lcom/amazon/kcp/reader/BookReaderActivity;)V

    .line 225
    new-instance v1, Lcom/amazon/android/system/AndroidUtilities;

    invoke-direct {v1}, Lcom/amazon/android/system/AndroidUtilities;-><init>()V

    invoke-virtual {v1, v0}, Lcom/amazon/android/system/AndroidUtilities;->invokeLater(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 230
    :pswitch_2
    invoke-direct {p0}, Lcom/amazon/kcp/reader/BookReaderActivity;->getBookLayout()Lcom/amazon/kcp/reader/ui/BookLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/amazon/kcp/reader/ui/BookLayout;->setViewOptionsVisible(Z)Z

    goto :goto_1

    .line 234
    :pswitch_3
    invoke-direct {p0}, Lcom/amazon/kcp/reader/BookReaderActivity;->getBookLayout()Lcom/amazon/kcp/reader/ui/BookLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/amazon/kcp/reader/ui/BookLayout;->setFontSizeViewOptionsVisible(Z)Z

    goto :goto_1

    .line 238
    :pswitch_4
    invoke-direct {p0}, Lcom/amazon/kcp/reader/BookReaderActivity;->getBookLayout()Lcom/amazon/kcp/reader/ui/BookLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/amazon/kcp/reader/ui/BookLayout;->setBrightnessTextColorViewOptionsVisible(Z)Z

    goto :goto_1

    .line 243
    :pswitch_5
    invoke-direct {p0}, Lcom/amazon/kcp/reader/BookReaderActivity;->getBookLayout()Lcom/amazon/kcp/reader/ui/BookLayout;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Lcom/amazon/kcp/reader/ui/BookLayout;->setVisibleOverlays(IZ)Z

    goto :goto_1

    .line 246
    :pswitch_6
    iget-object v0, p0, Lcom/amazon/kcp/reader/BookReaderActivity;->readerController:Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderController;->getCurrentBook()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v0

    .line 247
    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookNavigator;->isBackAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookNavigator;->back()Z

    goto :goto_1

    .line 253
    :pswitch_7
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/BookReaderActivity;->onSearchRequested()Z

    goto :goto_1

    .line 256
    :pswitch_8
    new-instance v0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    sget-object v1, Lcom/amazon/kcp/application/sync/internal/SyncType;->BOOK_MANUAL:Lcom/amazon/kcp/application/sync/internal/SyncType;

    iget-object v2, p0, Lcom/amazon/kcp/reader/BookReaderActivity;->readerController:Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ReaderController;->getCurrentBook()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;-><init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kcp/library/models/ILocalBookInfo;Ljava/util/Date;Lcom/amazon/foundation/IStatusTracker;)V

    .line 257
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/BookReaderActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSynchronizationManager()Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->sync(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)V

    goto :goto_1

    .line 260
    :pswitch_9
    iget-object v0, p0, Lcom/amazon/kcp/reader/BookReaderActivity;->readerController:Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderController;->getCurrentBook()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getAnnotationsManager()Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;

    move-result-object v0

    .line 261
    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;->toggleBookmark()V

    .line 262
    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;->hasBookmark()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0b00b6

    :goto_2
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :cond_2
    const v0, 0x7f0b00b7

    goto :goto_2

    .line 265
    :pswitch_a
    iget-object v0, p0, Lcom/amazon/kcp/reader/BookReaderActivity;->readerController:Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderController;->getCurrentBook()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getAnnotationsManager()Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;->toggleBookmark()V

    goto/16 :goto_1

    .line 268
    :pswitch_b
    iget-object v0, p0, Lcom/amazon/kcp/reader/BookReaderActivity;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amazon/kcp/reader/ShareHelper;->shareCurrentProgressInBook(Landroid/content/Context;Lcom/amazon/kcp/reader/models/IBookDocument;)V

    goto/16 :goto_1

    .line 271
    :pswitch_c
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/BookReaderActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getWebStoreController()Lcom/amazon/kcp/store/IWebStoreController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/store/IWebStoreController;->showStorefront()V

    goto/16 :goto_1

    .line 275
    :pswitch_d
    iget-object v0, p0, Lcom/amazon/kcp/reader/BookReaderActivity;->readerController:Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderController;->getCurrentBook()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v0

    .line 276
    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookNavigator;->hasCoverPage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 278
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "GoToMenu"

    const-string v3, "Cover"

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookNavigator;->gotoCover()V

    goto/16 :goto_1

    .line 283
    :pswitch_e
    iget-object v0, p0, Lcom/amazon/kcp/reader/BookReaderActivity;->readerController:Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderController;->getCurrentBook()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v0

    .line 284
    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookNavigator;->hasTOC()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "GoToMenu"

    const-string v3, "TOC"

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookNavigator;->gotoTOC()V

    goto/16 :goto_1

    .line 291
    :pswitch_f
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "GoToMenu"

    const-string v2, "Beginning"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/amazon/kcp/reader/BookReaderActivity;->readerController:Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderController;->getCurrentBook()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookNavigator;->gotoStartReadingPosition()V

    goto/16 :goto_1

    .line 295
    :pswitch_10
    invoke-virtual {p0, v2}, Lcom/amazon/kcp/reader/BookReaderActivity;->showDialog(I)V

    goto/16 :goto_1

    .line 298
    :pswitch_11
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/reader/NotesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v2}, Lcom/amazon/kcp/reader/BookReaderActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c00f3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_c
        :pswitch_5
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_6
        :pswitch_9
        :pswitch_b
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 184
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 186
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/BookReaderActivity;->isSearching()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/amazon/kcp/reader/BookReaderActivity;->getBookLayout()Lcom/amazon/kcp/reader/ui/BookLayout;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/reader/ui/BookLayout;->setVisibleOverlays(IZ)Z

    .line 196
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/reader/BookReaderActivity;->getBookLayout()Lcom/amazon/kcp/reader/ui/BookLayout;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kcp/reader/ui/BookLayout;->setVisibleOverlays(IZ)Z

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter

    .prologue
    const v2, 0x7f0c0102

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 124
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v4

    .line 165
    :goto_0
    return v0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/BookReaderActivity;->readerController:Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderController;->getCurrentBook()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    .line 131
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 133
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/IBookNavigator;->isBackAvailable()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 135
    :cond_1
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/BookReaderActivity;->getBookmarkItem(Landroid/view/Menu;)Landroid/view/MenuItem;

    move-result-object v1

    .line 136
    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getAnnotationsManager()Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;->hasBookmark()Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f02005b

    :goto_1
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 139
    iget-object v2, p0, Lcom/amazon/kcp/reader/BookReaderActivity;->storeOption:Landroid/view/MenuItem;

    if-eqz v2, :cond_2

    .line 141
    iget-object v2, p0, Lcom/amazon/kcp/reader/BookReaderActivity;->storeOption:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/BookReaderActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->canGotoStore()Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 146
    :cond_2
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0c0106

    if-ne v2, v3, :cond_3

    .line 148
    iget-object v2, p0, Lcom/amazon/kcp/reader/BookReaderActivity;->readerController:Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ReaderController;->getCurrentBook()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/IBookDocument;->getAnnotationsManager()Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;->hasBookmark()Z

    move-result v2

    if-eqz v2, :cond_5

    const v2, 0x7f0b015d

    .line 150
    :goto_2
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 155
    :cond_3
    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getAnnotationsManager()Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;->getAnnotationsList()[Lcom/amazon/kcp/reader/models/IAnnotation;

    move-result-object v1

    .line 156
    if-eqz v1, :cond_6

    array-length v1, v1

    if-lez v1, :cond_6

    move v1, v5

    .line 157
    :goto_3
    const v2, 0x7f0c0101

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 158
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 161
    const v1, 0x7f0c0105

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/amazon/kcp/library/models/BookCapability;->supportsCapability(Lcom/amazon/kcp/library/models/IListableBook;I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/BookReaderActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->canPerformSync()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v5

    :goto_4
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 164
    const v0, 0x7f0c0104

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/BookReaderActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->canShareProgress()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move v0, v5

    .line 165
    goto/16 :goto_0

    .line 136
    :cond_4
    const v2, 0x7f02004d

    goto/16 :goto_1

    .line 148
    :cond_5
    const v2, 0x7f0b015c

    goto :goto_2

    :cond_6
    move v1, v4

    .line 156
    goto :goto_3

    :cond_7
    move v0, v4

    .line 161
    goto :goto_4
.end method

.method public onSearchRequested()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 51
    invoke-super {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->onSearchRequested()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 63
    :goto_0
    return v0

    .line 58
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/reader/BookReaderActivity;->getBookLayout()Lcom/amazon/kcp/reader/ui/BookLayout;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/amazon/kcp/reader/ui/BookLayout;->setVisibleOverlays(IZ)Z

    .line 62
    invoke-direct {p0}, Lcom/amazon/kcp/reader/BookReaderActivity;->getBookLayout()Lcom/amazon/kcp/reader/ui/BookLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/BookLayout;->cancelHideOverlaysAfterDelay()V

    move v0, v1

    .line 63
    goto :goto_0
.end method

.method public onSoftBackButtonClicked(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 309
    iget-object v0, p0, Lcom/amazon/kcp/reader/BookReaderActivity;->readerController:Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderController;->getCurrentBook()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v0

    .line 310
    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookNavigator;->isBackAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookNavigator;->back()Z

    .line 314
    :cond_0
    return-void
.end method

.method protected setTitleVisibility(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/amazon/kcp/reader/BookReaderActivity;->getBookLayout()Lcom/amazon/kcp/reader/ui/BookLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/BookLayout;->setTitleVisibility(Z)V

    .line 344
    return-void
.end method

.method public startSearch(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 42
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/search/BookReaderSearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    const-string v1, "android.intent.action.SEARCH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const-string v1, "query"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/BookReaderActivity;->startActivity(Landroid/content/Intent;)V

    .line 46
    return-void
.end method

.method public supportsAnnotations()Z
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x1

    return v0
.end method

.method public supportsBookmarks()Z
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x1

    return v0
.end method

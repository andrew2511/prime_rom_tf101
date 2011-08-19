.class public abstract Lcom/amazon/kcp/library/LocalLibraryActivity;
.super Lcom/amazon/kcp/library/LegacyLibraryActivity;
.source "LocalLibraryActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/library/LegacyLibraryActivity",
        "<",
        "Lcom/amazon/kcp/library/models/IListableBook;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/amazon/kcp/library/LegacyLibraryActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getBook(I)Lcom/amazon/kcp/library/models/IListableBook;
    .locals 1
    .parameter "index"

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LocalLibraryActivity;->getLocalLibrary()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/models/CLibrary;->getBookFromIndex(I)Lcom/amazon/kcp/library/models/IListableBook;

    move-result-object v0

    return-object v0
.end method

.method protected getIBookListModel()Lcom/amazon/kcp/library/models/IBookList;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LocalLibraryActivity;->getLocalLibrary()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v0

    return-object v0
.end method

.method protected getItemAddedEvent()Lcom/amazon/foundation/IIntEventProvider;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LocalLibraryActivity;->getLocalLibrary()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/CLibrary;->getAddEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    return-object v0
.end method

.method protected getItemDeletedEvent()Lcom/amazon/foundation/IIntEventProvider;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LocalLibraryActivity;->getLocalLibrary()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/CLibrary;->getDeleteEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    return-object v0
.end method

.method protected getListInvalidatedEvent()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LocalLibraryActivity;->getLocalLibrary()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/CLibrary;->getInvalidatedEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    return-object v0
.end method

.method protected getLocalLibrary()Lcom/amazon/kcp/library/models/CLibrary;
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LocalLibraryActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryController;->getLocalLibrary()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v0

    return-object v0
.end method

.method protected makeBookGridCell(Landroid/content/Context;Lcom/amazon/kcp/library/models/IListableBook;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "bookItem"
    .parameter "recyclableView"

    .prologue
    .line 84
    invoke-static {p1, p2, p3}, Lcom/amazon/kcp/library/LibraryBookViewFactory;->getHomeBookCell(Landroid/content/Context;Lcom/amazon/kcp/library/models/IListableBook;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected makeBookListRow(Landroid/content/Context;Lcom/amazon/kcp/library/models/IListableBook;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "bookItem"
    .parameter "recyclableView"

    .prologue
    .line 90
    invoke-static {p1, p2, p3}, Lcom/amazon/kcp/library/LibraryBookViewFactory;->getHomeBookRow(Landroid/content/Context;Lcom/amazon/kcp/library/models/IListableBook;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onBookItemClick(Lcom/amazon/kcp/library/models/IListableBook;Landroid/view/View;)V
    .locals 6
    .parameter "bookItem"
    .parameter "bookItemView"

    .prologue
    .line 96
    instance-of v2, p1, Lcom/amazon/kcp/library/models/ILocalBookItem;

    if-eqz v2, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LocalLibraryActivity;->getReaderController()Lcom/amazon/kcp/reader/ReaderController;

    move-result-object v2

    check-cast p1, Lcom/amazon/kcp/library/models/ILocalBookItem;

    .end local p1
    sget-object v3, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;->DEFAULT:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    sget-object v4, Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;->LOADING_ASYNC:Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;

    const/4 v5, 0x1

    invoke-virtual {v2, p1, v3, v4, v5}, Lcom/amazon/kcp/reader/ReaderController;->openReader(Lcom/amazon/kcp/library/models/ILocalBookItem;Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;Z)V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 100
    .restart local p1
    :cond_1
    instance-of v2, p1, Lcom/amazon/kcp/library/models/IDownloadBookItem;

    if-eqz v2, :cond_0

    .line 102
    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/library/models/IDownloadBookItem;

    move-object v1, v0

    .line 104
    .local v1, downloadBookItem:Lcom/amazon/kcp/library/models/IDownloadBookItem;
    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadState()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadState()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    .line 107
    :cond_2
    invoke-static {p0, v1}, Lcom/amazon/kcp/library/BookOpenHelper;->getIntentToOpenTransientActivity(Lcom/amazon/kcp/redding/ReddingActivity;Lcom/amazon/kcp/library/models/IDownloadBookItem;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/amazon/kcp/library/LocalLibraryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 112
    :cond_3
    sget-object v2, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;->DEFAULT:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    invoke-static {p0, v1, v2}, Lcom/amazon/kcp/library/BookOpenHelper;->downloadAndOpen(Lcom/amazon/kcp/redding/ReddingActivity;Lcom/amazon/kcp/library/models/IDownloadBookItem;Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/amazon/kcp/library/LocalLibraryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 30
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/LegacyLibraryActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 34
    const v0, 0x7f0c00df

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 37
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 42
    :cond_0
    const v0, 0x7f0c00e0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LocalLibraryActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->canSeeArchive()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 48
    :cond_1
    return v2
.end method

.class public Lcom/amazon/kcp/library/ArchivedItemsActivity;
.super Lcom/amazon/kcp/library/LegacyLibraryActivity;
.source "ArchivedItemsActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/library/LegacyLibraryActivity",
        "<",
        "Lcom/amazon/kcp/library/models/internal/IMetadata;",
        ">;"
    }
.end annotation


# instance fields
.field private bookCountChangedCallback:Lcom/amazon/foundation/IIntCallback;

.field private listInvalidatedEvent:Lcom/amazon/foundation/IEventProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/amazon/kcp/library/LegacyLibraryActivity;-><init>()V

    .line 33
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/ArchivedItemsActivity;->listInvalidatedEvent:Lcom/amazon/foundation/IEventProvider;

    .line 35
    new-instance v0, Lcom/amazon/kcp/library/ArchivedItemsActivity$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/ArchivedItemsActivity$1;-><init>(Lcom/amazon/kcp/library/ArchivedItemsActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/ArchivedItemsActivity;->bookCountChangedCallback:Lcom/amazon/foundation/IIntCallback;

    return-void
.end method


# virtual methods
.method protected eventsOccurInRapidSuccession(Lcom/amazon/foundation/IIntEventProvider;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ArchivedItemsActivity;->getItemAddedEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic getBook(I)Lcom/amazon/kcp/library/models/IListableBook;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/ArchivedItemsActivity;->getBook(I)Lcom/amazon/kcp/library/models/internal/IMetadata;

    move-result-object v0

    return-object v0
.end method

.method protected getBook(I)Lcom/amazon/kcp/library/models/internal/IMetadata;
    .locals 1
    .parameter "index"

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ArchivedItemsActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryController;->getArchivedItems()Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;->getArchivedBookFromIndex(I)Lcom/amazon/kcp/library/models/internal/IMetadata;

    move-result-object v0

    return-object v0
.end method

.method protected getIBookListModel()Lcom/amazon/kcp/library/models/IBookList;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ArchivedItemsActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryController;->getArchivedItems()Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;

    move-result-object v0

    return-object v0
.end method

.method protected getInitialLibraryFilter()Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->ARCHIVED_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    return-object v0
.end method

.method protected getItemAddedEvent()Lcom/amazon/foundation/IIntEventProvider;
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ArchivedItemsActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryController;->getArchivedItems()Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;->getAddEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    return-object v0
.end method

.method protected getItemDeletedEvent()Lcom/amazon/foundation/IIntEventProvider;
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ArchivedItemsActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryController;->getArchivedItems()Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;->getDeleteEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    return-object v0
.end method

.method protected getListInvalidatedEvent()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/amazon/kcp/library/ArchivedItemsActivity;->listInvalidatedEvent:Lcom/amazon/foundation/IEventProvider;

    return-object v0
.end method

.method protected getSortedIndices()[I
    .locals 2

    .prologue
    .line 95
    iget v1, p0, Lcom/amazon/kcp/library/ArchivedItemsActivity;->currentSortType:I

    packed-switch v1, :pswitch_data_0

    .line 103
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ArchivedItemsActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/library/ILibraryController;->getArchivedItems()Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;->sortByTitle()[I

    move-result-object v0

    .line 107
    .local v0, indices:[I
    :goto_0
    return-object v0

    .line 98
    .end local v0           #indices:[I
    :pswitch_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ArchivedItemsActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/library/ILibraryController;->getArchivedItems()Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;->sortByAuthor()[I

    move-result-object v0

    .line 99
    .restart local v0       #indices:[I
    goto :goto_0

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected getTitleText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    const v0, 0x7f0b0015

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/ArchivedItemsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic makeBookGridCell(Landroid/content/Context;Lcom/amazon/kcp/library/models/IListableBook;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 26
    check-cast p2, Lcom/amazon/kcp/library/models/internal/IMetadata;

    .end local p2
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kcp/library/ArchivedItemsActivity;->makeBookGridCell(Landroid/content/Context;Lcom/amazon/kcp/library/models/internal/IMetadata;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected makeBookGridCell(Landroid/content/Context;Lcom/amazon/kcp/library/models/internal/IMetadata;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "bookItem"
    .parameter "recyclableView"

    .prologue
    .line 139
    invoke-static {p1, p2, p3}, Lcom/amazon/kcp/library/LibraryBookViewFactory;->getAIBookCell(Landroid/content/Context;Lcom/amazon/kcp/library/models/IDownloadBookItem;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic makeBookListRow(Landroid/content/Context;Lcom/amazon/kcp/library/models/IListableBook;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 26
    check-cast p2, Lcom/amazon/kcp/library/models/internal/IMetadata;

    .end local p2
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kcp/library/ArchivedItemsActivity;->makeBookListRow(Landroid/content/Context;Lcom/amazon/kcp/library/models/internal/IMetadata;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected makeBookListRow(Landroid/content/Context;Lcom/amazon/kcp/library/models/internal/IMetadata;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "bookItem"
    .parameter "recyclableView"

    .prologue
    .line 133
    invoke-static {p1, p2, p3}, Lcom/amazon/kcp/library/LibraryBookViewFactory;->getAIBookRow(Landroid/content/Context;Lcom/amazon/kcp/library/models/IDownloadBookItem;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onBookItemClick(Lcom/amazon/kcp/library/models/IListableBook;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    check-cast p1, Lcom/amazon/kcp/library/models/internal/IMetadata;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/ArchivedItemsActivity;->onBookItemClick(Lcom/amazon/kcp/library/models/internal/IMetadata;Landroid/view/View;)V

    return-void
.end method

.method protected onBookItemClick(Lcom/amazon/kcp/library/models/internal/IMetadata;Landroid/view/View;)V
    .locals 3
    .parameter "bookItem"
    .parameter "bookItemView"

    .prologue
    .line 145
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/ArchivedItemsActivity;->metricsTag:Ljava/lang/String;

    const-string v2, "BookDownloadTransientScreen"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getDownloadState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getDownloadState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 151
    :cond_0
    invoke-static {p0, p1}, Lcom/amazon/kcp/library/BookOpenHelper;->getIntentToOpenTransientActivity(Lcom/amazon/kcp/redding/ReddingActivity;Lcom/amazon/kcp/library/models/IDownloadBookItem;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/ArchivedItemsActivity;->startActivity(Landroid/content/Intent;)V

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_1
    sget-object v0, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;->DEFAULT:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    invoke-static {p0, p1, v0}, Lcom/amazon/kcp/library/BookOpenHelper;->downloadAndOpen(Lcom/amazon/kcp/redding/ReddingActivity;Lcom/amazon/kcp/library/models/IDownloadBookItem;Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/ArchivedItemsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/LegacyLibraryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f0c0075

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/ArchivedItemsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 52
    const v1, 0x7f090032

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 55
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ArchivedItemsActivity;->getItemAddedEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/ArchivedItemsActivity;->bookCountChangedCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->register(Lcom/amazon/foundation/IIntCallback;)Z

    .line 56
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ArchivedItemsActivity;->getItemDeletedEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/ArchivedItemsActivity;->bookCountChangedCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->register(Lcom/amazon/foundation/IIntCallback;)Z

    .line 58
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ArchivedItemsActivity;->showTipIfNecessary()V

    .line 59
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Lcom/amazon/kcp/library/LegacyLibraryActivity;->onDestroy()V

    .line 65
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ArchivedItemsActivity;->getItemAddedEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/ArchivedItemsActivity;->bookCountChangedCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->unregister(Lcom/amazon/foundation/IIntCallback;)Z

    .line 66
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ArchivedItemsActivity;->getItemDeletedEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/ArchivedItemsActivity;->bookCountChangedCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->unregister(Lcom/amazon/foundation/IIntCallback;)Z

    .line 67
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/LegacyLibraryActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 122
    const v0, 0x7f0c00e0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 125
    const v0, 0x7f0c00e4

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 127
    const/4 v0, 0x1

    return v0
.end method

.method protected showTipIfNecessary()V
    .locals 4

    .prologue
    .line 71
    const v2, 0x7f0c0080

    invoke-virtual {p0, v2}, Lcom/amazon/kcp/library/ArchivedItemsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 73
    .local v0, tip:Landroid/view/View;
    if-nez v0, :cond_0

    .line 76
    const v2, 0x7f0c007f

    invoke-virtual {p0, v2}, Lcom/amazon/kcp/library/ArchivedItemsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ArchivedItemsActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/library/ILibraryController;->getArchivedItems()Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;->getBookCount()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    const/4 v2, 0x0

    move v1, v2

    .line 82
    .local v1, visibility:I
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    return-void

    .line 80
    .end local v1           #visibility:I
    :cond_1
    const/16 v2, 0x8

    move v1, v2

    goto :goto_0
.end method

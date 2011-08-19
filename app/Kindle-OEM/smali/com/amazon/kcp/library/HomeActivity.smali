.class public Lcom/amazon/kcp/library/HomeActivity;
.super Lcom/amazon/kcp/library/LocalLibraryActivity;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/HomeActivity$6;,
        Lcom/amazon/kcp/library/HomeActivity$BooksViewType;
    }
.end annotation


# static fields
.field private static final SHOW_TIP_THRESHOLD:I = 0x1

.field private static largestBookSize:I


# instance fields
.field private bookAddedCallback:Lcom/amazon/foundation/IIntCallback;

.field private bookClosedCallback:Lcom/amazon/foundation/ICallback;

.field private bookDeletedCallback:Lcom/amazon/foundation/IIntCallback;

.field private listInvalidatedCallback:Lcom/amazon/foundation/ICallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, -0x1

    sput v0, Lcom/amazon/kcp/library/HomeActivity;->largestBookSize:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/amazon/kcp/library/LocalLibraryActivity;-><init>()V

    .line 48
    new-instance v0, Lcom/amazon/kcp/library/HomeActivity$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/HomeActivity$1;-><init>(Lcom/amazon/kcp/library/HomeActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/HomeActivity;->bookClosedCallback:Lcom/amazon/foundation/ICallback;

    .line 58
    new-instance v0, Lcom/amazon/kcp/library/HomeActivity$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/HomeActivity$2;-><init>(Lcom/amazon/kcp/library/HomeActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/HomeActivity;->bookAddedCallback:Lcom/amazon/foundation/IIntCallback;

    .line 82
    new-instance v0, Lcom/amazon/kcp/library/HomeActivity$3;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/HomeActivity$3;-><init>(Lcom/amazon/kcp/library/HomeActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/HomeActivity;->bookDeletedCallback:Lcom/amazon/foundation/IIntCallback;

    .line 95
    new-instance v0, Lcom/amazon/kcp/library/HomeActivity$4;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/HomeActivity$4;-><init>(Lcom/amazon/kcp/library/HomeActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/HomeActivity;->listInvalidatedCallback:Lcom/amazon/foundation/ICallback;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/HomeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/amazon/kcp/library/HomeActivity;->showTipIfNecessary()V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/amazon/kcp/library/HomeActivity;->largestBookSize:I

    return v0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/library/HomeActivity;Lcom/amazon/kcp/library/models/ILocalBookItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/HomeActivity;->updateLargestBookStats(Lcom/amazon/kcp/library/models/ILocalBookItem;)V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/kcp/library/HomeActivity;)Lcom/amazon/kcp/library/models/ILocalBookItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/amazon/kcp/library/HomeActivity;->findLargestBook()Lcom/amazon/kcp/library/models/ILocalBookItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/library/HomeActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/amazon/kcp/library/HomeActivity;->isShowingBackIssuesRow()Z

    move-result v0

    return v0
.end method

.method private findLargestBook()Lcom/amazon/kcp/library/models/ILocalBookItem;
    .locals 8

    .prologue
    .line 165
    const/4 v4, 0x0

    .line 166
    .local v4, largestBook:Lcom/amazon/kcp/library/models/ILocalBookItem;
    invoke-virtual {p0}, Lcom/amazon/kcp/library/HomeActivity;->getIBookListModel()Lcom/amazon/kcp/library/models/IBookList;

    move-result-object v2

    .line 168
    .local v2, bookList:Lcom/amazon/kcp/library/models/IBookList;
    if-eqz v2, :cond_3

    .line 170
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {v2}, Lcom/amazon/kcp/library/models/IBookList;->getBookCount()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 172
    invoke-interface {v2, v3}, Lcom/amazon/kcp/library/models/IBookList;->getBookFromIndex(I)Lcom/amazon/kcp/library/models/IListableBook;

    move-result-object v1

    .line 175
    .local v1, book:Lcom/amazon/kcp/library/models/IListableBook;
    instance-of v6, v1, Lcom/amazon/kcp/library/models/ILocalBookItem;

    if-eqz v6, :cond_1

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IListableBook;->getBookType()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IListableBook;->getBookType()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/amazon/kcp/library/models/ILocalBookItem;

    move-object v6, v0

    invoke-static {v6}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isPreferredDictionary(Lcom/amazon/kcp/library/models/IListableBook;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 181
    move-object v0, v1

    check-cast v0, Lcom/amazon/kcp/library/models/ILocalBookItem;

    move-object v5, v0

    .line 182
    .local v5, localBook:Lcom/amazon/kcp/library/models/ILocalBookItem;
    if-eqz v4, :cond_0

    invoke-interface {v5}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getBookFurthestLocation()I

    move-result v6

    invoke-interface {v4}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getBookFurthestLocation()I

    move-result v7

    if-le v6, v7, :cond_1

    .line 184
    :cond_0
    move-object v4, v5

    .line 170
    .end local v5           #localBook:Lcom/amazon/kcp/library/models/ILocalBookItem;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1           #book:Lcom/amazon/kcp/library/models/IListableBook;
    :cond_2
    move-object v6, v4

    .line 193
    .end local v3           #i:I
    :goto_1
    return-object v6

    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method

.method protected static getLargestBookLocationInHome()I
    .locals 1

    .prologue
    .line 294
    sget v0, Lcom/amazon/kcp/library/HomeActivity;->largestBookSize:I

    return v0
.end method

.method private isShowingBackIssuesRow()Z
    .locals 1

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/amazon/kcp/library/HomeActivity;->getLocalLibrary()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/CLibrary;->getBackIssueCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchToReader()Z
    .locals 2

    .prologue
    .line 140
    :try_start_0
    new-instance v0, Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;

    invoke-direct {v0}, Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;-><init>()V

    .line 141
    .local v0, openParams:Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;
    sget-object v1, Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;->BLOCKING:Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;->setOpenReaderMode(Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;)V

    .line 142
    invoke-static {p0, v0}, Lcom/amazon/kcp/library/BookOpenHelper;->openLastReadBook(Lcom/amazon/kcp/redding/ReddingActivity;Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;)V
    :try_end_0
    .catch Lcom/amazon/kcp/library/BookOpenHelper$BookOpenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    const/4 v1, 0x1

    .end local v0           #openParams:Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;
    :goto_0
    return v1

    .line 146
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showTipIfNecessary()V
    .locals 3

    .prologue
    .line 273
    const v1, 0x7f0c007e

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/library/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 275
    .local v0, tip:Landroid/view/View;
    if-nez v0, :cond_0

    .line 278
    const v1, 0x7f0c007d

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/library/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 282
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/HomeActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->canGotoStore()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/amazon/kcp/library/HomeActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->canSeeArchive()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/amazon/kcp/library/HomeActivity;->getLocalLibrary()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/CLibrary;->getBookCount()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 286
    return-void

    .line 282
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private updateLargestBookStats(Lcom/amazon/kcp/library/models/ILocalBookItem;)V
    .locals 1
    .parameter "largestBook"

    .prologue
    .line 202
    if-nez p1, :cond_0

    .line 208
    :goto_0
    return-void

    .line 207
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getBookFurthestLocation()I

    move-result v0

    sput v0, Lcom/amazon/kcp/library/HomeActivity;->largestBookSize:I

    goto :goto_0
.end method


# virtual methods
.method protected getInitialLibraryFilter()Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;
    .locals 1

    .prologue
    .line 268
    sget-object v0, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->LOCAL_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    return-object v0
.end method

.method protected getSortedIndices()[I
    .locals 2

    .prologue
    .line 224
    iget v1, p0, Lcom/amazon/kcp/library/HomeActivity;->currentSortType:I

    packed-switch v1, :pswitch_data_0

    .line 235
    invoke-virtual {p0}, Lcom/amazon/kcp/library/HomeActivity;->getLocalLibrary()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/CLibrary;->sortByRecent()[I

    move-result-object v0

    .line 239
    .local v0, indices:[I
    :goto_0
    return-object v0

    .line 227
    .end local v0           #indices:[I
    :pswitch_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/HomeActivity;->getLocalLibrary()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/CLibrary;->sortByTitle()[I

    move-result-object v0

    .line 228
    .restart local v0       #indices:[I
    goto :goto_0

    .line 230
    .end local v0           #indices:[I
    :pswitch_1
    invoke-virtual {p0}, Lcom/amazon/kcp/library/HomeActivity;->getLocalLibrary()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/CLibrary;->sortByAuthor()[I

    move-result-object v0

    .line 231
    .restart local v0       #indices:[I
    goto :goto_0

    .line 224
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getTitleText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    const v0, 0x7f0b0013

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected newBooksAdapter()Landroid/widget/ArrayAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/amazon/kcp/library/models/IListableBook;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    new-instance v0, Lcom/amazon/kcp/library/HomeActivity$5;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amazon/kcp/library/HomeActivity;->books:Ljava/util/List;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/amazon/kcp/library/HomeActivity$5;-><init>(Lcom/amazon/kcp/library/HomeActivity;Landroid/content/Context;ILjava/util/List;)V

    return-object v0
.end method

.method protected onBooksViewClicked(Landroid/widget/AdapterView;Landroid/view/View;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 379
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v0

    sget-object v1, Lcom/amazon/kcp/library/HomeActivity$BooksViewType;->BOOK:Lcom/amazon/kcp/library/HomeActivity$BooksViewType;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/HomeActivity$BooksViewType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 381
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/IListableBook;

    .line 382
    invoke-virtual {p0, v0, p2}, Lcom/amazon/kcp/library/HomeActivity;->onBookItemClick(Lcom/amazon/kcp/library/models/IListableBook;Landroid/view/View;)V

    .line 390
    :goto_0
    return-void

    .line 386
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/library/BackIssuesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 387
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 388
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/LocalLibraryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lcom/amazon/kcp/library/HomeActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderController;->getBookClosedEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/HomeActivity;->bookClosedCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 110
    invoke-virtual {p0}, Lcom/amazon/kcp/library/HomeActivity;->getItemAddedEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/HomeActivity;->bookAddedCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->register(Lcom/amazon/foundation/IIntCallback;)Z

    .line 111
    invoke-virtual {p0}, Lcom/amazon/kcp/library/HomeActivity;->getItemDeletedEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/HomeActivity;->bookDeletedCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->register(Lcom/amazon/foundation/IIntCallback;)Z

    .line 112
    invoke-virtual {p0}, Lcom/amazon/kcp/library/HomeActivity;->getListInvalidatedEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/HomeActivity;->listInvalidatedCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 114
    invoke-virtual {p0}, Lcom/amazon/kcp/library/HomeActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->canGotoStore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Lcom/amazon/kcp/store/StorefrontPrefetcher;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/HomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kcp/library/HomeActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCookieJar()Lcom/amazon/kcp/store/CookieJar;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kcp/library/HomeActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getLocaleManager()Lcom/amazon/kcp/application/ILocaleManager;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kcp/store/StorefrontPrefetcher;-><init>(Landroid/content/Context;Lcom/amazon/kcp/store/CookieJar;Lcom/amazon/kcp/application/ILocaleManager;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StorefrontPrefetcher;->prefetch()V

    .line 119
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/library/HomeActivity;->showTipIfNecessary()V

    .line 120
    invoke-direct {p0}, Lcom/amazon/kcp/library/HomeActivity;->findLargestBook()Lcom/amazon/kcp/library/models/ILocalBookItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/HomeActivity;->updateLargestBookStats(Lcom/amazon/kcp/library/models/ILocalBookItem;)V

    .line 125
    invoke-virtual {p0}, Lcom/amazon/kcp/library/HomeActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/SettingsController;->getLaunchTo()Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;->READER:Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;

    if-ne v0, v1, :cond_1

    .line 127
    invoke-direct {p0}, Lcom/amazon/kcp/library/HomeActivity;->launchToReader()Z

    .line 129
    :cond_1
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/amazon/kcp/library/HomeActivity;->getBooksView()Landroid/widget/AdapterView;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 397
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v2, v0

    iget v1, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 400
    .local v1, position:I
    invoke-virtual {p0}, Lcom/amazon/kcp/library/HomeActivity;->getBooksView()Landroid/widget/AdapterView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->getItemViewType(I)I

    move-result v2

    sget-object v3, Lcom/amazon/kcp/library/HomeActivity$BooksViewType;->BOOK:Lcom/amazon/kcp/library/HomeActivity$BooksViewType;

    invoke-virtual {v3}, Lcom/amazon/kcp/library/HomeActivity$BooksViewType;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 402
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/kcp/library/LocalLibraryActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 405
    .end local v1           #position:I
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 213
    invoke-super {p0}, Lcom/amazon/kcp/library/LocalLibraryActivity;->onDestroy()V

    .line 214
    invoke-virtual {p0}, Lcom/amazon/kcp/library/HomeActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderController;->getBookClosedEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/HomeActivity;->bookClosedCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->unregister(Lcom/amazon/foundation/ICallback;)Z

    .line 215
    invoke-virtual {p0}, Lcom/amazon/kcp/library/HomeActivity;->getItemAddedEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/HomeActivity;->bookAddedCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->unregister(Lcom/amazon/foundation/IIntCallback;)Z

    .line 216
    invoke-virtual {p0}, Lcom/amazon/kcp/library/HomeActivity;->getItemDeletedEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/HomeActivity;->bookDeletedCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->unregister(Lcom/amazon/foundation/IIntCallback;)Z

    .line 217
    invoke-virtual {p0}, Lcom/amazon/kcp/library/HomeActivity;->getListInvalidatedEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/HomeActivity;->listInvalidatedCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->unregister(Lcom/amazon/foundation/ICallback;)Z

    .line 218
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 245
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/LocalLibraryActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 249
    const v0, 0x7f0c00df

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 250
    if-eqz v0, :cond_0

    .line 252
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 255
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/amazon/kcp/library/HomeActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;->HOME:Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/SettingsController;->setLaunchTo(Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;)V

    .line 155
    invoke-super {p0}, Lcom/amazon/kcp/library/LocalLibraryActivity;->onResume()V

    .line 156
    return-void
.end method

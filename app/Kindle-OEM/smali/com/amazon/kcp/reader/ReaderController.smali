.class public Lcom/amazon/kcp/reader/ReaderController;
.super Ljava/lang/Object;
.source "ReaderController.java"

# interfaces
.implements Lcom/amazon/kcp/reader/IAndroidReaderController;


# static fields
.field public static final SHOW_COLOR_OPTIONS:Ljava/lang/String; = "should_show_color_modes"


# instance fields
.field private activitiesBoundToBook:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final appController:Lcom/amazon/kcp/application/AndroidApplicationController;

.field private final applicationContext:Landroid/content/Context;

.field private closeBookEvent:Lcom/amazon/foundation/internal/EventProvider;

.field private currentBook:Lcom/amazon/kcp/reader/models/IBookDocument;

.field private loadingToast:Landroid/widget/Toast;

.field private startPage:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kcp/application/AndroidApplicationController;)V
    .locals 1
    .parameter "context"
    .parameter "appController"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->activitiesBoundToBook:Ljava/util/List;

    .line 66
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->closeBookEvent:Lcom/amazon/foundation/internal/EventProvider;

    .line 76
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderController;->applicationContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/amazon/kcp/reader/ReaderController;->appController:Lcom/amazon/kcp/application/AndroidApplicationController;

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->currentBook:Lcom/amazon/kcp/reader/models/IBookDocument;

    .line 79
    sget-object v0, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;->DEFAULT:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->startPage:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/ReaderController;)Lcom/amazon/foundation/internal/EventProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->closeBookEvent:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kcp/library/models/ILocalBookItem;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ReaderController;->executeOpenReaderCommand(Lcom/amazon/kcp/library/models/ILocalBookItem;Z)V

    return-void
.end method

.method private executeOpenReaderCommand(Lcom/amazon/kcp/library/models/ILocalBookItem;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 259
    new-instance v0, Lcom/amazon/kcp/reader/internal/commands/COpenReaderCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kcp/reader/internal/commands/COpenReaderCommand;-><init>(Lcom/amazon/kcp/reader/IReaderController;Lcom/amazon/kcp/library/models/ILocalBookItem;Z)V

    .line 260
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/internal/commands/COpenReaderCommand;->execute()V

    .line 261
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderController;->loadingToast:Landroid/widget/Toast;

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderController;->loadingToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 264
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazon/kcp/reader/ReaderController;->loadingToast:Landroid/widget/Toast;

    .line 266
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/internal/commands/COpenReaderCommand;->hasError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "CLibraryPage"

    const-string v2, "OpenBookFailed"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 271
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0119

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderController;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b011a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 275
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/amazon/kcp/reader/ReaderController;->applicationContext:Landroid/content/Context;

    const-class v4, Lcom/amazon/kcp/redding/AlertActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 276
    const-string v3, "alert_type"

    sget-object v4, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->REMOVE_ITEM:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 277
    const-string v3, "alert_title"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string v0, "alert_message"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    const-string v0, "alert_book_asin"

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const-string v0, "alert_book_is_sample"

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/ILocalBookItem;->isSample()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 281
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->appController:Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-virtual {v0, v2}, Lcom/amazon/kcp/application/AndroidApplicationController;->startActivity(Landroid/content/Intent;)V

    .line 283
    :cond_1
    return-void
.end method

.method private persistLastOpenedBook(Lcom/amazon/kcp/reader/models/IBookDocument;)V
    .locals 3
    .parameter

    .prologue
    .line 379
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->appController:Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getApplicationSettings()Lcom/amazon/system/io/IPersistentSettingsHelper;

    move-result-object v0

    .line 380
    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v1

    .line 382
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isPreferredDictionary(Lcom/amazon/kcp/library/models/IListableBook;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 384
    invoke-interface {v1}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getBookID()Lcom/amazon/kcp/library/models/IBookID;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    .line 386
    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 388
    const-string v2, "LAST_BOOK_READ_ID"

    invoke-interface {v0, v2, v1}, Lcom/amazon/system/io/IPersistentSettingsHelper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :cond_0
    return-void
.end method

.method private restoreCurrentBook()Lcom/amazon/kcp/reader/models/IBookDocument;
    .locals 2

    .prologue
    .line 210
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderController;->currentBook:Lcom/amazon/kcp/reader/models/IBookDocument;

    if-nez v1, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderController;->getLastReadBook()Lcom/amazon/kcp/library/models/ILocalBookItem;

    move-result-object v0

    .line 213
    .local v0, lastRead:Lcom/amazon/kcp/library/models/ILocalBookItem;
    if-eqz v0, :cond_0

    .line 215
    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookItem;->createDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/reader/ReaderController;->currentBook:Lcom/amazon/kcp/reader/models/IBookDocument;

    .line 218
    .end local v0           #lastRead:Lcom/amazon/kcp/library/models/ILocalBookItem;
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderController;->currentBook:Lcom/amazon/kcp/reader/models/IBookDocument;

    return-object v1
.end method


# virtual methods
.method public bindToCurrentBook(Landroid/app/Activity;)Lcom/amazon/kcp/reader/models/IBookDocument;
    .locals 2
    .parameter

    .prologue
    .line 159
    if-eqz p1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->activitiesBoundToBook:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binding to current book; count is now "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderController;->activitiesBoundToBook:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->activitiesBoundToBook:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/kcp/redding/CurrentlyReadingWidgetProvider;->asyncUpdateAllWidgets(Landroid/content/Context;)V

    .line 172
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ReaderController;->restoreCurrentBook()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    return-object v0
.end method

.method public closeCurrentBook()V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->currentBook:Lcom/amazon/kcp/reader/models/IBookDocument;

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->activitiesBoundToBook:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 110
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->activitiesBoundToBook:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 116
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->currentBook:Lcom/amazon/kcp/reader/models/IBookDocument;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kcp/library/models/BookCapability;->supportsCapability(Lcom/amazon/kcp/library/models/IListableBook;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderController;->syncBookUpdates()V

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->currentBook:Lcom/amazon/kcp/reader/models/IBookDocument;

    .line 124
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazon/kcp/reader/ReaderController;->currentBook:Lcom/amazon/kcp/reader/models/IBookDocument;

    .line 127
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/amazon/kcp/reader/ReaderController$1;

    invoke-direct {v2, p0, v0}, Lcom/amazon/kcp/reader/ReaderController$1;-><init>(Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kcp/reader/models/IBookDocument;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 140
    :cond_2
    sget-object v0, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;->DEFAULT:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->startPage:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    .line 141
    return-void
.end method

.method public getBookClosedEvent()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->closeBookEvent:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method public getCurrentBook()Lcom/amazon/kcp/reader/models/IBookDocument;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->currentBook:Lcom/amazon/kcp/reader/models/IBookDocument;

    return-object v0
.end method

.method public getHistoryManager()Lcom/amazon/kcp/application/HistoryManager;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->appController:Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getHistoryManager()Lcom/amazon/kcp/application/HistoryManager;

    move-result-object v0

    return-object v0
.end method

.method public getLastReadBook()Lcom/amazon/kcp/library/models/ILocalBookItem;
    .locals 8

    .prologue
    .line 413
    iget-object v6, p0, Lcom/amazon/kcp/reader/ReaderController;->appController:Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-virtual {v6}, Lcom/amazon/kcp/application/AndroidApplicationController;->getApplicationSettings()Lcom/amazon/system/io/IPersistentSettingsHelper;

    move-result-object v0

    .line 415
    .local v0, appSettings:Lcom/amazon/system/io/IPersistentSettingsHelper;
    const-string v6, "LAST_BOOK_READ_ID"

    const-string v7, ""

    invoke-interface {v0, v6, v7}, Lcom/amazon/system/io/IPersistentSettingsHelper;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 416
    .local v3, lastID:Ljava/lang/String;
    invoke-static {v3}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 418
    iget-object v6, p0, Lcom/amazon/kcp/reader/ReaderController;->appController:Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-virtual {v6}, Lcom/amazon/kcp/application/AndroidApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kcp/library/ILibraryController;->getLocalLibrary()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/amazon/kcp/library/models/CLibrary;->getBook(Ljava/lang/String;)Lcom/amazon/kcp/library/models/ILocalBookItem;

    move-result-object v2

    .local v2, lastBookItem:Lcom/amazon/kcp/library/models/ILocalBookItem;
    move-object v6, v2

    .line 433
    .end local v2           #lastBookItem:Lcom/amazon/kcp/library/models/ILocalBookItem;
    :goto_0
    return-object v6

    .line 424
    :cond_0
    const-string v6, "LAST_BOOK_READ"

    const-string v7, ""

    invoke-interface {v0, v6, v7}, Lcom/amazon/system/io/IPersistentSettingsHelper;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 425
    .local v1, lastAsin:Ljava/lang/String;
    const-string v6, "LAST_BOOK_IS_SAMPLE"

    const-string v7, ""

    invoke-interface {v0, v6, v7}, Lcom/amazon/system/io/IPersistentSettingsHelper;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 426
    .local v4, lastSampleStatus:Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "SAMPLE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "FULL_BOOK"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 428
    :cond_1
    const-string v6, "SAMPLE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 429
    .local v5, sample:Z
    iget-object v6, p0, Lcom/amazon/kcp/reader/ReaderController;->appController:Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-virtual {v6}, Lcom/amazon/kcp/application/AndroidApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v6

    invoke-interface {v6, v1, v5}, Lcom/amazon/kcp/library/ILibraryController;->getBookFromAsin(Ljava/lang/String;Z)Lcom/amazon/kcp/library/models/ILocalBookItem;

    move-result-object v2

    .restart local v2       #lastBookItem:Lcom/amazon/kcp/library/models/ILocalBookItem;
    move-object v6, v2

    .line 430
    goto :goto_0

    .line 433
    .end local v2           #lastBookItem:Lcom/amazon/kcp/library/models/ILocalBookItem;
    .end local v5           #sample:Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public getReaderActivitySubclass(Lcom/amazon/kcp/reader/models/IBookDocument;)Ljava/lang/Class;
    .locals 2
    .parameter

    .prologue
    .line 294
    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getBookType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getBookType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getTOC()Lcom/amazon/kcp/reader/models/IBookTOC;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 298
    const-class v0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    .line 300
    :goto_0
    return-object v0

    :cond_1
    const-class v0, Lcom/amazon/kcp/reader/BookReaderActivity;

    goto :goto_0
.end method

.method public openReader(Lcom/amazon/kcp/library/models/ILocalBookItem;Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;Z)V
    .locals 3
    .parameter "bookItem"
    .parameter "startPage"
    .parameter "mode"
    .parameter "closePreviousEbook"

    .prologue
    const/4 v2, 0x0

    .line 224
    iput-object p2, p0, Lcom/amazon/kcp/reader/ReaderController;->startPage:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    .line 227
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->appController:Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getNotificationController()Lcom/amazon/kcp/application/AndroidNotificationController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/AndroidNotificationController;->clearDownloadNotification(Lcom/amazon/kcp/library/models/IListableBook;)V

    .line 228
    sget-object v0, Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;->LOADING_ASYNC:Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;

    if-ne p3, v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->applicationContext:Landroid/content/Context;

    const v1, 0x7f0b0056

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->loadingToast:Landroid/widget/Toast;

    .line 233
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->loadingToast:Landroid/widget/Toast;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 234
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->loadingToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 237
    new-instance v0, Lcom/amazon/android/system/AndroidUtilities;

    invoke-direct {v0}, Lcom/amazon/android/system/AndroidUtilities;-><init>()V

    new-instance v1, Lcom/amazon/kcp/reader/ReaderController$2;

    invoke-direct {v1, p0, p1, p4}, Lcom/amazon/kcp/reader/ReaderController$2;-><init>(Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kcp/library/models/ILocalBookItem;Z)V

    invoke-virtual {v0, v1}, Lcom/amazon/android/system/AndroidUtilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 250
    :goto_0
    return-void

    .line 248
    :cond_0
    invoke-direct {p0, p1, p4}, Lcom/amazon/kcp/reader/ReaderController;->executeOpenReaderCommand(Lcom/amazon/kcp/library/models/ILocalBookItem;Z)V

    goto :goto_0
.end method

.method public restoreState([Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 439
    aget-object v0, p1, v3

    check-cast v0, Lcom/amazon/kcp/reader/models/IBookDocument;

    .line 440
    if-eqz v0, :cond_2

    .line 443
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderController;->getCurrentBook()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderController;->getCurrentBook()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getBookID()Lcom/amazon/kcp/library/models/IBookID;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getBookID()Lcom/amazon/kcp/library/models/IBookID;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/library/models/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 446
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderController;->closeCurrentBook()V

    .line 449
    :cond_0
    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->currentBook:Lcom/amazon/kcp/reader/models/IBookDocument;

    .line 452
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->currentBook:Lcom/amazon/kcp/reader/models/IBookDocument;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ReaderController;->persistLastOpenedBook(Lcom/amazon/kcp/reader/models/IBookDocument;)V

    .line 455
    sget-object v0, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;->DEFAULT:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->startPage:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    .line 457
    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v2, v3

    .line 459
    :goto_0
    if-ge v2, v1, :cond_2

    add-int/lit8 v0, v2, 0x2

    array-length v3, p1

    if-ge v0, v3, :cond_2

    .line 461
    add-int/lit8 v0, v2, 0x2

    aget-object v0, p1, v0

    check-cast v0, Landroid/app/Activity;

    .line 464
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 466
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ReaderController;->bindToCurrentBook(Landroid/app/Activity;)Lcom/amazon/kcp/reader/models/IBookDocument;

    .line 459
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 470
    :cond_2
    return-void
.end method

.method public saveCurrentBookState()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->currentBook:Lcom/amazon/kcp/reader/models/IBookDocument;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->currentBook:Lcom/amazon/kcp/reader/models/IBookDocument;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->saveLocalBookState()V

    .line 93
    :cond_0
    return-void
.end method

.method public saveState()[Ljava/lang/Object;
    .locals 4

    .prologue
    .line 475
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderController;->activitiesBoundToBook:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    .line 476
    .local v1, state:[Ljava/lang/Object;
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/amazon/kcp/reader/ReaderController;->currentBook:Lcom/amazon/kcp/reader/models/IBookDocument;

    aput-object v3, v1, v2

    .line 479
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/amazon/kcp/reader/ReaderController;->activitiesBoundToBook:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 480
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderController;->activitiesBoundToBook:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 482
    add-int/lit8 v2, v0, 0x2

    iget-object v3, p0, Lcom/amazon/kcp/reader/ReaderController;->activitiesBoundToBook:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    .line 480
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 487
    :cond_0
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderController;->activitiesBoundToBook:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 489
    return-object v1
.end method

.method public serializeAnnotations()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->appController:Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getAnnotationCache()Lcom/amazon/kcp/application/IAnnotationCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAnnotationCache;->serialize()V

    .line 101
    return-void
.end method

.method public showDefaultPage()Lcom/amazon/kcp/application/IBasePage;
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x0

    return-object v0
.end method

.method public showReaderPage(Lcom/amazon/kcp/reader/models/IBookDocument;)Lcom/amazon/kcp/reader/pages/IReaderPage;
    .locals 4
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderController;->currentBook:Lcom/amazon/kcp/reader/models/IBookDocument;

    .line 309
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->currentBook:Lcom/amazon/kcp/reader/models/IBookDocument;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ReaderController;->persistLastOpenedBook(Lcom/amazon/kcp/reader/models/IBookDocument;)V

    .line 312
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->startPage:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    .line 313
    sget-object v1, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;->DEFAULT:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    iput-object v1, p0, Lcom/amazon/kcp/reader/ReaderController;->startPage:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    .line 320
    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getBookType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getLocalBookState()Lcom/amazon/kcp/library/models/LocalBookState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/LocalBookState;->isBookRead()Z

    move-result v1

    if-nez v1, :cond_0

    .line 324
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderController;->appController:Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/AndroidApplicationController;->getActiveContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/amazon/kcp/periodicals/CoverActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 347
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderController;->appController:Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/application/AndroidApplicationController;->startActivity(Landroid/content/Intent;)V

    .line 349
    new-instance v0, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderController;->currentBook:Lcom/amazon/kcp/reader/models/IBookDocument;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderController;->appController:Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;-><init>(Lcom/amazon/kcp/reader/models/IBookDocument;Lcom/amazon/kcp/application/IKindleApplicationController;)V

    return-object v0

    .line 326
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isListableBookPeriodical(Lcom/amazon/kcp/library/models/IListableBook;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 328
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->appController:Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getActiveContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/periodicals/TwoPanelsArticleListActivity;->createIntentForPeriodicalLaunch(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 332
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderController;->appController:Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/AndroidApplicationController;->getActiveContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/amazon/kcp/reader/BookReaderActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 333
    const-string v2, "start_page"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 340
    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isPreferredDictionary(Lcom/amazon/kcp/library/models/IListableBook;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 342
    const-string v0, "should_show_color_modes"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public syncBookUpdates()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 355
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderController;->appController:Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/AndroidApplicationController;->getAnnotationCache()Lcom/amazon/kcp/application/IAnnotationCache;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAnnotationCache;->serialize()V

    .line 357
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderController;->appController:Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/AndroidApplicationController;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->canPerformSync()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    new-instance v0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    sget-object v1, Lcom/amazon/kcp/application/sync/internal/SyncType;->BOOK_EXIT:Lcom/amazon/kcp/application/sync/internal/SyncType;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderController;->currentBook:Lcom/amazon/kcp/reader/models/IBookDocument;

    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;-><init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kcp/library/models/ILocalBookInfo;Ljava/util/Date;Lcom/amazon/foundation/IStatusTracker;)V

    .line 360
    .local v0, launchSyncParams:Lcom/amazon/kcp/application/sync/internal/SyncParameters;
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderController;->appController:Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/AndroidApplicationController;->getSynchronizationManager()Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->sync(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)V

    .line 362
    .end local v0           #launchSyncParams:Lcom/amazon/kcp/application/sync/internal/SyncParameters;
    :cond_0
    return-void
.end method

.method public unbindFromCurrentBook(Landroid/app/Activity;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->activitiesBoundToBook:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->activitiesBoundToBook:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unbinding from current book; count is now "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderController;->activitiesBoundToBook:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isOnConfigChange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 191
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->activitiesBoundToBook:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderController;->closeCurrentBook()V

    .line 195
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/kcp/search/ReaderSearchProvider;->clearSearchHistory(Landroid/content/Context;)V

    .line 197
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/kcp/redding/CurrentlyReadingWidgetProvider;->asyncUpdateAllWidgets(Landroid/content/Context;)V

    .line 201
    :cond_0
    return-void
.end method

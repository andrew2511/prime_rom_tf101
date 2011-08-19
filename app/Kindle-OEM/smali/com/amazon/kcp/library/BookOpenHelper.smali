.class public Lcom/amazon/kcp/library/BookOpenHelper;
.super Ljava/lang/Object;
.source "BookOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;,
        Lcom/amazon/kcp/library/BookOpenHelper$BookOpenException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static downloadAndOpen(Lcom/amazon/kcp/redding/ReddingActivity;Lcom/amazon/kcp/library/models/IDownloadBookItem;Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadState()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/IAndroidLibraryController;

    invoke-interface {v0}, Lcom/amazon/kcp/library/IAndroidLibraryController;->getArchivedItemsPage()Lcom/amazon/kcp/library/pages/IArchivedItemsPage;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/pages/IArchivedItemsPage;->downloadBook(Lcom/amazon/kcp/library/models/IListableBook;)V

    .line 106
    :cond_0
    invoke-static {p0, p1}, Lcom/amazon/kcp/library/BookOpenHelper;->getIntentToOpenTransientActivity(Lcom/amazon/kcp/redding/ReddingActivity;Lcom/amazon/kcp/library/models/IDownloadBookItem;)Landroid/content/Intent;

    move-result-object v0

    .line 108
    if-eqz p2, :cond_1

    .line 110
    const-string v1, "start_page"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 113
    :cond_1
    return-object v0
.end method

.method public static getIntentToOpenTransientActivity(Lcom/amazon/kcp/redding/ReddingActivity;Lcom/amazon/kcp/library/models/IDownloadBookItem;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 128
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/library/TransientActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    const-string v1, "DownloadingBookAsin"

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const-string v1, "DownloadingBookIsSample"

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->isSample()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 131
    const-string v1, "DownloadingDocumentType"

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getBookType()I

    move-result v2

    invoke-static {v2}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->getTodoTypeFromBookType(I)Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    return-object v0
.end method

.method public static open(Lcom/amazon/kcp/redding/ReddingActivity;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;Lcom/amazon/kcp/application/IDownloadStatusWatcher;)Landroid/content/Intent;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 268
    invoke-static {p2}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->getType(Ljava/lang/String;)Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->BOOK_SAMPLE:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    if-ne v0, v1, :cond_0

    move v0, v3

    .line 275
    :goto_0
    :try_start_0
    invoke-static {p0, p1, v0, p3}, Lcom/amazon/kcp/library/BookOpenHelper;->open(Lcom/amazon/kcp/redding/ReddingActivity;Ljava/lang/String;ZLcom/amazon/kcp/reader/IAndroidReaderController$StartPage;)Landroid/content/Intent;
    :try_end_0
    .catch Lcom/amazon/kcp/library/BookOpenHelper$BookOpenException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 305
    :goto_1
    return-object v0

    .line 268
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 283
    :try_start_1
    invoke-interface {p4, p1, p2}, Lcom/amazon/kcp/application/IDownloadStatusWatcher;->getStatusFromAsin(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kcp/application/IDownloadStatus;
    :try_end_1
    .catch Lcom/amazon/kcp/store/StatusNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 299
    :goto_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/amazon/kcp/library/TransientActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 300
    const-string v2, "DownloadingBookAsin"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    const-string v2, "DownloadingBookIsSample"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 302
    const-string v0, "DownloadingDocumentType"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    const-string v0, "DownloadingBookFromSync"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object v0, v1

    .line 305
    goto :goto_1

    .line 295
    :catch_1
    move-exception v1

    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getTodoManager()Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    move-result-object v1

    invoke-static {v1, p4, p1, p2}, Lcom/amazon/kcp/library/BookOpenHelper;->syncAndDownload(Lcom/amazon/kcp/application/internal/ILocalTodoManager;Lcom/amazon/kcp/application/IDownloadStatusWatcher;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static open(Lcom/amazon/kcp/redding/ReddingActivity;Ljava/lang/String;ZLcom/amazon/kcp/reader/IAndroidReaderController$StartPage;)Landroid/content/Intent;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kcp/library/BookOpenHelper$BookOpenException;
        }
    .end annotation

    .prologue
    .line 149
    const/4 v1, 0x0

    .line 155
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/IAndroidLibraryController;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kcp/library/IAndroidLibraryController;->getBookFromAsin(Ljava/lang/String;Z)Lcom/amazon/kcp/library/models/ILocalBookItem;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/IAndroidReaderController;

    sget-object v2, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;->DEFAULT:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    sget-object v3, Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;->LOADING_ASYNC:Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;

    const/4 v4, 0x1

    invoke-interface {p0, v0, v2, v3, v4}, Lcom/amazon/kcp/reader/IAndroidReaderController;->openReader(Lcom/amazon/kcp/library/models/ILocalBookItem;Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;Z)V

    move-object v0, v1

    .line 183
    :goto_0
    return-object v0

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/IAndroidLibraryController;

    invoke-interface {v0}, Lcom/amazon/kcp/library/IAndroidLibraryController;->getArchivedItems()Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;->getArchivedBookByAsin(Ljava/lang/String;Z)Lcom/amazon/kcp/library/models/internal/IMetadata;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_1

    .line 173
    invoke-static {p0, v0, p3}, Lcom/amazon/kcp/library/BookOpenHelper;->downloadAndOpen(Lcom/amazon/kcp/redding/ReddingActivity;Lcom/amazon/kcp/library/models/IDownloadBookItem;Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 178
    :cond_1
    new-instance v0, Lcom/amazon/kcp/library/BookOpenHelper$BookOpenException;

    invoke-direct {v0}, Lcom/amazon/kcp/library/BookOpenHelper$BookOpenException;-><init>()V

    throw v0
.end method

.method public static openLastReadBook(Lcom/amazon/kcp/redding/ReddingActivity;Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kcp/library/BookOpenHelper$BookOpenException;
        }
    .end annotation

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/IAndroidReaderController;

    .line 232
    invoke-interface {v0}, Lcom/amazon/kcp/reader/IAndroidReaderController;->getLastReadBook()Lcom/amazon/kcp/library/models/ILocalBookItem;

    move-result-object v0

    .line 233
    if-nez v0, :cond_0

    .line 235
    new-instance v0, Lcom/amazon/kcp/library/BookOpenHelper$BookOpenException;

    invoke-direct {v0}, Lcom/amazon/kcp/library/BookOpenHelper$BookOpenException;-><init>()V

    throw v0

    .line 239
    :cond_0
    invoke-static {p0, v0, p1}, Lcom/amazon/kcp/library/BookOpenHelper;->openLocalBookItem(Lcom/amazon/kcp/redding/ReddingActivity;Lcom/amazon/kcp/library/models/ILocalBookItem;Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;)V

    .line 240
    return-void
.end method

.method public static openLocal(Lcom/amazon/kcp/redding/ReddingActivity;Ljava/lang/String;Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kcp/library/BookOpenHelper$BookOpenException;
        }
    .end annotation

    .prologue
    .line 200
    const/4 v1, 0x0

    .line 206
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/IAndroidLibraryController;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/IAndroidLibraryController;->getBookFromBookId(Ljava/lang/String;)Lcom/amazon/kcp/library/models/ILocalBookItem;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_0

    .line 210
    invoke-static {p0, v0, p2}, Lcom/amazon/kcp/library/BookOpenHelper;->openLocalBookItem(Lcom/amazon/kcp/redding/ReddingActivity;Lcom/amazon/kcp/library/models/ILocalBookItem;Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;)V

    .line 218
    return-object v1

    .line 214
    :cond_0
    new-instance v0, Lcom/amazon/kcp/library/BookOpenHelper$BookOpenException;

    invoke-direct {v0}, Lcom/amazon/kcp/library/BookOpenHelper$BookOpenException;-><init>()V

    throw v0
.end method

.method private static openLocalBookItem(Lcom/amazon/kcp/redding/ReddingActivity;Lcom/amazon/kcp/library/models/ILocalBookItem;Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/IAndroidReaderController;

    .line 246
    invoke-virtual {p2}, Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;->getStartPage()Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;->getOpenReaderMode()Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;->getClosePrevious()Z

    move-result v2

    invoke-interface {p0, p1, v0, v1, v2}, Lcom/amazon/kcp/reader/IAndroidReaderController;->openReader(Lcom/amazon/kcp/library/models/ILocalBookItem;Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;Z)V

    .line 250
    return-void
.end method

.method public static syncAndDownload(Lcom/amazon/kcp/application/internal/ILocalTodoManager;Lcom/amazon/kcp/application/IDownloadStatusWatcher;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "todoManager"
    .parameter "dlStatusWatcher"
    .parameter "asin"
    .parameter "type"

    .prologue
    .line 339
    new-instance v0, Lcom/amazon/kcp/application/DownloadStatus;

    invoke-direct {v0, p2, p3, p0}, Lcom/amazon/kcp/application/DownloadStatus;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/internal/ILocalTodoManager;)V

    .line 340
    .local v0, status:Lcom/amazon/kcp/application/DownloadStatus;
    invoke-interface {p1, p2, p3, v0}, Lcom/amazon/kcp/application/IDownloadStatusWatcher;->setStatus(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/IDownloadStatus;)V

    .line 343
    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->GET:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    invoke-static {p3}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->getType(Ljava/lang/String;)Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object v2

    invoke-interface {p0, p2, v1, v2}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->syncWithRemoteTodoLookingForContent(Ljava/lang/String;Lcom/amazon/kcp/application/models/internal/TodoItem$Action;Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)V

    .line 344
    return-void
.end method

.method public static syncAndDownload(Lcom/amazon/kcp/application/internal/ILocalTodoManager;Lcom/amazon/kcp/application/IDownloadStatusWatcher;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/library/models/internal/IDownloadManager;Lcom/amazon/kcp/store/models/internal/BookDetails;)V
    .locals 0
    .parameter "todoManager"
    .parameter "dlStatusWatcher"
    .parameter "asin"
    .parameter "type"
    .parameter "downloadManager"
    .parameter "bookDetails"

    .prologue
    .line 322
    invoke-interface {p4, p5}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->reuseBookDetailForDownload(Lcom/amazon/kcp/store/models/IBookDetails;)V

    .line 325
    invoke-static {p0, p1, p2, p3}, Lcom/amazon/kcp/library/BookOpenHelper;->syncAndDownload(Lcom/amazon/kcp/application/internal/ILocalTodoManager;Lcom/amazon/kcp/application/IDownloadStatusWatcher;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-void
.end method

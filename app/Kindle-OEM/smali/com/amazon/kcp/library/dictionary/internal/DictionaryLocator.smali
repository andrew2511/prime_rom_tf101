.class public Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;
.super Ljava/lang/Object;
.source "DictionaryLocator.java"

# interfaces
.implements Lcom/amazon/kcp/library/dictionary/IDictionaryLocator;
.implements Lcom/amazon/kcp/library/models/internal/IBookDownloadObserver;


# static fields
.field private static final METRICS_CLASS_NAME:Ljava/lang/String; = "DictionaryLocator"


# instance fields
.field private asin:Ljava/lang/String;

.field private bookDownloadTracker:Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

.field private boundDictionary:Lcom/amazon/kcp/library/models/IListableBook;

.field private downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

.field private isDownloading:Z

.field private libraryController:Lcom/amazon/kcp/library/ILibraryController;

.field private todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/models/IListableBook;Ljava/lang/String;Lcom/amazon/kcp/library/models/internal/IDownloadManager;Lcom/amazon/kcp/application/internal/ILocalTodoManager;Lcom/amazon/kcp/library/ILibraryController;)V
    .locals 2
    .parameter "dictionary"
    .parameter "asin"
    .parameter "downloadManager"
    .parameter "todoManager"
    .parameter "libraryController"

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v1, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->isDownloading:Z

    .line 53
    iput-object p1, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->boundDictionary:Lcom/amazon/kcp/library/models/IListableBook;

    .line 54
    iput-object p2, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->asin:Ljava/lang/String;

    .line 55
    iput-object p5, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->libraryController:Lcom/amazon/kcp/library/ILibraryController;

    .line 56
    iput-object p3, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    .line 57
    iput-object p4, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    .line 58
    new-instance v0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

    invoke-direct {v0, p3, p4}, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;-><init>(Lcom/amazon/kcp/library/models/internal/IDownloadManager;Lcom/amazon/kcp/application/internal/ILocalTodoManager;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->bookDownloadTracker:Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

    .line 59
    iput-boolean v1, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->isDownloading:Z

    .line 60
    return-void
.end method

.method private stopTrackingDownload()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->bookDownloadTracker:Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->isTrackingOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->bookDownloadTracker:Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->stopTracking()V

    .line 68
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelDictionaryDownload()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 146
    .line 147
    iget-boolean v0, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->isDownloading:Z

    if-eqz v0, :cond_1

    .line 149
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "DictionaryLocator"

    const-string v2, "DictDownloadCanceled"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->INFO:Lcom/amazon/kcp/application/metrics/MetricType;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "ASIN"

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->asin:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v4}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->makeMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;)V

    .line 153
    iput-boolean v6, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->isDownloading:Z

    .line 155
    invoke-direct {p0}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->stopTrackingDownload()V

    .line 159
    iget-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->boundDictionary:Lcom/amazon/kcp/library/models/IListableBook;

    instance-of v0, v0, Lcom/amazon/kcp/library/models/IDownloadBookItem;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->boundDictionary:Lcom/amazon/kcp/library/models/IListableBook;

    check-cast v0, Lcom/amazon/kcp/library/models/IDownloadBookItem;

    .line 164
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->boundDictionary:Lcom/amazon/kcp/library/models/IListableBook;

    .line 166
    iget-object v1, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    iget-object v2, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->asin:Ljava/lang/String;

    sget-object v3, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->GET:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    sget-object v4, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->BOOK:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    invoke-interface {v1, v2, v3, v4}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->removeItemFromTodoIfExists(Ljava/lang/String;Lcom/amazon/kcp/application/models/internal/TodoItem$Action;Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)Z

    .line 167
    invoke-interface {v0, v7}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->setDownloadState(I)V

    .line 168
    iget-object v1, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->libraryController:Lcom/amazon/kcp/library/ILibraryController;

    invoke-interface {v1}, Lcom/amazon/kcp/library/ILibraryController;->getLocalLibrary()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/library/models/CLibrary;->deleteBook(Lcom/amazon/kcp/library/models/IDownloadBookItem;)Z

    move-result v0

    .line 177
    :goto_0
    return v0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    iget-object v1, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->asin:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->GET:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    sget-object v3, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->BOOK:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->removeItemFromTodoIfExists(Ljava/lang/String;Lcom/amazon/kcp/application/models/internal/TodoItem$Action;Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_0
.end method

.method public deleteDictionary()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 124
    iget-object v3, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->boundDictionary:Lcom/amazon/kcp/library/models/IListableBook;

    instance-of v3, v3, Lcom/amazon/kcp/library/models/ILocalBookItem;

    if-eqz v3, :cond_1

    .line 127
    iget-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->boundDictionary:Lcom/amazon/kcp/library/models/IListableBook;

    check-cast v0, Lcom/amazon/kcp/library/models/ILocalBookItem;

    .line 128
    .local v0, dictToDelete:Lcom/amazon/kcp/library/models/ILocalBookItem;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->boundDictionary:Lcom/amazon/kcp/library/models/IListableBook;

    .line 130
    iget-object v3, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->libraryController:Lcom/amazon/kcp/library/ILibraryController;

    invoke-interface {v3}, Lcom/amazon/kcp/library/ILibraryController;->getLocalLibrary()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/amazon/kcp/library/models/CLibrary;->deleteBook(Lcom/amazon/kcp/library/models/ILocalBookItem;)Z

    move-result v2

    .line 132
    .local v2, result:Z
    if-eqz v2, :cond_0

    const-string v3, "CorruptDictDeleteSuccess"

    move-object v1, v3

    .line 133
    .local v1, event:Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v3

    const-string v4, "DictionaryLocator"

    sget-object v5, Lcom/amazon/kcp/application/metrics/MetricType;->INFO:Lcom/amazon/kcp/application/metrics/MetricType;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "ASIN"

    aput-object v7, v6, v8

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->asin:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v6}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->makeMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v3, v4, v1, v5, v6}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;)V

    move v3, v2

    .line 138
    .end local v0           #dictToDelete:Lcom/amazon/kcp/library/models/ILocalBookItem;
    .end local v1           #event:Ljava/lang/String;
    .end local v2           #result:Z
    :goto_1
    return v3

    .line 132
    .restart local v0       #dictToDelete:Lcom/amazon/kcp/library/models/ILocalBookItem;
    .restart local v2       #result:Z
    :cond_0
    const-string v3, "CorruptDictDeleteFailure"

    move-object v1, v3

    goto :goto_0

    .end local v0           #dictToDelete:Lcom/amazon/kcp/library/models/ILocalBookItem;
    .end local v2           #result:Z
    :cond_1
    move v3, v8

    .line 138
    goto :goto_1
.end method

.method public downloadDictionary()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 75
    const/4 v1, 0x0

    .line 76
    .local v1, submitDownload:Z
    iget-boolean v2, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->isDownloading:Z

    if-eqz v2, :cond_2

    .line 80
    iget-object v2, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->boundDictionary:Lcom/amazon/kcp/library/models/IListableBook;

    instance-of v2, v2, Lcom/amazon/kcp/library/models/IDownloadBookItem;

    if-eqz v2, :cond_0

    .line 82
    iget-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->boundDictionary:Lcom/amazon/kcp/library/models/IListableBook;

    check-cast v0, Lcom/amazon/kcp/library/models/IDownloadBookItem;

    .line 83
    .local v0, downloadDict:Lcom/amazon/kcp/library/models/IDownloadBookItem;
    invoke-interface {v0}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 85
    const/4 v1, 0x1

    .line 94
    .end local v0           #downloadDict:Lcom/amazon/kcp/library/models/IDownloadBookItem;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 97
    iget-object v2, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    iget-object v3, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->asin:Ljava/lang/String;

    sget-object v4, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->BOOK:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    invoke-interface {v2, v3, v4}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->addItemToDownload(Ljava/lang/String;Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)V

    .line 98
    iget-object v2, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/amazon/kcp/application/internal/ILocalTodoManager;->execute(Lcom/amazon/foundation/IStatusTracker;)V

    .line 100
    iget-object v2, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->bookDownloadTracker:Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

    iget-object v3, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->asin:Ljava/lang/String;

    sget-object v4, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->BOOK:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    invoke-virtual {v2, v3, v4, p0}, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->startTracking(Ljava/lang/String;Lcom/amazon/kcp/application/models/internal/TodoItem$Type;Lcom/amazon/kcp/library/models/internal/IBookDownloadObserver;)V

    .line 101
    iput-boolean v9, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->isDownloading:Z

    .line 103
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    const-string v3, "DictionaryLocator"

    const-string v4, "DictDownloadRequest"

    sget-object v5, Lcom/amazon/kcp/application/metrics/MetricType;->INFO:Lcom/amazon/kcp/application/metrics/MetricType;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "ASIN"

    aput-object v8, v6, v7

    iget-object v7, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->asin:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-static {v6}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->makeMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;)V

    .line 108
    :cond_1
    return v1

    .line 91
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAsin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getBoundDictionary()Lcom/amazon/kcp/library/models/IListableBook;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->boundDictionary:Lcom/amazon/kcp/library/models/IListableBook;

    return-object v0
.end method

.method public isDownloading()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->isDownloading:Z

    return v0
.end method

.method public onDownloadAdded(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V
    .locals 0
    .parameter "downloadBookItem"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->boundDictionary:Lcom/amazon/kcp/library/models/IListableBook;

    .line 187
    return-void
.end method

.method public onDownloadProgressChanged()V
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->boundDictionary:Lcom/amazon/kcp/library/models/IListableBook;

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    iget-object v1, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->asin:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/amazon/kcp/library/models/internal/IDownloadManager;->getDownloadBookItemFromAsin(Ljava/lang/String;Z)Lcom/amazon/kcp/library/models/IDownloadBookItem;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->boundDictionary:Lcom/amazon/kcp/library/models/IListableBook;

    .line 198
    :cond_0
    return-void
.end method

.method public onDownloadStateChanged()V
    .locals 0

    .prologue
    .line 203
    return-void
.end method

.method public onLicenseCountError()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 217
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "DictionaryLocator"

    const-string v2, "DictLicenseCountError"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->INFO:Lcom/amazon/kcp/application/metrics/MetricType;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "ASIN"

    aput-object v5, v4, v7

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->asin:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v4}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->makeMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;)V

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->boundDictionary:Lcom/amazon/kcp/library/models/IListableBook;

    .line 224
    iput-boolean v7, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->isDownloading:Z

    .line 225
    invoke-direct {p0}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->stopTrackingDownload()V

    .line 226
    return-void
.end method

.method public onTodoError()V
    .locals 7

    .prologue
    .line 207
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "DictionaryLocator"

    const-string v2, "DictDownloadFailure"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->INFO:Lcom/amazon/kcp/application/metrics/MetricType;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ASIN"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->asin:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v4}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->makeMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;)V

    .line 211
    invoke-direct {p0}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->stopTrackingDownload()V

    .line 213
    return-void
.end method

.method public onTodoProcessed()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 231
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "DictionaryLocator"

    const-string v2, "DictDownloadSuccess"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->INFO:Lcom/amazon/kcp/application/metrics/MetricType;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "ASIN"

    aput-object v5, v4, v7

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->asin:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v4}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->makeMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;)V

    .line 235
    iget-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->libraryController:Lcom/amazon/kcp/library/ILibraryController;

    iget-object v1, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->asin:Ljava/lang/String;

    invoke-interface {v0, v1, v7}, Lcom/amazon/kcp/library/ILibraryController;->getBookFromAsin(Ljava/lang/String;Z)Lcom/amazon/kcp/library/models/ILocalBookItem;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->boundDictionary:Lcom/amazon/kcp/library/models/IListableBook;

    .line 237
    iput-boolean v7, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->isDownloading:Z

    .line 238
    invoke-direct {p0}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;->stopTrackingDownload()V

    .line 239
    return-void
.end method

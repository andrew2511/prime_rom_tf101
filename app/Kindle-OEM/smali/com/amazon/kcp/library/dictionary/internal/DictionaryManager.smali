.class public Lcom/amazon/kcp/library/dictionary/internal/DictionaryManager;
.super Ljava/lang/Object;
.source "DictionaryManager.java"

# interfaces
.implements Lcom/amazon/kcp/library/dictionary/IDictionaryManager;


# static fields
.field private static final METRICS_CLASS_NAME:Ljava/lang/String; = "DictionaryManager"


# instance fields
.field private cachedDictionaryLocators:Ljava/util/Hashtable;

.field private downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

.field private libraryController:Lcom/amazon/kcp/library/ILibraryController;

.field private todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/ILibraryController;Lcom/amazon/kcp/application/internal/ILocalTodoManager;Lcom/amazon/kcp/library/models/internal/IDownloadManager;)V
    .locals 1
    .parameter "libraryController"
    .parameter "todoManager"
    .parameter "downloadManager"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryManager;->libraryController:Lcom/amazon/kcp/library/ILibraryController;

    .line 45
    iput-object p2, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryManager;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    .line 46
    iput-object p3, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryManager;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    .line 47
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryManager;->cachedDictionaryLocators:Ljava/util/Hashtable;

    .line 48
    return-void
.end method

.method private getDictionaryByAsin(Ljava/lang/String;)Lcom/amazon/kcp/library/dictionary/IDictionaryLocator;
    .locals 6
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryManager;->cachedDictionaryLocators:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/dictionary/IDictionaryLocator;

    .line 92
    if-eqz v0, :cond_0

    .line 102
    :goto_0
    return-object v0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryManager;->libraryController:Lcom/amazon/kcp/library/ILibraryController;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/amazon/kcp/library/ILibraryController;->getBookFromAsin(Ljava/lang/String;Z)Lcom/amazon/kcp/library/models/ILocalBookItem;

    move-result-object v1

    .line 99
    new-instance v0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;

    iget-object v3, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryManager;->downloadManager:Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    iget-object v4, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryManager;->todoManager:Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    iget-object v5, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryManager;->libraryController:Lcom/amazon/kcp/library/ILibraryController;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryLocator;-><init>(Lcom/amazon/kcp/library/models/IListableBook;Ljava/lang/String;Lcom/amazon/kcp/library/models/internal/IDownloadManager;Lcom/amazon/kcp/application/internal/ILocalTodoManager;Lcom/amazon/kcp/library/ILibraryController;)V

    .line 101
    iget-object v1, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryManager;->cachedDictionaryLocators:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public getDictionaryLocator(Ljava/lang/String;)Lcom/amazon/kcp/library/dictionary/IDictionaryLocator;
    .locals 8
    .parameter "languageCode"

    .prologue
    .line 72
    invoke-static {p1}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->getDictionaryAsinFromLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, asin:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 76
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "DictionaryManager"

    const-string v3, "DictNotFound"

    sget-object v4, Lcom/amazon/kcp/application/metrics/MetricType;->INFO:Lcom/amazon/kcp/application/metrics/MetricType;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "languageCode"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-static {v5}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->makeMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;)V

    .line 80
    const/4 v1, 0x0

    .line 83
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryManager;->getDictionaryByAsin(Ljava/lang/String;)Lcom/amazon/kcp/library/dictionary/IDictionaryLocator;

    move-result-object v1

    goto :goto_0
.end method

.method public isPreferredDictionary(Lcom/amazon/kcp/library/models/IListableBook;)Z
    .locals 1
    .parameter "book"

    .prologue
    .line 63
    invoke-static {p1}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isPreferredDictionary(Lcom/amazon/kcp/library/models/IListableBook;)Z

    move-result v0

    return v0
.end method

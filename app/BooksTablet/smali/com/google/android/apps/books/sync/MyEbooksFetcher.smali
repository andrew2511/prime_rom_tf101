.class public Lcom/google/android/apps/books/sync/MyEbooksFetcher;
.super Ljava/lang/Object;
.source "MyEbooksFetcher.java"

# interfaces
.implements Lcom/google/android/apps/books/sync/FetchDispatcher$Fetcher;


# static fields
.field public static final MAX_VOLUMES_PER_SHELF:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "MyEbooksFetcher"


# instance fields
.field private final mResolver:Landroid/content/ContentResolver;

.field private final mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

.field private final mState:Lcom/google/android/apps/books/sync/SyncAccountsState;

.field private final mVolumesFeedContentHandler:Lcom/google/android/apps/books/net/VolumesContentHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/books/net/VolumesContentHandler",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lcom/google/android/apps/books/net/ResponseGetter;Lcom/google/android/apps/books/sync/SyncAccountsState;)V
    .locals 3
    .parameter "resolver"
    .parameter "responseGetter"
    .parameter "state"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v1, "missing resolver"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentResolver;

    iput-object v1, p0, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->mResolver:Landroid/content/ContentResolver;

    .line 56
    const-string v1, "missing responseGetter"

    invoke-static {p2, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/books/net/ResponseGetter;

    iput-object v1, p0, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    .line 57
    const-string v1, "missing state"

    invoke-static {p3, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/books/sync/SyncAccountsState;

    iput-object v1, p0, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->mState:Lcom/google/android/apps/books/sync/SyncAccountsState;

    .line 58
    new-instance v0, Lcom/google/android/apps/books/net/ListKeyValueHandler;

    invoke-direct {v0}, Lcom/google/android/apps/books/net/ListKeyValueHandler;-><init>()V

    .line 59
    .local v0, keyValueHandler:Lcom/google/android/apps/books/net/KeyValueHandler;,"Lcom/google/android/apps/books/net/KeyValueHandler<Ljava/util/List<Landroid/content/ContentValues;>;>;"
    new-instance v1, Lcom/google/android/apps/books/net/VolumesContentHandler;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lcom/google/android/apps/books/net/VolumesContentHandler;-><init>(ZLcom/google/android/apps/books/net/KeyValueHandler;)V

    iput-object v1, p0, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->mVolumesFeedContentHandler:Lcom/google/android/apps/books/net/VolumesContentHandler;

    .line 61
    return-void
.end method

.method private buildCollectionVolumesSyncher(Landroid/accounts/Account;)Lcom/google/android/apps/books/sync/TableSynchronizer;
    .locals 5
    .parameter "account"

    .prologue
    .line 142
    new-instance v0, Lcom/google/android/apps/books/sync/CollectionVolumesServerSynchronizable;

    iget-object v1, p0, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-wide/16 v3, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/books/sync/CollectionVolumesServerSynchronizable;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    .line 145
    .local v0, synchronizable:Lcom/google/android/apps/books/sync/CollectionVolumesServerSynchronizable;
    new-instance v1, Lcom/google/android/apps/books/sync/TableSynchronizer;

    invoke-direct {v1, v0}, Lcom/google/android/apps/books/sync/TableSynchronizer;-><init>(Lcom/google/android/apps/books/sync/Synchronizable;)V

    return-object v1
.end method

.method private buildStatesSyncher(Landroid/accounts/Account;)Lcom/google/android/apps/books/sync/TableSynchronizer;
    .locals 3
    .parameter "account"

    .prologue
    .line 149
    new-instance v0, Lcom/google/android/apps/books/sync/StatesServerSynchronizable;

    iget-object v1, p0, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/sync/StatesServerSynchronizable;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 151
    .local v0, synchronizable:Lcom/google/android/apps/books/sync/StatesServerSynchronizable;
    new-instance v1, Lcom/google/android/apps/books/sync/TableSynchronizer;

    invoke-direct {v1, v0}, Lcom/google/android/apps/books/sync/TableSynchronizer;-><init>(Lcom/google/android/apps/books/sync/Synchronizable;)V

    return-object v1
.end method

.method private static filterToPositionValues(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, valuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 160
    .local v0, filteredList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 161
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "position"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, position:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 163
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 166
    .end local v2           #position:Ljava/lang/String;
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_1
    return-object v0
.end method


# virtual methods
.method public ensureMyEbooksCollection(Landroid/accounts/Account;)V
    .locals 6
    .parameter "account"

    .prologue
    const-string v5, "MyEbooksFetcher"

    .line 71
    const-string v3, "MyEbooksFetcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "started ensureMyEbooks() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 74
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "account_name"

    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v3, "collection_id"

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 79
    const-string v3, "title"

    const-string v4, "My eBooks"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v3, "summary"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v1, Lcom/google/android/apps/books/sync/CollectionsSynchronizable;

    iget-object v3, p0, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Lcom/google/android/apps/books/sync/CollectionsSynchronizable;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 84
    .local v1, synchronizable:Lcom/google/android/apps/books/sync/CollectionsSynchronizable;
    new-instance v0, Lcom/google/android/apps/books/sync/TableSynchronizer;

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/sync/TableSynchronizer;-><init>(Lcom/google/android/apps/books/sync/Synchronizable;)V

    .line 85
    .local v0, syncher:Lcom/google/android/apps/books/sync/TableSynchronizer;
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/apps/books/sync/TableSynchronizer;->syncRows(Ljava/lang/Iterable;)Ljava/util/Collection;

    .line 87
    const-string v3, "MyEbooksFetcher"

    const-string v3, "finished ensureMyEbooks()"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method

.method public fetch(Landroid/net/Uri;Landroid/accounts/Account;)V
    .locals 12
    .parameter "uri"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x7

    const/4 v9, 0x0

    const-string v8, "MyEbooksFetcher"

    .line 105
    invoke-virtual {p0, p2}, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->ensureMyEbooksCollection(Landroid/accounts/Account;)V

    .line 106
    new-instance v0, Lcom/google/android/apps/books/sync/TableSynchronizer;

    new-instance v4, Lcom/google/android/apps/books/sync/VolumesSynchronizable;

    iget-object v5, p0, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v4, v5}, Lcom/google/android/apps/books/sync/VolumesSynchronizable;-><init>(Landroid/content/ContentResolver;)V

    invoke-direct {v0, v4}, Lcom/google/android/apps/books/sync/TableSynchronizer;-><init>(Lcom/google/android/apps/books/sync/Synchronizable;)V

    .line 109
    .local v0, mVolumesSynchronizer:Lcom/google/android/apps/books/sync/TableSynchronizer;
    const-string v4, "MyEbooksFetcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "started MyEbooksFetcher.fetch() for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-static {v10, v11}, Lcom/google/android/apps/books/util/OceanUris;->getCollectionVolumesUrl(J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "max-results"

    const/16 v6, 0x1000

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "v"

    const-string v6, "2"

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 115
    .local v2, url:Landroid/net/Uri;
    iget-object v4, p0, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [I

    invoke-virtual {v4, v5, p2, v6}, Lcom/google/android/apps/books/net/ResponseGetter;->get(Ljava/lang/String;Landroid/accounts/Account;[I)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 116
    .local v1, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->mVolumesFeedContentHandler:Lcom/google/android/apps/books/net/VolumesContentHandler;

    invoke-virtual {v5}, Lcom/google/android/apps/books/net/VolumesContentHandler;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/apps/books/net/HttpUtils;->parseXml(Lorg/apache/http/HttpEntity;Lorg/xml/sax/ContentHandler;)V

    .line 117
    iget-object v4, p0, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->mVolumesFeedContentHandler:Lcom/google/android/apps/books/net/VolumesContentHandler;

    invoke-virtual {v4}, Lcom/google/android/apps/books/net/VolumesContentHandler;->getContent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 119
    .local v3, valuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const-string v4, "MyEbooksFetcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " volumes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const-string v4, "MyEbooksFetcher"

    const/4 v4, 0x3

    invoke-static {v8, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 121
    const-string v4, "MyEbooksFetcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Volumes found:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    invoke-static {p2, v10, v11, v3}, Lcom/google/android/apps/books/sync/VolumeOverviewFetcher;->prepareServerValuesForSyncher(Landroid/accounts/Account;JLjava/util/List;)V

    .line 128
    invoke-virtual {v0, v3}, Lcom/google/android/apps/books/sync/TableSynchronizer;->syncRows(Ljava/lang/Iterable;)Ljava/util/Collection;

    .line 129
    invoke-direct {p0, p2}, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->buildCollectionVolumesSyncher(Landroid/accounts/Account;)Lcom/google/android/apps/books/sync/TableSynchronizer;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/apps/books/sync/TableSynchronizer;->syncRows(Ljava/lang/Iterable;)Ljava/util/Collection;

    .line 130
    invoke-static {v3}, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->filterToPositionValues(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 131
    invoke-direct {p0, p2}, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->buildStatesSyncher(Landroid/accounts/Account;)Lcom/google/android/apps/books/sync/TableSynchronizer;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/apps/books/sync/TableSynchronizer;->syncRows(Ljava/lang/Iterable;)Ljava/util/Collection;

    .line 134
    iget-object v4, p0, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->mState:Lcom/google/android/apps/books/sync/SyncAccountsState;

    iget-object v5, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/apps/books/sync/SyncAccountsState;->setLastMyEbooksFetchTime(Ljava/lang/String;J)V

    .line 136
    iget-object v4, p0, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->mResolver:Landroid/content/ContentResolver;

    iget-object v5, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes;->myEBooksDirUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 138
    const-string v4, "MyEbooksFetcher"

    const-string v4, "finished MyEbooksFetcher.fetch()"

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void
.end method

.method public isAlreadyFetched(Landroid/net/Uri;)Z
    .locals 5
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes;->getAccountName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, accountName:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/apps/books/sync/MyEbooksFetcher;->mState:Lcom/google/android/apps/books/sync/SyncAccountsState;

    invoke-virtual {v3, v0}, Lcom/google/android/apps/books/sync/SyncAccountsState;->getLastMyEbooksFetchTime(Ljava/lang/String;)J

    move-result-wide v1

    .line 98
    .local v1, time:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

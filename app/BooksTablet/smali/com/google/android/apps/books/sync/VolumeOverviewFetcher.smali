.class public Lcom/google/android/apps/books/sync/VolumeOverviewFetcher;
.super Ljava/lang/Object;
.source "VolumeOverviewFetcher.java"

# interfaces
.implements Lcom/google/android/apps/books/sync/FetchDispatcher$Fetcher;


# static fields
.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "VolumeOverviewFetcher"


# instance fields
.field private final mResolver:Landroid/content/ContentResolver;

.field private final mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

.field private final mVolumesContentHandler:Lcom/google/android/apps/books/net/VolumesContentHandler;
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

.field private final mVolumesSynchronizer:Lcom/google/android/apps/books/sync/TableSynchronizer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_count"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/books/sync/VolumeOverviewFetcher;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Lcom/google/android/apps/books/net/ResponseGetter;)V
    .locals 3
    .parameter "resolver"
    .parameter "responseGetter"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v1, "missing ContentResolver"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentResolver;

    iput-object v1, p0, Lcom/google/android/apps/books/sync/VolumeOverviewFetcher;->mResolver:Landroid/content/ContentResolver;

    .line 53
    const-string v1, "missing responseGetter"

    invoke-static {p2, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/books/net/ResponseGetter;

    iput-object v1, p0, Lcom/google/android/apps/books/sync/VolumeOverviewFetcher;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    .line 54
    new-instance v0, Lcom/google/android/apps/books/net/ListKeyValueHandler;

    invoke-direct {v0}, Lcom/google/android/apps/books/net/ListKeyValueHandler;-><init>()V

    .line 55
    .local v0, keyValueHandler:Lcom/google/android/apps/books/net/KeyValueHandler;,"Lcom/google/android/apps/books/net/KeyValueHandler<Ljava/util/List<Landroid/content/ContentValues;>;>;"
    new-instance v1, Lcom/google/android/apps/books/net/VolumesContentHandler;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/google/android/apps/books/net/VolumesContentHandler;-><init>(ZLcom/google/android/apps/books/net/KeyValueHandler;)V

    iput-object v1, p0, Lcom/google/android/apps/books/sync/VolumeOverviewFetcher;->mVolumesContentHandler:Lcom/google/android/apps/books/net/VolumesContentHandler;

    .line 57
    new-instance v1, Lcom/google/android/apps/books/sync/TableSynchronizer;

    new-instance v2, Lcom/google/android/apps/books/sync/VolumesSynchronizable;

    invoke-direct {v2, p1}, Lcom/google/android/apps/books/sync/VolumesSynchronizable;-><init>(Landroid/content/ContentResolver;)V

    invoke-direct {v1, v2}, Lcom/google/android/apps/books/sync/TableSynchronizer;-><init>(Lcom/google/android/apps/books/sync/Synchronizable;)V

    iput-object v1, p0, Lcom/google/android/apps/books/sync/VolumeOverviewFetcher;->mVolumesSynchronizer:Lcom/google/android/apps/books/sync/TableSynchronizer;

    .line 58
    return-void
.end method

.method public static prepareServerValuesForSyncher(Landroid/accounts/Account;JLjava/util/List;)V
    .locals 8
    .parameter "account"
    .parameter "collectionId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "J",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p3, valuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 111
    .local v3, millis:J
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local p3           #valuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 113
    .local v5, values:Landroid/content/ContentValues;
    const-string p3, "buy_url"

    invoke-virtual {v5, p3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 115
    const-string p3, "buy_url"

    invoke-virtual {v5, p3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 121
    :cond_0
    const-string p3, "viewability"

    invoke-virtual {v5, p3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    .line 122
    .local v1, hasViewability:Z
    const-string p3, "open_access"

    invoke-virtual {v5, p3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 123
    .local v0, hasOpenAccess:Z
    const-string p3, "buy_url"

    invoke-virtual {v5, p3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p3

    .line 124
    .local p3, hasBuyUrl:Z
    if-ne v1, v0, :cond_1

    if-eq v1, p3, :cond_2

    .line 125
    :cond_1
    const-string p3, "VolumeOverviewFetcher"

    .end local p3           #hasBuyUrl:Z
    const-string v0, ""

    .end local v0           #hasOpenAccess:Z
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .end local v1           #hasViewability:Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Incomplete access information in : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p3, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    :cond_2
    const-string p3, "account_name"

    iget-object v0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string p3, "collection_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 133
    const-string p3, "timestamp"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 134
    const-string p3, "account_name"

    iget-object v0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string p3, "dirty"

    invoke-virtual {v5, p3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 136
    const-string p3, "last_action"

    invoke-virtual {v5, p3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 138
    .end local v5           #values:Landroid/content/ContentValues;
    :cond_3
    return-void
.end method


# virtual methods
.method public fetch(Landroid/net/Uri;Landroid/accounts/Account;)V
    .locals 7
    .parameter "uri"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, volumeId:Ljava/lang/String;
    const-string v4, "VolumeOverviewFetcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fetching vid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static {v3}, Lcom/google/android/apps/books/util/OceanUris;->getVolumesUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 69
    .local v0, externalUri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/google/android/apps/books/sync/VolumeOverviewFetcher;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [I

    invoke-virtual {v4, v5, p2, v6}, Lcom/google/android/apps/books/net/ResponseGetter;->get(Ljava/lang/String;Landroid/accounts/Account;[I)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 70
    .local v1, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/books/sync/VolumeOverviewFetcher;->mVolumesContentHandler:Lcom/google/android/apps/books/net/VolumesContentHandler;

    invoke-virtual {v5}, Lcom/google/android/apps/books/net/VolumesContentHandler;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/apps/books/net/HttpUtils;->parseXml(Lorg/apache/http/HttpEntity;Lorg/xml/sax/ContentHandler;)V

    .line 71
    iget-object v4, p0, Lcom/google/android/apps/books/sync/VolumeOverviewFetcher;->mVolumesContentHandler:Lcom/google/android/apps/books/net/VolumesContentHandler;

    invoke-virtual {v4}, Lcom/google/android/apps/books/net/VolumesContentHandler;->getContent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 73
    .local v2, valuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const-wide/16 v4, 0x7

    invoke-static {p2, v4, v5, v2}, Lcom/google/android/apps/books/sync/VolumeOverviewFetcher;->prepareServerValuesForSyncher(Landroid/accounts/Account;JLjava/util/List;)V

    .line 77
    iget-object v4, p0, Lcom/google/android/apps/books/sync/VolumeOverviewFetcher;->mVolumesSynchronizer:Lcom/google/android/apps/books/sync/TableSynchronizer;

    invoke-virtual {v4, v2}, Lcom/google/android/apps/books/sync/TableSynchronizer;->syncRows(Ljava/lang/Iterable;)Ljava/util/Collection;

    .line 78
    return-void
.end method

.method public isAlreadyFetched(Landroid/net/Uri;)Z
    .locals 9
    .parameter "uri"

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 82
    iget-object v0, p0, Lcom/google/android/apps/books/sync/VolumeOverviewFetcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/android/apps/books/sync/VolumeOverviewFetcher;->PROJECTION:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 84
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 86
    .local v7, volumeCount:I
    if-lez v7, :cond_1

    const/4 v0, 0x1

    .line 91
    :goto_0
    if-eqz v6, :cond_0

    .line 92
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return v0

    :cond_1
    move v0, v8

    .line 86
    goto :goto_0

    .line 88
    .end local v7           #volumeCount:I
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to count rows with uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 92
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

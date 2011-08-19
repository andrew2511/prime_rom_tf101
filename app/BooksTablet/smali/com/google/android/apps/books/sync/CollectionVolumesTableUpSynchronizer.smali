.class public Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;
.super Ljava/lang/Object;
.source "CollectionVolumesTableUpSynchronizer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CollVolTableUpSync"


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mCollectionId:J

.field private final mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

.field private final mSynchronizable:Lcom/google/android/apps/books/sync/CollectionVolumesServerSynchronizable;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/sync/CollectionVolumesServerSynchronizable;Lcom/google/android/apps/books/net/ResponseGetter;Landroid/accounts/Account;J)V
    .locals 1
    .parameter "synchronizable"
    .parameter "responseGetter"
    .parameter "account"
    .parameter "collectionId"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-wide p4, p0, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;->mCollectionId:J

    .line 56
    const-string v0, "missing synchronizable"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/sync/CollectionVolumesServerSynchronizable;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;->mSynchronizable:Lcom/google/android/apps/books/sync/CollectionVolumesServerSynchronizable;

    .line 57
    const-string v0, "missing responseGetter"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/net/ResponseGetter;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    .line 58
    const-string v0, "missing account"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;->mAccount:Landroid/accounts/Account;

    .line 59
    return-void
.end method

.method private getUpsyncPost(Landroid/net/Uri;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;
    .locals 3
    .parameter "uri"
    .parameter "volumeId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-static {}, Lcom/google/android/apps/books/util/OceanXmlBuilder;->newInstance()Lcom/google/android/apps/books/util/OceanXmlBuilder;

    move-result-object v0

    .line 142
    .local v0, builder:Lcom/google/android/apps/books/util/OceanXmlBuilder;
    invoke-virtual {v0, p2}, Lcom/google/android/apps/books/util/OceanXmlBuilder;->startVolumeEntry(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0}, Lcom/google/android/apps/books/util/OceanXmlBuilder;->endEntry()V

    .line 144
    iget-object v1, p0, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;->mAccount:Landroid/accounts/Account;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/books/util/OceanXmlBuilder;->buildPost(Landroid/accounts/Account;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v1

    return-object v1
.end method

.method private queryForUpsyncValues()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v3, p0, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;->mSynchronizable:Lcom/google/android/apps/books/sync/CollectionVolumesServerSynchronizable;

    invoke-virtual {v3}, Lcom/google/android/apps/books/sync/CollectionVolumesServerSynchronizable;->queryAllForUpsync()Landroid/database/Cursor;

    move-result-object v0

    .line 128
    .local v0, allCursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-static {v3}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 129
    .local v2, valuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 130
    iget-object v3, p0, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;->mSynchronizable:Lcom/google/android/apps/books/sync/CollectionVolumesServerSynchronizable;

    invoke-virtual {v3}, Lcom/google/android/apps/books/sync/CollectionVolumesServerSynchronizable;->getWritableColumnToClass()Ljava/util/Map;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/apps/books/sync/SyncUtil;->cursorToValues(Landroid/database/Cursor;Ljava/util/Map;)Landroid/content/ContentValues;

    move-result-object v1

    .line 132
    .local v1, values:Landroid/content/ContentValues;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 136
    .end local v1           #values:Landroid/content/ContentValues;
    .end local v2           #valuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3

    .restart local v2       #valuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2
.end method

.method private upsync(Landroid/content/ContentValues;)V
    .locals 5
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    const-string v2, "volume_id"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, volumeId:Ljava/lang/String;
    const-string v2, "Missing volumeId"

    invoke-static {v2, v1}, Lcom/google/android/apps/books/util/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    const-string v2, "dirty"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 73
    .local v0, dirty:Ljava/lang/Long;
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    invoke-direct {p0, v1, p1}, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;->upsyncAdd(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 80
    :goto_0
    return-void

    .line 75
    :cond_0
    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    invoke-direct {p0, v1, p1}, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;->upsyncDelete(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 78
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected dirty in content values "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private upsyncAdd(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 9
    .parameter "volumeId"
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v6, "CollVolTableUpSync"

    .line 110
    iget-wide v4, p0, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;->mCollectionId:J

    invoke-static {v4, v5}, Lcom/google/android/apps/books/util/OceanUris;->getCollectionVolumesUrl(J)Landroid/net/Uri;

    move-result-object v3

    .line 111
    .local v3, uri:Landroid/net/Uri;
    invoke-direct {p0, v3, p1}, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;->getUpsyncPost(Landroid/net/Uri;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    .line 114
    .local v0, post:Lorg/apache/http/client/methods/HttpPost;
    const-string v4, "CollVolTableUpSync"

    const/4 v4, 0x3

    invoke-static {v6, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 115
    const-string v4, "CollVolTableUpSync"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    iget-object v4, p0, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    iget-object v5, p0, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;->mAccount:Landroid/accounts/Account;

    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v8, 0xc9

    aput v8, v6, v7

    invoke-virtual {v4, v0, v5, v6}, Lcom/google/android/apps/books/net/ResponseGetter;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Landroid/accounts/Account;[I)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 119
    .local v1, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 120
    .local v2, respEntity:Lorg/apache/http/HttpEntity;
    if-eqz v2, :cond_1

    .line 121
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 123
    :cond_1
    return-void
.end method

.method private upsyncDelete(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 8
    .parameter "volumeId"
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v7, "CollVolTableUpSync"

    .line 83
    iget-wide v5, p0, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;->mCollectionId:J

    invoke-static {v5, v6, p1}, Lcom/google/android/apps/books/util/OceanUris;->getCollectionVolumeUrl(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 84
    .local v4, uri:Landroid/net/Uri;
    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, delete:Lorg/apache/http/client/methods/HttpDelete;
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpDelete;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;->mAccount:Landroid/accounts/Account;

    invoke-static {v5, v6}, Lcom/google/android/apps/books/app/BooksApplication$AccountParams;->setAccount(Lorg/apache/http/params/HttpParams;Landroid/accounts/Account;)V

    .line 87
    const-string v5, "CollVolTableUpSync"

    const/4 v5, 0x3

    invoke-static {v7, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 88
    const-string v5, "CollVolTableUpSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting volume at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    iget-object v5, p0, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    iget-object v6, p0, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;->mAccount:Landroid/accounts/Account;

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_0

    invoke-virtual {v5, v0, v6, v7}, Lcom/google/android/apps/books/net/ResponseGetter;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Landroid/accounts/Account;[I)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 92
    .local v1, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 95
    .local v2, respEntity:Lorg/apache/http/HttpEntity;
    :try_start_0
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 96
    .local v3, status:I
    const/16 v5, 0x194

    if-ne v3, v5, :cond_1

    .line 99
    const-string v5, "CollVolTableUpSync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No delete necessary: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_1
    iget-object v5, p0, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;->mSynchronizable:Lcom/google/android/apps/books/sync/CollectionVolumesServerSynchronizable;

    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/apps/books/sync/CollectionVolumesServerSynchronizable;->delete(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    if-eqz v2, :cond_2

    .line 104
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 107
    :cond_2
    return-void

    .line 103
    .end local v3           #status:I
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_3

    .line 104
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_3
    throw v5

    .line 90
    nop

    :array_0
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0x94t 0x1t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public upsync()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;->queryForUpsyncValues()Ljava/util/List;

    move-result-object v2

    .line 63
    .local v2, valuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 64
    .local v1, values:Landroid/content/ContentValues;
    invoke-direct {p0, v1}, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;->upsync(Landroid/content/ContentValues;)V

    goto :goto_0

    .line 66
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.class public Lcom/google/android/apps/books/sync/StatesTableUpSynchronizer;
.super Ljava/lang/Object;
.source "StatesTableUpSynchronizer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CollectionVolumesTableUpSynchronizer"


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mAppName:Ljava/lang/String;

.field private final mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

.field private final mSynchronizable:Lcom/google/android/apps/books/sync/StatesServerSynchronizable;

.field private final mTime:Landroid/text/format/Time;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/sync/StatesServerSynchronizable;Ljava/lang/String;Lcom/google/android/apps/books/net/ResponseGetter;Landroid/accounts/Account;)V
    .locals 2
    .parameter "synchronizable"
    .parameter "appName"
    .parameter "responseGetter"
    .parameter "account"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "missing synchronizable"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/sync/StatesServerSynchronizable;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/StatesTableUpSynchronizer;->mSynchronizable:Lcom/google/android/apps/books/sync/StatesServerSynchronizable;

    .line 50
    const-string v0, "missing appName"

    invoke-static {p2, v0}, Lcom/google/android/apps/books/util/BooksPreconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/sync/StatesTableUpSynchronizer;->mAppName:Ljava/lang/String;

    .line 51
    const-string v0, "missing account"

    invoke-static {p4, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/StatesTableUpSynchronizer;->mAccount:Landroid/accounts/Account;

    .line 53
    const-string v0, "missing responseGetter"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/net/ResponseGetter;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/StatesTableUpSynchronizer;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    .line 54
    invoke-static {}, Lcom/google/android/apps/books/util/OceanUris;->getMyVolumesUrl()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/sync/StatesTableUpSynchronizer;->mUri:Landroid/net/Uri;

    .line 55
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/books/sync/StatesTableUpSynchronizer;->mTime:Landroid/text/format/Time;

    .line 56
    return-void
.end method

.method private getUpsyncPost(Landroid/content/ContentValues;)Lorg/apache/http/client/methods/HttpPost;
    .locals 9
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    const-string v6, "volume_id"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 92
    .local v5, volumeId:Ljava/lang/String;
    const-string v6, "position"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, position:Ljava/lang/String;
    const-string v6, "last_access"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 94
    .local v0, accessMillis:Ljava/lang/Long;
    const-string v6, "last_action"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, action:Ljava/lang/String;
    const-string v6, "Missing volumeId"

    invoke-static {v6, v5}, Lcom/google/android/apps/books/util/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    const-string v6, "Missing position"

    invoke-static {v6, v3}, Lcom/google/android/apps/books/util/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    const-string v6, "Missing last access time"

    invoke-static {v6, v0}, Lcom/google/android/apps/books/util/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    const-string v6, "Missing action"

    invoke-static {v6, v1}, Lcom/google/android/apps/books/util/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    const-string v6, "Unknown"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 100
    const-string v1, "ScrollToPage"

    .line 103
    :cond_0
    iget-object v6, p0, Lcom/google/android/apps/books/sync/StatesTableUpSynchronizer;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 104
    iget-object v6, p0, Lcom/google/android/apps/books/sync/StatesTableUpSynchronizer;->mTime:Landroid/text/format/Time;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, time3339:Ljava/lang/String;
    const-string v6, "CollectionVolumesTableUpSynchronizer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Upsync position "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " and time "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {}, Lcom/google/android/apps/books/util/OceanXmlBuilder;->newInstance()Lcom/google/android/apps/books/util/OceanXmlBuilder;

    move-result-object v2

    .line 109
    .local v2, builder:Lcom/google/android/apps/books/util/OceanXmlBuilder;
    invoke-virtual {v2, v5}, Lcom/google/android/apps/books/util/OceanXmlBuilder;->startVolumeEntry(Ljava/lang/String;)V

    .line 110
    iget-object v6, p0, Lcom/google/android/apps/books/sync/StatesTableUpSynchronizer;->mAppName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v6, v1}, Lcom/google/android/apps/books/util/OceanXmlBuilder;->addReadingPosition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v2}, Lcom/google/android/apps/books/util/OceanXmlBuilder;->endEntry()V

    .line 113
    iget-object v6, p0, Lcom/google/android/apps/books/sync/StatesTableUpSynchronizer;->mAccount:Landroid/accounts/Account;

    iget-object v7, p0, Lcom/google/android/apps/books/sync/StatesTableUpSynchronizer;->mUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/google/android/apps/books/util/OceanXmlBuilder;->buildPost(Landroid/accounts/Account;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v6

    return-object v6
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
    .line 76
    iget-object v3, p0, Lcom/google/android/apps/books/sync/StatesTableUpSynchronizer;->mSynchronizable:Lcom/google/android/apps/books/sync/StatesServerSynchronizable;

    invoke-virtual {v3}, Lcom/google/android/apps/books/sync/StatesServerSynchronizable;->queryAllForUpsync()Landroid/database/Cursor;

    move-result-object v0

    .line 78
    .local v0, allCursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-static {v3}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 79
    .local v2, valuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    iget-object v3, p0, Lcom/google/android/apps/books/sync/StatesTableUpSynchronizer;->mSynchronizable:Lcom/google/android/apps/books/sync/StatesServerSynchronizable;

    invoke-virtual {v3}, Lcom/google/android/apps/books/sync/StatesServerSynchronizable;->getWritableColumnToClass()Ljava/util/Map;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/apps/books/sync/SyncUtil;->cursorToValues(Landroid/database/Cursor;Ljava/util/Map;)Landroid/content/ContentValues;

    move-result-object v1

    .line 82
    .local v1, values:Landroid/content/ContentValues;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 86
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
    .locals 8
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/sync/StatesTableUpSynchronizer;->getUpsyncPost(Landroid/content/ContentValues;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    .line 68
    .local v0, post:Lorg/apache/http/client/methods/HttpPost;
    iget-object v3, p0, Lcom/google/android/apps/books/sync/StatesTableUpSynchronizer;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    iget-object v4, p0, Lcom/google/android/apps/books/sync/StatesTableUpSynchronizer;->mAccount:Landroid/accounts/Account;

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0xc9

    aput v7, v5, v6

    invoke-virtual {v3, v0, v4, v5}, Lcom/google/android/apps/books/net/ResponseGetter;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Landroid/accounts/Account;[I)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 69
    .local v1, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 70
    .local v2, respEntity:Lorg/apache/http/HttpEntity;
    if-eqz v2, :cond_0

    .line 71
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 73
    :cond_0
    return-void
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
    .line 59
    invoke-direct {p0}, Lcom/google/android/apps/books/sync/StatesTableUpSynchronizer;->queryForUpsyncValues()Ljava/util/List;

    move-result-object v2

    .line 60
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

    .line 61
    .local v1, values:Landroid/content/ContentValues;
    invoke-direct {p0, v1}, Lcom/google/android/apps/books/sync/StatesTableUpSynchronizer;->upsync(Landroid/content/ContentValues;)V

    .line 62
    iget-object v3, p0, Lcom/google/android/apps/books/sync/StatesTableUpSynchronizer;->mSynchronizable:Lcom/google/android/apps/books/sync/StatesServerSynchronizable;

    invoke-virtual {v3, v1}, Lcom/google/android/apps/books/sync/StatesServerSynchronizable;->updateAfterUpsync(Landroid/content/ContentValues;)I

    goto :goto_0

    .line 64
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

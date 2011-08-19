.class public Lcom/google/android/syncadapters/GDataFeedFetcher;
.super Ljava/lang/Object;
.source "GDataFeedFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mAuthToken:Ljava/lang/String;

.field private volatile mAuthenticationFailed:Z

.field protected final mClient:Lcom/google/wireless/gdata2/client/GDataServiceClient;

.field private volatile mConnectionFailed:Z

.field private final mEntryClass:Ljava/lang/Class;

.field private final mEntryEndMarker:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/wireless/gdata2/data/Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntryQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/wireless/gdata2/data/Entry;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile mFeed:Lcom/google/wireless/gdata2/data/Feed;

.field protected final mFeedSyncState:Landroid/os/Bundle;

.field private final mFeedUrl:Ljava/lang/String;

.field private volatile mForcedClosed:Z

.field private final mLogTag:Ljava/lang/String;

.field private mMaxResults:I

.field private volatile mNumUnparsableEntries:I

.field private volatile mPartialSyncUnavailable:Z

.field private volatile mResourceUnavailable:Z

.field private volatile mResumptionFailed:Z

.field private volatile mRetryAfter:J

.field private volatile mThread:Ljava/lang/Thread;

.field private volatile mUnparsableFeed:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/wireless/gdata2/client/GDataServiceClient;Ljava/lang/Class;Ljava/util/concurrent/BlockingQueue;Landroid/util/Pair;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 3
    .parameter "logTag"
    .parameter "client"
    .parameter "entryClass"
    .parameter
    .parameter
    .parameter "url"
    .parameter "authToken"
    .parameter "feedSyncState"
    .parameter "maxResults"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/wireless/gdata2/client/GDataServiceClient;",
            "Ljava/lang/Class;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/wireless/gdata2/data/Entry;",
            ">;>;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/wireless/gdata2/data/Entry;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p4, entryQueue:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/wireless/gdata2/data/Entry;>;>;"
    .local p5, entryEndMarker:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/wireless/gdata2/data/Entry;>;"
    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    .line 67
    iput-object p4, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryQueue:Ljava/util/concurrent/BlockingQueue;

    .line 68
    iput-object p6, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeedUrl:Ljava/lang/String;

    .line 69
    iput-object p7, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mAuthToken:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mClient:Lcom/google/wireless/gdata2/client/GDataServiceClient;

    .line 71
    iput-object p5, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryEndMarker:Landroid/util/Pair;

    .line 72
    iput-object p3, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryClass:Ljava/lang/Class;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    .line 75
    iput-boolean v2, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mConnectionFailed:Z

    .line 76
    iput v2, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mNumUnparsableEntries:I

    .line 77
    iput-boolean v2, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mUnparsableFeed:Z

    .line 78
    iput-boolean v2, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mAuthenticationFailed:Z

    .line 79
    iput-boolean v2, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mResumptionFailed:Z

    .line 80
    iput-boolean v2, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mPartialSyncUnavailable:Z

    .line 81
    iput-object p8, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeedSyncState:Landroid/os/Bundle;

    .line 82
    iput-boolean v2, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mForcedClosed:Z

    .line 83
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mRetryAfter:J

    .line 84
    iput-boolean v2, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mResourceUnavailable:Z

    .line 86
    if-gtz p9, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxResults cannot be zero or negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    iput p9, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mMaxResults:I

    .line 90
    return-void
.end method

.method private fetchFeed()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getQueryParams()Lcom/google/wireless/gdata2/client/QueryParams;

    move-result-object v12

    .line 153
    .local v12, params:Lcom/google/wireless/gdata2/client/QueryParams;
    const/4 v7, 0x0

    .line 154
    .local v7, expectedFirstId:Ljava/lang/String;
    const/4 v15, 0x1

    .line 155
    .local v15, startIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeedSyncState:Landroid/os/Bundle;

    move-object/from16 v18, v0

    const-string v19, "lastFetchedIndex"

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeedSyncState:Landroid/os/Bundle;

    move-object/from16 v18, v0

    const-string v19, "lastFetchedId"

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeedSyncState:Landroid/os/Bundle;

    move-object/from16 v18, v0

    const-string v19, "lastFetchedIndex"

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 167
    invoke-virtual {v12, v15}, Lcom/google/wireless/gdata2/client/QueryParams;->setStartIndex(I)V

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "resuming download from index "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", id "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    const/16 v18, 0x1

    sub-int v17, v15, v18

    .line 174
    .local v17, totalResultsFetched:I
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeedUrl:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/client/QueryParams;->generateQueryUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 175
    .local v8, feedUrlToQuery:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Starting to make a new fetch request for feed url: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " with MaxResults: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mMaxResults:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_1
    const/4 v10, 0x0

    .line 182
    .local v10, lastEntryId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mClient:Lcom/google/wireless/gdata2/client/GDataServiceClient;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryClass:Ljava/lang/Class;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mAuthToken:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v8

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->getParserForFeed(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata2/parser/GDataParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/wireless/gdata2/client/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/google/wireless/gdata2/client/ResourceNotModifiedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/google/wireless/gdata2/client/ForbiddenException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/google/wireless/gdata2/client/ResourceGoneException; {:try_start_0 .. :try_end_0} :catch_7

    move-result-object v13

    .line 185
    .local v13, parser:Lcom/google/wireless/gdata2/parser/GDataParser;
    :try_start_1
    invoke-interface {v13}, Lcom/google/wireless/gdata2/parser/GDataParser;->parseFeedEnvelope()Lcom/google/wireless/gdata2/data/Feed;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/wireless/gdata2/data/Feed;->getTotalResults()I

    move-result v16

    .line 187
    .local v16, totalResults:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/wireless/gdata2/data/Feed;->getItemsPerPage()I

    move-result v9

    .line 188
    .local v9, itemsPerPage:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Got totalResults = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Got itemsPerPage = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_2
    const/4 v14, 0x0

    .line 193
    .local v14, resultsFetched:I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mForcedClosed:Z

    move/from16 v18, v0

    if-nez v18, :cond_10

    invoke-interface {v13}, Lcom/google/wireless/gdata2/parser/GDataParser;->hasMoreData()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v18

    if-eqz v18, :cond_10

    .line 195
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mForcedClosed:Z

    move/from16 v18, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v18, :cond_6

    .line 236
    :try_start_3
    invoke-interface {v13}, Lcom/google/wireless/gdata2/parser/GDataParser;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/google/wireless/gdata2/client/AuthenticationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/google/wireless/gdata2/client/ResourceNotModifiedException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lcom/google/wireless/gdata2/client/ForbiddenException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lcom/google/wireless/gdata2/client/ResourceGoneException; {:try_start_3 .. :try_end_3} :catch_7

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/wireless/gdata2/data/Feed;->getItemsPerPage()I

    move-result v18

    move/from16 v11, v18

    .line 294
    .local v11, numExpectedEntries:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "finished fetching "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " out of "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " entries, adding the end marker"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .end local v11           #numExpectedEntries:I
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mForcedClosed:Z

    move/from16 v18, v0

    if-nez v18, :cond_4

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryEndMarker:Landroid/util/Pair;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 301
    .end local v8           #feedUrlToQuery:Ljava/lang/String;
    .end local v9           #itemsPerPage:I
    .end local v10           #lastEntryId:Ljava/lang/String;
    .end local v13           #parser:Lcom/google/wireless/gdata2/parser/GDataParser;
    .end local v14           #resultsFetched:I
    .end local v16           #totalResults:I
    :cond_4
    :goto_3
    return-void

    .line 293
    .restart local v8       #feedUrlToQuery:Ljava/lang/String;
    .restart local v9       #itemsPerPage:I
    .restart local v10       #lastEntryId:Ljava/lang/String;
    .restart local v13       #parser:Lcom/google/wireless/gdata2/parser/GDataParser;
    .restart local v14       #resultsFetched:I
    .restart local v16       #totalResults:I
    :cond_5
    const/16 v18, 0x0

    move/from16 v11, v18

    goto :goto_2

    .line 198
    :cond_6
    add-int/lit8 v17, v17, 0x1

    .line 199
    add-int/lit8 v14, v14, 0x1

    .line 200
    const/16 v18, 0x0

    :try_start_4
    move-object v0, v13

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/google/wireless/gdata2/parser/GDataParser;->readNextEntry(Lcom/google/wireless/gdata2/data/Entry;)Lcom/google/wireless/gdata2/data/Entry;

    move-result-object v6

    .line 201
    .local v6, entry:Lcom/google/wireless/gdata2/data/Entry;
    if-eqz v7, :cond_b

    .line 202
    invoke-virtual {v6}, Lcom/google/wireless/gdata2/data/Entry;->getId()Ljava/lang/String;

    move-result-object v18

    move-object v0, v7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_9

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Expected the first id to be "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " but instead read "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", abandoning resumption of feed "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/syncadapters/GDataFeedFetcher;->mResumptionFailed:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_4 .. :try_end_4} :catch_0

    .line 236
    :try_start_5
    invoke-interface {v13}, Lcom/google/wireless/gdata2/parser/GDataParser;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/google/wireless/gdata2/client/AuthenticationException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lcom/google/wireless/gdata2/client/ResourceNotModifiedException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lcom/google/wireless/gdata2/client/ForbiddenException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Lcom/google/wireless/gdata2/client/ResourceGoneException; {:try_start_5 .. :try_end_5} :catch_7

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/wireless/gdata2/data/Feed;->getItemsPerPage()I

    move-result v18

    move/from16 v11, v18

    .line 294
    .restart local v11       #numExpectedEntries:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "finished fetching "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " out of "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " entries, adding the end marker"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .end local v11           #numExpectedEntries:I
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mForcedClosed:Z

    move/from16 v18, v0

    if-nez v18, :cond_4

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryEndMarker:Landroid/util/Pair;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 293
    :cond_8
    const/16 v18, 0x0

    move/from16 v11, v18

    goto :goto_4

    .line 209
    :cond_9
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "ExpectedFirstId is correct"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_a
    const/4 v7, 0x0

    .line 217
    :cond_b
    if-lt v14, v9, :cond_c

    move/from16 v0, v17

    move/from16 v1, v16

    if-ne v0, v1, :cond_e

    .line 219
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "enqueing entry "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Lcom/google/wireless/gdata2/data/Entry;->getId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 225
    :cond_e
    invoke-virtual {v6}, Lcom/google/wireless/gdata2/data/Entry;->getId()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v10

    goto/16 :goto_1

    .line 226
    .end local v6           #entry:Lcom/google/wireless/gdata2/data/Entry;
    :catch_0
    move-exception v18

    move-object/from16 v5, v18

    .line 228
    .local v5, e:Lcom/google/wireless/gdata2/parser/ParseException;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "parse error, ignoring entry"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mNumUnparsableEntries:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/syncadapters/GDataFeedFetcher;->mNumUnparsableEntries:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 236
    .end local v5           #e:Lcom/google/wireless/gdata2/parser/ParseException;
    .end local v9           #itemsPerPage:I
    .end local v14           #resultsFetched:I
    .end local v16           #totalResults:I
    :catchall_0
    move-exception v18

    :try_start_8
    invoke-interface {v13}, Lcom/google/wireless/gdata2/parser/GDataParser;->close()V

    throw v18
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lcom/google/wireless/gdata2/client/AuthenticationException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lcom/google/wireless/gdata2/client/ResourceNotModifiedException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Lcom/google/wireless/gdata2/client/ForbiddenException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Lcom/google/wireless/gdata2/client/ResourceGoneException; {:try_start_8 .. :try_end_8} :catch_7

    .line 254
    .end local v8           #feedUrlToQuery:Ljava/lang/String;
    .end local v10           #lastEntryId:Ljava/lang/String;
    .end local v13           #parser:Lcom/google/wireless/gdata2/parser/GDataParser;
    :catch_1
    move-exception v18

    move-object/from16 v5, v18

    .line 255
    .restart local v5       #e:Lcom/google/wireless/gdata2/parser/ParseException;
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "parse error, ignoring rest of feed"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/syncadapters/GDataFeedFetcher;->mUnparsableFeed:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    move-object/from16 v18, v0

    if-eqz v18, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/wireless/gdata2/data/Feed;->getItemsPerPage()I

    move-result v18

    move/from16 v11, v18

    .line 294
    .restart local v11       #numExpectedEntries:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "finished fetching "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " out of "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " entries, adding the end marker"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .end local v11           #numExpectedEntries:I
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mForcedClosed:Z

    move/from16 v18, v0

    if-nez v18, :cond_4

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryEndMarker:Landroid/util/Pair;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 232
    .end local v5           #e:Lcom/google/wireless/gdata2/parser/ParseException;
    .restart local v8       #feedUrlToQuery:Ljava/lang/String;
    .restart local v9       #itemsPerPage:I
    .restart local v10       #lastEntryId:Ljava/lang/String;
    .restart local v13       #parser:Lcom/google/wireless/gdata2/parser/GDataParser;
    .restart local v14       #resultsFetched:I
    .restart local v16       #totalResults:I
    :cond_10
    move/from16 v0, v17

    move/from16 v1, v16

    if-lt v0, v1, :cond_13

    .line 236
    :try_start_a
    invoke-interface {v13}, Lcom/google/wireless/gdata2/parser/GDataParser;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_a .. :try_end_a} :catch_3
    .catch Lcom/google/wireless/gdata2/client/AuthenticationException; {:try_start_a .. :try_end_a} :catch_4
    .catch Lcom/google/wireless/gdata2/client/ResourceNotModifiedException; {:try_start_a .. :try_end_a} :catch_5
    .catch Lcom/google/wireless/gdata2/client/ForbiddenException; {:try_start_a .. :try_end_a} :catch_6
    .catch Lcom/google/wireless/gdata2/client/ResourceGoneException; {:try_start_a .. :try_end_a} :catch_7

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    move-object/from16 v18, v0

    if-eqz v18, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/wireless/gdata2/data/Feed;->getItemsPerPage()I

    move-result v18

    move/from16 v11, v18

    .line 294
    .restart local v11       #numExpectedEntries:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "finished fetching "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " out of "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " entries, adding the end marker"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .end local v11           #numExpectedEntries:I
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mForcedClosed:Z

    move/from16 v18, v0

    if-nez v18, :cond_4

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryEndMarker:Landroid/util/Pair;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 293
    :cond_12
    const/16 v18, 0x0

    move/from16 v11, v18

    goto :goto_6

    .line 236
    :cond_13
    :try_start_b
    invoke-interface {v13}, Lcom/google/wireless/gdata2/parser/GDataParser;->close()V

    .line 240
    move-object v7, v10

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_14

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Updated expectedFirstId to: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_14
    move-object v0, v12

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/client/QueryParams;->setStartIndex(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Lcom/google/wireless/gdata2/client/HttpException; {:try_start_b .. :try_end_b} :catch_3
    .catch Lcom/google/wireless/gdata2/client/AuthenticationException; {:try_start_b .. :try_end_b} :catch_4
    .catch Lcom/google/wireless/gdata2/client/ResourceNotModifiedException; {:try_start_b .. :try_end_b} :catch_5
    .catch Lcom/google/wireless/gdata2/client/ForbiddenException; {:try_start_b .. :try_end_b} :catch_6
    .catch Lcom/google/wireless/gdata2/client/ResourceGoneException; {:try_start_b .. :try_end_b} :catch_7

    .line 252
    add-int/lit8 v17, v17, -0x1

    .line 253
    goto/16 :goto_0

    .line 293
    .end local v8           #feedUrlToQuery:Ljava/lang/String;
    .end local v9           #itemsPerPage:I
    .end local v10           #lastEntryId:Ljava/lang/String;
    .end local v13           #parser:Lcom/google/wireless/gdata2/parser/GDataParser;
    .end local v14           #resultsFetched:I
    .end local v16           #totalResults:I
    .restart local v5       #e:Lcom/google/wireless/gdata2/parser/ParseException;
    :cond_15
    const/16 v18, 0x0

    move/from16 v11, v18

    goto/16 :goto_5

    .line 257
    .end local v5           #e:Lcom/google/wireless/gdata2/parser/ParseException;
    :catch_2
    move-exception v18

    move-object/from16 v5, v18

    .line 258
    .local v5, e:Ljava/io/IOException;
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "IO error, ignoring rest of feed"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 259
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/syncadapters/GDataFeedFetcher;->mConnectionFailed:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_16

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    move-object/from16 v18, v0

    if-eqz v18, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/wireless/gdata2/data/Feed;->getItemsPerPage()I

    move-result v18

    move/from16 v11, v18

    .line 294
    .restart local v11       #numExpectedEntries:I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "finished fetching "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " out of "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " entries, adding the end marker"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .end local v11           #numExpectedEntries:I
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mForcedClosed:Z

    move/from16 v18, v0

    if-nez v18, :cond_4

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryEndMarker:Landroid/util/Pair;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 293
    :cond_17
    const/16 v18, 0x0

    move/from16 v11, v18

    goto :goto_7

    .line 260
    .end local v5           #e:Ljava/io/IOException;
    :catch_3
    move-exception v18

    move-object/from16 v5, v18

    .line 261
    .local v5, e:Lcom/google/wireless/gdata2/client/HttpException;
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "Http error, ignoring rest of feed"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    invoke-virtual {v5}, Lcom/google/wireless/gdata2/client/HttpException;->getStatusCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_0

    .line 274
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/syncadapters/GDataFeedFetcher;->mUnparsableFeed:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 292
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_18

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/wireless/gdata2/data/Feed;->getItemsPerPage()I

    move-result v18

    move/from16 v11, v18

    .line 294
    .restart local v11       #numExpectedEntries:I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "finished fetching "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " out of "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " entries, adding the end marker"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .end local v11           #numExpectedEntries:I
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mForcedClosed:Z

    move/from16 v18, v0

    if-nez v18, :cond_4

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryEndMarker:Landroid/util/Pair;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 264
    :sswitch_0
    const/16 v18, 0x1

    :try_start_e
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/syncadapters/GDataFeedFetcher;->mAuthenticationFailed:Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_8

    .line 292
    .end local v5           #e:Lcom/google/wireless/gdata2/client/HttpException;
    :catchall_1
    move-exception v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_19

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    move-object/from16 v19, v0

    if-eqz v19, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/wireless/gdata2/data/Feed;->getItemsPerPage()I

    move-result v19

    move/from16 v11, v19

    .line 294
    .restart local v11       #numExpectedEntries:I
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "finished fetching "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " out of "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " entries, adding the end marker"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .end local v11           #numExpectedEntries:I
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mForcedClosed:Z

    move/from16 v19, v0

    if-nez v19, :cond_1a

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryEndMarker:Landroid/util/Pair;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    :cond_1a
    throw v18

    .line 267
    .restart local v5       #e:Lcom/google/wireless/gdata2/client/HttpException;
    :sswitch_1
    const/16 v18, 0x1

    :try_start_f
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/syncadapters/GDataFeedFetcher;->mPartialSyncUnavailable:Z

    goto/16 :goto_8

    .line 270
    :sswitch_2
    invoke-virtual {v5}, Lcom/google/wireless/gdata2/client/HttpException;->getRetryAfter()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/syncadapters/GDataFeedFetcher;->mRetryAfter:J

    .line 271
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/syncadapters/GDataFeedFetcher;->mResourceUnavailable:Z

    goto/16 :goto_8

    .line 293
    :cond_1b
    const/16 v18, 0x0

    move/from16 v11, v18

    goto/16 :goto_9

    .line 277
    .end local v5           #e:Lcom/google/wireless/gdata2/client/HttpException;
    :catch_4
    move-exception v18

    move-object/from16 v5, v18

    .line 278
    .local v5, e:Lcom/google/wireless/gdata2/client/AuthenticationException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "Authentication error, ignoring rest of feed"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/syncadapters/GDataFeedFetcher;->mAuthenticationFailed:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_1c

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/wireless/gdata2/data/Feed;->getItemsPerPage()I

    move-result v18

    move/from16 v11, v18

    .line 294
    .restart local v11       #numExpectedEntries:I
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "finished fetching "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " out of "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " entries, adding the end marker"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .end local v11           #numExpectedEntries:I
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mForcedClosed:Z

    move/from16 v18, v0

    if-nez v18, :cond_4

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryEndMarker:Landroid/util/Pair;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 293
    :cond_1d
    const/16 v18, 0x0

    move/from16 v11, v18

    goto :goto_b

    .line 280
    .end local v5           #e:Lcom/google/wireless/gdata2/client/AuthenticationException;
    :catch_5
    move-exception v18

    move-object/from16 v5, v18

    .line 282
    .local v5, e:Lcom/google/wireless/gdata2/client/ResourceNotModifiedException;
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "ResourceNotModifiedException, ignoring rest of feed"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_1e

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/wireless/gdata2/data/Feed;->getItemsPerPage()I

    move-result v18

    move/from16 v11, v18

    .line 294
    .restart local v11       #numExpectedEntries:I
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "finished fetching "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " out of "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " entries, adding the end marker"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .end local v11           #numExpectedEntries:I
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mForcedClosed:Z

    move/from16 v18, v0

    if-nez v18, :cond_4

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryEndMarker:Landroid/util/Pair;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 293
    :cond_1f
    const/16 v18, 0x0

    move/from16 v11, v18

    goto :goto_c

    .line 283
    .end local v5           #e:Lcom/google/wireless/gdata2/client/ResourceNotModifiedException;
    :catch_6
    move-exception v18

    move-object/from16 v5, v18

    .line 285
    .local v5, e:Lcom/google/wireless/gdata2/client/ForbiddenException;
    const/16 v18, 0x1

    :try_start_11
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/syncadapters/GDataFeedFetcher;->mUnparsableFeed:Z

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "ForbiddenException, ignoring rest of feed"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_20

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    move-object/from16 v18, v0

    if-eqz v18, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/wireless/gdata2/data/Feed;->getItemsPerPage()I

    move-result v18

    move/from16 v11, v18

    .line 294
    .restart local v11       #numExpectedEntries:I
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "finished fetching "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " out of "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " entries, adding the end marker"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .end local v11           #numExpectedEntries:I
    :cond_20
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mForcedClosed:Z

    move/from16 v18, v0

    if-nez v18, :cond_4

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryEndMarker:Landroid/util/Pair;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 293
    :cond_21
    const/16 v18, 0x0

    move/from16 v11, v18

    goto :goto_d

    .line 287
    .end local v5           #e:Lcom/google/wireless/gdata2/client/ForbiddenException;
    :catch_7
    move-exception v18

    move-object/from16 v5, v18

    .line 288
    .local v5, e:Lcom/google/wireless/gdata2/client/ResourceGoneException;
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "ResourceGoneException, ignoring rest of feed"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 289
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/syncadapters/GDataFeedFetcher;->mPartialSyncUnavailable:Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_22

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    move-object/from16 v18, v0

    if-eqz v18, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/wireless/gdata2/data/Feed;->getItemsPerPage()I

    move-result v18

    move/from16 v11, v18

    .line 294
    .restart local v11       #numExpectedEntries:I
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "finished fetching "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " out of "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " entries, adding the end marker"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .end local v11           #numExpectedEntries:I
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mForcedClosed:Z

    move/from16 v18, v0

    if-nez v18, :cond_4

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryQueue:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mEntryEndMarker:Landroid/util/Pair;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 293
    :cond_23
    const/16 v18, 0x0

    move/from16 v11, v18

    goto :goto_e

    .end local v5           #e:Lcom/google/wireless/gdata2/client/ResourceGoneException;
    :cond_24
    const/16 v19, 0x0

    move/from16 v11, v19

    goto/16 :goto_a

    .line 262
    :sswitch_data_0
    .sparse-switch
        0x191 -> :sswitch_0
        0x19a -> :sswitch_1
        0x1f7 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mForcedClosed:Z

    .line 110
    iget-object v0, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 112
    :cond_0
    return-void
.end method

.method public getFeed()Lcom/google/wireless/gdata2/data/Feed;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeed:Lcom/google/wireless/gdata2/data/Feed;

    return-object v0
.end method

.method public getNumUnparsableEntries()I
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mNumUnparsableEntries:I

    return v0
.end method

.method protected getQueryParams()Lcom/google/wireless/gdata2/client/QueryParams;
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/syncadapters/GDataFeedFetcher;->getQueryParams(Z)Lcom/google/wireless/gdata2/client/QueryParams;

    move-result-object v0

    return-object v0
.end method

.method protected getQueryParams(Z)Lcom/google/wireless/gdata2/client/QueryParams;
    .locals 6
    .parameter "noIncremental"

    .prologue
    .line 125
    iget-object v3, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mClient:Lcom/google/wireless/gdata2/client/GDataServiceClient;

    invoke-virtual {v3}, Lcom/google/wireless/gdata2/client/GDataServiceClient;->createQueryParams()Lcom/google/wireless/gdata2/client/QueryParams;

    move-result-object v2

    .line 126
    .local v2, params:Lcom/google/wireless/gdata2/client/QueryParams;
    iget v3, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mMaxResults:I

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/client/QueryParams;->setMaxResults(I)V

    .line 129
    const-string v3, "orderby"

    const-string v4, "lastmodified"

    invoke-virtual {v2, v3, v4}, Lcom/google/wireless/gdata2/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v3, "sortorder"

    const-string v4, "ascending"

    invoke-virtual {v2, v3, v4}, Lcom/google/wireless/gdata2/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v3, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeedSyncState:Landroid/os/Bundle;

    const-string v4, "do_incremental_sync"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 134
    .local v0, doIncrementalSync:Z
    iget-object v3, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeedSyncState:Landroid/os/Bundle;

    const-string v4, "feed_updated_time"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, feedUpdatedTime:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 139
    iget-object v3, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "feedFetch, incremental "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", updatedMin "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",  feed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mFeedUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 144
    invoke-virtual {v2, v1}, Lcom/google/wireless/gdata2/client/QueryParams;->setUpdatedMin(Ljava/lang/String;)V

    .line 145
    const-string v3, "requirealldeleted"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Lcom/google/wireless/gdata2/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v3, "showdeleted"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Lcom/google/wireless/gdata2/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_1
    return-object v2
.end method

.method public getRetryAfter()J
    .locals 2

    .prologue
    .line 346
    iget-wide v0, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mRetryAfter:J

    return-wide v0
.end method

.method public isAuthenticationFailed()Z
    .locals 1

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mAuthenticationFailed:Z

    return v0
.end method

.method public isConnectionFailed()Z
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mConnectionFailed:Z

    return v0
.end method

.method public isPartialSyncUnavailable()Z
    .locals 1

    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mPartialSyncUnavailable:Z

    return v0
.end method

.method public isResourceUnavailable()Z
    .locals 1

    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mResourceUnavailable:Z

    return v0
.end method

.method public isUnparsableFeed()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mUnparsableFeed:Z

    return v0
.end method

.method public resumptionFailed()Z
    .locals 1

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mResumptionFailed:Z

    return v0
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    .line 93
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mThread:Ljava/lang/Thread;

    .line 94
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 96
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/syncadapters/GDataFeedFetcher;->fetchFeed()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    iget-boolean v0, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mForcedClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GDataFeedFetcher thread ended: mForcedClosed is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mForcedClosed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_1
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 101
    iget-boolean v0, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mForcedClosed:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GDataFeedFetcher thread ended: mForcedClosed is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mForcedClosed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    iget-boolean v1, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mForcedClosed:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 102
    :cond_3
    iget-object v1, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GDataFeedFetcher thread ended: mForcedClosed is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/syncadapters/GDataFeedFetcher;->mForcedClosed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    throw v0
.end method

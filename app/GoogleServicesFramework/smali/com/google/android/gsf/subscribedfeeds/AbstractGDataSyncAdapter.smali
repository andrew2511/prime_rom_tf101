.class public abstract Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;
.super Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;
.source "AbstractGDataSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$1;,
        Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;,
        Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;
    }
.end annotation


# static fields
.field private static final SYNC_STATE_CONTENT_URI:Landroid/net/Uri;


# instance fields
.field protected mAccount:Landroid/accounts/Account;

.field protected mAuthToken:Ljava/lang/String;

.field protected mServerEntries:I

.field protected mServerQueries:I

.field protected volatile mSyncCanceled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 481
    const-string v0, "content://syncstate/state"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->SYNC_STATE_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V
    .locals 1
    .parameter "context"
    .parameter "provider"

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;-><init>(Landroid/content/Context;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V

    .line 68
    iput-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    .line 69
    iput-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mSyncCanceled:Z

    .line 90
    return-void
.end method

.method private getSingleEntry(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/wireless/gdata/data/Entry;
    .locals 4
    .parameter "entryClass"
    .parameter "url"

    .prologue
    .line 1206
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    invoke-virtual {v1, p1, p2, v2}, Lcom/google/wireless/gdata/client/GDataServiceClient;->getEntry(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata/data/Entry;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1209
    :goto_0
    return-object v1

    .line 1207
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1208
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Sync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error while fetching "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1209
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static newBytesFromGDataSyncData(Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;)[B
    .locals 2
    .parameter "syncData"

    .prologue
    .line 562
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 564
    .local v0, parcel:Landroid/os/Parcel;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 565
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 567
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 565
    return-object v1

    .line 567
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public static newGDataSyncDataFromBytes([B)Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;
    .locals 3
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 540
    if-eqz p0, :cond_0

    .line 541
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 542
    .local v0, parcel:Landroid/os/Parcel;
    array-length v1, p0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 543
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 545
    :try_start_0
    sget-object v1, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    move-object v1, p0

    .line 553
    .end local v0           #parcel:Landroid/os/Parcel;
    :goto_0
    return-object v1

    .line 550
    .restart local v0       #parcel:Landroid/os/Parcel;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1

    .line 546
    :catch_0
    move-exception v1

    .line 550
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 553
    .end local v0           #parcel:Landroid/os/Parcel;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract cursorToEntry(Landroid/database/Cursor;Lcom/google/wireless/gdata/data/Entry;Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation
.end method

.method protected abstract deletedCursorToEntry(Landroid/database/Cursor;Lcom/google/wireless/gdata/data/Entry;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation
.end method

.method protected getAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method protected getAccountAllowsSyncing(Landroid/accounts/Account;)Z
    .locals 1
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method protected getAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getCursorForDeletedTable(Landroid/content/ContentProvider;Ljava/lang/Class;)Landroid/database/Cursor;
.end method

.method protected abstract getCursorForTable(Landroid/content/ContentProvider;Ljava/lang/Class;)Landroid/database/Cursor;
.end method

.method protected getFeedData(Ljava/lang/String;Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;)Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    .locals 6
    .parameter "feedUrl"
    .parameter "baseSyncData"

    .prologue
    .line 847
    move-object v0, p2

    check-cast v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;

    move-object v3, v0

    .line 848
    .local v3, syncData:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;
    iget-object v4, v3, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;->feedData:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;

    .line 850
    .local v1, feedSyncData:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    if-nez v1, :cond_0

    .line 851
    const-string v4, "^https://"

    const-string v5, "http://"

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 852
    .local v2, httpFeedUrl:Ljava/lang/String;
    iget-object v4, v3, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;->feedData:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #feedSyncData:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    check-cast v1, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;

    .line 854
    .end local v2           #httpFeedUrl:Ljava/lang/String;
    .restart local v1       #feedSyncData:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    :cond_0
    return-object v1
.end method

.method protected abstract getFeedEntryClass()Ljava/lang/Class;
.end method

.method protected abstract getFeedUrl(Landroid/accounts/Account;)Ljava/lang/String;
.end method

.method protected abstract getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;
.end method

.method public getIsSyncable(Landroid/accounts/Account;)Z
    .locals 1
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;,
            Landroid/accounts/OperationCanceledException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getAccountAllowsSyncing(Landroid/accounts/Account;)Z

    move-result v0

    return v0
.end method

.method public getMaxEntriesPerSync()I
    .locals 1

    .prologue
    .line 478
    const/16 v0, 0xc8

    return v0
.end method

.method public getServerDiffs(Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/SyncResult;)V
    .locals 9
    .parameter "syncData"
    .parameter "tempProvider"
    .parameter "extras"
    .parameter "syncInfo"
    .parameter "syncResult"

    .prologue
    .line 581
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getFeedUrl(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v4

    .line 582
    .local v4, feedUrl:Ljava/lang/String;
    if-eqz p3, :cond_0

    const-string v1, "feed"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 583
    const-string v1, "feed"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #feedUrl:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 585
    .restart local v4       #feedUrl:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getFeedEntryClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getMaxEntriesPerSync()I

    move-result v6

    move-object v0, p1

    check-cast v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;

    move-object v7, v0

    move-object v1, p0

    move-object v2, p2

    move-object v5, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getServerDiffsImpl(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;ILcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;Landroid/content/SyncResult;)V

    .line 587
    return-void
.end method

.method protected getServerDiffsImpl(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;ILcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;Landroid/content/SyncResult;)V
    .locals 43
    .parameter "tempProvider"
    .parameter "feedEntryClass"
    .parameter "feedUrl"
    .parameter "syncInfo"
    .parameter "maxResults"
    .parameter "syncData"
    .parameter "syncResult"

    .prologue
    .line 604
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mSyncCanceled:Z

    move v4, v0

    if-eqz v4, :cond_1

    .line 838
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getFeedData(Ljava/lang/String;Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;)Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;

    move-result-object v10

    .line 608
    .local v10, feedSyncData:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    const-wide/16 v32, 0x0

    .line 609
    .local v32, lastSyncTime:J
    if-eqz v10, :cond_2

    .line 610
    move-object v0, v10

    iget-wide v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->lastUpdatedTime:J

    move-wide/from16 v32, v0

    .line 614
    :cond_2
    new-instance v39, Landroid/text/format/Time;

    const-string v4, "UTC"

    move-object/from16 v0, v39

    move-object v1, v4

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 616
    .local v39, time:Landroid/text/format/Time;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;

    move-result-object v19

    .line 618
    .local v19, client:Lcom/google/wireless/gdata/client/GDataServiceClient;
    invoke-virtual/range {v19 .. v19}, Lcom/google/wireless/gdata/client/GDataServiceClient;->createQueryParams()Lcom/google/wireless/gdata/client/QueryParams;

    move-result-object v35

    .line 619
    .local v35, params:Lcom/google/wireless/gdata/client/QueryParams;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->getContainsDiffs()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 620
    const-wide/16 v8, 0x0

    cmp-long v4, v32, v8

    if-lez v4, :cond_3

    .line 621
    move-object/from16 v0, v39

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 622
    const/4 v4, 0x0

    move-object/from16 v0, v39

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v35

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/client/QueryParams;->setUpdatedMin(Ljava/lang/String;)V

    .line 623
    const-string v4, "requirealldeleted"

    const-string v5, "true"

    move-object/from16 v0, v35

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/google/wireless/gdata/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    :cond_3
    const/16 v38, 0x1

    .line 628
    .local v38, startIndex:I
    const/16 v26, 0x0

    .line 629
    .local v26, expectedFirstId:Ljava/lang/String;
    if-eqz v10, :cond_5

    iget-boolean v4, v10, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->hasMoreEntriesToFetch:Z

    if-eqz v4, :cond_5

    .line 639
    move-object v0, v10

    iget v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->endIndex:I

    move/from16 v38, v0

    .line 640
    if-gtz v38, :cond_4

    .line 641
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bad startIndex, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", it must be greater than 0, SyncData is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 646
    :cond_4
    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v35

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/client/QueryParams;->setStartIndex(Ljava/lang/String;)V

    .line 647
    add-int/lit8 p5, p5, 0x1

    .line 648
    move-object v0, v10

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->lastId:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 651
    :cond_5
    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v35

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/client/QueryParams;->setMaxResults(Ljava/lang/String;)V

    .line 653
    const/16 v17, 0x0

    .line 654
    .local v17, lastId:Ljava/lang/String;
    const/16 v34, 0x0

    .line 655
    .local v34, numResults:I
    const/16 v36, 0x0

    .line 656
    .local v36, parser:Lcom/google/wireless/gdata/parser/GDataParser;
    const/16 v30, 0x0

    .line 658
    .local v30, feedUrlToQuery:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->updateQueryParameters(Lcom/google/wireless/gdata/client/QueryParams;Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;)V

    .line 659
    move-object/from16 v0, v35

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/client/QueryParams;->generateQueryUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v30

    .line 662
    :try_start_1
    new-instance v4, Ljava/net/URI;

    move-object v0, v4

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_1 .. :try_end_1} :catch_4

    .line 668
    :try_start_2
    const-string v4, "Sync"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 669
    const-string v4, "Sync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requesting feed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getAuthToken()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, v30

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/wireless/gdata/client/GDataServiceClient;->getParserForFeed(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata/parser/GDataParser;

    move-result-object v36

    .line 672
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mServerQueries:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mServerQueries:I

    .line 673
    invoke-interface/range {v36 .. v36}, Lcom/google/wireless/gdata/parser/GDataParser;->init()Lcom/google/wireless/gdata/data/Feed;

    move-result-object v5

    .line 674
    .local v5, feed:Lcom/google/wireless/gdata/data/Feed;
    invoke-virtual {v5}, Lcom/google/wireless/gdata/data/Feed;->getLastUpdated()Ljava/lang/String;

    move-result-object v27

    .line 676
    .local v27, feedUpdateDate:Ljava/lang/String;
    const/4 v7, 0x0

    .line 677
    .local v7, entry:Lcom/google/wireless/gdata/data/Entry;
    move-wide/from16 v24, v32

    .line 678
    .local v24, entryLastUpdated:J
    :goto_1
    invoke-interface/range {v36 .. v36}, Lcom/google/wireless/gdata/parser/GDataParser;->hasMoreData()Z

    move-result v4

    if-eqz v4, :cond_e

    move/from16 v0, v34

    move/from16 v1, p5

    if-ge v0, v1, :cond_e

    .line 679
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mSyncCanceled:Z

    move v4, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_2 .. :try_end_2} :catch_4

    if-eqz v4, :cond_7

    .line 836
    if-eqz v36, :cond_0

    .end local v5           #feed:Lcom/google/wireless/gdata/data/Feed;
    .end local v7           #entry:Lcom/google/wireless/gdata/data/Entry;
    .end local v10           #feedSyncData:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    .end local v24           #entryLastUpdated:J
    .end local v27           #feedUpdateDate:Ljava/lang/String;
    :goto_2
    invoke-interface/range {v36 .. v36}, Lcom/google/wireless/gdata/parser/GDataParser;->close()V

    goto/16 :goto_0

    .line 663
    .restart local v10       #feedSyncData:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    :catch_0
    move-exception v4

    move-object/from16 v23, v4

    .line 664
    .local v23, e:Ljava/net/URISyntaxException;
    :try_start_3
    const-string v4, "Sync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "the feed url "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not a valid URI"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 665
    move-object/from16 v0, p7

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v8, v4, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v4, Landroid/content/SyncStats;->numParseExceptions:J

    .line 836
    .end local v10           #feedSyncData:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    if-eqz v36, :cond_0

    goto :goto_2

    .line 680
    .end local v23           #e:Ljava/net/URISyntaxException;
    .restart local v5       #feed:Lcom/google/wireless/gdata/data/Feed;
    .restart local v7       #entry:Lcom/google/wireless/gdata/data/Entry;
    .restart local v10       #feedSyncData:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    .restart local v24       #entryLastUpdated:J
    .restart local v27       #feedUpdateDate:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mServerEntries:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mServerEntries:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_3 .. :try_end_3} :catch_4

    .line 681
    add-int/lit8 v34, v34, 0x1

    .line 683
    :try_start_4
    move-object/from16 v0, v36

    move-object v1, v7

    invoke-interface {v0, v1}, Lcom/google/wireless/gdata/parser/GDataParser;->readNextEntry(Lcom/google/wireless/gdata/data/Entry;)Lcom/google/wireless/gdata/data/Entry;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v7

    .line 690
    :try_start_5
    const-string v4, "Sync"

    const/4 v6, 0x2

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 691
    const-string v4, "Sync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Read entry: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v7}, Lcom/google/wireless/gdata/data/Entry;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :cond_8
    invoke-virtual {v7}, Lcom/google/wireless/gdata/data/Entry;->getId()Ljava/lang/String;

    move-result-object v17

    .line 697
    const/4 v4, 0x1

    move/from16 v0, v34

    move v1, v4

    if-ne v0, v1, :cond_9

    if-eqz v26, :cond_9

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 701
    const-string v4, "Sync"

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #feed:Lcom/google/wireless/gdata/data/Feed;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "aborting paging since the first record is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " instead of the expected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    const/4 v4, 0x0

    iput-boolean v4, v10, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->hasMoreEntriesToFetch:Z

    .line 706
    invoke-virtual/range {p0 .. p7}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getServerDiffsImpl(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;ILcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;Landroid/content/SyncResult;)V

    .line 836
    if-eqz v36, :cond_0

    goto/16 :goto_2

    .line 684
    .restart local v5       #feed:Lcom/google/wireless/gdata/data/Feed;
    :catch_1
    move-exception v23

    .line 685
    .local v23, e:Lcom/google/wireless/gdata/parser/ParseException;
    move-object/from16 v0, p7

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v8, v4, Landroid/content/SyncStats;->numSkippedEntries:J

    const-wide/16 v11, 0x1

    add-long/2addr v8, v11

    iput-wide v8, v4, Landroid/content/SyncStats;->numSkippedEntries:J

    .line 686
    const-string v4, "Sync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error while parsing entry from account "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getAccount()Landroid/accounts/Account;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", feed "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", skipping"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v4

    move-object v1, v6

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_1

    .line 798
    .end local v5           #feed:Lcom/google/wireless/gdata/data/Feed;
    .end local v7           #entry:Lcom/google/wireless/gdata/data/Entry;
    .end local v10           #feedSyncData:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    .end local v23           #e:Lcom/google/wireless/gdata/parser/ParseException;
    .end local v24           #entryLastUpdated:J
    .end local v27           #feedUpdateDate:Ljava/lang/String;
    :catch_2
    move-exception v4

    move-object/from16 v37, v4

    .line 799
    .local v37, pe:Lcom/google/wireless/gdata/parser/ParseException;
    :try_start_6
    const-string v4, "Sync"

    const-string v5, "Unable to process gdata feed"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 800
    move-object/from16 v0, p7

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v8, v4, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v4, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 836
    if-eqz v36, :cond_0

    goto/16 :goto_2

    .line 711
    .end local v37           #pe:Lcom/google/wireless/gdata/parser/ParseException;
    .restart local v5       #feed:Lcom/google/wireless/gdata/data/Feed;
    .restart local v7       #entry:Lcom/google/wireless/gdata/data/Entry;
    .restart local v10       #feedSyncData:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    .restart local v24       #entryLastUpdated:J
    .restart local v27       #feedUpdateDate:Ljava/lang/String;
    :cond_9
    :try_start_7
    const-string v4, "Sync"

    const/4 v6, 0x2

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 712
    const-string v4, "Sync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getServerDiffs: updating provider with entry "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v7}, Lcom/google/wireless/gdata/data/Entry;->getEditUri()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v22

    .line 717
    .local v22, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual/range {v22 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 718
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "we should not be in a transaction"

    .end local v5           #feed:Lcom/google/wireless/gdata/data/Feed;
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_7 .. :try_end_7} :catch_4

    .line 801
    .end local v7           #entry:Lcom/google/wireless/gdata/data/Entry;
    .end local v10           #feedSyncData:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    .end local v22           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v24           #entryLastUpdated:J
    .end local v27           #feedUpdateDate:Ljava/lang/String;
    :catch_3
    move-exception v4

    move-object/from16 v31, v4

    .line 802
    .local v31, ioe:Ljava/io/IOException;
    :try_start_8
    const-string v4, "Sync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to process gdata feed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v31 .. v31}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    move-object/from16 v0, p7

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v8, v4, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v4, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 836
    if-eqz v36, :cond_0

    goto/16 :goto_2

    .line 720
    .end local v31           #ioe:Ljava/io/IOException;
    .restart local v5       #feed:Lcom/google/wireless/gdata/data/Feed;
    .restart local v7       #entry:Lcom/google/wireless/gdata/data/Entry;
    .restart local v10       #feedSyncData:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    .restart local v22       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v24       #entryLastUpdated:J
    .restart local v27       #feedUpdateDate:Ljava/lang/String;
    :cond_b
    :try_start_9
    invoke-virtual/range {v22 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_9 .. :try_end_9} :catch_4

    .line 722
    const/4 v6, 0x0

    move-object/from16 v4, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    :try_start_a
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->updateProvider(Lcom/google/wireless/gdata/data/Feed;Ljava/lang/Long;Lcom/google/wireless/gdata/data/Entry;Landroid/content/ContentProvider;Ljava/lang/Object;Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;)V

    .line 725
    move-object/from16 v0, p7

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v8, v4, Landroid/content/SyncStats;->numEntries:J

    const-wide/16 v11, 0x1

    add-long/2addr v8, v11

    iput-wide v8, v4, Landroid/content/SyncStats;->numEntries:J

    .line 727
    invoke-virtual {v7}, Lcom/google/wireless/gdata/data/Entry;->getUpdateDate()Ljava/lang/String;

    move-result-object v40

    .line 728
    .local v40, updateDate:Ljava/lang/String;
    if-eqz v40, :cond_c

    .line 729
    invoke-virtual/range {v39 .. v40}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    .line 730
    const/4 v4, 0x0

    move-object/from16 v0, v39

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v41

    .line 731
    .local v41, updated:J
    cmp-long v4, v41, v24

    if-lez v4, :cond_c

    .line 732
    move-wide/from16 v24, v41

    .line 735
    .end local v41           #updated:J
    :cond_c
    invoke-virtual/range {v22 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_6

    .line 743
    :try_start_b
    invoke-virtual/range {v22 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_1

    .line 804
    .end local v5           #feed:Lcom/google/wireless/gdata/data/Feed;
    .end local v7           #entry:Lcom/google/wireless/gdata/data/Entry;
    .end local v10           #feedSyncData:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    .end local v22           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v24           #entryLastUpdated:J
    .end local v27           #feedUpdateDate:Ljava/lang/String;
    .end local v40           #updateDate:Ljava/lang/String;
    :catch_4
    move-exception v4

    move-object/from16 v23, v4

    .line 805
    .local v23, e:Lcom/google/wireless/gdata/client/HttpException;
    :try_start_c
    invoke-virtual/range {v23 .. v23}, Lcom/google/wireless/gdata/client/HttpException;->getStatusCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 831
    const-string v4, "Sync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to process gdata feed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Lcom/google/wireless/gdata/client/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    move-object/from16 v0, p7

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v8, v4, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v4, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 836
    :goto_3
    if-eqz v36, :cond_0

    goto/16 :goto_2

    .line 736
    .end local v23           #e:Lcom/google/wireless/gdata/client/HttpException;
    .restart local v5       #feed:Lcom/google/wireless/gdata/data/Feed;
    .restart local v7       #entry:Lcom/google/wireless/gdata/data/Entry;
    .restart local v10       #feedSyncData:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    .restart local v22       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v24       #entryLastUpdated:J
    .restart local v27       #feedUpdateDate:Ljava/lang/String;
    :catch_5
    move-exception v4

    move-object/from16 v23, v4

    .line 737
    .local v23, e:Lcom/google/wireless/gdata/parser/ParseException;
    :try_start_d
    const-string v4, "Sync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateProvider failed, "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v7}, Lcom/google/wireless/gdata/data/Entry;->getEditUri()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v4

    move-object v1, v6

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 738
    move-object/from16 v0, p7

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v8, v4, Landroid/content/SyncStats;->numSkippedEntries:J

    const-wide/16 v11, 0x1

    add-long/2addr v8, v11

    iput-wide v8, v4, Landroid/content/SyncStats;->numSkippedEntries:J
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 743
    :try_start_e
    invoke-virtual/range {v22 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_e .. :try_end_e} :catch_4

    goto/16 :goto_1

    .line 836
    .end local v5           #feed:Lcom/google/wireless/gdata/data/Feed;
    .end local v7           #entry:Lcom/google/wireless/gdata/data/Entry;
    .end local v10           #feedSyncData:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    .end local v22           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v23           #e:Lcom/google/wireless/gdata/parser/ParseException;
    .end local v24           #entryLastUpdated:J
    .end local v27           #feedUpdateDate:Ljava/lang/String;
    :catchall_0
    move-exception v4

    if-eqz v36, :cond_d

    invoke-interface/range {v36 .. v36}, Lcom/google/wireless/gdata/parser/GDataParser;->close()V

    :cond_d
    throw v4

    .line 739
    .restart local v5       #feed:Lcom/google/wireless/gdata/data/Feed;
    .restart local v7       #entry:Lcom/google/wireless/gdata/data/Entry;
    .restart local v10       #feedSyncData:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    .restart local v22       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v24       #entryLastUpdated:J
    .restart local v27       #feedUpdateDate:Ljava/lang/String;
    :catch_6
    move-exception v4

    move-object/from16 v23, v4

    .line 740
    .local v23, e:Ljava/lang/RuntimeException;
    :try_start_f
    const-string v4, "Sync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateProvider failed,  "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v7}, Lcom/google/wireless/gdata/data/Entry;->getEditUri()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v4

    move-object v1, v6

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 741
    move-object/from16 v0, p7

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v8, v4, Landroid/content/SyncStats;->numSkippedEntries:J

    const-wide/16 v11, 0x1

    add-long/2addr v8, v11

    iput-wide v8, v4, Landroid/content/SyncStats;->numSkippedEntries:J
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 743
    :try_start_10
    invoke-virtual/range {v22 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_1

    .end local v23           #e:Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v4

    invoke-virtual/range {v22 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 750
    .end local v22           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_e
    if-nez v27, :cond_11

    .line 751
    const-wide/16 v24, 0x0

    .line 771
    :goto_4
    move/from16 v0, v34

    move/from16 v1, p5

    if-ne v0, v1, :cond_13

    const/4 v4, 0x1

    move/from16 v16, v4

    .line 772
    .local v16, moreRecordsToGet:Z
    :goto_5
    new-instance v11, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;

    if-eqz v16, :cond_14

    move-wide/from16 v12, v32

    :goto_6
    move/from16 v0, v34

    int-to-long v0, v0

    move-wide v14, v0

    add-int v4, v38, v34

    const/4 v5, 0x1

    sub-int v18, v4, v5

    invoke-direct/range {v11 .. v18}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;-><init>(JJZLjava/lang/String;I)V

    .line 777
    .end local v5           #feed:Lcom/google/wireless/gdata/data/Feed;
    .local v11, newFeedSyncData:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    if-eqz v10, :cond_f

    .line 778
    if-nez v16, :cond_15

    iget-wide v8, v10, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->newWindowEnd:J

    const-wide/16 v12, 0x0

    cmp-long v4, v8, v12

    if-lez v4, :cond_15

    .line 780
    iget-wide v8, v10, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->newWindowEnd:J

    iput-wide v8, v11, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->windowEnd:J

    .line 781
    const-wide/16 v8, 0x0

    iput-wide v8, v11, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->newWindowEnd:J

    .line 785
    move-wide/from16 v0, v32

    move-object v2, v11

    iput-wide v0, v2, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->lastUpdatedTime:J

    .line 792
    :cond_f
    :goto_7
    iget-boolean v4, v11, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->hasMoreEntriesToFetch:Z

    move v0, v4

    move-object/from16 v1, p7

    iput-boolean v0, v1, Landroid/content/SyncResult;->moreRecordsToGet:Z

    .line 793
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;->feedData:Ljava/util/Map;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p3

    move-object v2, v11

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    const-string v4, "Sync"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 795
    const-string v4, "Sync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "This call to getServerDiffsImpl for feed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is returning "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    :cond_10
    if-eqz v36, :cond_0

    goto/16 :goto_2

    .line 755
    .end local v11           #newFeedSyncData:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    .end local v16           #moreRecordsToGet:Z
    .restart local v5       #feed:Lcom/google/wireless/gdata/data/Feed;
    :cond_11
    move-object/from16 v0, v39

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    .line 756
    const/4 v4, 0x0

    move-object/from16 v0, v39

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v28

    .line 757
    .local v28, feedUpdateMillis:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 758
    .local v20, currentMillis:J
    const-wide/32 v8, 0x493e0

    add-long v8, v8, v28

    cmp-long v4, v8, v20

    if-gez v4, :cond_12

    .line 766
    const-wide/16 v8, 0x3e8

    add-long v28, v28, v8

    .line 768
    :cond_12
    move-wide/from16 v24, v28

    goto/16 :goto_4

    .line 771
    .end local v20           #currentMillis:J
    .end local v28           #feedUpdateMillis:J
    :cond_13
    const/4 v4, 0x0

    move/from16 v16, v4

    goto/16 :goto_5

    .restart local v16       #moreRecordsToGet:Z
    :cond_14
    move-wide/from16 v12, v24

    .line 772
    goto/16 :goto_6

    .line 788
    .end local v5           #feed:Lcom/google/wireless/gdata/data/Feed;
    .restart local v11       #newFeedSyncData:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    :cond_15
    iget-wide v8, v10, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->windowEnd:J

    iput-wide v8, v11, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->windowEnd:J

    .line 789
    iget-wide v8, v10, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->newWindowEnd:J

    iput-wide v8, v11, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->newWindowEnd:J
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_10 .. :try_end_10} :catch_4

    goto :goto_7

    .line 808
    .end local v7           #entry:Lcom/google/wireless/gdata/data/Entry;
    .end local v10           #feedSyncData:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    .end local v11           #newFeedSyncData:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    .end local v16           #moreRecordsToGet:Z
    .end local v24           #entryLastUpdated:J
    .end local v27           #feedUpdateDate:Ljava/lang/String;
    .local v23, e:Lcom/google/wireless/gdata/client/HttpException;
    :sswitch_0
    :try_start_11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    const-string v5, "com.google"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    const-string v4, "Sync"

    const-string v5, "Bad authentication token"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    move-object/from16 v0, p7

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v8, v4, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v4, Landroid/content/SyncStats;->numAuthExceptions:J

    goto/16 :goto_3

    .line 814
    :sswitch_1
    const-string v4, "Sync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The tombstones have expired for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->handleAllDeletedUnavailable(Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 817
    const-string v4, "Sync"

    const-string v5, "handleAllDeletedUnavailable returned true, recursively calling getServerDiffsImpl"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    invoke-virtual/range {p0 .. p7}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getServerDiffsImpl(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;ILcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;Landroid/content/SyncResult;)V

    goto/16 :goto_3

    .line 824
    :cond_16
    const-string v4, "Sync"

    const-string v5, "handleAllDeletedUnavailable returned false, setting partialSyncUnavailable"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p7

    iput-boolean v0, v1, Landroid/content/SyncResult;->partialSyncUnavailable:Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_3

    .line 805
    nop

    :sswitch_data_0
    .sparse-switch
        0x191 -> :sswitch_0
        0x193 -> :sswitch_0
        0x19a -> :sswitch_1
    .end sparse-switch
.end method

.method protected getStatsString(Ljava/lang/StringBuffer;Landroid/content/SyncResult;)V
    .locals 5
    .parameter "sb"
    .parameter "result"

    .prologue
    const-wide/16 v3, 0x0

    .line 123
    iget v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mServerQueries:I

    if-lez v0, :cond_0

    .line 124
    const-string v0, "Q"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mServerQueries:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 126
    :cond_0
    iget v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mServerEntries:I

    if-lez v0, :cond_1

    .line 127
    const-string v0, "E"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mServerEntries:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 129
    :cond_1
    iget-object v0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numUpdates:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_2

    .line 130
    const-string v0, "u"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numUpdates:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 132
    :cond_2
    iget-object v0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numInserts:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_3

    .line 133
    const-string v0, "i"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numInserts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 135
    :cond_3
    iget-object v0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numDeletes:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_4

    .line 136
    const-string v0, "d"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numDeletes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 138
    :cond_4
    invoke-virtual {p2}, Landroid/content/SyncResult;->toDebugString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    return-void
.end method

.method protected abstract handleAllDeletedUnavailable(Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;Ljava/lang/String;)Z
.end method

.method protected invalidateAndUpdateAuthToken()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;,
            Landroid/accounts/OperationCanceledException;
        }
    .end annotation

    .prologue
    .line 1163
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/gdata/client/GDataServiceClient;->getServiceName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    .line 1167
    return-void
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 862
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract newEntry()Lcom/google/wireless/gdata/data/Entry;
.end method

.method public newSyncData()Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;
    .locals 1

    .prologue
    .line 506
    new-instance v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;

    invoke-direct {v0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newSyncData()Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->newSyncData()Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;

    move-result-object v0

    return-object v0
.end method

.method protected onLogSyncDetails(JJLandroid/content/SyncResult;)V
    .locals 5
    .parameter "bytesSent"
    .parameter "bytesReceived"
    .parameter "result"

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 113
    .local v0, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p0, v0, p5}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getStatsString(Ljava/lang/StringBuffer;Landroid/content/SyncResult;)V

    .line 114
    const v1, 0x318f9

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/gdata/client/GDataServiceClient;->getServiceName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 117
    return-void
.end method

.method public onSyncCanceled()V
    .locals 1

    .prologue
    .line 572
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mSyncCanceled:Z

    .line 573
    return-void
.end method

.method public onSyncEnding(Z)V
    .locals 0
    .parameter "success"

    .prologue
    .line 1217
    return-void
.end method

.method public onSyncStarting(Landroid/accounts/Account;ZLandroid/content/SyncResult;)V
    .locals 7
    .parameter "account"
    .parameter "manualSync"
    .parameter "result"

    .prologue
    const/4 v1, 0x0

    const-wide/16 v5, 0x1

    .line 1224
    iput-boolean v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mSyncCanceled:Z

    .line 1225
    iput v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mServerQueries:I

    .line 1226
    iput v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mServerEntries:I

    .line 1230
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->onAccountsChanged([Landroid/accounts/Account;)V

    .line 1232
    iput-object p1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    .line 1234
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/gdata/client/GDataServiceClient;->getServiceName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    .line 1236
    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1237
    iget-object v1, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long/2addr v2, v5

    iput-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1246
    :cond_0
    :goto_0
    return-void

    .line 1239
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1240
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long/2addr v2, v5

    iput-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    goto :goto_0

    .line 1241
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 1242
    .local v0, e:Landroid/accounts/AuthenticatorException;
    iget-object v1, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long/2addr v2, v5

    iput-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    goto :goto_0

    .line 1243
    .end local v0           #e:Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v1

    move-object v0, v1

    .line 1244
    .local v0, e:Landroid/accounts/OperationCanceledException;
    iget-object v1, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long/2addr v2, v5

    iput-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    goto :goto_0
.end method

.method public readSyncData(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;
    .locals 7
    .parameter "contentProvider"

    .prologue
    const/4 v2, 0x0

    .line 491
    sget-object v1, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->SYNC_STATE_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_sync_account = ? AND _sync_account_type = ?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v0, 0x1

    iget-object v5, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v5, v4, v0

    move-object v0, p1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 495
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    const-string v0, "data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->newGDataSyncDataFromBytes([B)Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 499
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 501
    :goto_0
    return-object v0

    .line 499
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 501
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->newSyncData()Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic readSyncData(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->readSyncData(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;

    move-result-object v0

    return-object v0
.end method

.method public sendClientDiffs(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Landroid/content/SyncResult;Z)V
    .locals 7
    .parameter "clientDiffs"
    .parameter "serverDiffs"
    .parameter "syncResult"
    .parameter "dontSendDeletes"

    .prologue
    .line 871
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->initTempProvider(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V

    .line 872
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->createSyncInfo()Ljava/lang/Object;

    move-result-object v3

    .line 873
    .local v3, syncInfo:Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->newEntry()Lcom/google/wireless/gdata/data/Entry;

    move-result-object v2

    .local v2, entry:Lcom/google/wireless/gdata/data/Entry;
    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    .line 874
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->sendClientDiffsImpl(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Lcom/google/wireless/gdata/data/Entry;Ljava/lang/Object;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Landroid/content/SyncResult;Z)V

    .line 876
    return-void
.end method

.method protected sendClientDiffsImpl(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Lcom/google/wireless/gdata/data/Entry;Ljava/lang/Object;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Landroid/content/SyncResult;Z)V
    .locals 21
    .parameter "clientDiffs"
    .parameter "entry"
    .parameter "syncInfo"
    .parameter "serverDiffs"
    .parameter "syncResult"
    .parameter "dontSendDeletes"

    .prologue
    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    move-object v4, v0

    if-nez v4, :cond_0

    .line 896
    const-string v4, "Sync"

    const-string v5, "no username, so skipping the merge"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    :goto_0
    return-void

    .line 907
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getCursorForDeletedTable(Landroid/content/ContentProvider;Ljava/lang/Class;)Landroid/database/Cursor;

    move-result-object v16

    .line 909
    .local v16, c:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 911
    .local v6, entryToSave:Lcom/google/wireless/gdata/data/Entry;
    :try_start_0
    const-string v4, "_sync_local_id"

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 912
    .local v20, syncLocalIDColumn:I
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result v19

    .local v19, numRows:I
    move-object/from16 v18, v6

    .end local v6           #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    .local v18, entryToSave:Lcom/google/wireless/gdata/data/Entry;
    :goto_1
    :try_start_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual/range {p5 .. p5}, Landroid/content/SyncResult;->madeSomeProgress()Z

    move-result v4

    if-nez v4, :cond_1

    .line 913
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mSyncCanceled:Z

    move v4, v0

    if-eqz v4, :cond_4

    .line 914
    const-string v4, "Sync"

    const-string v5, "stopping since the sync was cancelled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 942
    :cond_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->deactivate()V

    .line 949
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getCursorForTable(Landroid/content/ContentProvider;Ljava/lang/Class;)Landroid/database/Cursor;

    move-result-object v16

    .line 951
    :try_start_2
    const-string v4, "_sync_local_id"

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 952
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v19

    move-object/from16 v6, v18

    .line 953
    .end local v18           #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    .restart local v6       #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    :cond_2
    :goto_2
    :try_start_3
    invoke-virtual/range {p5 .. p5}, Landroid/content/SyncResult;->madeSomeProgress()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 954
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mSyncCanceled:Z

    move v4, v0

    if-eqz v4, :cond_6

    .line 955
    const-string v4, "Sync"

    const-string v5, "stopping since the sync was cancelled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 992
    :cond_3
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->deactivate()V

    goto :goto_0

    .line 917
    .end local v6           #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    .restart local v18       #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    :cond_4
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/gdata/data/Entry;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 919
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->deletedCursorToEntry(Landroid/database/Cursor;Lcom/google/wireless/gdata/data/Entry;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_5 .. :try_end_5} :catch_0

    .line 929
    const/4 v4, 0x1

    :try_start_6
    move-object/from16 v0, p2

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/data/Entry;->setDeleted(Z)V

    .line 930
    if-nez p6, :cond_5

    .line 931
    sget-object v5, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->DELETE:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/gdata/data/Entry;->getEditUri()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p5

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->sendSingleClientDiff(Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;Ljava/lang/String;Lcom/google/wireless/gdata/data/Entry;Landroid/content/SyncResult;Z)Lcom/google/wireless/gdata/data/Entry;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v6

    .line 936
    .end local v18           #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    .restart local v6       #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    :goto_3
    if-eqz v6, :cond_8

    .line 937
    :try_start_7
    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v4, p0

    move-object/from16 v5, p4

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->updateProviderInTransaction(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Lcom/google/wireless/gdata/data/Entry;Ljava/lang/Long;Ljava/lang/Object;Landroid/content/SyncResult;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object/from16 v18, v6

    .end local v6           #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    .restart local v18       #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    goto/16 :goto_1

    .line 920
    :catch_0
    move-exception v17

    .line 922
    .local v17, e:Lcom/google/wireless/gdata/parser/ParseException;
    :try_start_8
    const-string v4, "Sync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unable to convert row to an Entry, skipping. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_id"

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v16

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 925
    move-object/from16 v0, p5

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v5, v4, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v4, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 942
    .end local v17           #e:Lcom/google/wireless/gdata/parser/ParseException;
    :catchall_0
    move-exception v4

    move-object/from16 v6, v18

    .end local v18           #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    .end local v19           #numRows:I
    .end local v20           #syncLocalIDColumn:I
    .restart local v6       #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    :goto_4
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->deactivate()V

    throw v4

    .line 934
    .end local v6           #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    .restart local v18       #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    .restart local v19       #numRows:I
    .restart local v20       #syncLocalIDColumn:I
    :cond_5
    move-object/from16 v6, p2

    .end local v18           #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    .restart local v6       #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    goto :goto_3

    .line 959
    :cond_6
    :try_start_9
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/gdata/data/Entry;->clear()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 965
    :try_start_a
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->cursorToEntry(Landroid/database/Cursor;Lcom/google/wireless/gdata/data/Entry;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 966
    .local v9, targetUrl:Ljava/lang/String;
    if-nez v9, :cond_7

    .line 967
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/gdata/data/Entry;->getEditUri()Ljava/lang/String;

    move-result-object v9

    .line 968
    sget-object v8, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->UPDATE:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_a .. :try_end_a} :catch_1

    .line 984
    .local v8, op:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;
    :goto_5
    const/4 v12, 0x1

    move-object/from16 v7, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p5

    :try_start_b
    invoke-virtual/range {v7 .. v12}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->sendSingleClientDiff(Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;Ljava/lang/String;Lcom/google/wireless/gdata/data/Entry;Landroid/content/SyncResult;Z)Lcom/google/wireless/gdata/data/Entry;

    move-result-object v6

    .line 986
    if-eqz v6, :cond_2

    .line 987
    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v10, p0

    move-object/from16 v11, p4

    move-object v12, v6

    move-object/from16 v14, p3

    move-object/from16 v15, p5

    invoke-virtual/range {v10 .. v15}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->updateProviderInTransaction(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Lcom/google/wireless/gdata/data/Entry;Ljava/lang/Long;Ljava/lang/Object;Landroid/content/SyncResult;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_2

    .line 992
    .end local v8           #op:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;
    .end local v9           #targetUrl:Ljava/lang/String;
    :catchall_1
    move-exception v4

    :goto_6
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->deactivate()V

    throw v4

    .line 970
    .restart local v9       #targetUrl:Ljava/lang/String;
    :cond_7
    :try_start_c
    sget-object v8, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->INSERT:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_c .. :try_end_c} :catch_1

    .restart local v8       #op:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;
    goto :goto_5

    .line 972
    .end local v8           #op:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;
    .end local v9           #targetUrl:Ljava/lang/String;
    :catch_1
    move-exception v4

    move-object/from16 v17, v4

    .line 973
    .restart local v17       #e:Lcom/google/wireless/gdata/parser/ParseException;
    :try_start_d
    const-string v4, "skip"

    invoke-virtual/range {v17 .. v17}, Lcom/google/wireless/gdata/parser/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 976
    const-string v4, "Sync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unable to convert row to an Entry, skipping. "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "_id"

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v16

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 978
    move-object/from16 v0, p5

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v7, v4, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v4, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_2

    .line 992
    .end local v6           #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    .end local v17           #e:Lcom/google/wireless/gdata/parser/ParseException;
    .restart local v18       #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    :catchall_2
    move-exception v4

    move-object/from16 v6, v18

    .end local v18           #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    .restart local v6       #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    goto :goto_6

    .line 942
    .end local v19           #numRows:I
    .end local v20           #syncLocalIDColumn:I
    :catchall_3
    move-exception v4

    goto/16 :goto_4

    .restart local v19       #numRows:I
    .restart local v20       #syncLocalIDColumn:I
    :cond_8
    move-object/from16 v18, v6

    .end local v6           #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    .restart local v18       #entryToSave:Lcom/google/wireless/gdata/data/Entry;
    goto/16 :goto_1
.end method

.method public sendSingleClientDiff(Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;Ljava/lang/String;Lcom/google/wireless/gdata/data/Entry;Landroid/content/SyncResult;Z)Lcom/google/wireless/gdata/data/Entry;
    .locals 10
    .parameter "op"
    .parameter "targetUrl"
    .parameter "entry"
    .parameter "syncResult"
    .parameter "retryAuthentication"

    .prologue
    const/4 v3, 0x1

    const/4 v9, 0x0

    const-wide/16 v7, 0x1

    .line 1018
    :try_start_0
    sget-object v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$1;->$SwitchMap$com$google$android$gsf$subscribedfeeds$AbstractGDataSyncAdapter$ClientDiffType:[I

    invoke-virtual {p1}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    move-object v0, p3

    .line 1152
    :goto_1
    return-object v0

    .line 1020
    :pswitch_0
    const-string v0, "Sync"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1021
    const-string v0, "Sync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating entry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    :cond_0
    invoke-virtual {p3}, Lcom/google/wireless/gdata/data/Entry;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1024
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "entry is marked as deleted but op is UPDATE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1053
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 1054
    .local v6, e:Lcom/google/wireless/gdata/parser/ParseException;
    const-string v0, "Sync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse error during "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", skipping"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1055
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numParseExceptions:J

    add-long/2addr v1, v7

    iput-wide v1, v0, Landroid/content/SyncStats;->numParseExceptions:J

    move-object v0, v9

    .line 1056
    goto :goto_1

    .line 1027
    .end local v6           #e:Lcom/google/wireless/gdata/parser/ParseException;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    invoke-virtual {v0, p3, v1}, Lcom/google/wireless/gdata/client/GDataServiceClient;->updateEntry(Lcom/google/wireless/gdata/data/Entry;Ljava/lang/String;)Lcom/google/wireless/gdata/data/Entry;

    move-result-object p3

    .line 1028
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numUpdates:J

    add-long/2addr v1, v7

    iput-wide v1, v0, Landroid/content/SyncStats;->numUpdates:J
    :try_end_1
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 1057
    :catch_1
    move-exception v0

    move-object v6, v0

    .line 1059
    .local v6, e:Ljava/io/IOException;
    const-string v0, "Sync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "io error during "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", skipping"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v1, v7

    iput-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    move-object v0, v9

    .line 1063
    goto/16 :goto_1

    .line 1032
    .end local v6           #e:Ljava/io/IOException;
    :pswitch_1
    :try_start_2
    const-string v0, "Sync"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1033
    const-string v0, "Sync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inserting entry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    :cond_2
    invoke-virtual {p3}, Lcom/google/wireless/gdata/data/Entry;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1036
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "entry is marked as deleted but op is INSERT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1064
    :catch_2
    move-exception v0

    move-object v6, v0

    .line 1065
    .local v6, e:Ljava/lang/RuntimeException;
    const-string v0, "Sync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "object "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " caught an exception during "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1067
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numSkippedEntries:J

    add-long/2addr v1, v7

    iput-wide v1, v0, Landroid/content/SyncStats;->numSkippedEntries:J

    move-object v0, v9

    .line 1068
    goto/16 :goto_1

    .line 1039
    .end local v6           #e:Ljava/lang/RuntimeException;
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, p3}, Lcom/google/wireless/gdata/client/GDataServiceClient;->createEntry(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata/data/Entry;)Lcom/google/wireless/gdata/data/Entry;

    move-result-object p3

    .line 1040
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numInserts:J

    add-long/2addr v1, v7

    iput-wide v1, v0, Landroid/content/SyncStats;->numInserts:J
    :try_end_3
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 1069
    :catch_3
    move-exception v0

    move-object v6, v0

    .line 1070
    .local v6, e:Lcom/google/wireless/gdata/client/HttpException;
    invoke-virtual {v6}, Lcom/google/wireless/gdata/client/HttpException;->getStatusCode()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 1148
    :pswitch_2
    const-string v0, "Sync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "other error during "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/google/wireless/gdata/client/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", skipping"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v1, v7

    iput-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    move-object v0, v9

    .line 1152
    goto/16 :goto_1

    .line 1044
    .end local v6           #e:Lcom/google/wireless/gdata/client/HttpException;
    :pswitch_3
    :try_start_4
    invoke-virtual {p3}, Lcom/google/wireless/gdata/data/Entry;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1045
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "entry is not marked as deleted but op is DELETE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1048
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lcom/google/wireless/gdata/client/GDataServiceClient;->deleteEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numDeletes:J

    add-long/2addr v1, v7

    iput-wide v1, v0, Landroid/content/SyncStats;->numDeletes:J
    :try_end_4
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 1073
    .restart local v6       #e:Lcom/google/wireless/gdata/client/HttpException;
    :pswitch_4
    sget-object v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->UPDATE:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    if-ne p1, v0, :cond_7

    .line 1075
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/wireless/gdata/data/Entry;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getSingleEntry(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/wireless/gdata/data/Entry;

    move-result-object p3

    .line 1076
    if-nez p3, :cond_5

    .line 1077
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v1, v7

    iput-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    move-object v0, v9

    .line 1078
    goto/16 :goto_1

    .line 1080
    :cond_5
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numUpdates:J

    add-long/2addr v1, v7

    iput-wide v1, v0, Landroid/content/SyncStats;->numUpdates:J

    :cond_6
    :goto_2
    move-object v0, p3

    .line 1088
    goto/16 :goto_1

    .line 1081
    :cond_7
    sget-object v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->INSERT:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    if-ne p1, v0, :cond_8

    .line 1083
    invoke-virtual {p3, v3}, Lcom/google/wireless/gdata/data/Entry;->setDeleted(Z)V

    .line 1084
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numDeletes:J

    add-long/2addr v1, v7

    iput-wide v1, v0, Landroid/content/SyncStats;->numDeletes:J

    goto :goto_2

    .line 1085
    :cond_8
    sget-object v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->DELETE:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    if-ne p1, v0, :cond_6

    .line 1086
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numDeletes:J

    add-long/2addr v1, v7

    iput-wide v1, v0, Landroid/content/SyncStats;->numDeletes:J

    goto :goto_2

    .line 1091
    :pswitch_5
    sget-object v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->UPDATE:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    if-ne p1, v0, :cond_9

    .line 1092
    invoke-virtual {p3, v3}, Lcom/google/wireless/gdata/data/Entry;->setDeleted(Z)V

    .line 1094
    :cond_9
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numDeletes:J

    add-long/2addr v1, v7

    iput-wide v1, v0, Landroid/content/SyncStats;->numDeletes:J

    move-object v0, p3

    .line 1095
    goto/16 :goto_1

    .line 1102
    :pswitch_6
    if-eqz p5, :cond_a

    .line 1104
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->invalidateAndUpdateAuthToken()V

    .line 1105
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 1106
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->sendSingleClientDiff(Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;Ljava/lang/String;Lcom/google/wireless/gdata/data/Entry;Landroid/content/SyncResult;Z)Lcom/google/wireless/gdata/data/Entry;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Landroid/accounts/AuthenticatorException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Landroid/accounts/OperationCanceledException; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v0

    goto/16 :goto_1

    .line 1113
    :catch_4
    move-exception v0

    .line 1117
    :cond_a
    :goto_3
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long/2addr v1, v7

    iput-wide v1, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    move-object v0, v9

    .line 1118
    goto/16 :goto_1

    .line 1121
    :pswitch_7
    sget-object v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->INSERT:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    if-ne p1, v0, :cond_b

    .line 1123
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    add-long/2addr v1, v7

    iput-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    move-object v0, v9

    .line 1124
    goto/16 :goto_1

    .line 1134
    :cond_b
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getSingleEntry(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/wireless/gdata/data/Entry;

    move-result-object p3

    .line 1135
    if-nez p3, :cond_c

    .line 1137
    const-string v0, "Sync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "conflict detected during "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", skipping"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1140
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    add-long/2addr v1, v7

    iput-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    move-object v0, v9

    .line 1141
    goto/16 :goto_1

    .line 1143
    :cond_c
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numUpdates:J

    add-long/2addr v1, v7

    iput-wide v1, v0, Landroid/content/SyncStats;->numUpdates:J

    move-object v0, p3

    .line 1144
    goto/16 :goto_1

    .line 1111
    :catch_5
    move-exception v0

    goto :goto_3

    .line 1109
    :catch_6
    move-exception v0

    goto :goto_3

    .line 1018
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 1070
    :pswitch_data_1
    .packed-switch 0x190
        :pswitch_4
        :pswitch_6
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_7
    .end packed-switch
.end method

.method protected abstract updateProvider(Lcom/google/wireless/gdata/data/Feed;Ljava/lang/Long;Lcom/google/wireless/gdata/data/Entry;Landroid/content/ContentProvider;Ljava/lang/Object;Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation
.end method

.method updateProviderInTransaction(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Lcom/google/wireless/gdata/data/Entry;Ljava/lang/Long;Ljava/lang/Object;Landroid/content/SyncResult;)V
    .locals 9
    .parameter "provider"
    .parameter "entry"
    .parameter "syncLocalId"
    .parameter "syncInfo"
    .parameter "syncResult"

    .prologue
    .line 1177
    invoke-virtual {p1}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 1178
    .local v7, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1180
    :try_start_0
    const-string v0, "Sync"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1181
    const-string v0, "Sync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendClientDiffs: updating provider with entry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    :cond_0
    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->updateProvider(Lcom/google/wireless/gdata/data/Feed;Ljava/lang/Long;Lcom/google/wireless/gdata/data/Entry;Landroid/content/ContentProvider;Ljava/lang/Object;Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;)V

    .line 1185
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1190
    :goto_0
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1192
    return-void

    .line 1186
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 1187
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "Sync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateProvider failed, entry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1188
    iget-object v0, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numSkippedEntries:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/content/SyncStats;->numSkippedEntries:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1190
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method protected updateQueryParameters(Lcom/google/wireless/gdata/client/QueryParams;Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;)V
    .locals 0
    .parameter "params"
    .parameter "feedSyncData"

    .prologue
    .line 395
    return-void
.end method

.method public writeSyncData(Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V
    .locals 6
    .parameter "syncData"
    .parameter "contentProvider"

    .prologue
    .line 515
    sget-object v1, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->SYNC_STATE_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_sync_account = ? AND _sync_account_type = ?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p2, v1, v2, v3}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 518
    if-nez p1, :cond_0

    .line 519
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 520
    .local v0, values:Landroid/content/ContentValues;
    const-string v2, "data"

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-string v1, "_sync_account"

    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string v1, "_sync_account_type"

    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    sget-object v1, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->SYNC_STATE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, v1, v0}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 531
    .end local p1
    :goto_0
    return-void

    .line 526
    .end local v0           #values:Landroid/content/ContentValues;
    .restart local p1
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 527
    .restart local v0       #values:Landroid/content/ContentValues;
    const-string v1, "data"

    check-cast p1, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;

    .end local p1
    invoke-static {p1}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->newBytesFromGDataSyncData(Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 528
    const-string v1, "_sync_account"

    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const-string v1, "_sync_account_type"

    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    sget-object v1, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->SYNC_STATE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, v1, v0}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

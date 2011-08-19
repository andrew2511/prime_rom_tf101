.class Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;
.super Ljava/lang/Object;
.source "BookmarksSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CommitHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;,
        Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$Bitmask;
    }
.end annotation


# instance fields
.field private final mAuthInfo:Lcom/google/chrome/bookmarks/sync/api/AuthInfo;

.field private final mClient:Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient;

.field private mClientGuid:Ljava/lang/String;

.field private mConflictCount:I

.field private mMaxCommitBatchSize:I

.field private final mProvider:Landroid/content/ContentProviderClient;

.field private mSoftErrorCount:I

.field private mSuccessCount:I

.field private final mSyncResult:Landroid/content/SyncResult;

.field private mTotalDirtyReadsCount:I


# direct methods
.method public constructor <init>(Landroid/content/ContentProviderClient;Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient;Landroid/content/SyncResult;Lcom/google/chrome/bookmarks/sync/api/AuthInfo;ILcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;)V
    .locals 1
    .parameter "provider"
    .parameter "client"
    .parameter "syncResult"
    .parameter "authInfo"
    .parameter "maxCommitBatchSize"
    .parameter "syncState"

    .prologue
    .line 682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 683
    iput-object p1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mProvider:Landroid/content/ContentProviderClient;

    .line 684
    iput-object p2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mClient:Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient;

    .line 685
    iput-object p3, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mSyncResult:Landroid/content/SyncResult;

    .line 686
    iput-object p4, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mAuthInfo:Lcom/google/chrome/bookmarks/sync/api/AuthInfo;

    .line 687
    iput p5, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mMaxCommitBatchSize:I

    .line 688
    invoke-virtual {p6}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ClientSyncState;->getClientGuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mClientGuid:Ljava/lang/String;

    .line 689
    return-void
.end method

.method static synthetic access$500(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;)Landroid/content/SyncResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 636
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mSyncResult:Landroid/content/SyncResult;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;)Landroid/content/ContentProviderClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 636
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mProvider:Landroid/content/ContentProviderClient;

    return-object v0
.end method

.method private throwIfError(Lcom/google/chrome/bookmarks/sync/api/data/CommitResult;)V
    .locals 3
    .parameter "commitResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/AuthenticationException;,
            Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 937
    sget-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$1;->$SwitchMap$com$google$personalization$chrome$cosmosync$server$syncproto$Sync$ClientToServerResponse$ErrorType:[I

    invoke-virtual {p1}, Lcom/google/chrome/bookmarks/sync/api/data/CommitResult;->getErrorCode()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 962
    :pswitch_0
    return-void

    .line 944
    :pswitch_1
    new-instance v0, Lcom/google/wireless/gdata2/client/AuthenticationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Commit request returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/chrome/bookmarks/sync/api/data/CommitResult;->getErrorCode()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata2/client/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 948
    :pswitch_2
    new-instance v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server reports a different identifier (birthday) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/chrome/bookmarks/sync/api/data/CommitResult;->getStoreBirthday()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which does not match the client value."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 954
    :pswitch_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The service has rejected our request due to throttling."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 958
    :pswitch_4
    new-instance v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;

    const-string v1, "Commit request returned USER_NOT_ACTIVATED."

    invoke-direct {v0, v1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 937
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private updateCountersOnSuccess(I)V
    .locals 5
    .parameter "type"

    .prologue
    const-wide/16 v3, 0x1

    .line 858
    iget v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mSuccessCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mSuccessCount:I

    .line 859
    sget v0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;->INSERT_TYPE:I

    if-ne p1, v0, :cond_1

    .line 860
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mSyncResult:Landroid/content/SyncResult;

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numInserts:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/content/SyncStats;->numInserts:J

    .line 866
    :cond_0
    :goto_0
    return-void

    .line 861
    :cond_1
    sget v0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;->MODIFY_TYPE:I

    if-ne p1, v0, :cond_2

    .line 862
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mSyncResult:Landroid/content/SyncResult;

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numUpdates:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/content/SyncStats;->numUpdates:J

    goto :goto_0

    .line 863
    :cond_2
    sget v0, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;->DELETE_TYPE:I

    if-ne p1, v0, :cond_0

    .line 864
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mSyncResult:Landroid/content/SyncResult;

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numDeletes:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/content/SyncStats;->numDeletes:J

    goto :goto_0
.end method


# virtual methods
.method public handle()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/client/AuthenticationException;,
            Lcom/google/chrome/bookmarks/sync/api/ChromeHttpException;,
            Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x32

    const/4 v12, 0x1

    .line 884
    const/4 v7, 0x0

    .line 885
    .local v7, commitQueryCount:I
    :cond_0
    :goto_0
    add-int/lit8 v7, v7, 0x1

    if-gt v7, v13, :cond_2

    .line 886
    const/4 v6, 0x0

    .line 888
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mProvider:Landroid/content/ContentProviderClient;

    sget-object v1, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->BOOKMARKS_URI_FOR_READ:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_BOOKMARKS:[Ljava/lang/String;

    const-string v3, "account_name=? AND account_type=? AND dirty!=0"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v11, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mAuthInfo:Lcom/google/chrome/bookmarks/sync/api/AuthInfo;

    invoke-virtual {v11}, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->getAccountName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x1

    iget-object v11, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mAuthInfo:Lcom/google/chrome/bookmarks/sync/api/AuthInfo;

    invoke-virtual {v11}, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->getAccountType()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 892
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 893
    const-string v0, "BookmarksSync"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 894
    const-string v0, "BookmarksSync"

    const-string v1, "No local bookmarks changes found."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 924
    :cond_1
    if-eqz v6, :cond_2

    .line 925
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 933
    .end local v6           #c:Landroid/database/Cursor;
    :cond_2
    :goto_1
    return-void

    .line 898
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_3
    :try_start_1
    new-instance v9, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;

    invoke-direct {v9, p0, v6}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;-><init>(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;Landroid/database/Cursor;)V

    .line 899
    .local v9, parser:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;
    const/4 v10, 0x0

    .line 902
    .local v10, queryDirtyReadsCount:I
    :cond_4
    :goto_2
    iget v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mMaxCommitBatchSize:I

    invoke-virtual {v9, v0}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->parseNextNItems(I)V

    .line 903
    invoke-virtual {p0, v9}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->handleParserPage(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .line 904
    .local v8, itemCount:I
    if-nez v8, :cond_5

    .line 917
    if-nez v10, :cond_7

    .line 924
    if-eqz v6, :cond_2

    .line 925
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 907
    :cond_5
    add-int/2addr v10, v8

    .line 908
    :try_start_2
    const-string v0, "BookmarksSync"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 909
    const-string v0, "BookmarksSync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Commit query loop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; Total dirty reads:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mTotalDirtyReadsCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; Successes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mSuccessCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; Parser skips:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mSyncResult:Landroid/content/SyncResult;

    iget-object v2, v2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v2, Landroid/content/SyncStats;->numSkippedEntries:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; Conflicts:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mConflictCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; Soft errors:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mSoftErrorCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 924
    .end local v8           #itemCount:I
    .end local v9           #parser:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;
    .end local v10           #queryDirtyReadsCount:I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 925
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 924
    .restart local v8       #itemCount:I
    .restart local v9       #parser:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;
    .restart local v10       #queryDirtyReadsCount:I
    :cond_7
    if-eqz v6, :cond_8

    .line 925
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 929
    :cond_8
    if-le v7, v13, :cond_0

    .line 930
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mSyncResult:Landroid/content/SyncResult;

    iput-boolean v12, v0, Landroid/content/SyncResult;->tooManyRetries:Z

    goto/16 :goto_0
.end method

.method public handleParserPage(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;)I
    .locals 31
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/chrome/bookmarks/sync/api/ChromeHttpException;,
            Lcom/google/wireless/gdata2/client/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 697
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->getSyncableItems()Ljava/util/List;

    move-result-object v6

    .line 699
    .local v6, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 701
    const/4 v4, 0x0

    .line 846
    .end local p1
    :goto_0
    return v4

    .line 703
    .restart local p1
    :cond_0
    const-string v4, "BookmarksSync"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 704
    new-instance v29, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " commits to server:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 706
    .local v29, s:Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .line 707
    .local v11, count:I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;

    .line 708
    .local v14, item:Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;
    invoke-virtual {v14}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;->getSyncEntity()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Item "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/google/chrome/bookmarks/sync/api/impl/PrettyPrinter;->entityToString(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 710
    .end local v14           #item:Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;
    :cond_1
    const-string v4, "BookmarksSync"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    .end local v11           #count:I
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v29           #s:Ljava/lang/StringBuilder;
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mTotalDirtyReadsCount:I

    move v4, v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mTotalDirtyReadsCount:I

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mClient:Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient;

    move-object v4, v0

    sget-object v5, Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient$DataType;->BOOKMARKS:Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient$DataType;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mAuthInfo:Lcom/google/chrome/bookmarks/sync/api/AuthInfo;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mClientGuid:Ljava/lang/String;

    move-object v9, v0

    invoke-interface/range {v4 .. v9}, Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient;->postLocalCommits(Lcom/google/chrome/bookmarks/sync/api/ChromeSyncClient$DataType;Ljava/util/List;ZLcom/google/chrome/bookmarks/sync/api/AuthInfo;Ljava/lang/String;)Lcom/google/chrome/bookmarks/sync/api/data/CommitResult;

    move-result-object v10

    .line 720
    .local v10, commitResult:Lcom/google/chrome/bookmarks/sync/api/data/CommitResult;
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->throwIfError(Lcom/google/chrome/bookmarks/sync/api/data/CommitResult;)V

    .line 724
    invoke-virtual {v10}, Lcom/google/chrome/bookmarks/sync/api/data/CommitResult;->getEntryResponses()Ljava/util/List;

    move-result-object v28

    .line 725
    .local v28, responses:Ljava/util/List;,"Ljava/util/List<Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;>;"
    if-nez v28, :cond_3

    .line 726
    new-instance v4, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;

    const-string v5, "Server returned a success code, but there are no response items."

    invoke-direct {v4, v5}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 729
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_4

    .line 730
    new-instance v4, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The number of commit response items returned by the server is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", whereas we sent up "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .end local v6           #items:Ljava/util/List;,"Ljava/util/List<Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;>;"
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " items."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 735
    .restart local v6       #items:Ljava/util/List;,"Ljava/util/List<Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;>;"
    :cond_4
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 737
    .local v24, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v25, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$Bitmask;

    const/4 v4, 0x0

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$Bitmask;-><init>(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$1;)V

    .line 738
    .local v25, overallResponseType:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$Bitmask;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->getLocalIds()Ljava/util/List;

    move-result-object v18

    .line 739
    .local v18, localIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$CursorParser;->getLocalVersions()Ljava/util/List;

    move-result-object v23

    .line 740
    .local v23, localVersions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 741
    .local v17, localIdIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .line 742
    .local v22, localVersionIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 743
    .local v15, itemIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;>;"
    new-instance v30, Landroid/content/ContentValues;

    invoke-direct/range {v30 .. v30}, Landroid/content/ContentValues;-><init>()V

    .line 744
    .local v30, values:Landroid/content/ContentValues;
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .end local p1
    .restart local v13       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;

    .line 745
    .local v27, response:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 746
    .local v16, localId:Ljava/lang/String;
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 747
    .local v20, localVersion:J
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;

    .line 748
    .restart local v14       #item:Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;
    sget-object v4, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$1;->$SwitchMap$com$google$personalization$chrome$cosmosync$server$syncproto$Sync$CommitResponse$ResponseType:[I

    invoke-virtual/range {v27 .. v27}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->getResponseType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_2

    .line 751
    :pswitch_0
    sget-object v4, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->BOOKMARKS_URI_FOR_WRITE:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v16, v7, v8

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "version"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, v24

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    invoke-virtual/range {v30 .. v30}, Landroid/content/ContentValues;->clear()V

    .line 759
    invoke-virtual/range {v27 .. v27}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasIdString()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 760
    const-string v4, "sourceid"

    invoke-virtual/range {v27 .. v27}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->getIdString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v30

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    :cond_5
    invoke-virtual/range {v27 .. v27}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasParentIdString()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 764
    invoke-virtual/range {v27 .. v27}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->getParentIdString()Ljava/lang/String;

    move-result-object v26

    .line 766
    .local v26, remoteParentId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mAuthInfo:Lcom/google/chrome/bookmarks/sync/api/AuthInfo;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->getAccountName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mAuthInfo:Lcom/google/chrome/bookmarks/sync/api/AuthInfo;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/chrome/bookmarks/sync/api/AuthInfo;->getAccountType()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mProvider:Landroid/content/ContentProviderClient;

    move-object v7, v0

    move-object/from16 v0, v26

    move-object v1, v4

    move-object v2, v5

    move-object v3, v7

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$IdHelper;->access$300(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentProviderClient;)Ljava/lang/Long;

    move-result-object v19

    .line 771
    .local v19, localParentId:Ljava/lang/Long;
    if-eqz v19, :cond_6

    .line 772
    const-string v4, "parent"

    move-object/from16 v0, v30

    move-object v1, v4

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 775
    .end local v19           #localParentId:Ljava/lang/Long;
    .end local v26           #remoteParentId:Ljava/lang/String;
    :cond_6
    invoke-virtual/range {v27 .. v27}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasPositionInParent()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 776
    const-string v4, "position"

    invoke-virtual/range {v27 .. v27}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->getPositionInParent()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v30

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 779
    :cond_7
    invoke-virtual/range {v27 .. v27}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->hasVersion()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 780
    const-string v4, "sync2"

    invoke-virtual/range {v27 .. v27}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->getVersion()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v30

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 783
    :cond_8
    const-string v4, "dirty"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v30

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 785
    invoke-virtual {v14}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;->getType()I

    move-result v4

    sget v5, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;->INSERT_TYPE:I

    if-eq v4, v5, :cond_9

    invoke-virtual {v14}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;->getType()I

    move-result v4

    sget v5, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;->MODIFY_TYPE:I

    if-ne v4, v5, :cond_b

    .line 787
    :cond_9
    sget-object v4, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->BOOKMARKS_URI_FOR_WRITE:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v16, v7, v8

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, v24

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    :cond_a
    :goto_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mProvider:Landroid/content/ContentProviderClient;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 813
    :goto_4
    invoke-virtual {v14}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;->getType()I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->updateCountersOnSuccess(I)V

    goto/16 :goto_2

    .line 794
    :cond_b
    invoke-virtual {v14}, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;->getType()I

    move-result v4

    sget v5, Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;->DELETE_TYPE:I

    if-ne v4, v5, :cond_a

    .line 795
    sget-object v4, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->BOOKMARKS_URI_FOR_WRITE:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v4, v7, v8}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v16, v7, v8

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, v24

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 805
    :catch_0
    move-exception v4

    move-object v12, v4

    .line 806
    .local v12, e:Landroid/content/OperationApplicationException;
    const-string v4, "BookmarksSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to apply commit response for bookmark "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " due to an provider consistency error."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    const-string v4, "BookmarksSync"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 809
    const-string v4, "BookmarksSync"

    const-string v5, "Details:"

    invoke-static {v4, v5, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 811
    :cond_c
    const/16 v4, 0x20

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$Bitmask;->addBits(I)V

    goto/16 :goto_4

    .line 816
    .end local v12           #e:Landroid/content/OperationApplicationException;
    :pswitch_1
    const-string v4, "BookmarksSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to commit bookmark "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " due to conflict."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    const/4 v4, 0x1

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$Bitmask;->addBits(I)V

    .line 819
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mConflictCount:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mConflictCount:I

    goto/16 :goto_2

    .line 822
    :pswitch_2
    const-string v4, "BookmarksSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to commit bookmark "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", but client asked to retry."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    const/4 v4, 0x2

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$Bitmask;->addBits(I)V

    .line 825
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mSoftErrorCount:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mSoftErrorCount:I

    goto/16 :goto_2

    .line 828
    :pswitch_3
    const-string v4, "BookmarksSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to commit bookmark "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " due to invalid message."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    const/4 v4, 0x4

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$Bitmask;->addBits(I)V

    goto/16 :goto_2

    .line 833
    :pswitch_4
    const-string v4, "BookmarksSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to commit bookmark "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " due to quota violation."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    const/16 v4, 0x8

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$Bitmask;->addBits(I)V

    goto/16 :goto_2

    .line 838
    :pswitch_5
    const-string v4, "BookmarksSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to commit bookmark "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " due to a transient error."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    const/16 v4, 0x10

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$Bitmask;->addBits(I)V

    .line 841
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mSoftErrorCount:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler;->mSoftErrorCount:I

    goto/16 :goto_2

    .line 845
    .end local v14           #item:Lcom/google/chrome/bookmarks/sync/api/data/SyncableItem;
    .end local v16           #localId:Ljava/lang/String;
    .end local v20           #localVersion:J
    .end local v27           #response:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;
    :cond_d
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$Bitmask;->isSuccessful()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 846
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    goto/16 :goto_0

    .line 847
    :cond_e
    const/16 v4, 0xc

    move-object/from16 v0, v25

    move v1, v4

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$Bitmask;->access$400(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$CommitHandler$Bitmask;I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 849
    new-instance v4, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;

    const-string v5, "Unable to commit one or more records due to hard error."

    invoke-direct {v4, v5}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ChromeProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 852
    :cond_f
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unable to commit one or more records due to soft error."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 748
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

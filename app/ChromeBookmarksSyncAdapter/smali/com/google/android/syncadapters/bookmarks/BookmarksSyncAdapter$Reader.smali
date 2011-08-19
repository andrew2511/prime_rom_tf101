.class Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;
.super Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ReportingRunnable;
.source "BookmarksSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Reader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader$ServerEntryType;
    }
.end annotation


# static fields
.field private static final SELECTION_BY_CLIENT_UNIQUE_TAG:Ljava/lang/String;

.field private static final SELECTION_BY_LOCAL_ID:Ljava/lang/String;

.field private static final SELECTION_BY_REMOTE_ID:Ljava/lang/String;

.field private static final SELECTION_BY_SERVER_UNIQUE_TAG:Ljava/lang/String;


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mClientGuid:Ljava/lang/String;

.field private final mMergeQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;

.field private final mProvider:Landroid/content/ContentProviderClient;

.field private final mUpdateQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sync3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->SELECTION_BY_SERVER_UNIQUE_TAG:Ljava/lang/String;

    .line 1907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sync4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->SELECTION_BY_CLIENT_UNIQUE_TAG:Ljava/lang/String;

    .line 1914
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sourceid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->SELECTION_BY_REMOTE_ID:Ljava/lang/String;

    .line 1921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->SELECTION_BY_LOCAL_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;Ljava/lang/String;Landroid/accounts/Account;Landroid/content/ContentProviderClient;I)V
    .locals 1
    .parameter "updateQueue"
    .parameter "clientGuid"
    .parameter "account"
    .parameter "provider"
    .parameter "maxQueueSize"

    .prologue
    .line 1944
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ReportingRunnable;-><init>(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$1;)V

    .line 1945
    iput-object p4, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mProvider:Landroid/content/ContentProviderClient;

    .line 1946
    new-instance v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;

    invoke-direct {v0, p5}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mMergeQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;

    .line 1947
    iput-object p1, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mUpdateQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;

    .line 1948
    iput-object p2, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mClientGuid:Ljava/lang/String;

    .line 1949
    iput-object p3, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mAccount:Landroid/accounts/Account;

    .line 1950
    return-void
.end method

.method private figureOutEntryType(Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;)Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader$ServerEntryType;
    .locals 1
    .parameter "serverEntity"

    .prologue
    .line 2108
    iget-object v0, p1, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mServerUniqueTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2109
    sget-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader$ServerEntryType;->MATCH_BY_SERVER_UNIQUE_TAG:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader$ServerEntryType;

    .line 2116
    :goto_0
    return-object v0

    .line 2110
    :cond_0
    iget-object v0, p1, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mClientUniqueTag:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2111
    sget-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader$ServerEntryType;->MATCH_BY_CLIENT_UNIQUE_TAG:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader$ServerEntryType;

    goto :goto_0

    .line 2112
    :cond_1
    iget-object v0, p1, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mRemoteId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mClientGuid:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mLocalId:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 2114
    sget-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader$ServerEntryType;->MATCH_BY_IDS:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader$ServerEntryType;

    goto :goto_0

    .line 2116
    :cond_2
    sget-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader$ServerEntryType;->INVALID:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader$ServerEntryType;

    goto :goto_0
.end method

.method private findClientEntry(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;
    .locals 8
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "remoteId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/syncadapters/bookmarks/ProviderException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2128
    const/4 v7, 0x0

    .line 2130
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mProvider:Landroid/content/ContentProviderClient;

    sget-object v1, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "show_deleted"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;->PROJ_BOOKMARKS:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2142
    invoke-static {}, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->newBuilder()Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;

    move-result-object v6

    .line 2144
    .local v6, builder:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2145
    invoke-virtual {v6}, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->clear()Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->build()Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2155
    if-eqz v7, :cond_0

    .line 2156
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    .line 2147
    :cond_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 2148
    const-string v0, "BookmarksSync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reader has detected more than one client record that matches a server record with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". All but one record will be ignored."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2153
    :cond_2
    invoke-virtual {v6, v7}, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->parse(Landroid/database/Cursor;)Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;->build()Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 2155
    if-eqz v7, :cond_0

    .line 2156
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2155
    .end local v6           #builder:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity$Builder;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 2156
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method


# virtual methods
.method public final getMergeQueue()Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;
    .locals 1

    .prologue
    .line 1953
    iget-object v0, p0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mMergeQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;

    return-object v0
.end method

.method public run()V
    .locals 21

    .prologue
    .line 1957
    sget-object v17, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->PENDING:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    .line 1958
    .local v17, status:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;
    const/4 v10, 0x0

    .line 1960
    .local v10, exitMsg:Ljava/lang/String;
    :try_start_0
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 1961
    .local v13, remoteIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 1963
    .local v8, count:I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mUpdateQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;->take()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    .line 1964
    .local v14, serverEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;
    if-nez v14, :cond_4

    .line 1965
    const-string v18, "BookmarksSync"

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 1966
    const-string v18, "BookmarksSync"

    const-string v19, "Update queue empty.  Exiting."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    :cond_1
    sget-object v17, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->OK:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/syncadapters/bookmarks/ProviderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/syncadapters/bookmarks/ClosableBlockingQueue$QueueClosedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4

    .line 2098
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mUpdateQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;->kill()V

    .line 2099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mMergeQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;->close()V

    .line 2100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mStatusReporter:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;->report(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;Ljava/lang/String;)V

    .line 2102
    .end local v8           #count:I
    .end local v13           #remoteIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v14           #serverEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;
    :goto_2
    const-string v18, "BookmarksSync"

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 2103
    const-string v18, "BookmarksSync"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Reader thread exiting: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ": "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    :cond_3
    return-void

    .line 1971
    .restart local v8       #count:I
    .restart local v13       #remoteIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v14       #serverEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;
    :cond_4
    :try_start_1
    const-string v18, "BookmarksSync"

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 1972
    const-string v18, "BookmarksSync"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Read item "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v19

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " from the update queue."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    :cond_5
    const/4 v6, 0x0

    .line 1975
    .local v6, clientEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;
    iget-object v12, v14, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mRemoteId:Ljava/lang/String;

    .line 1976
    .local v12, remoteId:Ljava/lang/String;
    invoke-virtual {v13, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 1977
    sget-object v17, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->ERROR_PROTOCOL_RECOVERABLE:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    .line 1978
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Truncating server changelist after "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13}, Ljava/util/HashSet;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " items, as the changelist contains more than one entry with a"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " given remote id: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1981
    const-string v18, "BookmarksSync"

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1982
    const-string v18, "BookmarksSync"

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/syncadapters/bookmarks/ProviderException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/syncadapters/bookmarks/ClosableBlockingQueue$QueueClosedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4

    goto/16 :goto_1

    .line 2068
    .end local v6           #clientEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;
    .end local v8           #count:I
    .end local v12           #remoteId:Ljava/lang/String;
    .end local v13           #remoteIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v14           #serverEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;
    :catch_0
    move-exception v18

    move-object/from16 v9, v18

    .line 2069
    .local v9, e:Landroid/os/RemoteException;
    :try_start_2
    sget-object v17, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->ERROR_DB:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    .line 2070
    const-string v10, "Reader thread encountered a remote db error.  Bailing."

    .line 2071
    const-string v18, "BookmarksSync"

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 2072
    const-string v18, "BookmarksSync"

    move-object/from16 v0, v18

    move-object v1, v10

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2098
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mUpdateQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;->kill()V

    .line 2099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mMergeQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;->close()V

    .line 2100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mStatusReporter:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;->report(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1986
    .end local v9           #e:Landroid/os/RemoteException;
    .restart local v6       #clientEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;
    .restart local v8       #count:I
    .restart local v12       #remoteId:Ljava/lang/String;
    .restart local v13       #remoteIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v14       #serverEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;
    :cond_7
    :try_start_3
    invoke-virtual {v13, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mAccount:Landroid/accounts/Account;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v4, v0

    .line 1991
    .local v4, accountName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mAccount:Landroid/accounts/Account;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object v5, v0

    .line 1992
    .local v5, accountType:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->figureOutEntryType(Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;)Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader$ServerEntryType;

    move-result-object v15

    .line 1994
    .local v15, serverEntryType:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader$ServerEntryType;
    sget-object v18, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$1;->$SwitchMap$com$google$android$syncadapters$bookmarks$BookmarksSyncAdapter$Reader$ServerEntryType:[I

    invoke-virtual {v15}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader$ServerEntryType;->ordinal()I

    move-result v19

    aget v18, v18, v19

    packed-switch v18, :pswitch_data_0

    .line 2057
    const-string v18, "BookmarksSync"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Server entry "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " is invalid.  Skipping."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    const-string v18, "BookmarksSync"

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 2059
    const-string v18, "BookmarksSync"

    invoke-virtual {v14}, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/google/android/syncadapters/bookmarks/ProviderException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/google/android/syncadapters/bookmarks/ClosableBlockingQueue$QueueClosedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_0

    .line 2074
    .end local v4           #accountName:Ljava/lang/String;
    .end local v5           #accountType:Ljava/lang/String;
    .end local v6           #clientEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;
    .end local v8           #count:I
    .end local v12           #remoteId:Ljava/lang/String;
    .end local v13           #remoteIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v14           #serverEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;
    .end local v15           #serverEntryType:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader$ServerEntryType;
    :catch_1
    move-exception v18

    move-object/from16 v9, v18

    .line 2075
    .local v9, e:Lcom/google/android/syncadapters/bookmarks/ProviderException;
    :try_start_4
    sget-object v17, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->ERROR_DB:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    .line 2076
    const-string v10, "Reader thread encountered a db error.  Bailing."

    .line 2077
    const-string v18, "BookmarksSync"

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 2078
    const-string v18, "BookmarksSync"

    move-object/from16 v0, v18

    move-object v1, v10

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2098
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mUpdateQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;->kill()V

    .line 2099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mMergeQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;->close()V

    .line 2100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mStatusReporter:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;->report(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1996
    .end local v9           #e:Lcom/google/android/syncadapters/bookmarks/ProviderException;
    .restart local v4       #accountName:Ljava/lang/String;
    .restart local v5       #accountType:Ljava/lang/String;
    .restart local v6       #clientEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;
    .restart local v8       #count:I
    .restart local v12       #remoteId:Ljava/lang/String;
    .restart local v13       #remoteIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v14       #serverEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;
    .restart local v15       #serverEntryType:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader$ServerEntryType;
    :pswitch_0
    :try_start_5
    move-object v0, v14

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mServerUniqueTag:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1997
    .local v16, serverUniqueTag:Ljava/lang/String;
    const-string v18, "BookmarksSync"

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 1998
    const-string v18, "BookmarksSync"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Seeking a client match for server-unique tag "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    :cond_9
    sget-object v18, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->SELECTION_BY_SERVER_UNIQUE_TAG:Ljava/lang/String;

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v4, v19, v20

    const/16 v20, 0x1

    aput-object v5, v19, v20

    const/16 v20, 0x2

    aput-object v16, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object v3, v12

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->findClientEntry(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    move-result-object v6

    .line 2065
    .end local v16           #serverUniqueTag:Ljava/lang/String;
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mMergeQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;

    move-object/from16 v18, v0

    new-instance v19, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueueEntry;

    move-object/from16 v0, v19

    move-object v1, v14

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueueEntry;-><init>(Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;)V

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;->put(Ljava/lang/Object;)V

    .line 2066
    sget-object v17, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->OK:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    .line 2067
    goto/16 :goto_0

    .line 2010
    :pswitch_1
    iget-object v7, v14, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mClientUniqueTag:Ljava/lang/String;

    .line 2011
    .local v7, clientUniqueTag:Ljava/lang/String;
    const-string v18, "BookmarksSync"

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 2012
    const-string v18, "BookmarksSync"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Seeking a client match for client-unique tag "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    :cond_b
    sget-object v18, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->SELECTION_BY_CLIENT_UNIQUE_TAG:Ljava/lang/String;

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v4, v19, v20

    const/16 v20, 0x1

    aput-object v5, v19, v20

    const/16 v20, 0x2

    aput-object v7, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object v3, v12

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->findClientEntry(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    move-result-object v6

    .line 2021
    goto :goto_3

    .line 2024
    .end local v7           #clientUniqueTag:Ljava/lang/String;
    :pswitch_2
    move-object v0, v14

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mLocalId:Ljava/lang/Long;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2025
    .local v11, localId:Ljava/lang/String;
    const-string v18, "BookmarksSync"

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 2026
    const-string v18, "BookmarksSync"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Seeking a client match for remote id tag "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    :cond_c
    sget-object v18, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->SELECTION_BY_REMOTE_ID:Ljava/lang/String;

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v4, v19, v20

    const/16 v20, 0x1

    aput-object v5, v19, v20

    const/16 v20, 0x2

    aput-object v12, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object v3, v12

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->findClientEntry(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;

    move-result-object v6

    .line 2035
    move-object v0, v6

    iget-boolean v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mIsEmpty:Z

    move/from16 v18, v0

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mClientGuid:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v14

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mClientGuid:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 2041
    const-string v18, "BookmarksSync"

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 2042
    const-string v18, "BookmarksSync"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Seeking a client match for local id "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object v0, v14

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mLocalId:Ljava/lang/Long;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " with client GUID "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object v0, v14

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;->mClientGuid:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    :cond_d
    sget-object v18, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->SELECTION_BY_LOCAL_ID:Ljava/lang/String;

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v4, v19, v20

    const/16 v20, 0x1

    aput-object v5, v19, v20

    const/16 v20, 0x2

    aput-object v11, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object v3, v12

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->findClientEntry(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/google/android/syncadapters/bookmarks/ProviderException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/google/android/syncadapters/bookmarks/ClosableBlockingQueue$QueueClosedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v6

    goto/16 :goto_3

    .line 2080
    .end local v4           #accountName:Ljava/lang/String;
    .end local v5           #accountType:Ljava/lang/String;
    .end local v6           #clientEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;
    .end local v8           #count:I
    .end local v11           #localId:Ljava/lang/String;
    .end local v12           #remoteId:Ljava/lang/String;
    .end local v13           #remoteIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v14           #serverEntity:Lcom/google/android/syncadapters/bookmarks/BookmarksQueueableSyncEntity;
    .end local v15           #serverEntryType:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader$ServerEntryType;
    :catch_2
    move-exception v18

    move-object/from16 v9, v18

    .line 2081
    .local v9, e:Lcom/google/android/syncadapters/bookmarks/ClosableBlockingQueue$QueueClosedException;
    :try_start_6
    sget-object v17, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->ERROR_PROTOCOL_RECOVERABLE:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    .line 2082
    const-string v10, "Reader thread encountered a closed queue.  Bailing."

    .line 2083
    const-string v18, "BookmarksSync"

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 2084
    const-string v18, "BookmarksSync"

    move-object/from16 v0, v18

    move-object v1, v10

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2098
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mUpdateQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;->kill()V

    .line 2099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mMergeQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;->close()V

    .line 2100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mStatusReporter:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;->report(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2086
    .end local v9           #e:Lcom/google/android/syncadapters/bookmarks/ClosableBlockingQueue$QueueClosedException;
    :catch_3
    move-exception v18

    move-object/from16 v9, v18

    .line 2087
    .local v9, e:Ljava/lang/InterruptedException;
    :try_start_7
    sget-object v17, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->ERROR_PROTOCOL_RECOVERABLE:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    .line 2088
    const-string v10, "Reader thread interrupted.  Bailing."

    .line 2089
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->interrupt()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mUpdateQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;->kill()V

    .line 2099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mMergeQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;->close()V

    .line 2100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mStatusReporter:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;->report(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2090
    .end local v9           #e:Ljava/lang/InterruptedException;
    :catch_4
    move-exception v18

    move-object/from16 v9, v18

    .line 2091
    .local v9, e:Ljava/lang/RuntimeException;
    :try_start_8
    sget-object v17, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->ERROR_PROTOCOL_HOSED:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    .line 2092
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Reader thread threw an unknown error.  Bailing. "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2094
    const-string v18, "BookmarksSync"

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 2095
    const-string v18, "BookmarksSync"

    move-object/from16 v0, v18

    move-object v1, v10

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2098
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mUpdateQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;->kill()V

    .line 2099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mMergeQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;->close()V

    .line 2100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mStatusReporter:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;->report(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2098
    .end local v9           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mUpdateQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$UpdateQueue;->kill()V

    .line 2099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mMergeQueue:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$MergeQueue;->close()V

    .line 2100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader;->mStatusReporter:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter;->report(Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;Ljava/lang/String;)V

    throw v18

    .line 1994
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

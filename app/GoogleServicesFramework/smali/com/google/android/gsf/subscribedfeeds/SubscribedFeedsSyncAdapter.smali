.class public Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;
.super Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;
.source "SubscribedFeedsSyncAdapter.java"


# instance fields
.field private mAccountHasEntries:Z

.field private final mSubscribedFeedsClient:Lcom/google/wireless/gdata/subscribedfeeds/client/SubscribedFeedsClient;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V
    .locals 4
    .parameter "context"
    .parameter "provider"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;-><init>(Landroid/content/Context;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;->mAccountHasEntries:Z

    .line 75
    new-instance v0, Lcom/google/wireless/gdata/subscribedfeeds/client/SubscribedFeedsClient;

    new-instance v1, Lcom/google/android/common/gdata/AndroidGDataClient;

    invoke-direct {v1, p1}, Lcom/google/android/common/gdata/AndroidGDataClient;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/google/wireless/gdata/subscribedfeeds/parser/xml/XmlSubscribedFeedsGDataParserFactory;

    new-instance v3, Lcom/google/android/common/gdata/AndroidXmlParserFactory;

    invoke-direct {v3}, Lcom/google/android/common/gdata/AndroidXmlParserFactory;-><init>()V

    invoke-direct {v2, v3}, Lcom/google/wireless/gdata/subscribedfeeds/parser/xml/XmlSubscribedFeedsGDataParserFactory;-><init>(Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;)V

    invoke-direct {v0, v1, v2}, Lcom/google/wireless/gdata/subscribedfeeds/client/SubscribedFeedsClient;-><init>(Lcom/google/wireless/gdata/client/GDataClient;Lcom/google/wireless/gdata/client/GDataParserFactory;)V

    iput-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;->mSubscribedFeedsClient:Lcom/google/wireless/gdata/subscribedfeeds/client/SubscribedFeedsClient;

    .line 80
    return-void
.end method

.method private hasEntries(Landroid/accounts/Account;)Z
    .locals 10
    .parameter "account"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 83
    const/4 v6, 0x0

    .line 85
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "_sync_account=? AND _sync_account_type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v7, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x1

    iget-object v7, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 91
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 97
    :cond_0
    if-eqz v6, :cond_1

    .line 98
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v8

    .line 94
    :goto_0
    return v0

    .line 97
    :cond_2
    if-eqz v6, :cond_3

    .line 98
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v9

    .line 94
    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 98
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 97
    :cond_4
    throw v0
.end method


# virtual methods
.method protected cursorToEntry(Landroid/database/Cursor;Lcom/google/wireless/gdata/data/Entry;Ljava/lang/Object;)Ljava/lang/String;
    .locals 20
    .parameter "c"
    .parameter "baseEntry"
    .parameter "syncInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 222
    const-string v17, "_sync_account"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 224
    .local v5, accountName:Ljava/lang/String;
    const-string v17, "_sync_account_type"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 226
    .local v6, accountType:Ljava/lang/String;
    new-instance v4, Landroid/accounts/Account;

    invoke-direct {v4, v5, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .local v4, account:Landroid/accounts/Account;
    const-string v17, "service"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 228
    .local v14, service:Ljava/lang/String;
    const-string v17, "authority"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 229
    .local v8, authority:Ljava/lang/String;
    const-string v17, "_sync_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 230
    .local v13, id:Ljava/lang/String;
    const-string v17, "feed"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 231
    .local v12, feed:Ljava/lang/String;
    const-string v17, "_sync_local_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 235
    .local v16, syncLocalId:Ljava/lang/Long;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v17

    new-instance v18, Landroid/accounts/Account;

    const-string v19, "com.google"

    move-object/from16 v0, v18

    move-object v1, v5

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v14

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v7

    .line 255
    .local v7, authToken:Ljava/lang/String;
    new-instance v15, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;

    invoke-direct {v15, v12, v14, v7}, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .local v15, subscribedFeedUrl:Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;
    move-object/from16 v0, p2

    check-cast v0, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;

    move-object v11, v0

    .line 257
    .local v11, entry:Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;
    if-eqz v13, :cond_0

    .line 258
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;->getFeedUrl(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->setId(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v11}, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->getId()Ljava/lang/String;

    move-result-object v17

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->setEditUri(Ljava/lang/String;)V

    .line 261
    :cond_0
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;->getRoutingInfoForAccount(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v17

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->setRoutingInfo(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v11, v15}, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->setSubscribedFeed(Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;)V

    .line 263
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->setClientToken(Ljava/lang/String;)V

    .line 265
    const/4 v9, 0x0

    .line 266
    .local v9, createUrl:Ljava/lang/String;
    if-nez v13, :cond_1

    .line 267
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;->getFeedUrl(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v9

    .line 269
    :cond_1
    return-object v9

    .line 238
    .end local v7           #authToken:Ljava/lang/String;
    .end local v9           #createUrl:Ljava/lang/String;
    .end local v11           #entry:Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;
    .end local v15           #subscribedFeedUrl:Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;
    :catch_0
    move-exception v17

    move-object/from16 v10, v17

    .line 239
    .local v10, e:Ljava/io/IOException;
    const-string v17, "Sync"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "caught exception while attempting to get an authtoken for account "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", service "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    new-instance v17, Lcom/google/wireless/gdata/parser/ParseException;

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 243
    .end local v10           #e:Ljava/io/IOException;
    :catch_1
    move-exception v17

    move-object/from16 v10, v17

    .line 244
    .local v10, e:Landroid/accounts/AuthenticatorException;
    const-string v17, "Sync"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "caught exception while attempting to get an authtoken for account "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", service "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v10}, Landroid/accounts/AuthenticatorException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    new-instance v17, Lcom/google/wireless/gdata/parser/ParseException;

    invoke-virtual {v10}, Landroid/accounts/AuthenticatorException;->getMessage()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 248
    .end local v10           #e:Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v17

    move-object/from16 v10, v17

    .line 249
    .local v10, e:Landroid/accounts/OperationCanceledException;
    const-string v17, "Sync"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "caught exception while attempting to get an authtoken for account "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", service "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v10}, Landroid/accounts/OperationCanceledException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance v17, Lcom/google/wireless/gdata/parser/ParseException;

    invoke-virtual {v10}, Landroid/accounts/OperationCanceledException;->getMessage()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17
.end method

.method protected deletedCursorToEntry(Landroid/database/Cursor;Lcom/google/wireless/gdata/data/Entry;)V
    .locals 3
    .parameter "c"
    .parameter "entry"

    .prologue
    .line 274
    const-string v1, "_sync_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, id:Ljava/lang/String;
    invoke-virtual {p2, v0}, Lcom/google/wireless/gdata/data/Entry;->setId(Ljava/lang/String;)V

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;->getFeedUrl(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/wireless/gdata/data/Entry;->setEditUri(Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method protected getCursorForDeletedTable(Landroid/content/ContentProvider;Ljava/lang/Class;)Landroid/database/Cursor;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 213
    const-class v0, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;

    if-eq p2, v0, :cond_0

    .line 214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected entry class, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_0
    sget-object v1, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->DELETED_CONTENT_URI:Landroid/net/Uri;

    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected getCursorForTable(Landroid/content/ContentProvider;Ljava/lang/Class;)Landroid/database/Cursor;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 205
    const-class v0, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;

    if-eq p2, v0, :cond_0

    .line 206
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected entry class, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_0
    sget-object v1, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected getFeedEntryClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 169
    const-class v0, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;

    return-object v0
.end method

.method protected getFeedUrl(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 1
    .parameter "account"

    .prologue
    .line 165
    const-string v0, "https://android.clients.google.com/gsync/sub"

    return-object v0
.end method

.method protected getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;->mSubscribedFeedsClient:Lcom/google/wireless/gdata/subscribedfeeds/client/SubscribedFeedsClient;

    return-object v0
.end method

.method public getRoutingInfoForAccount(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 10
    .parameter "account"

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 290
    .local v4, context:Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 291
    .local v5, cr:Landroid/content/ContentResolver;
    const-string v7, "android_id"

    const-wide/16 v8, 0x0

    invoke-static {v5, v7, v8, v9}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 292
    .local v2, androidId:J
    const-string v7, "true"

    const-string v8, "gsync_rmq2_routing_info"

    const-string v9, "true"

    invoke-static {v5, v8, v9}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 295
    .local v6, useRmq2RoutingInfo:Z
    if-eqz v6, :cond_0

    .line 296
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 305
    :goto_0
    return-object v7

    .line 298
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 299
    .local v0, accountManager:Landroid/accounts/AccountManager;
    const-string v7, "com.google"

    invoke-virtual {v0, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 301
    .local v1, accounts:[Landroid/accounts/Account;
    array-length v7, v1

    if-nez v7, :cond_1

    .line 302
    const-string v7, "Sync"

    const-string v8, "No matching accounts."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const/4 v7, 0x0

    goto :goto_0

    .line 305
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "gtalk://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v1, v8

    iget-object v8, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2, v3}, Lcom/google/android/gsf/MobileConnectionSettings;->getDeviceId(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method public getServerDiffs(Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/SyncResult;)V
    .locals 1
    .parameter "syncData"
    .parameter "tempProvider"
    .parameter "extras"
    .parameter "syncInfo"
    .parameter "syncResult"

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;->mAccountHasEntries:Z

    if-nez v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->setContainsDiffs(Z)V

    .line 196
    invoke-super/range {p0 .. p5}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getServerDiffs(Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/SyncResult;)V

    goto :goto_0
.end method

.method protected handleAllDeletedUnavailable(Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;Ljava/lang/String;)Z
    .locals 2
    .parameter "syncData"
    .parameter "feed"

    .prologue
    .line 122
    const-string v0, "Sync"

    const-string v1, "subscribed feeds don\'t use tombstones"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method protected hasTooManyDeletions(Landroid/content/SyncStats;)Z
    .locals 1
    .parameter "stats"

    .prologue
    .line 315
    const/4 v0, 0x0

    return v0
.end method

.method protected newEntry()Lcom/google/wireless/gdata/data/Entry;
    .locals 1

    .prologue
    .line 179
    new-instance v0, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;

    invoke-direct {v0}, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;-><init>()V

    return-object v0
.end method

.method public onAccountsChanged([Landroid/accounts/Account;)V
    .locals 0
    .parameter "accounts"

    .prologue
    .line 201
    return-void
.end method

.method public onSyncStarting(Landroid/accounts/Account;ZLandroid/content/SyncResult;)V
    .locals 1
    .parameter "account"
    .parameter "manualSync"
    .parameter "result"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;->hasEntries(Landroid/accounts/Account;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;->mAccountHasEntries:Z

    .line 106
    iget-boolean v0, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;->mAccountHasEntries:Z

    if-eqz v0, :cond_0

    .line 108
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->onSyncStarting(Landroid/accounts/Account;ZLandroid/content/SyncResult;)V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    iput-object p1, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;->mAccount:Landroid/accounts/Account;

    goto :goto_0
.end method

.method protected updateProvider(Lcom/google/wireless/gdata/data/Feed;Ljava/lang/Long;Lcom/google/wireless/gdata/data/Entry;Landroid/content/ContentProvider;Ljava/lang/Object;Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;)V
    .locals 10
    .parameter "feed"
    .parameter "syncLocalId"
    .parameter "baseEntry"
    .parameter "provider"
    .parameter "syncInfo"
    .parameter "feedSyncData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 136
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 137
    .local v6, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    .line 138
    .local v1, account:Landroid/accounts/Account;
    const-string v8, "_sync_account"

    iget-object v9, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v8, "_sync_account_type"

    iget-object v9, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v8, "_sync_local_id"

    invoke-virtual {v6, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 141
    move-object v0, p3

    check-cast v0, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;

    move-object v3, v0

    .line 142
    .local v3, entry:Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;
    invoke-virtual {v3}, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->getId()Ljava/lang/String;

    move-result-object v4

    .line 143
    .local v4, id:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->getEditUri()Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, editUri:Ljava/lang/String;
    const/4 v7, 0x0

    .line 145
    .local v7, version:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 146
    const/16 v8, 0x2f

    invoke-virtual {v4, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 147
    .local v5, serverId:Ljava/lang/String;
    const/16 v8, 0x2f

    invoke-virtual {v2, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 148
    const-string v8, "_sync_id"

    invoke-virtual {v6, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v8, "_sync_version"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .end local v5           #serverId:Ljava/lang/String;
    :cond_0
    invoke-virtual {p3}, Lcom/google/wireless/gdata/data/Entry;->isDeleted()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 152
    sget-object v8, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->DELETED_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p4, v8, v6}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 161
    :goto_0
    return-void

    .line 154
    :cond_1
    const-string v8, "feed"

    invoke-virtual {v3}, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->getSubscribedFeed()Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;->getFeed()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 156
    const-string v8, "_sync_time"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_2
    const-string v8, "_sync_dirty"

    const-string v9, "0"

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    sget-object v8, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p4, v8, v6}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method protected updateQueryParameters(Lcom/google/wireless/gdata/client/QueryParams;Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;)V
    .locals 2
    .parameter "params"
    .parameter "feedSyncData"

    .prologue
    .line 174
    const-string v0, "routinginfo"

    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;->getRoutingInfoForAccount(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/wireless/gdata/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.class public Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;
.super Landroid/os/AsyncTask;
.source "BulkSessionKeyUpgradeTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$SessionKeysQuery;,
        Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$ImmediateFuture;,
        Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BulkSessionKeyUpgradeTask"


# instance fields
.field private mBulkUpradeEnabled:Z

.field private mFetchService:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/apps/books/service/ContentFetchService;",
            ">;"
        }
    .end annotation
.end field

.field private mIsOffline:Z

.field private mListener:Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$Listener;

.field private mNumFailed:I

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lcom/google/android/apps/books/service/ContentFetchService;Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$Listener;)V
    .locals 1
    .parameter "resolver"
    .parameter "fetchService"
    .parameter "listener"

    .prologue
    .line 65
    invoke-static {p2}, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->buildImmediateFuture(Lcom/google/android/apps/books/service/ContentFetchService;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;-><init>(Landroid/content/ContentResolver;Ljava/util/concurrent/Future;Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$Listener;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Ljava/util/concurrent/Future;Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$Listener;)V
    .locals 2
    .parameter "resolver"
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/apps/books/service/ContentFetchService;",
            ">;",
            "Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$Listener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, fetchService:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Lcom/google/android/apps/books/service/ContentFetchService;>;"
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 55
    const-string v0, "missing resolver"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->mResolver:Landroid/content/ContentResolver;

    .line 56
    const-string v0, "missing fetchService"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    iput-object v0, p0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->mFetchService:Ljava/util/concurrent/Future;

    .line 57
    const-string v0, "missing listener"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$Listener;

    iput-object v0, p0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->mListener:Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$Listener;

    .line 59
    iput v1, p0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->mNumFailed:I

    .line 60
    iput-boolean v1, p0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->mIsOffline:Z

    .line 61
    return-void
.end method

.method private static buildImmediateFuture(Lcom/google/android/apps/books/service/ContentFetchService;)Ljava/util/concurrent/Future;
    .locals 1
    .parameter "fetchService"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/books/service/ContentFetchService;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/apps/books/service/ContentFetchService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$ImmediateFuture;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$ImmediateFuture;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private findActiveAccounts()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 104
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v7

    .line 105
    .local v7, accounts:Ljava/util/Set;,"Ljava/util/Set<Landroid/accounts/Account;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/android/apps/books/provider/BooksContract$SessionKeys;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$SessionKeysQuery;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 108
    .local v8, cursor:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 110
    .local v6, accountName:Ljava/lang/String;
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.google"

    invoke-direct {v0, v6, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 113
    .end local v6           #accountName:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 115
    return-object v7
.end method

.method private sendRequest(Landroid/accounts/Account;Ljava/util/List;Lcom/google/android/apps/books/util/SessionKeyFactory;)V
    .locals 5
    .parameter "account"
    .parameter
    .parameter "keyFactory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/google/android/apps/books/util/SessionKeyFactory;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/books/net/ResponseGetter$OfflineIoException;
        }
    .end annotation

    .prologue
    .local p2, sessionKeyUris:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    const-string v4, "BulkSessionKeyUpgradeTask"

    .line 151
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    :goto_0
    return-void

    .line 153
    :cond_0
    const/4 v1, 0x0

    .line 155
    .local v1, numFailed:I
    :try_start_0
    invoke-virtual {p3, p1, p2}, Lcom/google/android/apps/books/util/SessionKeyFactory;->requestSessionKeyUpgrade(Landroid/accounts/Account;Ljava/util/List;)I
    :try_end_0
    .catch Lcom/google/android/apps/books/net/ResponseGetter$OfflineIoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/apps/books/util/SessionKeyFactory$SessionKeyExpiredException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/apps/books/util/SessionKeyFactory$RootKeyExpiredException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v1

    .line 174
    :goto_1
    const-string v2, "BulkSessionKeyUpgradeTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to batch update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed for account "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget v2, p0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->mNumFailed:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->mNumFailed:I

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, e:Lcom/google/android/apps/books/net/ResponseGetter$OfflineIoException;
    throw v0

    .line 158
    .end local v0           #e:Lcom/google/android/apps/books/net/ResponseGetter$OfflineIoException;
    :catch_1
    move-exception v0

    .line 161
    .local v0, e:Lcom/google/android/apps/books/util/SessionKeyFactory$SessionKeyExpiredException;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 172
    goto :goto_1

    .line 165
    .end local v0           #e:Lcom/google/android/apps/books/util/SessionKeyFactory$SessionKeyExpiredException;
    :catch_2
    move-exception v0

    .line 168
    .local v0, e:Ljava/security/GeneralSecurityException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Problem during K_s handshake"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 169
    .end local v0           #e:Ljava/security/GeneralSecurityException;
    :catch_3
    move-exception v0

    .line 171
    .local v0, e:Ljava/io/IOException;
    const-string v2, "BulkSessionKeyUpgradeTask"

    const-string v2, "Error in bulk session key upgrade."

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 162
    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method private upgradeStaleKeys(Landroid/accounts/Account;Lcom/google/android/apps/books/util/SessionKeyFactory;)V
    .locals 18
    .parameter "account"
    .parameter "keyFactory"

    .prologue
    .line 121
    const-string v13, "account_name=? AND root_key_version!= ?"

    .line 123
    .local v13, selection:Ljava/lang/String;
    const/4 v4, 0x2

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v5, v0

    aput-object v5, v8, v4

    const/4 v4, 0x1

    invoke-static {}, Lcom/google/android/apps/books/util/EncryptionUtils;->getK_rVersion()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    .line 125
    .local v8, selectionArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    sget-object v5, Lcom/google/android/apps/books/provider/BooksContract$SessionKeys;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$SessionKeysQuery;->PROJECTION:[Ljava/lang/String;

    const-string v7, "account_name=? AND root_key_version!= ?"

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 129
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v17

    .line 130
    .local v17, sessionKeyUris:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    :cond_0
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 131
    const/4 v4, 0x0

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 132
    .local v14, sessionKeyId:J
    invoke-static {v14, v15}, Lcom/google/android/apps/books/provider/BooksContract$SessionKeys;->buildSessionKeyUri(J)Landroid/net/Uri;

    move-result-object v16

    .line 133
    .local v16, sessionKeyUri:Landroid/net/Uri;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    invoke-static {v4}, Lcom/google/android/apps/books/util/GservicesHelper;->maxSessionKeyUpgradesPerRequest(Landroid/content/ContentResolver;)I

    move-result v12

    .line 135
    .local v12, maxKeys:I
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v12, :cond_0

    .line 136
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->sendRequest(Landroid/accounts/Account;Ljava/util/List;Lcom/google/android/apps/books/util/SessionKeyFactory;)V

    .line 137
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/android/apps/books/net/ResponseGetter$OfflineIoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    .end local v12           #maxKeys:I
    .end local v14           #sessionKeyId:J
    .end local v16           #sessionKeyUri:Landroid/net/Uri;
    .end local v17           #sessionKeyUris:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    :catch_0
    move-exception v4

    move-object v11, v4

    .line 142
    .local v11, e:Lcom/google/android/apps/books/net/ResponseGetter$OfflineIoException;
    const/4 v4, 0x1

    :try_start_1
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->mIsOffline:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 146
    .end local v11           #e:Lcom/google/android/apps/books/net/ResponseGetter$OfflineIoException;
    :goto_1
    return-void

    .line 140
    .restart local v17       #sessionKeyUris:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->sendRequest(Landroid/accounts/Account;Ljava/util/List;Lcom/google/android/apps/books/util/SessionKeyFactory;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/android/apps/books/net/ResponseGetter$OfflineIoException; {:try_start_2 .. :try_end_2} :catch_0

    .line 144
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v17           #sessionKeyUris:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    :catchall_0
    move-exception v4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v4
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .parameter "voids"

    .prologue
    const/4 v6, 0x0

    .line 82
    :try_start_0
    iget-object v5, p0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v5}, Lcom/google/android/apps/books/util/GservicesHelper;->shouldBulkUpgradeSessionKeys(Landroid/content/ContentResolver;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->mBulkUpradeEnabled:Z

    .line 83
    iget-boolean v5, p0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->mBulkUpradeEnabled:Z

    if-nez v5, :cond_0

    move-object v5, v6

    .line 97
    :goto_0
    return-object v5

    .line 86
    :cond_0
    iget-object v5, p0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->mFetchService:Ljava/util/concurrent/Future;

    invoke-interface {v5}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/books/service/ContentFetchService;

    .line 87
    .local v2, fetchService:Lcom/google/android/apps/books/service/ContentFetchService;
    invoke-virtual {v2}, Lcom/google/android/apps/books/service/ContentFetchService;->getSessionKeyFactory()Lcom/google/android/apps/books/util/SessionKeyFactory;

    move-result-object v4

    .line 88
    .local v4, keyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;
    invoke-direct {p0}, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->findActiveAccounts()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 89
    .local v0, account:Landroid/accounts/Account;
    invoke-direct {p0, v0, v4}, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->upgradeStaleKeys(Landroid/accounts/Account;Lcom/google/android/apps/books/util/SessionKeyFactory;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 91
    .end local v0           #account:Landroid/accounts/Account;
    .end local v2           #fetchService:Lcom/google/android/apps/books/service/ContentFetchService;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #keyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 92
    .local v1, e:Ljava/lang/InterruptedException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 93
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 94
    .local v1, e:Ljava/util/concurrent/ExecutionException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .end local v1           #e:Ljava/util/concurrent/ExecutionException;
    .restart local v2       #fetchService:Lcom/google/android/apps/books/service/ContentFetchService;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #keyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;
    :cond_1
    move-object v5, v6

    .line 97
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->mBulkUpradeEnabled:Z

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->mListener:Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$Listener;

    iget-boolean v1, p0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->mIsOffline:Z

    iget v2, p0, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask;->mNumFailed:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$Listener;->onFinished(ZI)V

    .line 184
    :cond_0
    return-void
.end method

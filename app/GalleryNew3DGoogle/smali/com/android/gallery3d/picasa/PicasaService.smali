.class public final Lcom/android/gallery3d/picasa/PicasaService;
.super Landroid/app/Service;
.source "PicasaService.java"


# static fields
.field private static final sSyncLock:Ljava/lang/Object;

.field private static sSyncPending:Z

.field private static sSyncRunning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/gallery3d/picasa/PicasaService;->sSyncLock:Ljava/lang/Object;

    .line 50
    sput-boolean v1, Lcom/android/gallery3d/picasa/PicasaService;->sSyncRunning:Z

    .line 51
    sput-boolean v1, Lcom/android/gallery3d/picasa/PicasaService;->sSyncPending:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 75
    return-void
.end method

.method private static getContentProvider(Landroid/content/Context;)Lcom/android/gallery3d/picasa/PicasaContentProvider;
    .locals 3
    .parameter "context"

    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 79
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v2, "com.android.gallery3d.picasa.contentprovider"

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 81
    .local v0, client:Landroid/content/ContentProviderClient;
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/gallery3d/picasa/PicasaContentProvider;

    return-object p0
.end method

.method private static getIsSyncable(Landroid/content/Context;Landroid/accounts/Account;)Z
    .locals 13
    .parameter "context"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/accounts/OperationCanceledException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 184
    :try_start_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    const-string v7, "com.google"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "service_lh2"

    aput-object v10, v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v6

    invoke-interface {v6}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/accounts/Account;

    .line 187
    .local v5, picasaAccounts:[Landroid/accounts/Account;
    move-object v0, v5

    .local v0, arr$:[Landroid/accounts/Account;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 188
    .local v4, picasaAccount:Landroid/accounts/Account;
    invoke-virtual {p1, v4}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    move v6, v12

    .line 192
    .end local v4           #picasaAccount:Landroid/accounts/Account;
    :goto_1
    return v6

    .line 187
    .restart local v4       #picasaAccount:Landroid/accounts/Account;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v4           #picasaAccount:Landroid/accounts/Account;
    :cond_1
    move v6, v11

    .line 192
    goto :goto_1

    .line 193
    .end local v0           #arr$:[Landroid/accounts/Account;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #picasaAccounts:[Landroid/accounts/Account;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 194
    .local v1, e:Landroid/accounts/AuthenticatorException;
    new-instance v6, Ljava/io/IOException;

    invoke-virtual {v1}, Landroid/accounts/AuthenticatorException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/SyncResult;Z)Z
    .locals 5
    .parameter "context"
    .parameter "account"
    .parameter "extras"
    .parameter "syncResult"
    .parameter "stopCurrent"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 96
    :goto_0
    sget-object v1, Lcom/android/gallery3d/picasa/PicasaService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 99
    :try_start_0
    sget-boolean v2, Lcom/android/gallery3d/picasa/PicasaService;->sSyncRunning:Z

    if-eqz v2, :cond_1

    .line 100
    if-nez p4, :cond_0

    monitor-exit v1

    move v1, v3

    .line 124
    :goto_1
    return v1

    .line 101
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/gallery3d/picasa/PicasaService;->sSyncPending:Z

    .line 104
    invoke-static {p0}, Lcom/android/gallery3d/picasa/PicasaService;->getContentProvider(Landroid/content/Context;)Lcom/android/gallery3d/picasa/PicasaContentProvider;

    move-result-object v0

    .line 105
    .local v0, provider:Lcom/android/gallery3d/picasa/PicasaContentProvider;
    invoke-virtual {v0}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->stopCurrentSyncing()V

    .line 106
    monitor-exit v1

    move v1, v3

    goto :goto_1

    .line 109
    .end local v0           #provider:Lcom/android/gallery3d/picasa/PicasaContentProvider;
    :cond_1
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/gallery3d/picasa/PicasaService;->sSyncRunning:Z

    .line 110
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/gallery3d/picasa/PicasaService;->sSyncPending:Z

    .line 111
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 116
    :try_start_1
    invoke-static {p0, p1, p2, p3}, Lcom/android/gallery3d/picasa/PicasaService;->performSyncImpl(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/SyncResult;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 121
    :goto_2
    sget-object v1, Lcom/android/gallery3d/picasa/PicasaService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 122
    const/4 v2, 0x0

    :try_start_2
    sput-boolean v2, Lcom/android/gallery3d/picasa/PicasaService;->sSyncRunning:Z

    .line 123
    sget-boolean v2, Lcom/android/gallery3d/picasa/PicasaService;->sSyncPending:Z

    if-eqz v2, :cond_2

    monitor-exit v1

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 111
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 124
    :cond_2
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v1, v4

    goto :goto_1

    .line 117
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method private static performSyncImpl(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/SyncResult;)V
    .locals 10
    .parameter "context"
    .parameter "account"
    .parameter "extras"
    .parameter "syncResult"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 132
    const-string v0, "com.android.gallery3d.picasa.contentprovider"

    .line 133
    .local v0, authority:Ljava/lang/String;
    const-string v5, "initialize"

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 134
    if-eqz p1, :cond_0

    invoke-static {p1, v0}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_0

    .line 136
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/gallery3d/picasa/PicasaService;->getIsSyncable(Landroid/content/Context;Landroid/accounts/Account;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v8

    :goto_0
    invoke-static {p1, v0, v5}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v5, v6

    .line 136
    goto :goto_0

    .line 147
    :cond_2
    if-eqz p1, :cond_3

    invoke-static {p1, v0}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_3

    .line 148
    iget-object v5, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v5, Landroid/content/SyncStats;->numSkippedEntries:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numSkippedEntries:J

    goto :goto_1

    .line 154
    :cond_3
    const-string v5, "com.android.gallery3d.SYNC_TYPE"

    invoke-virtual {p2, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 155
    .local v4, type:I
    const-string v5, "com.android.gallery3d.SYNC_ID"

    const-wide/16 v6, -0x1

    invoke-virtual {p2, v5, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 159
    .local v1, id:J
    invoke-static {p0}, Lcom/android/gallery3d/picasa/PicasaService;->getContentProvider(Landroid/content/Context;)Lcom/android/gallery3d/picasa/PicasaContentProvider;

    move-result-object v3

    .line 160
    .local v3, provider:Lcom/android/gallery3d/picasa/PicasaContentProvider;
    invoke-virtual {v3}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->reloadAccounts()V

    .line 163
    invoke-virtual {v3, p1}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->setActiveSyncAccount(Landroid/accounts/Account;)V

    .line 166
    packed-switch v4, :pswitch_data_0

    .line 177
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 168
    :pswitch_0
    invoke-virtual {v3, p3}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->syncUsers(Landroid/content/SyncResult;)V

    goto :goto_1

    .line 171
    :pswitch_1
    invoke-virtual {v3, v8, p3}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->syncUsersAndAlbums(ZLandroid/content/SyncResult;)V

    goto :goto_1

    .line 174
    :pswitch_2
    invoke-virtual {v3, v1, v2, v8, p3}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->syncPhotosAndCacheForAlbum(JZLandroid/content/SyncResult;)V

    goto :goto_1

    .line 139
    .end local v1           #id:J
    .end local v3           #provider:Lcom/android/gallery3d/picasa/PicasaContentProvider;
    .end local v4           #type:I
    :catch_0
    move-exception v5

    goto :goto_1

    .line 138
    :catch_1
    move-exception v5

    goto :goto_1

    .line 166
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setAlbumCachingFlag(Landroid/content/Context;JI)V
    .locals 1
    .parameter "context"
    .parameter "albumId"
    .parameter "flag"

    .prologue
    .line 69
    invoke-static {p0}, Lcom/android/gallery3d/picasa/PicasaService;->getContentProvider(Landroid/content/Context;)Lcom/android/gallery3d/picasa/PicasaContentProvider;

    move-result-object v0

    .line 70
    .local v0, provider:Lcom/android/gallery3d/picasa/PicasaContentProvider;
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/gallery3d/picasa/PicasaContentProvider;->setAlbumCachingFlag(JI)V

    .line 71
    invoke-static {p0}, Lcom/android/gallery3d/picasa/PicasaService;->startSyncAll(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method public static startSyncAll(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 54
    new-instance v0, Lcom/android/gallery3d/picasa/PicasaService$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/picasa/PicasaService$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/gallery3d/picasa/PicasaService$1;->start()V

    .line 65
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 86
    new-instance v0, Lcom/android/gallery3d/picasa/PicasaSyncAdapter;

    invoke-virtual {p0}, Lcom/android/gallery3d/picasa/PicasaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/picasa/PicasaSyncAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/gallery3d/picasa/PicasaSyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

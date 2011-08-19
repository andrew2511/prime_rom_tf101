.class public Lcom/android/gallery3d/picasa/PicasaSyncAdapter;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "PicasaSyncAdapter.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "applicationContext"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 36
    iput-object p1, p0, Lcom/android/gallery3d/picasa/PicasaSyncAdapter;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method


# virtual methods
.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 17
    .parameter "account"
    .parameter "extras"
    .parameter "authority"
    .parameter "providerClient"
    .parameter "syncResult"

    .prologue
    .line 42
    const-string v12, "initialize"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    move-object v1, v12

    move v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 44
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/picasa/PicasaSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v12

    const-string v13, "com.google"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "service_lh2"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v12

    invoke-interface {v12}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/accounts/Account;

    .line 49
    .local v11, picasaAccounts:[Landroid/accounts/Account;
    const/4 v8, 0x0

    .line 50
    .local v8, isPicasaAccount:Z
    move-object v5, v11

    .local v5, arr$:[Landroid/accounts/Account;
    array-length v9, v5

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v10, v5, v7

    .line 51
    .local v10, picasaAccount:Landroid/accounts/Account;
    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 52
    const/4 v8, 0x1

    .line 56
    .end local v10           #picasaAccount:Landroid/accounts/Account;
    :cond_0
    if-eqz v8, :cond_1

    .line 57
    const/4 v12, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move v2, v12

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 58
    const/4 v12, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move v2, v12

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v5           #arr$:[Landroid/accounts/Account;
    .end local v7           #i$:I
    .end local v8           #isPicasaAccount:Z
    .end local v9           #len$:I
    .end local v11           #picasaAccounts:[Landroid/accounts/Account;
    :cond_1
    :goto_1
    return-void

    .line 50
    .restart local v5       #arr$:[Landroid/accounts/Account;
    .restart local v7       #i$:I
    .restart local v8       #isPicasaAccount:Z
    .restart local v9       #len$:I
    .restart local v10       #picasaAccount:Landroid/accounts/Account;
    .restart local v11       #picasaAccounts:[Landroid/accounts/Account;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 60
    .end local v5           #arr$:[Landroid/accounts/Account;
    .end local v7           #i$:I
    .end local v8           #isPicasaAccount:Z
    .end local v9           #len$:I
    .end local v10           #picasaAccount:Landroid/accounts/Account;
    .end local v11           #picasaAccounts:[Landroid/accounts/Account;
    :catch_0
    move-exception v12

    move-object v6, v12

    .line 61
    .local v6, e:Ljava/lang/Exception;
    const-string v12, "PicasaSyncAdapter"

    const-string v13, "cannot do sync"

    invoke-static {v12, v13, v6}, Lcom/android/gallery3d/picasa/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 66
    .end local v6           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/picasa/PicasaSyncAdapter;->mContext:Landroid/content/Context;

    move-object v12, v0

    const/4 v13, 0x0

    move-object v0, v12

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move v4, v13

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/picasa/PicasaService;->performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/SyncResult;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 67
    :catch_1
    move-exception v12

    move-object v6, v12

    .line 69
    .restart local v6       #e:Ljava/lang/Exception;
    move-object/from16 v0, p5

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v12, v0

    iget-wide v13, v12, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v15, 0x1

    add-long/2addr v13, v15

    iput-wide v13, v12, Landroid/content/SyncStats;->numIoExceptions:J

    goto :goto_1
.end method

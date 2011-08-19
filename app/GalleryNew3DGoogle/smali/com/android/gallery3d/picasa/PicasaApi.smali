.class public final Lcom/android/gallery3d/picasa/PicasaApi;
.super Ljava/lang/Object;
.source "PicasaApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;
    }
.end annotation


# static fields
.field private static final BASE_QUERY_STRING:Ljava/lang/String;


# instance fields
.field private final mAlbumInstance:Lcom/android/gallery3d/picasa/AlbumEntry;

.field private mAuth:Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;

.field private final mClient:Lcom/android/gallery3d/picasa/GDataClient;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mOperation:Lcom/android/gallery3d/picasa/GDataClient$Operation;

.field private final mParser:Lcom/android/gallery3d/picasa/GDataParser;

.field private final mPhotoInstance:Lcom/android/gallery3d/picasa/PhotoEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "?max-results=1000"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, query:Ljava/lang/StringBuilder;
    const-string v1, "&imgmax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, "&thumbsize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "200c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "640u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string v1, "&visibility=visible"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/gallery3d/picasa/PicasaApi;->BASE_QUERY_STRING:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1
    .parameter "cr"

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/android/gallery3d/picasa/GDataClient$Operation;

    invoke-direct {v0}, Lcom/android/gallery3d/picasa/GDataClient$Operation;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/picasa/PicasaApi;->mOperation:Lcom/android/gallery3d/picasa/GDataClient$Operation;

    .line 70
    new-instance v0, Lcom/android/gallery3d/picasa/GDataParser;

    invoke-direct {v0}, Lcom/android/gallery3d/picasa/GDataParser;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/picasa/PicasaApi;->mParser:Lcom/android/gallery3d/picasa/GDataParser;

    .line 71
    new-instance v0, Lcom/android/gallery3d/picasa/AlbumEntry;

    invoke-direct {v0}, Lcom/android/gallery3d/picasa/AlbumEntry;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/picasa/PicasaApi;->mAlbumInstance:Lcom/android/gallery3d/picasa/AlbumEntry;

    .line 72
    new-instance v0, Lcom/android/gallery3d/picasa/PhotoEntry;

    invoke-direct {v0}, Lcom/android/gallery3d/picasa/PhotoEntry;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/picasa/PicasaApi;->mPhotoInstance:Lcom/android/gallery3d/picasa/PhotoEntry;

    .line 148
    iput-object p1, p0, Lcom/android/gallery3d/picasa/PicasaApi;->mContentResolver:Landroid/content/ContentResolver;

    .line 149
    new-instance v0, Lcom/android/gallery3d/picasa/GDataClient;

    invoke-direct {v0}, Lcom/android/gallery3d/picasa/GDataClient;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/picasa/PicasaApi;->mClient:Lcom/android/gallery3d/picasa/GDataClient;

    .line 150
    return-void
.end method

.method public static canonicalizeUsername(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "username"

    .prologue
    .line 138
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 139
    const-string v0, "@gmail."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "@googlemail."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 144
    :cond_1
    return-object p0
.end method

.method public static getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 89
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 90
    .local v1, accountManager:Landroid/accounts/AccountManager;
    new-array v2, v4, [Landroid/accounts/Account;

    .line 92
    .local v2, accounts:[Landroid/accounts/Account;
    :try_start_0
    const-string v4, "com.google"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "service_lh2"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v4

    invoke-interface {v4}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [Landroid/accounts/Account;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-object v2

    .line 94
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 95
    .local v3, e:Ljava/lang/Exception;
    const-string v4, "PicasaAPI"

    const-string v5, "cannot get accounts"

    invoke-static {v4, v5, v3}, Lcom/android/gallery3d/picasa/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getAuthenticatedAccounts(Landroid/content/Context;)[Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;
    .locals 11
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    .line 101
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 102
    .local v1, accountManager:Landroid/accounts/AccountManager;
    invoke-static {p0}, Lcom/android/gallery3d/picasa/PicasaApi;->getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v2

    .line 103
    .local v2, accounts:[Landroid/accounts/Account;
    if-nez v2, :cond_0

    new-array v9, v9, [Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;

    .line 124
    .end local p0
    :goto_0
    return-object v9

    .line 105
    .restart local p0
    :cond_0
    array-length v7, v2

    .line 106
    .local v7, numAccounts:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 107
    .local v3, authAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-eq v6, v7, :cond_2

    .line 108
    aget-object v0, v2, v6

    .line 112
    .local v0, account:Landroid/accounts/Account;
    :try_start_0
    const-string v9, "lh2"

    const/4 v10, 0x0

    invoke-virtual {v1, v0, v9, v10}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 116
    .local v4, authToken:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 117
    iget-object v9, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/gallery3d/picasa/PicasaApi;->canonicalizeUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 118
    .local v8, username:Ljava/lang/String;
    new-instance v9, Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;

    invoke-direct {v9, v8, v4, v0}, Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v4           #authToken:Ljava/lang/String;
    .end local v8           #username:Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 120
    :catch_0
    move-exception v9

    move-object v5, v9

    .line 121
    .local v5, e:Ljava/lang/Exception;
    const-string v9, "PicasaAPI"

    const-string v10, "fail to get authenticated accounts"

    invoke-static {v9, v10, v5}, Lcom/android/gallery3d/picasa/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 124
    .end local v0           #account:Landroid/accounts/Account;
    .end local v5           #e:Ljava/lang/Exception;
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;

    move-object v9, p0

    goto :goto_0
.end method


# virtual methods
.method public deleteEntry(Ljava/lang/String;)I
    .locals 6
    .parameter "editUri"

    .prologue
    .line 317
    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/picasa/PicasaApi;->mOperation:Lcom/android/gallery3d/picasa/GDataClient$Operation;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :try_start_1
    iget-object v1, p0, Lcom/android/gallery3d/picasa/PicasaApi;->mOperation:Lcom/android/gallery3d/picasa/GDataClient$Operation;

    .line 319
    .local v1, operation:Lcom/android/gallery3d/picasa/GDataClient$Operation;
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/gallery3d/picasa/GDataClient$Operation;->inOutEtag:Ljava/lang/String;

    .line 320
    iget-object v3, p0, Lcom/android/gallery3d/picasa/PicasaApi;->mClient:Lcom/android/gallery3d/picasa/GDataClient;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 321
    :try_start_2
    iget-object v4, p0, Lcom/android/gallery3d/picasa/PicasaApi;->mClient:Lcom/android/gallery3d/picasa/GDataClient;

    invoke-virtual {v4, p1, v1}, Lcom/android/gallery3d/picasa/GDataClient;->delete(Ljava/lang/String;Lcom/android/gallery3d/picasa/GDataClient$Operation;)V

    .line 322
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 323
    :try_start_3
    iget v3, v1, Lcom/android/gallery3d/picasa/GDataClient$Operation;->outStatus:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_0

    .line 324
    const/4 v3, 0x0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v2, v3

    .line 332
    .end local v1           #operation:Lcom/android/gallery3d/picasa/GDataClient$Operation;
    :goto_0
    return v2

    .line 322
    .restart local v1       #operation:Lcom/android/gallery3d/picasa/GDataClient$Operation;
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4

    .line 328
    .end local v1           #operation:Lcom/android/gallery3d/picasa/GDataClient$Operation;
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 329
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 330
    .local v0, e:Ljava/io/IOException;
    const-string v2, "PicasaAPI"

    const-string v3, "deleteEntry"

    invoke-static {v2, v3, v0}, Lcom/android/gallery3d/picasa/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 332
    .end local v0           #e:Ljava/io/IOException;
    :goto_1
    const/4 v2, 0x2

    goto :goto_0

    .line 326
    .restart local v1       #operation:Lcom/android/gallery3d/picasa/GDataClient$Operation;
    :cond_0
    :try_start_7
    const-string v3, "PicasaAPI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteEntry: failed with status code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/gallery3d/picasa/GDataClient$Operation;->outStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/picasa/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1
.end method

.method public getAlbumPhotos(Landroid/accounts/AccountManager;Landroid/content/SyncResult;Lcom/android/gallery3d/picasa/AlbumEntry;Lcom/android/gallery3d/picasa/GDataParser$EntryHandler;)I
    .locals 17
    .parameter "accountManager"
    .parameter "syncResult"
    .parameter "album"
    .parameter "handler"

    .prologue
    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/picasa/PicasaApi;->mContentResolver:Landroid/content/ContentResolver;

    move-object v10, v0

    const-string v11, "picasa_gdata_base_url"

    invoke-static {v10, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, baseUrl:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    if-eqz v3, :cond_1

    move-object v10, v3

    :goto_0
    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    .local v4, builder:Ljava/lang/StringBuilder;
    const-string v10, "user/"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/picasa/PicasaApi;->mAuth:Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;

    move-object v10, v0

    iget-object v10, v10, Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;->user:Ljava/lang/String;

    invoke-static {v10}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    const-string v10, "/albumid/"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/gallery3d/picasa/AlbumEntry;->id:J

    move-wide v10, v0

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 247
    sget-object v10, Lcom/android/gallery3d/picasa/PicasaApi;->BASE_QUERY_STRING:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    const-string v10, "&kind=photo"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/picasa/PicasaApi;->mOperation:Lcom/android/gallery3d/picasa/GDataClient$Operation;

    move-object v10, v0

    monitor-enter v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2

    .line 252
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/picasa/PicasaApi;->mOperation:Lcom/android/gallery3d/picasa/GDataClient$Operation;

    move-object v7, v0

    .line 253
    .local v7, operation:Lcom/android/gallery3d/picasa/GDataClient$Operation;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/gallery3d/picasa/AlbumEntry;->photosEtag:Ljava/lang/String;

    move-object v11, v0

    iput-object v11, v7, Lcom/android/gallery3d/picasa/GDataClient$Operation;->inOutEtag:Ljava/lang/String;

    .line 254
    const/4 v9, 0x0

    .line 255
    .local v9, retry:Z
    const/4 v6, 0x1

    .line 257
    .local v6, numRetries:I
    :cond_0
    const/4 v9, 0x0

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/picasa/PicasaApi;->mClient:Lcom/android/gallery3d/picasa/GDataClient;

    move-object v11, v0

    monitor-enter v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 259
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/picasa/PicasaApi;->mClient:Lcom/android/gallery3d/picasa/GDataClient;

    move-object v12, v0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v7}, Lcom/android/gallery3d/picasa/GDataClient;->get(Ljava/lang/String;Lcom/android/gallery3d/picasa/GDataClient$Operation;)V

    .line 260
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 261
    :try_start_3
    iget v11, v7, Lcom/android/gallery3d/picasa/GDataClient$Operation;->outStatus:I

    sparse-switch v11, :sswitch_data_0

    .line 278
    const-string v11, "PicasaAPI"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getAlbumPhotos: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", unexpected status code "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v7, Lcom/android/gallery3d/picasa/GDataClient$Operation;->outStatus:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/gallery3d/picasa/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v11, v0

    iget-wide v12, v11, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    iput-wide v12, v11, Landroid/content/SyncStats;->numIoExceptions:J

    .line 281
    const/4 v11, 0x2

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v10, v11

    .line 312
    .end local v6           #numRetries:I
    .end local v7           #operation:Lcom/android/gallery3d/picasa/GDataClient$Operation;
    .end local v9           #retry:Z
    :goto_1
    return v10

    .line 242
    .end local v4           #builder:Ljava/lang/StringBuilder;
    :cond_1
    const-string v10, "https://picasaweb.google.com/data/feed/api/"

    goto/16 :goto_0

    .line 260
    .restart local v4       #builder:Ljava/lang/StringBuilder;
    .restart local v6       #numRetries:I
    .restart local v7       #operation:Lcom/android/gallery3d/picasa/GDataClient$Operation;
    .restart local v9       #retry:Z
    :catchall_0
    move-exception v12

    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v12

    .line 303
    .end local v6           #numRetries:I
    .end local v7           #operation:Lcom/android/gallery3d/picasa/GDataClient$Operation;
    .end local v9           #retry:Z
    :catchall_1
    move-exception v11

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v11
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_6} :catch_2

    .line 305
    :catch_0
    move-exception v10

    move-object v5, v10

    .line 306
    .local v5, e:Ljava/io/IOException;
    const-string v10, "PicasaAPI"

    const-string v11, "getAlbumPhotos"

    invoke-static {v10, v11, v5}, Lcom/android/gallery3d/picasa/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 307
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v10, v0

    iget-wide v11, v10, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    iput-wide v11, v10, Landroid/content/SyncStats;->numIoExceptions:J

    .line 312
    .end local v5           #e:Ljava/io/IOException;
    :goto_2
    const/4 v10, 0x2

    goto :goto_1

    .line 265
    .restart local v6       #numRetries:I
    .restart local v7       #operation:Lcom/android/gallery3d/picasa/GDataClient$Operation;
    .restart local v9       #retry:Z
    :sswitch_0
    const/4 v11, 0x1

    :try_start_7
    monitor-exit v10

    move v10, v11

    goto :goto_1

    .line 269
    :sswitch_1
    if-nez v9, :cond_2

    .line 270
    const/4 v9, 0x1

    .line 271
    const-string v11, "lh2"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/picasa/PicasaApi;->mAuth:Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;

    move-object v12, v0

    iget-object v12, v12, Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;->authToken:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v11

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_2
    if-nez v6, :cond_3

    .line 274
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v11, v0

    iget-wide v12, v11, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    iput-wide v12, v11, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 283
    :cond_3
    :sswitch_2
    add-int/lit8 v6, v6, -0x1

    .line 284
    if-eqz v9, :cond_4

    if-gez v6, :cond_0

    .line 287
    :cond_4
    iget-object v11, v7, Lcom/android/gallery3d/picasa/GDataClient$Operation;->inOutEtag:Ljava/lang/String;

    move-object v0, v11

    move-object/from16 v1, p3

    iput-object v0, v1, Lcom/android/gallery3d/picasa/AlbumEntry;->photosEtag:Ljava/lang/String;

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/picasa/PicasaApi;->mParser:Lcom/android/gallery3d/picasa/GDataParser;

    move-object v11, v0

    monitor-enter v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 291
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/picasa/PicasaApi;->mParser:Lcom/android/gallery3d/picasa/GDataParser;

    move-object v8, v0

    .line 292
    .local v8, parser:Lcom/android/gallery3d/picasa/GDataParser;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/picasa/PicasaApi;->mPhotoInstance:Lcom/android/gallery3d/picasa/PhotoEntry;

    move-object v12, v0

    invoke-virtual {v8, v12}, Lcom/android/gallery3d/picasa/GDataParser;->setEntry(Lcom/android/gallery3d/picasa/Entry;)V

    .line 293
    move-object v0, v8

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/picasa/GDataParser;->setHandler(Lcom/android/gallery3d/picasa/GDataParser$EntryHandler;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 295
    :try_start_9
    iget-object v12, v7, Lcom/android/gallery3d/picasa/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    sget-object v13, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-static {v12, v13, v8}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_1

    .line 302
    :try_start_a
    monitor-exit v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 303
    :try_start_b
    monitor-exit v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 304
    const/4 v10, 0x0

    goto :goto_1

    .line 296
    :catch_1
    move-exception v12

    move-object v5, v12

    .line 297
    .local v5, e:Ljava/net/SocketException;
    :try_start_c
    const-string v12, "PicasaAPI"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getAlbumPhotos: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/gallery3d/picasa/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v12, v0

    iget-wide v13, v12, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v15, 0x1

    add-long/2addr v13, v15

    iput-wide v13, v12, Landroid/content/SyncStats;->numIoExceptions:J

    .line 299
    invoke-virtual {v5}, Ljava/net/SocketException;->printStackTrace()V

    .line 300
    const/4 v12, 0x2

    monitor-exit v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    monitor-exit v10
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move v10, v12

    goto/16 :goto_1

    .line 302
    .end local v5           #e:Ljava/net/SocketException;
    .end local v8           #parser:Lcom/android/gallery3d/picasa/GDataParser;
    :catchall_2
    move-exception v12

    :try_start_e
    monitor-exit v11
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    throw v12
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 308
    .end local v6           #numRetries:I
    .end local v7           #operation:Lcom/android/gallery3d/picasa/GDataClient$Operation;
    .end local v9           #retry:Z
    :catch_2
    move-exception v10

    move-object v5, v10

    .line 309
    .local v5, e:Lorg/xml/sax/SAXException;
    const-string v10, "PicasaAPI"

    const-string v11, "getAlbumPhotos"

    invoke-static {v10, v11, v5}, Lcom/android/gallery3d/picasa/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v10, v0

    iget-wide v11, v10, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    iput-wide v11, v10, Landroid/content/SyncStats;->numParseExceptions:J

    goto/16 :goto_2

    .line 261
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_2
        0x130 -> :sswitch_0
        0x191 -> :sswitch_1
        0x193 -> :sswitch_1
    .end sparse-switch
.end method

.method public getAlbums(Landroid/accounts/AccountManager;Landroid/content/SyncResult;Lcom/android/gallery3d/picasa/UserEntry;Lcom/android/gallery3d/picasa/GDataParser$EntryHandler;)I
    .locals 17
    .parameter "accountManager"
    .parameter "syncResult"
    .parameter "user"
    .parameter "handler"

    .prologue
    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/picasa/PicasaApi;->mContentResolver:Landroid/content/ContentResolver;

    move-object v10, v0

    const-string v11, "picasa_gdata_base_url"

    invoke-static {v10, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, baseUrl:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    if-eqz v3, :cond_2

    move-object v10, v3

    :goto_0
    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .local v4, builder:Ljava/lang/StringBuilder;
    const-string v10, "user/"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/picasa/PicasaApi;->mAuth:Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;

    move-object v10, v0

    iget-object v10, v10, Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;->user:Ljava/lang/String;

    invoke-static {v10}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    sget-object v10, Lcom/android/gallery3d/picasa/PicasaApi;->BASE_QUERY_STRING:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const-string v10, "&kind=album"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/picasa/PicasaApi;->mOperation:Lcom/android/gallery3d/picasa/GDataClient$Operation;

    move-object v10, v0

    monitor-enter v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2

    .line 173
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/picasa/PicasaApi;->mOperation:Lcom/android/gallery3d/picasa/GDataClient$Operation;

    move-object v7, v0

    .line 174
    .local v7, operation:Lcom/android/gallery3d/picasa/GDataClient$Operation;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/gallery3d/picasa/UserEntry;->albumsEtag:Ljava/lang/String;

    move-object v11, v0

    iput-object v11, v7, Lcom/android/gallery3d/picasa/GDataClient$Operation;->inOutEtag:Ljava/lang/String;

    .line 175
    const/4 v9, 0x0

    .line 176
    .local v9, retry:Z
    const/4 v6, 0x1

    .line 178
    .local v6, numRetries:I
    :cond_0
    const/4 v9, 0x0

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/picasa/PicasaApi;->mClient:Lcom/android/gallery3d/picasa/GDataClient;

    move-object v11, v0

    monitor-enter v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 180
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/picasa/PicasaApi;->mClient:Lcom/android/gallery3d/picasa/GDataClient;

    move-object v12, v0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v7}, Lcom/android/gallery3d/picasa/GDataClient;->get(Ljava/lang/String;Lcom/android/gallery3d/picasa/GDataClient$Operation;)V

    .line 181
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    :try_start_3
    iget v11, v7, Lcom/android/gallery3d/picasa/GDataClient$Operation;->outStatus:I

    sparse-switch v11, :sswitch_data_0

    .line 199
    :cond_1
    :goto_1
    const-string v11, "PicasaAPI"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getAlbums uri "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/gallery3d/picasa/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v11, "PicasaAPI"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getAlbums: unexpected status code "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v7, Lcom/android/gallery3d/picasa/GDataClient$Operation;->outStatus:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " data: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v7, Lcom/android/gallery3d/picasa/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/gallery3d/picasa/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v11, v0

    iget-wide v12, v11, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    iput-wide v12, v11, Landroid/content/SyncStats;->numIoExceptions:J

    .line 203
    const/4 v11, 0x2

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v10, v11

    .line 234
    .end local v6           #numRetries:I
    .end local v7           #operation:Lcom/android/gallery3d/picasa/GDataClient$Operation;
    .end local v9           #retry:Z
    :goto_2
    return v10

    .line 165
    .end local v4           #builder:Ljava/lang/StringBuilder;
    :cond_2
    const-string v10, "https://picasaweb.google.com/data/feed/api/"

    goto/16 :goto_0

    .line 181
    .restart local v4       #builder:Ljava/lang/StringBuilder;
    .restart local v6       #numRetries:I
    .restart local v7       #operation:Lcom/android/gallery3d/picasa/GDataClient$Operation;
    .restart local v9       #retry:Z
    :catchall_0
    move-exception v12

    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v12

    .line 225
    .end local v6           #numRetries:I
    .end local v7           #operation:Lcom/android/gallery3d/picasa/GDataClient$Operation;
    .end local v9           #retry:Z
    :catchall_1
    move-exception v11

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v11
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_6} :catch_2

    .line 227
    :catch_0
    move-exception v10

    move-object v5, v10

    .line 228
    .local v5, e:Ljava/io/IOException;
    const-string v10, "PicasaAPI"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAlbums: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/gallery3d/picasa/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v10, v0

    iget-wide v11, v10, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    iput-wide v11, v10, Landroid/content/SyncStats;->numIoExceptions:J

    .line 234
    .end local v5           #e:Ljava/io/IOException;
    :goto_3
    const/4 v10, 0x2

    goto :goto_2

    .line 186
    .restart local v6       #numRetries:I
    .restart local v7       #operation:Lcom/android/gallery3d/picasa/GDataClient$Operation;
    .restart local v9       #retry:Z
    :sswitch_0
    const/4 v11, 0x1

    :try_start_7
    monitor-exit v10

    move v10, v11

    goto :goto_2

    .line 189
    :sswitch_1
    if-nez v9, :cond_3

    .line 190
    const-string v11, "com.google"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/picasa/PicasaApi;->mAuth:Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;

    move-object v12, v0

    iget-object v12, v12, Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;->authToken:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v11

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const/4 v9, 0x1

    .line 194
    :cond_3
    if-nez v6, :cond_1

    .line 195
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v11, v0

    iget-wide v12, v11, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    iput-wide v12, v11, Landroid/content/SyncStats;->numAuthExceptions:J

    goto/16 :goto_1

    .line 205
    :sswitch_2
    add-int/lit8 v6, v6, -0x1

    .line 206
    if-eqz v9, :cond_4

    if-gez v6, :cond_0

    .line 209
    :cond_4
    iget-object v11, v7, Lcom/android/gallery3d/picasa/GDataClient$Operation;->inOutEtag:Ljava/lang/String;

    move-object v0, v11

    move-object/from16 v1, p3

    iput-object v0, v1, Lcom/android/gallery3d/picasa/UserEntry;->albumsEtag:Ljava/lang/String;

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/picasa/PicasaApi;->mParser:Lcom/android/gallery3d/picasa/GDataParser;

    move-object v11, v0

    monitor-enter v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 213
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/picasa/PicasaApi;->mParser:Lcom/android/gallery3d/picasa/GDataParser;

    move-object v8, v0

    .line 214
    .local v8, parser:Lcom/android/gallery3d/picasa/GDataParser;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/picasa/PicasaApi;->mAlbumInstance:Lcom/android/gallery3d/picasa/AlbumEntry;

    move-object v12, v0

    invoke-virtual {v8, v12}, Lcom/android/gallery3d/picasa/GDataParser;->setEntry(Lcom/android/gallery3d/picasa/Entry;)V

    .line 215
    move-object v0, v8

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/picasa/GDataParser;->setHandler(Lcom/android/gallery3d/picasa/GDataParser$EntryHandler;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 217
    :try_start_9
    iget-object v12, v7, Lcom/android/gallery3d/picasa/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    sget-object v13, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-static {v12, v13, v8}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_1

    .line 224
    :try_start_a
    monitor-exit v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 225
    :try_start_b
    monitor-exit v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 226
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 218
    :catch_1
    move-exception v12

    move-object v5, v12

    .line 219
    .local v5, e:Ljava/net/SocketException;
    :try_start_c
    const-string v12, "PicasaAPI"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getAlbumPhotos: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/gallery3d/picasa/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v12, v0

    iget-wide v13, v12, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v15, 0x1

    add-long/2addr v13, v15

    iput-wide v13, v12, Landroid/content/SyncStats;->numIoExceptions:J

    .line 221
    invoke-virtual {v5}, Ljava/net/SocketException;->printStackTrace()V

    .line 222
    const/4 v12, 0x2

    monitor-exit v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    monitor-exit v10
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move v10, v12

    goto/16 :goto_2

    .line 224
    .end local v5           #e:Ljava/net/SocketException;
    .end local v8           #parser:Lcom/android/gallery3d/picasa/GDataParser;
    :catchall_2
    move-exception v12

    :try_start_e
    monitor-exit v11
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    throw v12
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 230
    .end local v6           #numRetries:I
    .end local v7           #operation:Lcom/android/gallery3d/picasa/GDataClient$Operation;
    .end local v9           #retry:Z
    :catch_2
    move-exception v10

    move-object v5, v10

    .line 231
    .local v5, e:Lorg/xml/sax/SAXException;
    const-string v10, "PicasaAPI"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAlbums: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/gallery3d/picasa/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v10, v0

    iget-wide v11, v10, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    iput-wide v11, v10, Landroid/content/SyncStats;->numParseExceptions:J

    goto/16 :goto_3

    .line 182
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_2
        0x130 -> :sswitch_0
        0x191 -> :sswitch_1
        0x193 -> :sswitch_1
    .end sparse-switch
.end method

.method public setAuth(Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;)V
    .locals 3
    .parameter "auth"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/gallery3d/picasa/PicasaApi;->mAuth:Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;

    .line 154
    iget-object v0, p0, Lcom/android/gallery3d/picasa/PicasaApi;->mClient:Lcom/android/gallery3d/picasa/GDataClient;

    monitor-enter v0

    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/picasa/PicasaApi;->mClient:Lcom/android/gallery3d/picasa/GDataClient;

    iget-object v2, p1, Lcom/android/gallery3d/picasa/PicasaApi$AuthAccount;->authToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/picasa/GDataClient;->setAuthToken(Ljava/lang/String;)V

    .line 156
    monitor-exit v0

    .line 157
    return-void

    .line 156
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

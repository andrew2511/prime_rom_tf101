.class public Lcom/google/android/apps/books/sync/ResourceContentFetcher;
.super Ljava/lang/Object;
.source "ResourceContentFetcher.java"

# interfaces
.implements Lcom/google/android/apps/books/sync/FetchDispatcher$Fetcher;


# static fields
.field private static final TAG:Ljava/lang/String; = "ResourceContentFetcher"


# instance fields
.field private final mConfig:Lcom/google/android/apps/books/util/Config;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mDecryptResources:Z

.field private final mFileStorageManager:Lcom/google/android/apps/books/common/FileStorageManager;

.field private final mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/net/ResponseGetter;Landroid/net/ConnectivityManager;Landroid/content/ContentResolver;Lcom/google/android/apps/books/util/SessionKeyFactory;Lcom/google/android/apps/books/common/FileStorageManager;Lcom/google/android/apps/books/util/Config;Z)V
    .locals 1
    .parameter "responseGetter"
    .parameter "connectivityManager"
    .parameter "resolver"
    .parameter "keyFactory"
    .parameter "fsm"
    .parameter "config"
    .parameter "decryptResources"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string v0, "missing responseGetter"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/net/ResponseGetter;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    .line 64
    const-string v0, "missing contentResolver"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->mResolver:Landroid/content/ContentResolver;

    .line 65
    const-string v0, "missing connectivity manager"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 67
    const-string v0, "missing keyFactory"

    invoke-static {p4, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/util/SessionKeyFactory;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

    .line 68
    const-string v0, "missing fileStorageManager"

    invoke-static {p5, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/common/FileStorageManager;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->mFileStorageManager:Lcom/google/android/apps/books/common/FileStorageManager;

    .line 69
    const-string v0, "missing config"

    invoke-static {p6, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/util/Config;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->mConfig:Lcom/google/android/apps/books/util/Config;

    .line 70
    iput-boolean p7, p0, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->mDecryptResources:Z

    .line 71
    return-void
.end method

.method private static buildResourceUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "resContentUri"

    .prologue
    .line 239
    invoke-static {p0}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, volumeId:Ljava/lang/String;
    invoke-static {p0}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->getResourceId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, resId:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->buildResourceUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method private parseResourceContent(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;Landroid/net/Uri;)V
    .locals 24
    .parameter "account"
    .parameter "volumeId"
    .parameter "resId"
    .parameter "entity"
    .parameter "sessionKeyUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-interface/range {p4 .. p4}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v7

    long-to-int v5, v7

    invoke-direct {v11, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 167
    .local v11, buffer:Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p4

    move-object v1, v11

    invoke-interface {v0, v1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 168
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 170
    .local v6, encryptedResponseBody:[B
    const/16 v17, 0x0

    .line 173
    .local v17, out:Ljava/io/OutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->mDecryptResources:Z

    move v5, v0

    if-eqz v5, :cond_1

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->mResolver:Landroid/content/ContentResolver;

    move-object v7, v0

    move-object/from16 v8, p5

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/apps/books/util/SessionKeyFactory;->decryptWithSessionKeyMaybeUpgrade([BLandroid/content/ContentResolver;Landroid/net/Uri;Landroid/accounts/Account;Ljava/lang/String;)[B

    move-result-object v18

    .line 178
    .local v18, persist:[B
    const/16 p5, 0x0

    .line 186
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->mFileStorageManager:Lcom/google/android/apps/books/common/FileStorageManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/apps/books/common/FileStorageManager;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v15

    .line 187
    .local v15, lock:Ljava/util/concurrent/locks/Lock;
    invoke-interface {v15}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :try_start_1
    invoke-static/range {p2 .. p3}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->buildResourceContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 190
    .local v12, contentUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->mResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    const-string v6, "wt"

    .end local v6           #encryptedResponseBody:[B
    invoke-virtual {v5, v12, v6}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v14

    .line 191
    .local v14, fd:Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v14}, Landroid/content/res/AssetFileDescriptor;->createOutputStream()Ljava/io/FileOutputStream;

    move-result-object v17

    .line 192
    invoke-virtual/range {v17 .. v18}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    :try_start_2
    invoke-interface {v15}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0

    .line 203
    if-eqz v17, :cond_0

    .line 204
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V

    .line 209
    :cond_0
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 210
    .local v23, values:Landroid/content/ContentValues;
    const-string v5, "content_status"

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v23

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 213
    if-eqz p5, :cond_3

    .line 214
    invoke-static/range {p5 .. p5}, Lcom/google/android/apps/books/provider/BooksContract$SessionKeys;->getSessionKeyId(Landroid/net/Uri;)J

    move-result-wide v21

    .line 215
    .local v21, sessionKeyId:J
    const-string v5, "session_key_id"

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v23

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 220
    .end local v21           #sessionKeyId:J
    :goto_1
    invoke-static/range {p2 .. p3}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->buildResourceUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 221
    .local v19, resUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->mResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    move-object v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 222
    .local v20, rowCount:I
    const-string v5, "Bad row count"

    const-wide/16 v7, 0x1

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide v9, v0

    invoke-static {v5, v7, v8, v9, v10}, Lcom/google/android/apps/books/util/Assert;->assertEquals(Ljava/lang/String;JJ)V

    .line 223
    return-void

    .line 180
    .end local v12           #contentUri:Landroid/net/Uri;
    .end local v14           #fd:Landroid/content/res/AssetFileDescriptor;
    .end local v15           #lock:Ljava/util/concurrent/locks/Lock;
    .end local v18           #persist:[B
    .end local v19           #resUri:Landroid/net/Uri;
    .end local v20           #rowCount:I
    .end local v23           #values:Landroid/content/ContentValues;
    .restart local v6       #encryptedResponseBody:[B
    :cond_1
    move-object/from16 v18, v6

    .restart local v18       #persist:[B
    goto :goto_0

    .line 194
    .end local v6           #encryptedResponseBody:[B
    .restart local v15       #lock:Ljava/util/concurrent/locks/Lock;
    :catchall_0
    move-exception v5

    :try_start_3
    invoke-interface {v15}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_0

    .line 196
    .end local v15           #lock:Ljava/util/concurrent/locks/Lock;
    .end local v18           #persist:[B
    :catch_0
    move-exception v5

    move-object v13, v5

    .line 197
    .local v13, e:Ljava/security/GeneralSecurityException;
    :try_start_4
    const-string v5, "ResourceContentFetcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "security error while decrypting resource "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in volume "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    new-instance v16, Ljava/io/IOException;

    invoke-direct/range {v16 .. v16}, Ljava/io/IOException;-><init>()V

    .line 200
    .local v16, newException:Ljava/io/IOException;
    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 201
    throw v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 203
    .end local v13           #e:Ljava/security/GeneralSecurityException;
    .end local v16           #newException:Ljava/io/IOException;
    :catchall_1
    move-exception v5

    if-eqz v17, :cond_2

    .line 204
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V

    :cond_2
    throw v5

    .line 217
    .restart local v12       #contentUri:Landroid/net/Uri;
    .restart local v14       #fd:Landroid/content/res/AssetFileDescriptor;
    .restart local v15       #lock:Ljava/util/concurrent/locks/Lock;
    .restart local v18       #persist:[B
    .restart local v23       #values:Landroid/content/ContentValues;
    :cond_3
    const-string v5, "session_key_id"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static shortenId(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "id"

    .prologue
    const/16 v4, 0x20

    .line 230
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 231
    .local v0, length:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v4, :cond_0

    move-object v1, p0

    .line 234
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-int v2, v0, v4

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public fetch(Landroid/net/Uri;Landroid/accounts/Account;)V
    .locals 19
    .parameter "resContentUri"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 93
    .local v6, volumeId:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->getResourceId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    .line 95
    .local v7, resId:Ljava/lang/String;
    const-string v4, "missing volumeId"

    invoke-static {v6, v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v4, "missing resId"

    invoke-static {v7, v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v4, "missing account"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v4, "ResourceContentFetcher"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 100
    invoke-static {v7}, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->shortenId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 101
    .local v18, shortResId:Ljava/lang/String;
    const-string v4, "ResourceContentFetcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fetching vid="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", rid="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .end local v18           #shortResId:Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->buildResourceUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    const-string v8, "remote_url"

    invoke-static {v4, v5, v8}, Lcom/google/android/apps/books/util/ProviderUtils;->queryForString(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 108
    .local v16, remoteUrl:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/google/android/apps/books/net/GoogleContentHandler;->resolveRelativeBooksUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->mConfig:Lcom/google/android/apps/books/util/Config;

    move-object v4, v0

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/google/android/apps/books/net/GoogleContentHandler;->setSourceParameter(Ljava/lang/String;Lcom/google/android/apps/books/util/Config;)Ljava/lang/String;

    move-result-object v16

    .line 111
    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v14

    .line 114
    .local v14, remoteBuilder:Landroid/net/Uri$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p2

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/books/util/SessionKeyFactory;->findValidSessionKey(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;

    move-result-object v11

    .line 115
    .local v11, data:Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;
    const-string v4, "cp_ksver"

    iget-object v5, v11, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;->K_sVersion:Ljava/lang/String;

    invoke-virtual {v14, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 117
    invoke-virtual {v14}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    .line 119
    .local v15, remoteTarget:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->mConnectivityManager:Landroid/net/ConnectivityManager;

    move-object v4, v0

    invoke-static {v4}, Lcom/google/android/apps/books/util/Config;->isDeviceConnected(Landroid/net/ConnectivityManager;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device offline, skipping "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in volume "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 123
    .local v13, msg:Ljava/lang/String;
    new-instance v4, Lcom/google/android/apps/books/net/ResponseGetter$OfflineIoException;

    invoke-direct {v4, v13}, Lcom/google/android/apps/books/net/ResponseGetter$OfflineIoException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 126
    .end local v13           #msg:Ljava/lang/String;
    :cond_1
    const/4 v8, 0x0

    .line 128
    .local v8, entity:Lorg/apache/http/HttpEntity;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    move-object v4, v0

    const/4 v5, 0x0

    new-array v5, v5, [I

    move-object v0, v4

    move-object v1, v15

    move-object/from16 v2, p2

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/books/net/ResponseGetter;->get(Ljava/lang/String;Landroid/accounts/Account;[I)Lorg/apache/http/HttpResponse;

    move-result-object v17

    .line 129
    .local v17, resp:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 134
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    .line 135
    .local v10, contentType:Ljava/lang/String;
    const-string v4, "image/gif"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 136
    new-instance v4, Lcom/google/android/apps/books/net/ResponseGetter$ServerIoException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Server returned \'image not available\' gif for "

    .end local v7           #resId:Ljava/lang/String;
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " with K_sV="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v11, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;->K_sVersion:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/apps/books/net/ResponseGetter$ServerIoException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/android/apps/books/net/ResponseGetter$KeyExpiredException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v10           #contentType:Ljava/lang/String;
    .end local v17           #resp:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v4

    move-object v12, v4

    .line 146
    .local v12, e:Lcom/google/android/apps/books/net/ResponseGetter$KeyExpiredException;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

    move-object v4, v0

    iget-object v5, v11, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;->sessionKeyUri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/apps/books/util/SessionKeyFactory;->removeSessionKeyAndWipeContents(Landroid/net/Uri;Ljava/lang/String;)V

    .line 147
    new-instance v4, Lcom/google/android/apps/books/util/SessionKeyFactory$SessionKeyExpiredException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsuported session key version: "

    .end local v6           #volumeId:Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;->K_sVersion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v12}, Lcom/google/android/apps/books/util/SessionKeyFactory$SessionKeyExpiredException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    .end local v12           #e:Lcom/google/android/apps/books/net/ResponseGetter$KeyExpiredException;
    :catchall_0
    move-exception v4

    if-eqz v8, :cond_2

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_2
    throw v4

    .line 141
    .restart local v6       #volumeId:Ljava/lang/String;
    .restart local v7       #resId:Ljava/lang/String;
    .restart local v10       #contentType:Ljava/lang/String;
    .restart local v17       #resp:Lorg/apache/http/HttpResponse;
    :cond_3
    :try_start_2
    iget-object v9, v11, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;->sessionKeyUri:Landroid/net/Uri;

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    invoke-direct/range {v4 .. v9}, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->parseResourceContent(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;Landroid/net/Uri;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/android/apps/books/net/ResponseGetter$KeyExpiredException; {:try_start_2 .. :try_end_2} :catch_0

    .line 150
    if-eqz v8, :cond_4

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 152
    :cond_4
    return-void
.end method

.method public isAlreadyFetched(Landroid/net/Uri;)Z
    .locals 5
    .parameter "resContentUri"

    .prologue
    const/4 v4, 0x1

    .line 77
    iget-object v1, p0, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->buildResourceUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "content_status"

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/books/util/ProviderUtils;->queryForInt(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 79
    .local v0, status:I
    packed-switch v0, :pswitch_data_0

    .line 86
    :pswitch_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :pswitch_1
    move v1, v4

    .line 81
    goto :goto_0

    .line 83
    :pswitch_2
    const-string v1, "ResourceContentFetcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content status unavailable for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 84
    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

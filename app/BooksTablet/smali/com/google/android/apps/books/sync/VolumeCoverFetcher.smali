.class public Lcom/google/android/apps/books/sync/VolumeCoverFetcher;
.super Ljava/lang/Object;
.source "VolumeCoverFetcher.java"

# interfaces
.implements Lcom/google/android/apps/books/sync/FetchDispatcher$Fetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/sync/VolumeCoverFetcher$OFEZoomLevel;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VolumeCoverFetcher"


# instance fields
.field private final mAssetManager:Landroid/content/res/AssetManager;

.field private final mConfig:Lcom/google/android/apps/books/util/Config;

.field private final mCoverHeight:I

.field private final mCoverThumbnailHeight:I

.field private final mFileStorageManager:Lcom/google/android/apps/books/common/FileStorageManager;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/net/ResponseGetter;Landroid/content/ContentResolver;Landroid/content/res/Resources;Lcom/google/android/apps/books/common/FileStorageManager;Lcom/google/android/apps/books/util/Config;)V
    .locals 1
    .parameter "responseGetter"
    .parameter "resolver"
    .parameter "res"
    .parameter "fsm"
    .parameter "config"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, "missing responseGetter"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/net/ResponseGetter;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    .line 60
    const-string v0, "missing resolver"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->mResolver:Landroid/content/ContentResolver;

    .line 61
    const-string v0, "missing fileStorageManager"

    invoke-static {p4, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/common/FileStorageManager;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->mFileStorageManager:Lcom/google/android/apps/books/common/FileStorageManager;

    .line 62
    const-string v0, "missing config"

    invoke-static {p5, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/util/Config;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->mConfig:Lcom/google/android/apps/books/util/Config;

    .line 67
    const-string v0, "missing resources"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {p3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->mAssetManager:Landroid/content/res/AssetManager;

    .line 69
    const v0, 0x7f0d0001

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->mCoverHeight:I

    .line 70
    const v0, 0x7f0d0002

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->mCoverThumbnailHeight:I

    .line 71
    return-void
.end method

.method private static buildImageUrl(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3
    .parameter "remoteUrl"
    .parameter "zoom"
    .parameter "height"

    .prologue
    .line 168
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "zoom"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "h"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private fetchFallbackCoverIntoUri(Landroid/net/Uri;)V
    .locals 5
    .parameter "localUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    iget-object v3, p0, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->mAssetManager:Landroid/content/res/AssetManager;

    const-string v4, "fallback_cover.png"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 211
    .local v1, inputStream:Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 213
    .local v2, outputStream:Ljava/io/OutputStream;
    :try_start_0
    iget-object v3, p0, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "wt"

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 214
    .local v0, fd:Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->createOutputStream()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 215
    invoke-static {v1, v2}, Lcom/google/android/apps/books/util/IOUtils;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 218
    if-eqz v2, :cond_0

    .line 219
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 222
    :cond_0
    return-void

    .line 217
    .end local v0           #fd:Landroid/content/res/AssetFileDescriptor;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 218
    if-eqz v2, :cond_1

    .line 219
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_1
    throw v3
.end method

.method private fetchIntoUri(Landroid/net/Uri;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 7
    .parameter "localUri"
    .parameter "account"
    .parameter "remoteUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    invoke-static {p3}, Lcom/google/android/apps/books/net/GoogleContentHandler;->resolveRelativeBooksUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 182
    iget-object v4, p0, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->mConfig:Lcom/google/android/apps/books/util/Config;

    invoke-static {p3, v4}, Lcom/google/android/apps/books/net/GoogleContentHandler;->setSourceParameter(Ljava/lang/String;Lcom/google/android/apps/books/util/Config;)Ljava/lang/String;

    move-result-object p3

    .line 184
    iget-object v4, p0, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    const/4 v5, 0x0

    new-array v5, v5, [I

    invoke-virtual {v4, p3, p2, v5}, Lcom/google/android/apps/books/net/ResponseGetter;->get(Ljava/lang/String;Landroid/accounts/Account;[I)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 185
    .local v3, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 188
    .local v0, entity:Lorg/apache/http/HttpEntity;
    if-nez v0, :cond_1

    .line 189
    :try_start_0
    new-instance v4, Lorg/apache/http/client/ClientProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "missing cover response for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_0

    .line 204
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_0
    throw v4

    .line 192
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "wt"

    invoke-virtual {v4, p1, v5}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 193
    .local v1, fd:Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->createOutputStream()Ljava/io/FileOutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 196
    .local v2, out:Ljava/io/OutputStream;
    :try_start_2
    invoke-interface {v0, v2}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 198
    if-eqz v2, :cond_2

    .line 199
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 203
    :cond_2
    if-eqz v0, :cond_3

    .line 204
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 207
    :cond_3
    return-void

    .line 198
    :catchall_1
    move-exception v4

    if-eqz v2, :cond_4

    .line 199
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private setContentStatusLocal(Landroid/net/Uri;)V
    .locals 4
    .parameter "volumeUri"

    .prologue
    const/4 v3, 0x0

    .line 158
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 159
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "cover_content_status"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    iget-object v1, p0, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, p1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 161
    return-void
.end method


# virtual methods
.method public fetch(Landroid/net/Uri;Landroid/accounts/Account;)V
    .locals 13
    .parameter "uri"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v10, "VolumeCoverFetcher"

    .line 92
    iget-object v10, p0, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->mFileStorageManager:Lcom/google/android/apps/books/common/FileStorageManager;

    invoke-virtual {v10}, Lcom/google/android/apps/books/common/FileStorageManager;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    .line 93
    .local v6, lock:Ljava/util/concurrent/locks/Lock;
    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 96
    :try_start_0
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    .line 97
    .local v8, volumeId:Ljava/lang/String;
    invoke-static {v8}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildVolumeUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/apps/books/provider/BooksContract;->markLocal(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v9

    .line 99
    .local v9, volumeUri:Landroid/net/Uri;
    iget-object v10, p0, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->mResolver:Landroid/content/ContentResolver;

    const-string v11, "cover_url"

    invoke-static {v10, v9, v11}, Lcom/google/android/apps/books/util/ProviderUtils;->queryForString(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 100
    .local v7, remoteUrl:Ljava/lang/String;
    invoke-static {v8}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildCoverUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 101
    .local v1, coverLocal:Landroid/net/Uri;
    invoke-static {v8}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildCoverThumbnailUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 103
    .local v2, coverThumbnailLocal:Landroid/net/Uri;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 108
    const-string v10, "VolumeCoverFetcher"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "missing COVER_URL for vid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-direct {p0, v1}, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->fetchFallbackCoverIntoUri(Landroid/net/Uri;)V

    .line 110
    invoke-direct {p0, v2}, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->fetchFallbackCoverIntoUri(Landroid/net/Uri;)V

    .line 111
    invoke-direct {p0, v9}, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->setContentStatusLocal(Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 152
    :goto_0
    return-void

    .line 121
    :cond_0
    const/4 v10, 0x1

    :try_start_1
    iget v11, p0, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->mCoverHeight:I

    invoke-static {v7, v10, v11}, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->buildImageUrl(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    .line 122
    .local v4, coverUrl:Ljava/lang/String;
    const/4 v10, 0x1

    iget v11, p0, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->mCoverHeight:I

    invoke-static {v7, v10, v11}, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->buildImageUrl(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, coverFallbackUrl:Ljava/lang/String;
    const/4 v10, 0x1

    iget v11, p0, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->mCoverThumbnailHeight:I

    invoke-static {v7, v10, v11}, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->buildImageUrl(Ljava/lang/String;II)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 128
    .local v3, coverThumbnailUrl:Ljava/lang/String;
    :try_start_2
    invoke-direct {p0, v1, p2, v4}, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->fetchIntoUri(Landroid/net/Uri;Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 146
    :goto_1
    :try_start_3
    invoke-direct {p0, v2, p2, v3}, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->fetchIntoUri(Landroid/net/Uri;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 147
    invoke-direct {p0, v9}, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->setContentStatusLocal(Landroid/net/Uri;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 150
    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 130
    :catch_0
    move-exception v5

    .line 140
    .local v5, e:Ljava/io/IOException;
    :try_start_4
    const-string v10, "VolumeCoverFetcher"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "optimal cover fetch failed; using fallback for vid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-direct {p0, v1, p2, v0}, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->fetchIntoUri(Landroid/net/Uri;Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 150
    .end local v0           #coverFallbackUrl:Ljava/lang/String;
    .end local v1           #coverLocal:Landroid/net/Uri;
    .end local v2           #coverThumbnailLocal:Landroid/net/Uri;
    .end local v3           #coverThumbnailUrl:Ljava/lang/String;
    .end local v4           #coverUrl:Ljava/lang/String;
    .end local v5           #e:Ljava/io/IOException;
    .end local v7           #remoteUrl:Ljava/lang/String;
    .end local v8           #volumeId:Ljava/lang/String;
    .end local v9           #volumeUri:Landroid/net/Uri;
    :catchall_0
    move-exception v10

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v10
.end method

.method public isAlreadyFetched(Landroid/net/Uri;)Z
    .locals 7
    .parameter "uri"

    .prologue
    const/4 v6, 0x1

    .line 75
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, volumeId:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildVolumeUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/books/provider/BooksContract;->markLocal(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 77
    .local v2, volumeUri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "cover_content_status"

    invoke-static {v3, v2, v4}, Lcom/google/android/apps/books/util/ProviderUtils;->queryForInt(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 79
    .local v0, status:I
    packed-switch v0, :pswitch_data_0

    .line 86
    :pswitch_0
    const/4 v3, 0x0

    :goto_0
    return v3

    :pswitch_1
    move v3, v6

    .line 81
    goto :goto_0

    .line 83
    :pswitch_2
    const-string v3, "VolumeCoverFetcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content status unavailable for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v6

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

.class public final Lcom/ecareme/pixwe/media/MediaItemTexture;
.super Lcom/ecareme/pixwe/media/Texture;
.source "MediaItemTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecareme/pixwe/media/MediaItemTexture$Config;
    }
.end annotation


# static fields
.field private static final CACHE_HEADER_SIZE:I = 0xc

.field public static final MAX_FACES:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MediaItemTexture"


# instance fields
.field private mCached:Z

.field private final mConfig:Lcom/ecareme/pixwe/media/MediaItemTexture$Config;

.field private mContext:Landroid/content/Context;

.field private mIsRetrying:Z

.field private final mItem:Lcom/ecareme/pixwe/media/MediaItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ecareme/pixwe/media/MediaItemTexture$Config;Lcom/ecareme/pixwe/media/MediaItem;)V
    .locals 1
    .parameter "context"
    .parameter "config"
    .parameter "item"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/Texture;-><init>()V

    .line 51
    iput-object p2, p0, Lcom/ecareme/pixwe/media/MediaItemTexture;->mConfig:Lcom/ecareme/pixwe/media/MediaItemTexture$Config;

    .line 52
    iput-object p1, p0, Lcom/ecareme/pixwe/media/MediaItemTexture;->mContext:Landroid/content/Context;

    .line 53
    iput-object p3, p0, Lcom/ecareme/pixwe/media/MediaItemTexture;->mItem:Lcom/ecareme/pixwe/media/MediaItem;

    .line 54
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/MediaItemTexture;->computeCache()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/MediaItemTexture;->mCached:Z

    .line 55
    return-void
.end method

.method static synthetic access$0(Lcom/ecareme/pixwe/media/MediaItemTexture;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaItemTexture;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ecareme/pixwe/media/MediaItemTexture;)Lcom/ecareme/pixwe/media/MediaItem;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaItemTexture;->mItem:Lcom/ecareme/pixwe/media/MediaItem;

    return-object v0
.end method

.method private computeCache()Z
    .locals 10

    .prologue
    .line 58
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MediaItemTexture;->mConfig:Lcom/ecareme/pixwe/media/MediaItemTexture$Config;

    .line 59
    .local v1, config:Lcom/ecareme/pixwe/media/MediaItemTexture$Config;
    iget-object v4, p0, Lcom/ecareme/pixwe/media/MediaItemTexture;->mItem:Lcom/ecareme/pixwe/media/MediaItem;

    .line 60
    .local v4, item:Lcom/ecareme/pixwe/media/MediaItem;
    const/4 v0, 0x0

    .line 61
    .local v0, cache:Lcom/ecareme/pixwe/media/DiskCache;
    iget-object v5, v4, Lcom/ecareme/pixwe/media/MediaItem;->mParentMediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    .line 62
    .local v5, parentMediaSet:Lcom/ecareme/pixwe/media/MediaSet;
    if-eqz v1, :cond_0

    if-eqz v5, :cond_0

    iget-object v6, v5, Lcom/ecareme/pixwe/media/MediaSet;->mDataSource:Lcom/ecareme/pixwe/media/DataSource;

    if-eqz v6, :cond_0

    .line 63
    iget-object v6, v5, Lcom/ecareme/pixwe/media/MediaSet;->mDataSource:Lcom/ecareme/pixwe/media/DataSource;

    invoke-interface {v6}, Lcom/ecareme/pixwe/media/DataSource;->getThumbnailCache()Lcom/ecareme/pixwe/media/DiskCache;

    move-result-object v0

    .line 64
    sget-object v6, Lcom/ecareme/pixwe/media/LocalDataSource;->sThumbnailCache:Lcom/ecareme/pixwe/media/DiskCache;

    if-ne v0, v6, :cond_0

    .line 65
    iget-object v6, v4, Lcom/ecareme/pixwe/media/MediaItem;->mMimeType:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, v4, Lcom/ecareme/pixwe/media/MediaItem;->mMimeType:Ljava/lang/String;

    const-string v7, "video"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 66
    sget-object v0, Lcom/ecareme/pixwe/media/LocalDataSource;->sThumbnailCacheVideo:Lcom/ecareme/pixwe/media/DiskCache;

    .line 70
    :cond_0
    if-nez v0, :cond_1

    .line 71
    const/4 v6, 0x0

    .line 75
    :goto_0
    return v6

    .line 73
    :cond_1
    monitor-enter v0

    .line 74
    :try_start_0
    iget-wide v6, v5, Lcom/ecareme/pixwe/media/MediaSet;->mPicasaAlbumId:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    iget-object v6, v4, Lcom/ecareme/pixwe/media/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-static {v6}, Lcom/ecareme/pixwe/media/Utils;->Crc64Long(Ljava/lang/String;)J

    move-result-wide v6

    move-wide v2, v6

    .line 75
    .local v2, id:J
    :goto_1
    iget-wide v6, v4, Lcom/ecareme/pixwe/media/MediaItem;->mDateModifiedInSec:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-virtual {v0, v2, v3, v6, v7}, Lcom/ecareme/pixwe/media/DiskCache;->isDataAvailable(JJ)Z

    move-result v6

    monitor-exit v0

    goto :goto_0

    .line 73
    .end local v2           #id:J
    :catchall_0
    move-exception v6

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 74
    :cond_2
    :try_start_1
    iget-wide v6, v4, Lcom/ecareme/pixwe/media/MediaItem;->mId:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v2, v6

    goto :goto_1
.end method


# virtual methods
.method public isCached()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/MediaItemTexture;->mCached:Z

    return v0
.end method

.method public isUncachedVideo()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 81
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/MediaItemTexture;->isCached()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    .line 88
    :goto_0
    return v0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaItemTexture;->mItem:Lcom/ecareme/pixwe/media/MediaItem;

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mParentMediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaItemTexture;->mItem:Lcom/ecareme/pixwe/media/MediaItem;

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mMimeType:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_1
    move v0, v4

    .line 84
    goto :goto_0

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaItemTexture;->mItem:Lcom/ecareme/pixwe/media/MediaItem;

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mParentMediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mPicasaAlbumId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaItemTexture;->mItem:Lcom/ecareme/pixwe/media/MediaItem;

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mMimeType:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v4

    .line 88
    goto :goto_0
.end method

.method protected load(Lcom/ecareme/pixwe/media/RenderView;)Landroid/graphics/Bitmap;
    .locals 37
    .parameter "view"

    .prologue
    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaItemTexture;->mConfig:Lcom/ecareme/pixwe/media/MediaItemTexture$Config;

    move-object/from16 v22, v0

    .line 99
    .local v22, config:Lcom/ecareme/pixwe/media/MediaItemTexture$Config;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaItemTexture;->mItem:Lcom/ecareme/pixwe/media/MediaItem;

    move-object/from16 v30, v0

    .line 104
    .local v30, item:Lcom/ecareme/pixwe/media/MediaItem;
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mContentUri:Ljava/lang/String;

    move-object/from16 v36, v0

    .line 105
    .local v36, uriString:Ljava/lang/String;
    if-eqz v36, :cond_1

    .line 106
    invoke-static/range {v36 .. v36}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v35

    .line 108
    .local v35, uri:Landroid/net/Uri;
    invoke-virtual/range {v35 .. v35}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "file"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual/range {v35 .. v35}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "content"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual/range {v35 .. v35}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    const-string v6, "media"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 111
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaItemTexture;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mThumbnailUri:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/ecareme/pixwe/media/MediaItemTexture$Config;->thumbnailWidth:I

    move v7, v0

    .line 112
    move-object/from16 v0, v22

    iget v0, v0, Lcom/ecareme/pixwe/media/MediaItemTexture$Config;->thumbnailHeight:I

    move v8, v0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    .line 111
    invoke-static/range {v5 .. v11}, Lcom/ecareme/pixwe/media/UriTexture;->createFromUri(Landroid/content/Context;Ljava/lang/String;IIJLorg/apache/http/conn/ClientConnectionManager;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 234
    .end local v35           #uri:Landroid/net/Uri;
    :goto_0
    return-object v5

    .line 113
    .restart local v35       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v5

    move-object/from16 v29, v5

    .line 114
    .local v29, e:Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_0

    .line 115
    .end local v29           #e:Ljava/io/IOException;
    :catch_1
    move-exception v5

    move-object/from16 v29, v5

    .line 116
    .local v29, e:Ljava/net/URISyntaxException;
    const/4 v5, 0x0

    goto :goto_0

    .line 122
    .end local v29           #e:Ljava/net/URISyntaxException;
    .end local v35           #uri:Landroid/net/Uri;
    :cond_1
    if-nez v22, :cond_6

    .line 123
    const/16 v33, 0x0

    .line 125
    .local v33, retVal:Landroid/graphics/Bitmap;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaItemTexture;->mItem:Lcom/ecareme/pixwe/media/MediaItem;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/ecareme/pixwe/media/MediaItem;->getMediaType()I

    move-result v5

    if-nez v5, :cond_5

    .line 126
    const/4 v5, 0x0

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_9

    .line 129
    const/16 v20, 0x0

    .line 130
    .local v20, cache:Lcom/ecareme/pixwe/media/DiskCache;
    :try_start_2
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mParentMediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    move-object/from16 v32, v0

    .line 131
    .local v32, parentMediaSet:Lcom/ecareme/pixwe/media/MediaSet;
    if-eqz v32, :cond_3

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mDataSource:Lcom/ecareme/pixwe/media/DataSource;

    move-object v5, v0

    if-eqz v5, :cond_3

    .line 132
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mDataSource:Lcom/ecareme/pixwe/media/DataSource;

    move-object v5, v0

    invoke-interface {v5}, Lcom/ecareme/pixwe/media/DataSource;->getThumbnailCache()Lcom/ecareme/pixwe/media/DiskCache;

    move-result-object v20

    .line 133
    sget-object v5, Lcom/ecareme/pixwe/media/LocalDataSource;->sThumbnailCache:Lcom/ecareme/pixwe/media/DiskCache;

    move-object/from16 v0, v20

    move-object v1, v5

    if-ne v0, v1, :cond_3

    .line 134
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mMimeType:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_2

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mMimeType:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "video"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 135
    sget-object v20, Lcom/ecareme/pixwe/media/LocalDataSource;->sThumbnailCacheVideo:Lcom/ecareme/pixwe/media/DiskCache;

    .line 137
    :cond_2
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mFilePath:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Lcom/ecareme/pixwe/media/Utils;->Crc64Long(Ljava/lang/String;)J

    move-result-wide v23

    .line 138
    .local v23, crc64:J
    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mDateModifiedInSec:J

    move-wide v5, v0

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    move-object/from16 v0, v20

    move-wide/from16 v1, v23

    move-wide v3, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ecareme/pixwe/media/DiskCache;->isDataAvailable(JJ)Z

    move-result v5

    if-nez v5, :cond_3

    .line 139
    const/16 v5, 0x400

    move-wide/from16 v0, v23

    move v2, v5

    invoke-static {v0, v1, v2}, Lcom/ecareme/pixwe/media/UriTexture;->invalidateCache(JI)V

    .line 144
    .end local v23           #crc64:J
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaItemTexture;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaItemTexture;->mItem:Lcom/ecareme/pixwe/media/MediaItem;

    move-object v6, v0

    iget-object v6, v6, Lcom/ecareme/pixwe/media/MediaItem;->mContentUri:Ljava/lang/String;

    const/16 v7, 0x400

    .line 145
    const/16 v8, 0x400

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mFilePath:Ljava/lang/String;

    move-object v9, v0

    invoke-static {v9}, Lcom/ecareme/pixwe/media/Utils;->Crc64Long(Ljava/lang/String;)J

    move-result-wide v9

    const/4 v11, 0x0

    .line 144
    invoke-static/range {v5 .. v11}, Lcom/ecareme/pixwe/media/UriTexture;->createFromUri(Landroid/content/Context;Ljava/lang/String;IIJLorg/apache/http/conn/ClientConnectionManager;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_9

    move-result-object v10

    .line 151
    .end local v32           #parentMediaSet:Lcom/ecareme/pixwe/media/MediaSet;
    .end local v33           #retVal:Landroid/graphics/Bitmap;
    .local v10, retVal:Landroid/graphics/Bitmap;
    :goto_1
    const/16 v5, 0xa

    :try_start_3
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_4

    .end local v20           #cache:Lcom/ecareme/pixwe/media/DiskCache;
    :cond_4
    :goto_2
    move-object v5, v10

    .line 186
    goto/16 :goto_0

    .line 146
    .end local v10           #retVal:Landroid/graphics/Bitmap;
    .restart local v20       #cache:Lcom/ecareme/pixwe/media/DiskCache;
    .restart local v33       #retVal:Landroid/graphics/Bitmap;
    :catch_2
    move-exception v5

    move-object/from16 v10, v33

    .end local v33           #retVal:Landroid/graphics/Bitmap;
    .restart local v10       #retVal:Landroid/graphics/Bitmap;
    goto :goto_1

    .line 148
    .end local v10           #retVal:Landroid/graphics/Bitmap;
    .restart local v33       #retVal:Landroid/graphics/Bitmap;
    :catch_3
    move-exception v5

    move-object/from16 v10, v33

    .end local v33           #retVal:Landroid/graphics/Bitmap;
    .restart local v10       #retVal:Landroid/graphics/Bitmap;
    goto :goto_1

    .line 153
    .end local v10           #retVal:Landroid/graphics/Bitmap;
    .end local v20           #cache:Lcom/ecareme/pixwe/media/DiskCache;
    .restart local v33       #retVal:Landroid/graphics/Bitmap;
    :cond_5
    const/4 v5, 0x0

    :try_start_4
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 154
    new-instance v5, Lcom/ecareme/pixwe/media/MediaItemTexture$1;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/MediaItemTexture$1;-><init>(Lcom/ecareme/pixwe/media/MediaItemTexture;)V

    .line 167
    invoke-virtual {v5}, Lcom/ecareme/pixwe/media/MediaItemTexture$1;->start()V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaItemTexture;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaItemTexture;->mItem:Lcom/ecareme/pixwe/media/MediaItem;

    move-object v6, v0

    iget-wide v6, v6, Lcom/ecareme/pixwe/media/MediaItem;->mId:J

    .line 170
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 169
    invoke-static {v5, v6, v7, v8, v9}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_9

    move-result-object v10

    .line 171
    .end local v33           #retVal:Landroid/graphics/Bitmap;
    .restart local v10       #retVal:Landroid/graphics/Bitmap;
    const/16 v5, 0xa

    :try_start_5
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    .line 173
    :catch_4
    move-exception v5

    move-object/from16 v29, v5

    .line 174
    .local v29, e:Ljava/lang/OutOfMemoryError;
    :goto_3
    const-string v5, "MediaItemTexture"

    const-string v6, "Bitmap creation fail, outofmemory"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual/range {p1 .. p1}, Lcom/ecareme/pixwe/media/RenderView;->handleLowMemory()V

    .line 177
    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/MediaItemTexture;->mIsRetrying:Z

    move v5, v0

    if-nez v5, :cond_4

    .line 178
    const-wide/16 v5, 0x3e8

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 179
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ecareme/pixwe/media/MediaItemTexture;->mIsRetrying:Z

    .line 180
    invoke-virtual/range {p0 .. p1}, Lcom/ecareme/pixwe/media/MediaItemTexture;->load(Lcom/ecareme/pixwe/media/RenderView;)Landroid/graphics/Bitmap;
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_8

    move-result-object v10

    goto :goto_2

    .line 188
    .end local v10           #retVal:Landroid/graphics/Bitmap;
    .end local v29           #e:Ljava/lang/OutOfMemoryError;
    :cond_6
    const/16 v25, 0x0

    check-cast v25, [B

    .line 189
    .local v25, data:[B
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mParentMediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    move-object/from16 v32, v0

    .line 190
    .restart local v32       #parentMediaSet:Lcom/ecareme/pixwe/media/MediaSet;
    if-eqz v32, :cond_8

    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mIsLocal:Z

    move v5, v0

    if-nez v5, :cond_8

    .line 191
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mDataSource:Lcom/ecareme/pixwe/media/DataSource;

    move-object v5, v0

    invoke-interface {v5}, Lcom/ecareme/pixwe/media/DataSource;->getThumbnailCache()Lcom/ecareme/pixwe/media/DiskCache;

    move-result-object v34

    .line 192
    .local v34, thumbnailCache:Lcom/ecareme/pixwe/media/DiskCache;
    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mId:J

    move-wide v5, v0

    const-wide/16 v7, 0x0

    move-object/from16 v0, v34

    move-wide v1, v5

    move-wide v3, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ecareme/pixwe/media/DiskCache;->get(JJ)[B

    move-result-object v25

    .line 193
    if-nez v25, :cond_7

    .line 197
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaItemTexture;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mThumbnailUri:Ljava/lang/String;

    move-object v6, v0

    const/16 v7, 0x100

    const/16 v8, 0x100

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lcom/ecareme/pixwe/media/UriTexture;->createFromUri(Landroid/content/Context;Ljava/lang/String;IIJLorg/apache/http/conn/ClientConnectionManager;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 198
    .restart local v10       #retVal:Landroid/graphics/Bitmap;
    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mId:J

    move-wide v6, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mId:J

    move-wide v8, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/ecareme/pixwe/media/MediaItemTexture$Config;->thumbnailWidth:I

    move v11, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/ecareme/pixwe/media/MediaItemTexture$Config;->thumbnailHeight:I

    move v12, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mDateModifiedInSec:J

    move-wide v13, v0

    const-wide/16 v15, 0x3e8

    mul-long/2addr v13, v15

    move-object/from16 v5, v34

    invoke-static/range {v5 .. v14}, Lcom/ecareme/pixwe/cache/CacheService;->writeBitmapToCache(Lcom/ecareme/pixwe/media/DiskCache;JJLandroid/graphics/Bitmap;IIJ)[B
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_7} :catch_6

    move-result-object v25

    .line 211
    .end local v10           #retVal:Landroid/graphics/Bitmap;
    .end local v34           #thumbnailCache:Lcom/ecareme/pixwe/media/DiskCache;
    :cond_7
    :goto_4
    if-eqz v25, :cond_b

    .line 214
    :try_start_8
    new-instance v21, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 215
    .local v21, cacheInput:Ljava/io/ByteArrayInputStream;
    new-instance v26, Ljava/io/DataInputStream;

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 216
    .local v26, dataInput:Ljava/io/DataInputStream;
    invoke-virtual/range {v26 .. v26}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v5

    move-wide v0, v5

    move-object/from16 v2, v30

    iput-wide v0, v2, Lcom/ecareme/pixwe/media/MediaItem;->mThumbnailId:J

    .line 217
    invoke-virtual/range {v26 .. v26}, Ljava/io/DataInputStream;->readShort()S

    move-result v5

    move v0, v5

    move-object/from16 v1, v30

    iput v0, v1, Lcom/ecareme/pixwe/media/MediaItem;->mThumbnailFocusX:I

    .line 218
    invoke-virtual/range {v26 .. v26}, Ljava/io/DataInputStream;->readShort()S

    move-result v5

    move v0, v5

    move-object/from16 v1, v30

    iput v0, v1, Lcom/ecareme/pixwe/media/MediaItem;->mThumbnailFocusY:I

    .line 220
    new-instance v31, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v31 .. v31}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 221
    .local v31, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v31

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 222
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v31

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 223
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object v0, v5

    move-object/from16 v1, v31

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 225
    const/16 v5, 0xc

    move-object/from16 v0, v25

    array-length v0, v0

    move v6, v0

    const/16 v7, 0xc

    sub-int/2addr v6, v7

    move-object/from16 v0, v25

    move v1, v5

    move v2, v6

    move-object/from16 v3, v31

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    move-result-object v19

    .local v19, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v5, v19

    .line 228
    goto/16 :goto_0

    .line 199
    .end local v19           #bitmap:Landroid/graphics/Bitmap;
    .end local v21           #cacheInput:Ljava/io/ByteArrayInputStream;
    .end local v26           #dataInput:Ljava/io/DataInputStream;
    .end local v31           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v34       #thumbnailCache:Lcom/ecareme/pixwe/media/DiskCache;
    :catch_5
    move-exception v5

    move-object/from16 v29, v5

    .line 200
    .local v29, e:Ljava/io/IOException;
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 201
    .end local v29           #e:Ljava/io/IOException;
    :catch_6
    move-exception v5

    move-object/from16 v29, v5

    .line 202
    .local v29, e:Ljava/net/URISyntaxException;
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 206
    .end local v29           #e:Ljava/net/URISyntaxException;
    .end local v34           #thumbnailCache:Lcom/ecareme/pixwe/media/DiskCache;
    :cond_8
    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mDateAddedInSec:J

    move-wide v5, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mDateModifiedInSec:J

    move-wide v7, v0

    cmp-long v5, v5, v7

    if-lez v5, :cond_9

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mDateAddedInSec:J

    move-wide v5, v0

    move-wide/from16 v27, v5

    .line 208
    .local v27, dateToUse:J
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaItemTexture;->mContext:Landroid/content/Context;

    move-object v11, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mFilePath:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Lcom/ecareme/pixwe/media/Utils;->Crc64Long(Ljava/lang/String;)J

    move-result-wide v12

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mId:J

    move-wide v14, v0

    .line 209
    invoke-virtual/range {v30 .. v30}, Lcom/ecareme/pixwe/media/MediaItem;->getMediaType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_a

    const/4 v5, 0x1

    move/from16 v16, v5

    :goto_6
    const-wide/16 v5, 0x3e8

    mul-long v17, v27, v5

    .line 208
    invoke-static/range {v11 .. v18}, Lcom/ecareme/pixwe/cache/CacheService;->queryThumbnail(Landroid/content/Context;JJZJ)[B

    move-result-object v25

    goto/16 :goto_4

    .line 206
    .end local v27           #dateToUse:J
    :cond_9
    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mDateModifiedInSec:J

    move-wide v5, v0

    move-wide/from16 v27, v5

    goto :goto_5

    .line 209
    .restart local v27       #dateToUse:J
    :cond_a
    const/4 v5, 0x0

    move/from16 v16, v5

    goto :goto_6

    .line 229
    .end local v27           #dateToUse:J
    :catch_7
    move-exception v5

    .line 234
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 182
    .end local v25           #data:[B
    .end local v32           #parentMediaSet:Lcom/ecareme/pixwe/media/MediaSet;
    .restart local v10       #retVal:Landroid/graphics/Bitmap;
    .local v29, e:Ljava/lang/OutOfMemoryError;
    :catch_8
    move-exception v5

    goto/16 :goto_2

    .line 173
    .end local v10           #retVal:Landroid/graphics/Bitmap;
    .end local v29           #e:Ljava/lang/OutOfMemoryError;
    .restart local v33       #retVal:Landroid/graphics/Bitmap;
    :catch_9
    move-exception v5

    move-object/from16 v29, v5

    move-object/from16 v10, v33

    .end local v33           #retVal:Landroid/graphics/Bitmap;
    .restart local v10       #retVal:Landroid/graphics/Bitmap;
    goto/16 :goto_3
.end method

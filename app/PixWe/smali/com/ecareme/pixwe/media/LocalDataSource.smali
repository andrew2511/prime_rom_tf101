.class public Lcom/ecareme/pixwe/media/LocalDataSource;
.super Ljava/lang/Object;
.source "LocalDataSource.java"

# interfaces
.implements Lcom/ecareme/pixwe/media/DataSource;


# static fields
#the value of this static final field might be set in the static constructor
.field public static final CAMERA_BUCKET_ID:I = 0x0

.field public static final CAMERA_BUCKET_NAME:Ljava/lang/String; = null

.field public static final CAMERA_STRING:Ljava/lang/String; = "Camera"

#the value of this static final field might be set in the static constructor
.field public static final DOWNLOAD_BUCKET_ID:I = 0x0

.field public static final DOWNLOAD_BUCKET_NAME:Ljava/lang/String; = null

.field public static final DOWNLOAD_STRING:Ljava/lang/String; = "download"

.field private static final TAG:Ljava/lang/String; = "LocalDataSource"

.field public static final URI_ALL_MEDIA:Ljava/lang/String;

.field public static final sThumbnailCache:Lcom/ecareme/pixwe/media/DiskCache;

.field public static final sThumbnailCacheVideo:Lcom/ecareme/pixwe/media/DiskCache;


# instance fields
.field private final mAllItems:Z

.field private final mBucketId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mDiskCache:Lcom/ecareme/pixwe/media/DiskCache;

.field private mDone:Z

.field private final mFlattenAllItems:Z

.field private mIncludeImages:Z

.field private mIncludeVideos:Z

.field private final mSingleUri:Z

.field private final mUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ecareme/pixwe/media/LocalDataSource;->URI_ALL_MEDIA:Ljava/lang/String;

    .line 43
    new-instance v0, Lcom/ecareme/pixwe/media/DiskCache;

    const-string v1, "local-image-thumbs"

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/DiskCache;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ecareme/pixwe/media/LocalDataSource;->sThumbnailCache:Lcom/ecareme/pixwe/media/DiskCache;

    .line 44
    new-instance v0, Lcom/ecareme/pixwe/media/DiskCache;

    const-string v1, "local-video-thumbs"

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/DiskCache;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ecareme/pixwe/media/LocalDataSource;->sThumbnailCacheVideo:Lcom/ecareme/pixwe/media/DiskCache;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/DCIM/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ecareme/pixwe/media/LocalDataSource;->CAMERA_BUCKET_NAME:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ecareme/pixwe/media/LocalDataSource;->DOWNLOAD_BUCKET_NAME:Ljava/lang/String;

    .line 50
    sget-object v0, Lcom/ecareme/pixwe/media/LocalDataSource;->CAMERA_BUCKET_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/ecareme/pixwe/media/LocalDataSource;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/ecareme/pixwe/media/LocalDataSource;->CAMERA_BUCKET_ID:I

    .line 51
    sget-object v0, Lcom/ecareme/pixwe/media/LocalDataSource;->DOWNLOAD_BUCKET_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/ecareme/pixwe/media/LocalDataSource;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/ecareme/pixwe/media/LocalDataSource;->DOWNLOAD_BUCKET_ID:I

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 6
    .parameter "context"
    .parameter "uri"
    .parameter "flattenAllItems"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p2, p0, Lcom/ecareme/pixwe/media/LocalDataSource;->mUri:Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/ecareme/pixwe/media/LocalDataSource;->mContext:Landroid/content/Context;

    .line 75
    iput-boolean v4, p0, Lcom/ecareme/pixwe/media/LocalDataSource;->mIncludeImages:Z

    .line 76
    iput-boolean v3, p0, Lcom/ecareme/pixwe/media/LocalDataSource;->mIncludeVideos:Z

    .line 77
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "bucketId"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, bucketId:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 79
    iput-object v0, p0, Lcom/ecareme/pixwe/media/LocalDataSource;->mBucketId:Ljava/lang/String;

    .line 83
    :goto_0
    iput-boolean p3, p0, Lcom/ecareme/pixwe/media/LocalDataSource;->mFlattenAllItems:Z

    .line 84
    iget-object v1, p0, Lcom/ecareme/pixwe/media/LocalDataSource;->mBucketId:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 85
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    iput-boolean v4, p0, Lcom/ecareme/pixwe/media/LocalDataSource;->mAllItems:Z

    .line 93
    :goto_1
    invoke-static {p2}, Lcom/ecareme/pixwe/media/LocalDataSource;->isSingleImageMode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/ecareme/pixwe/media/LocalDataSource;->mBucketId:Ljava/lang/String;

    if-nez v1, :cond_4

    move v1, v4

    :goto_2
    iput-boolean v1, p0, Lcom/ecareme/pixwe/media/LocalDataSource;->mSingleUri:Z

    .line 94
    iput-boolean v3, p0, Lcom/ecareme/pixwe/media/LocalDataSource;->mDone:Z

    .line 95
    iget-object v1, p0, Lcom/ecareme/pixwe/media/LocalDataSource;->mUri:Ljava/lang/String;

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/ecareme/pixwe/media/LocalDataSource;->mUri:Ljava/lang/String;

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/ecareme/pixwe/media/LocalDataSource;->mUri:Ljava/lang/String;

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_0
    sget-object v1, Lcom/ecareme/pixwe/media/LocalDataSource;->sThumbnailCache:Lcom/ecareme/pixwe/media/DiskCache;

    .line 95
    :goto_3
    iput-object v1, p0, Lcom/ecareme/pixwe/media/LocalDataSource;->mDiskCache:Lcom/ecareme/pixwe/media/DiskCache;

    .line 99
    return-void

    .line 81
    :cond_1
    iput-object v5, p0, Lcom/ecareme/pixwe/media/LocalDataSource;->mBucketId:Ljava/lang/String;

    goto :goto_0

    .line 88
    :cond_2
    iput-boolean v3, p0, Lcom/ecareme/pixwe/media/LocalDataSource;->mAllItems:Z

    goto :goto_1

    .line 91
    :cond_3
    iput-boolean v3, p0, Lcom/ecareme/pixwe/media/LocalDataSource;->mAllItems:Z

    goto :goto_1

    :cond_4
    move v1, v3

    .line 93
    goto :goto_2

    :cond_5
    move-object v1, v5

    .line 98
    goto :goto_3
.end method

.method public static createMediaItemFromFileUri(Landroid/content/Context;Ljava/lang/String;)Lcom/ecareme/pixwe/media/MediaItem;
    .locals 12
    .parameter "context"
    .parameter "fileUri"

    .prologue
    .line 409
    const/4 v10, 0x0

    .line 410
    .local v10, item:Lcom/ecareme/pixwe/media/MediaItem;
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    .line 411
    .local v9, filepath:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 412
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ecareme/pixwe/media/Utils;->getBucketIdFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)J

    move-result-wide v6

    .line 413
    .local v6, bucketId:J
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bucket_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 414
    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 413
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 416
    .local v3, whereClause:Ljava/lang/String;
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/ecareme/pixwe/cache/CacheService;->PROJECTION_IMAGES:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 417
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 418
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    new-instance v11, Lcom/ecareme/pixwe/media/MediaItem;

    invoke-direct {v11}, Lcom/ecareme/pixwe/media/MediaItem;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    .end local v10           #item:Lcom/ecareme/pixwe/media/MediaItem;
    .local v11, item:Lcom/ecareme/pixwe/media/MediaItem;
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v0, v8, v1}, Lcom/ecareme/pixwe/cache/CacheService;->populateMediaItemFromCursor(Lcom/ecareme/pixwe/media/MediaItem;Landroid/content/ContentResolver;Landroid/database/Cursor;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v10, v11

    .line 422
    .end local v11           #item:Lcom/ecareme/pixwe/media/MediaItem;
    .restart local v10       #item:Lcom/ecareme/pixwe/media/MediaItem;
    :cond_0
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 423
    const/4 v8, 0x0

    .line 429
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-object v10

    .line 425
    :catch_0
    move-exception v1

    goto :goto_0

    .end local v10           #item:Lcom/ecareme/pixwe/media/MediaItem;
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v11       #item:Lcom/ecareme/pixwe/media/MediaItem;
    :catch_1
    move-exception v1

    move-object v10, v11

    .end local v11           #item:Lcom/ecareme/pixwe/media/MediaItem;
    .restart local v10       #item:Lcom/ecareme/pixwe/media/MediaItem;
    goto :goto_0
.end method

.method public static createMediaItemFromUri(Landroid/content/Context;Landroid/net/Uri;I)Lcom/ecareme/pixwe/media/MediaItem;
    .locals 11
    .parameter "context"
    .parameter "target"
    .parameter "mediaType"

    .prologue
    .line 380
    const/4 v9, 0x0

    .line 381
    .local v9, item:Lcom/ecareme/pixwe/media/MediaItem;
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 382
    .local v7, id:J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 383
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 385
    .local v3, whereClause:Ljava/lang/String;
    if-nez p2, :cond_2

    .line 386
    :try_start_0
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v1, v4

    .line 388
    .local v1, uri:Landroid/net/Uri;
    :goto_0
    if-nez p2, :cond_3

    .line 389
    sget-object v4, Lcom/ecareme/pixwe/cache/CacheService;->PROJECTION_IMAGES:[Ljava/lang/String;

    move-object v2, v4

    .line 391
    .local v2, projection:[Ljava/lang/String;
    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 392
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 393
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 394
    new-instance v10, Lcom/ecareme/pixwe/media/MediaItem;

    invoke-direct {v10}, Lcom/ecareme/pixwe/media/MediaItem;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    .end local v9           #item:Lcom/ecareme/pixwe/media/MediaItem;
    .local v10, item:Lcom/ecareme/pixwe/media/MediaItem;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v0, v6, v4}, Lcom/ecareme/pixwe/cache/CacheService;->populateMediaItemFromCursor(Lcom/ecareme/pixwe/media/MediaItem;Landroid/content/ContentResolver;Landroid/database/Cursor;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v9, v10

    .line 397
    .end local v10           #item:Lcom/ecareme/pixwe/media/MediaItem;
    .restart local v9       #item:Lcom/ecareme/pixwe/media/MediaItem;
    :cond_0
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 398
    const/4 v6, 0x0

    .line 404
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_2
    iput-wide v7, v9, Lcom/ecareme/pixwe/media/MediaItem;->mId:J

    .line 405
    return-object v9

    .line 387
    :cond_2
    :try_start_3
    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v1, v4

    goto :goto_0

    .line 390
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_3
    sget-object v4, Lcom/ecareme/pixwe/cache/CacheService;->PROJECTION_VIDEOS:[Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v2, v4

    goto :goto_1

    .line 400
    .end local v1           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v4

    goto :goto_2

    .end local v9           #item:Lcom/ecareme/pixwe/media/MediaItem;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v10       #item:Lcom/ecareme/pixwe/media/MediaItem;
    :catch_1
    move-exception v4

    move-object v9, v10

    .end local v10           #item:Lcom/ecareme/pixwe/media/MediaItem;
    .restart local v9       #item:Lcom/ecareme/pixwe/media/MediaItem;
    goto :goto_2
.end method

.method public static getBucketId(Ljava/lang/String;)I
    .locals 1
    .parameter "path"

    .prologue
    .line 58
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method private static isImage(Ljava/lang/String;)Z
    .locals 1
    .parameter "uriString"

    .prologue
    .line 231
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isSingleImageMode(Ljava/lang/String;)Z
    .locals 1
    .parameter "uriString"

    .prologue
    .line 115
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 115
    goto :goto_0
.end method

.method private rotateItem(Lcom/ecareme/pixwe/media/MediaItem;F)V
    .locals 12
    .parameter "item"
    .parameter "angleToRotate"

    .prologue
    .line 342
    iget-object v9, p0, Lcom/ecareme/pixwe/media/LocalDataSource;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 344
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    iget v9, p1, Lcom/ecareme/pixwe/media/MediaItem;->mRotation:F

    float-to-int v1, v9

    .line 345
    .local v1, currentOrientation:I
    int-to-float v9, v1

    add-float/2addr p2, v9

    .line 346
    invoke-static {p2}, Lcom/ecareme/pixwe/media/Shared;->normalizePositive(F)F

    move-result v4

    .line 347
    .local v4, rotation:F
    float-to-int v9, v4

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 350
    .local v5, rotationString:Ljava/lang/String;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 351
    .local v8, values:Landroid/content/ContentValues;
    const-string v9, "orientation"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :try_start_1
    iget-object v9, p1, Lcom/ecareme/pixwe/media/MediaItem;->mContentUri:Ljava/lang/String;

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, v9, v8, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 360
    :goto_0
    :try_start_2
    iget-object v9, p1, Lcom/ecareme/pixwe/media/MediaItem;->mContentUri:Ljava/lang/String;

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 361
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    .line 362
    .local v7, uriScheme:Ljava/lang/String;
    const-string v9, "file"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "content"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 363
    :cond_0
    const-string v9, "file"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    .line 364
    .local v3, path:Ljava/lang/String;
    :goto_1
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 365
    .local v2, exif:Landroid/media/ExifInterface;
    const-string v9, "Orientation"

    invoke-static {v4}, Lcom/ecareme/pixwe/media/Shared;->degreesToExifOrientation(F)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-virtual {v2}, Landroid/media/ExifInterface;->saveAttributes()V

    .line 370
    .end local v2           #exif:Landroid/media/ExifInterface;
    .end local v3           #path:Ljava/lang/String;
    :cond_1
    iget-object v9, p1, Lcom/ecareme/pixwe/media/MediaItem;->mParentMediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    iget-wide v9, v9, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    invoke-static {v9, v10}, Lcom/ecareme/pixwe/cache/CacheService;->markDirty(J)V

    .line 373
    iput v4, p1, Lcom/ecareme/pixwe/media/MediaItem;->mRotation:F

    .line 377
    .end local v1           #currentOrientation:I
    .end local v4           #rotation:F
    .end local v5           #rotationString:Ljava/lang/String;
    .end local v6           #uri:Landroid/net/Uri;
    .end local v7           #uriScheme:Ljava/lang/String;
    .end local v8           #values:Landroid/content/ContentValues;
    :goto_2
    return-void

    .line 363
    .restart local v1       #currentOrientation:I
    .restart local v4       #rotation:F
    .restart local v5       #rotationString:Ljava/lang/String;
    .restart local v6       #uri:Landroid/net/Uri;
    .restart local v7       #uriScheme:Ljava/lang/String;
    .restart local v8       #values:Landroid/content/ContentValues;
    :cond_2
    iget-object v9, p1, Lcom/ecareme/pixwe/media/MediaItem;->mFilePath:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v9

    goto :goto_1

    .line 374
    .end local v1           #currentOrientation:I
    .end local v4           #rotation:F
    .end local v5           #rotationString:Ljava/lang/String;
    .end local v6           #uri:Landroid/net/Uri;
    .end local v7           #uriScheme:Ljava/lang/String;
    .end local v8           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v9

    goto :goto_2

    .line 354
    .restart local v1       #currentOrientation:I
    .restart local v4       #rotation:F
    .restart local v5       #rotationString:Ljava/lang/String;
    .restart local v8       #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v9

    goto :goto_0
.end method


# virtual methods
.method public getDatabaseUris()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 433
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getThumbnailCache()Lcom/ecareme/pixwe/media/DiskCache;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/ecareme/pixwe/media/LocalDataSource;->mDiskCache:Lcom/ecareme/pixwe/media/DiskCache;

    return-object v0
.end method

.method public isSingleImage()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/LocalDataSource;->mSingleUri:Z

    return v0
.end method

.method public loadItemsForSet(Lcom/ecareme/pixwe/media/MediaFeed;Lcom/ecareme/pixwe/media/MediaSet;II)V
    .locals 26
    .parameter "feed"
    .parameter "parentSet"
    .parameter "rangeStart"
    .parameter "rangeEnd"

    .prologue
    .line 124
    move-object/from16 v0, p2

    iget v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mNumItemsLoaded:I

    move v6, v0

    if-lez v6, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/LocalDataSource;->mDone:Z

    move v6, v0

    if-eqz v6, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/LocalDataSource;->mSingleUri:Z

    move v6, v0

    if-eqz v6, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/LocalDataSource;->mDone:Z

    move v6, v0

    if-nez v6, :cond_f

    .line 128
    new-instance v21, Lcom/ecareme/pixwe/media/MediaItem;

    invoke-direct/range {v21 .. v21}, Lcom/ecareme/pixwe/media/MediaItem;-><init>()V

    .line 129
    .local v21, item:Lcom/ecareme/pixwe/media/MediaItem;
    const-wide/16 v8, 0x0

    move-wide v0, v8

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/ecareme/pixwe/media/MediaItem;->mId:J

    .line 130
    const-string v6, ""

    move-object v0, v6

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/ecareme/pixwe/media/MediaItem;->mFilePath:Ljava/lang/String;

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/LocalDataSource;->mUri:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v6}, Lcom/ecareme/pixwe/media/LocalDataSource;->isImage(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x0

    :goto_1
    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/MediaItem;->setMediaType(I)V

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/LocalDataSource;->mUri:Ljava/lang/String;

    move-object v6, v0

    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/LocalDataSource;->mUri:Ljava/lang/String;

    move-object v6, v0

    sget-object v7, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 134
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/LocalDataSource;->mContext:Landroid/content/Context;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/LocalDataSource;->mUri:Ljava/lang/String;

    move-object v7, v0

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual/range {v21 .. v21}, Lcom/ecareme/pixwe/media/MediaItem;->getMediaType()I

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/ecareme/pixwe/media/LocalDataSource;->createMediaItemFromUri(Landroid/content/Context;Landroid/net/Uri;I)Lcom/ecareme/pixwe/media/MediaItem;

    move-result-object v23

    .line 135
    .local v23, newItem:Lcom/ecareme/pixwe/media/MediaItem;
    if-eqz v23, :cond_3

    .line 136
    move-object/from16 v21, v23

    .line 137
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mFilePath:Ljava/lang/String;

    move-object v7, v0

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v20

    .line 138
    .local v20, fileUri:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/LocalDataSource;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ecareme/pixwe/media/Utils;->getBucketNameFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/ecareme/pixwe/media/MediaSet;->mName:Ljava/lang/String;

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/LocalDataSource;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ecareme/pixwe/media/Utils;->getBucketIdFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)J

    move-result-wide v8

    move-wide v0, v8

    move-object/from16 v2, p2

    iput-wide v0, v2, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    .line 140
    const/4 v6, 0x1

    move-object/from16 v0, p2

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/MediaSet;->generateTitle(Z)V

    .line 171
    .end local v20           #fileUri:Ljava/lang/String;
    .end local v23           #newItem:Lcom/ecareme/pixwe/media/MediaItem;
    :cond_3
    :goto_2
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/MediaFeed;->addItemToMediaSet(Lcom/ecareme/pixwe/media/MediaItem;Lcom/ecareme/pixwe/media/MediaSet;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/LocalDataSource;->mUri:Ljava/lang/String;

    move-object v6, v0

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 175
    :try_start_0
    new-instance v19, Landroid/media/ExifInterface;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/LocalDataSource;->mUri:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 176
    .local v19, exif:Landroid/media/ExifInterface;
    const-string v6, "Orientation"

    .line 177
    const/4 v7, 0x1

    .line 176
    move-object/from16 v0, v19

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/ecareme/pixwe/media/Shared;->exifOrientationToDegrees(I)F

    move-result v6

    move v0, v6

    move-object/from16 v1, v21

    iput v0, v1, Lcom/ecareme/pixwe/media/MediaItem;->mRotation:F
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v19           #exif:Landroid/media/ExifInterface;
    :cond_4
    :goto_3
    invoke-static/range {v21 .. v21}, Lcom/ecareme/pixwe/cache/CacheService;->fetchDateTaken(Lcom/ecareme/pixwe/media/MediaItem;)J

    move-result-wide v16

    .line 184
    .local v16, dateTaken:J
    const-wide/16 v8, -0x1

    cmp-long v6, v16, v8

    if-eqz v6, :cond_5

    .line 185
    move-wide/from16 v0, v16

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/ecareme/pixwe/media/MediaItem;->mDateTakenInMs:J

    .line 187
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/LocalDataSource;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/LocalDataSource;->mIncludeImages:Z

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/LocalDataSource;->mIncludeVideos:Z

    move v10, v0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-static/range {v4 .. v10}, Lcom/ecareme/pixwe/cache/CacheService;->loadMediaItemsIntoMediaFeed(Landroid/content/Context;Lcom/ecareme/pixwe/media/MediaFeed;Lcom/ecareme/pixwe/media/MediaSet;IIZZ)V

    .line 188
    invoke-virtual/range {p2 .. p2}, Lcom/ecareme/pixwe/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v22

    .line 189
    .local v22, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 190
    .local v24, numItems:I
    const/4 v6, 0x1

    move/from16 v0, v24

    move v1, v6

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p2

    iget v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mNumItemsLoaded:I

    move v6, v0

    const/4 v7, 0x1

    if-le v6, v7, :cond_6

    .line 191
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p2

    iput v0, v1, Lcom/ecareme/pixwe/media/MediaSet;->mNumItemsLoaded:I

    .line 193
    :cond_6
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/MediaSet;->removeDuplicate(Lcom/ecareme/pixwe/media/MediaItem;)V

    .line 195
    invoke-virtual/range {p2 .. p2}, Lcom/ecareme/pixwe/media/MediaSet;->updateNumExpectedItems()V

    .line 196
    const/4 v6, 0x1

    move-object/from16 v0, p2

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/MediaSet;->generateTitle(Z)V

    .line 227
    .end local v16           #dateTaken:J
    .end local v21           #item:Lcom/ecareme/pixwe/media/MediaItem;
    .end local v22           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    .end local v24           #numItems:I
    :cond_7
    :goto_4
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ecareme/pixwe/media/LocalDataSource;->mDone:Z

    goto/16 :goto_0

    .line 131
    .restart local v21       #item:Lcom/ecareme/pixwe/media/MediaItem;
    :cond_8
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 142
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/LocalDataSource;->mUri:Ljava/lang/String;

    move-object v6, v0

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 143
    const/16 v23, 0x0

    .line 144
    .restart local v23       #newItem:Lcom/ecareme/pixwe/media/MediaItem;
    const/16 v25, 0xf

    .line 146
    .local v25, numRetries:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/LocalDataSource;->mContext:Landroid/content/Context;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/LocalDataSource;->mUri:Ljava/lang/String;

    move-object v7, v0

    invoke-static {v6, v7}, Lcom/ecareme/pixwe/media/LocalDataSource;->createMediaItemFromFileUri(Landroid/content/Context;Ljava/lang/String;)Lcom/ecareme/pixwe/media/MediaItem;

    move-result-object v23

    .line 147
    if-nez v23, :cond_b

    .line 148
    add-int/lit8 v25, v25, -0x1

    .line 150
    const-wide/16 v8, 0x1f4

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 155
    :cond_b
    :goto_5
    if-nez v23, :cond_c

    if-gez v25, :cond_a

    .line 156
    :cond_c
    if-eqz v23, :cond_d

    .line 157
    move-object/from16 v21, v23

    goto/16 :goto_2

    .line 159
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/LocalDataSource;->mUri:Ljava/lang/String;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/ecareme/pixwe/media/MediaItem;->mContentUri:Ljava/lang/String;

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/LocalDataSource;->mUri:Ljava/lang/String;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/ecareme/pixwe/media/MediaItem;->mThumbnailUri:Ljava/lang/String;

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/LocalDataSource;->mUri:Ljava/lang/String;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/ecareme/pixwe/media/MediaItem;->mScreennailUri:Ljava/lang/String;

    .line 162
    const/4 v6, 0x1

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/MediaFeed;->setSingleImageMode(Z)V

    goto/16 :goto_2

    .line 165
    .end local v23           #newItem:Lcom/ecareme/pixwe/media/MediaItem;
    .end local v25           #numRetries:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/LocalDataSource;->mUri:Ljava/lang/String;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/ecareme/pixwe/media/MediaItem;->mContentUri:Ljava/lang/String;

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/LocalDataSource;->mUri:Ljava/lang/String;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/ecareme/pixwe/media/MediaItem;->mThumbnailUri:Ljava/lang/String;

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/LocalDataSource;->mUri:Ljava/lang/String;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/ecareme/pixwe/media/MediaItem;->mScreennailUri:Ljava/lang/String;

    .line 168
    const/4 v6, 0x1

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/MediaFeed;->setSingleImageMode(Z)V

    goto/16 :goto_2

    .line 178
    :catch_0
    move-exception v6

    move-object/from16 v18, v6

    .line 179
    .local v18, e:Ljava/io/IOException;
    const-string v6, "LocalDataSource"

    const-string v7, "Error reading Exif information, probably not a jpeg."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 197
    .end local v18           #e:Ljava/io/IOException;
    .end local v21           #item:Lcom/ecareme/pixwe/media/MediaItem;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/LocalDataSource;->mUri:Ljava/lang/String;

    move-object v6, v0

    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/LocalDataSource;->mFlattenAllItems:Z

    move v7, v0

    and-int/2addr v6, v7

    if-eqz v6, :cond_11

    .line 198
    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 199
    .local v5, uriImages:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/LocalDataSource;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 200
    .local v4, cr:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 202
    .local v7, where:Ljava/lang/String;
    :try_start_2
    sget-object v6, Lcom/ecareme/pixwe/cache/CacheService;->PROJECTION_IMAGES:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 203
    .local v15, cursor:Landroid/database/Cursor;
    if-eqz v15, :cond_7

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 204
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v6

    move-object/from16 v0, p2

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/MediaSet;->setNumExpectedItems(I)V

    .line 206
    :cond_10
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-nez v6, :cond_0

    .line 209
    new-instance v21, Lcom/ecareme/pixwe/media/MediaItem;

    invoke-direct/range {v21 .. v21}, Lcom/ecareme/pixwe/media/MediaItem;-><init>()V

    .line 210
    .restart local v21       #item:Lcom/ecareme/pixwe/media/MediaItem;
    sget-object v6, Lcom/ecareme/pixwe/cache/CacheService;->BASE_CONTENT_STRING_IMAGES:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object v1, v4

    move-object v2, v15

    move-object v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/ecareme/pixwe/cache/CacheService;->populateMediaItemFromCursor(Lcom/ecareme/pixwe/media/MediaItem;Landroid/content/ContentResolver;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 211
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/MediaFeed;->addItemToMediaSet(Lcom/ecareme/pixwe/media/MediaItem;Lcom/ecareme/pixwe/media/MediaSet;)V

    .line 212
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    .line 205
    if-nez v6, :cond_10

    .line 214
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 215
    const/4 v15, 0x0

    .line 217
    invoke-virtual/range {p2 .. p2}, Lcom/ecareme/pixwe/media/MediaSet;->updateNumExpectedItems()V

    .line 218
    const/4 v6, 0x1

    move-object/from16 v0, p2

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/MediaSet;->generateTitle(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    .line 220
    .end local v15           #cursor:Landroid/database/Cursor;
    .end local v21           #item:Lcom/ecareme/pixwe/media/MediaItem;
    :catch_1
    move-exception v6

    goto/16 :goto_4

    .line 225
    .end local v4           #cr:Landroid/content/ContentResolver;
    .end local v5           #uriImages:Landroid/net/Uri;
    .end local v7           #where:Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/LocalDataSource;->mContext:Landroid/content/Context;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/LocalDataSource;->mIncludeImages:Z

    move v13, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/LocalDataSource;->mIncludeVideos:Z

    move v14, v0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-static/range {v8 .. v14}, Lcom/ecareme/pixwe/cache/CacheService;->loadMediaItemsIntoMediaFeed(Landroid/content/Context;Lcom/ecareme/pixwe/media/MediaFeed;Lcom/ecareme/pixwe/media/MediaSet;IIZZ)V

    goto/16 :goto_4

    .line 151
    .restart local v21       #item:Lcom/ecareme/pixwe/media/MediaItem;
    .restart local v23       #newItem:Lcom/ecareme/pixwe/media/MediaItem;
    .restart local v25       #numRetries:I
    :catch_2
    move-exception v6

    goto/16 :goto_5
.end method

.method public loadMediaSets(Lcom/ecareme/pixwe/media/MediaFeed;)V
    .locals 14
    .parameter "feed"

    .prologue
    .line 235
    const/4 v10, 0x0

    .line 236
    .local v10, set:Lcom/ecareme/pixwe/media/MediaSet;
    const/4 v8, 0x1

    .line 237
    .local v8, loadOtherSets:Z
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/LocalDataSource;->mSingleUri:Z

    if-eqz v0, :cond_3

    .line 238
    iget-object v0, p0, Lcom/ecareme/pixwe/media/LocalDataSource;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/ecareme/pixwe/media/LocalDataSource;->mUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/media/Utils;->getBucketNameFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    .line 239
    .local v9, name:Ljava/lang/String;
    iget-object v0, p0, Lcom/ecareme/pixwe/media/LocalDataSource;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/ecareme/pixwe/media/LocalDataSource;->mUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/media/Utils;->getBucketIdFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)J

    move-result-wide v6

    .line 240
    .local v6, id:J
    invoke-virtual {p1, v6, v7, p0}, Lcom/ecareme/pixwe/media/MediaFeed;->addMediaSet(JLcom/ecareme/pixwe/media/DataSource;)Lcom/ecareme/pixwe/media/MediaSet;

    move-result-object v10

    .line 241
    iput-object v9, v10, Lcom/ecareme/pixwe/media/MediaSet;->mName:Ljava/lang/String;

    .line 242
    iput-wide v6, v10, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    .line 243
    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Lcom/ecareme/pixwe/media/MediaSet;->setNumExpectedItems(I)V

    .line 244
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Lcom/ecareme/pixwe/media/MediaSet;->generateTitle(Z)V

    .line 245
    const-wide/16 v0, -0x1

    iput-wide v0, v10, Lcom/ecareme/pixwe/media/MediaSet;->mPicasaAlbumId:J

    .line 246
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/LocalDataSource;->getThumbnailCache()Lcom/ecareme/pixwe/media/DiskCache;

    move-result-object v0

    sget-object v1, Lcom/ecareme/pixwe/media/LocalDataSource;->sThumbnailCache:Lcom/ecareme/pixwe/media/DiskCache;

    if-eq v0, v1, :cond_0

    .line 247
    const/4 v8, 0x0

    .line 268
    .end local v6           #id:J
    .end local v9           #name:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/LocalDataSource;->mAllItems:Z

    if-nez v0, :cond_2

    if-eqz v10, :cond_2

    if-eqz v8, :cond_2

    .line 269
    iget-wide v11, v10, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    .line 270
    .local v11, setId:J
    invoke-static {v11, v12}, Lcom/ecareme/pixwe/cache/CacheService;->isPresentInCache(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 271
    invoke-static {}, Lcom/ecareme/pixwe/cache/CacheService;->markDirty()V

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/ecareme/pixwe/media/LocalDataSource;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/ecareme/pixwe/media/LocalDataSource;->mIncludeImages:Z

    iget-boolean v4, p0, Lcom/ecareme/pixwe/media/LocalDataSource;->mIncludeVideos:Z

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/ecareme/pixwe/cache/CacheService;->loadMediaSets(Landroid/content/Context;Lcom/ecareme/pixwe/media/MediaFeed;Lcom/ecareme/pixwe/media/DataSource;ZZZ)V

    .line 276
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/LocalDataSource;->mSingleUri:Z

    if-nez v0, :cond_2

    .line 277
    invoke-virtual {p1, v10}, Lcom/ecareme/pixwe/media/MediaFeed;->moveSetToFront(Lcom/ecareme/pixwe/media/MediaSet;)V

    .line 280
    .end local v11           #setId:J
    :cond_2
    return-void

    .line 249
    :cond_3
    iget-object v0, p0, Lcom/ecareme/pixwe/media/LocalDataSource;->mBucketId:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 251
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/LocalDataSource;->mFlattenAllItems:Z

    if-eqz v0, :cond_4

    .line 252
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1, p0}, Lcom/ecareme/pixwe/media/MediaFeed;->addMediaSet(JLcom/ecareme/pixwe/media/DataSource;)Lcom/ecareme/pixwe/media/MediaSet;

    move-result-object v10

    .line 253
    iget-object v0, p0, Lcom/ecareme/pixwe/media/LocalDataSource;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/ecareme/pixwe/media/LocalDataSource;->mUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/media/Utils;->getBucketNameFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/ecareme/pixwe/media/MediaSet;->mName:Ljava/lang/String;

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v10, Lcom/ecareme/pixwe/media/MediaSet;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ecareme/pixwe/media/LocalDataSource;->getBucketId(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, v10, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    .line 255
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Lcom/ecareme/pixwe/media/MediaSet;->setNumExpectedItems(I)V

    .line 256
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Lcom/ecareme/pixwe/media/MediaSet;->generateTitle(Z)V

    .line 257
    const-wide/16 v0, -0x1

    iput-wide v0, v10, Lcom/ecareme/pixwe/media/MediaSet;->mPicasaAlbumId:J

    goto :goto_0

    .line 259
    :cond_4
    iget-object v0, p0, Lcom/ecareme/pixwe/media/LocalDataSource;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/ecareme/pixwe/media/LocalDataSource;->mIncludeImages:Z

    iget-boolean v4, p0, Lcom/ecareme/pixwe/media/LocalDataSource;->mIncludeVideos:Z

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/ecareme/pixwe/cache/CacheService;->loadMediaSets(Landroid/content/Context;Lcom/ecareme/pixwe/media/MediaFeed;Lcom/ecareme/pixwe/media/DataSource;ZZZ)V

    goto/16 :goto_0

    .line 262
    :cond_5
    iget-object v0, p0, Lcom/ecareme/pixwe/media/LocalDataSource;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/ecareme/pixwe/media/LocalDataSource;->mBucketId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v0, p1, p0, v1, v2}, Lcom/ecareme/pixwe/cache/CacheService;->loadMediaSet(Landroid/content/Context;Lcom/ecareme/pixwe/media/MediaFeed;Lcom/ecareme/pixwe/media/DataSource;J)V

    .line 263
    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/MediaFeed;->getMediaSets()Ljava/util/ArrayList;

    move-result-object v13

    .line 264
    .local v13, sets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaSet;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 265
    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #set:Lcom/ecareme/pixwe/media/MediaSet;
    check-cast v10, Lcom/ecareme/pixwe/media/MediaSet;

    .restart local v10       #set:Lcom/ecareme/pixwe/media/MediaSet;
    goto/16 :goto_0
.end method

.method public performOperation(ILjava/util/ArrayList;Ljava/lang/Object;)Z
    .locals 21
    .parameter "operation"
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ecareme/pixwe/media/MediaBucket;",
            ">;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 283
    .local p2, mediaBuckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaBucket;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 284
    .local v11, numBuckets:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/LocalDataSource;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 285
    .local v6, cr:Landroid/content/ContentResolver;
    packed-switch p1, :pswitch_data_0

    .line 338
    .end local p1
    :cond_0
    const/16 v18, 0x1

    :goto_0
    return v18

    .line 287
    .restart local p1
    :pswitch_0
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v11, :cond_0

    .line 288
    move-object/from16 v0, p2

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ecareme/pixwe/media/MediaBucket;

    .line 289
    .local v5, bucket:Lcom/ecareme/pixwe/media/MediaBucket;
    iget-object v13, v5, Lcom/ecareme/pixwe/media/MediaBucket;->mediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    .line 290
    .local v13, set:Lcom/ecareme/pixwe/media/MediaSet;
    iget-object v9, v5, Lcom/ecareme/pixwe/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    .line 291
    .local v9, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    if-eqz v13, :cond_1

    if-nez v9, :cond_1

    .line 294
    sget-object v14, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 295
    .local v14, uriImages:Landroid/net/Uri;
    sget-object v15, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 296
    .local v15, uriVideos:Landroid/net/Uri;
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "bucket_id="

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v13

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 297
    .local v16, whereImages:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "bucket_id="

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v13

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 298
    .local v17, whereVideos:Ljava/lang/String;
    const/16 v18, 0x0

    move-object v0, v6

    move-object v1, v14

    move-object/from16 v2, v16

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 299
    const/16 v18, 0x0

    move-object v0, v6

    move-object v1, v15

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 302
    .end local v14           #uriImages:Landroid/net/Uri;
    .end local v15           #uriVideos:Landroid/net/Uri;
    .end local v16           #whereImages:Ljava/lang/String;
    .end local v17           #whereVideos:Ljava/lang/String;
    :cond_1
    if-eqz v13, :cond_2

    if-eqz v9, :cond_2

    .line 304
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 306
    .local v12, numItems:I
    const/4 v10, 0x0

    .local v10, j:I
    :goto_2
    if-lt v10, v12, :cond_3

    .line 314
    :goto_3
    invoke-virtual {v13}, Lcom/ecareme/pixwe/media/MediaSet;->updateNumExpectedItems()V

    .line 315
    const/16 v18, 0x1

    move-object v0, v13

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/MediaSet;->generateTitle(Z)V

    .line 287
    .end local v10           #j:I
    .end local v12           #numItems:I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 307
    .restart local v10       #j:I
    .restart local v12       #numItems:I
    :cond_3
    :try_start_0
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ecareme/pixwe/media/MediaItem;

    .line 308
    .local v8, item:Lcom/ecareme/pixwe/media/MediaItem;
    move-object v0, v8

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mContentUri:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v0, v6

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 321
    .end local v5           #bucket:Lcom/ecareme/pixwe/media/MediaBucket;
    .end local v7           #i:I
    .end local v8           #item:Lcom/ecareme/pixwe/media/MediaItem;
    .end local v9           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    .end local v10           #j:I
    .end local v12           #numItems:I
    .end local v13           #set:Lcom/ecareme/pixwe/media/MediaSet;
    :pswitch_1
    const/4 v7, 0x0

    .end local p1
    .restart local v7       #i:I
    :goto_4
    if-ge v7, v11, :cond_0

    .line 322
    move-object/from16 v0, p2

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ecareme/pixwe/media/MediaBucket;

    .line 323
    .restart local v5       #bucket:Lcom/ecareme/pixwe/media/MediaBucket;
    iget-object v9, v5, Lcom/ecareme/pixwe/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    .line 324
    .restart local v9       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    if-nez v9, :cond_5

    .line 321
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 327
    :cond_5
    move-object/from16 v0, p3

    check-cast v0, Ljava/lang/Float;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 328
    .local v4, angleToRotate:F
    const/16 v18, 0x0

    cmpl-float v18, v4, v18

    if-nez v18, :cond_6

    .line 329
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 331
    :cond_6
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 332
    .restart local v12       #numItems:I
    const/4 v10, 0x0

    .restart local v10       #j:I
    :goto_5
    if-ge v10, v12, :cond_4

    .line 333
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ecareme/pixwe/media/MediaItem;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/ecareme/pixwe/media/LocalDataSource;->rotateItem(Lcom/ecareme/pixwe/media/MediaItem;F)V

    .line 332
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 310
    .end local v4           #angleToRotate:F
    .restart local v13       #set:Lcom/ecareme/pixwe/media/MediaSet;
    .restart local p1
    :catch_0
    move-exception v18

    goto :goto_3

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public refresh(Lcom/ecareme/pixwe/media/MediaFeed;[Ljava/lang/String;)V
    .locals 10
    .parameter "feed"
    .parameter "databaseUris"

    .prologue
    const/4 v9, 0x1

    .line 438
    iget-object v7, p0, Lcom/ecareme/pixwe/media/LocalDataSource;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/ecareme/pixwe/cache/CacheService;->computeDirtySets(Landroid/content/Context;)[J

    move-result-object v1

    .line 439
    .local v1, ids:[J
    array-length v4, v1

    .line 440
    .local v4, numDirtySets:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v4, :cond_0

    .line 455
    return-void

    .line 441
    :cond_0
    aget-wide v5, v1, v0

    .line 442
    .local v5, setId:J
    invoke-virtual {p1, v5, v6}, Lcom/ecareme/pixwe/media/MediaFeed;->getMediaSet(J)Lcom/ecareme/pixwe/media/MediaSet;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 443
    invoke-virtual {p1, v5, v6, p0}, Lcom/ecareme/pixwe/media/MediaFeed;->replaceMediaSet(JLcom/ecareme/pixwe/media/DataSource;)Lcom/ecareme/pixwe/media/MediaSet;

    move-result-object v3

    .line 444
    .local v3, newSet:Lcom/ecareme/pixwe/media/MediaSet;
    invoke-virtual {v3, v9}, Lcom/ecareme/pixwe/media/MediaSet;->generateTitle(Z)V

    .line 440
    .end local v3           #newSet:Lcom/ecareme/pixwe/media/MediaSet;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 446
    :cond_1
    invoke-virtual {p1, v5, v6, p0}, Lcom/ecareme/pixwe/media/MediaFeed;->addMediaSet(JLcom/ecareme/pixwe/media/DataSource;)Lcom/ecareme/pixwe/media/MediaSet;

    move-result-object v2

    .line 447
    .local v2, mediaSet:Lcom/ecareme/pixwe/media/MediaSet;
    sget v7, Lcom/ecareme/pixwe/media/LocalDataSource;->CAMERA_BUCKET_ID:I

    int-to-long v7, v7

    cmp-long v7, v5, v7

    if-nez v7, :cond_3

    .line 448
    const-string v7, "Camera"

    iput-object v7, v2, Lcom/ecareme/pixwe/media/MediaSet;->mName:Ljava/lang/String;

    .line 452
    :cond_2
    :goto_2
    invoke-virtual {v2, v9}, Lcom/ecareme/pixwe/media/MediaSet;->generateTitle(Z)V

    goto :goto_1

    .line 449
    :cond_3
    sget v7, Lcom/ecareme/pixwe/media/LocalDataSource;->DOWNLOAD_BUCKET_ID:I

    int-to-long v7, v7

    cmp-long v7, v5, v7

    if-nez v7, :cond_2

    .line 450
    const-string v7, "download"

    iput-object v7, v2, Lcom/ecareme/pixwe/media/MediaSet;->mName:Ljava/lang/String;

    goto :goto_2
.end method

.method public setMimeFilter(ZZ)V
    .locals 0
    .parameter "includeImages"
    .parameter "includeVideos"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/ecareme/pixwe/media/LocalDataSource;->mIncludeImages:Z

    .line 103
    iput-boolean p2, p0, Lcom/ecareme/pixwe/media/LocalDataSource;->mIncludeVideos:Z

    .line 104
    return-void
.end method

.method public shutdown()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

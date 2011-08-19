.class public final Lcom/ecareme/pixwe/cache/CacheService;
.super Landroid/app/IntentService;
.source "CacheService.java"


# static fields
.field public static final ACTION_CACHE:Ljava/lang/String; = "com.ecareme.pixwe.cache.action.CACHE"

.field private static final ALBUM_CACHE_DIRTY_BUCKET_INDEX:I = -0x4

.field private static final ALBUM_CACHE_DIRTY_INDEX:I = -0x2

.field private static final ALBUM_CACHE_LOCALE_INDEX:I = -0x5

.field private static final ALBUM_CACHE_METADATA_INDEX:I = -0x1

.field public static final BASE_CONTENT_STRING_IMAGES:Ljava/lang/String; = null

.field public static final BASE_CONTENT_STRING_VIDEOS:Ljava/lang/String; = null

.field public static final BUCKET_ID_INDEX:I = 0x0

.field public static final BUCKET_NAME_INDEX:I = 0x1

.field public static final BUCKET_PROJECTION_IMAGES:[Ljava/lang/String; = null

.field public static final BUCKET_PROJECTION_VIDEOS:[Ljava/lang/String; = null

.field private static final DEBUG:Z = true

.field public static final DEFAULT_BUCKET_SORT_ORDER:Ljava/lang/String; = "upper(bucket_display_name) ASC"

.field public static final DEFAULT_IMAGE_SORT_ORDER:Ljava/lang/String; = "datetaken ASC"

.field private static final DEFAULT_THUMBNAIL_HEIGHT:I = 0x60

.field private static final DEFAULT_THUMBNAIL_WIDTH:I = 0x80

.field public static final DEFAULT_VIDEO_SORT_ORDER:Ljava/lang/String; = "datetaken ASC"

.field public static final MEDIA_BUCKET_ID_INDEX:I = 0xa

.field public static final MEDIA_CAPTION_INDEX:I = 0x1

.field public static final MEDIA_DATA_INDEX:I = 0x8

.field public static final MEDIA_DATE_ADDED_INDEX:I = 0x6

.field public static final MEDIA_DATE_MODIFIED_INDEX:I = 0x7

.field public static final MEDIA_DATE_TAKEN_INDEX:I = 0x5

.field public static final MEDIA_ID_INDEX:I = 0x0

.field public static final MEDIA_LATITUDE_INDEX:I = 0x3

.field public static final MEDIA_LONGITUDE_INDEX:I = 0x4

.field public static final MEDIA_MIME_TYPE_INDEX:I = 0x2

.field public static final MEDIA_ORIENTATION_OR_DURATION_INDEX:I = 0x9

.field public static final PROJECTION_IMAGES:[Ljava/lang/String; = null

.field public static final PROJECTION_VIDEOS:[Ljava/lang/String; = null

.field public static final SENSE_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "CacheService"

.field private static final THUMBNAILER_WAIT_IN_MS:I = 0x7d0

.field public static final THUMBNAIL_DATA_INDEX:I = 0x2

.field public static final THUMBNAIL_DATE_MODIFIED_INDEX:I = 0x1

.field public static final THUMBNAIL_ID_INDEX:I = 0x0

.field public static final THUMBNAIL_ORIENTATION_INDEX:I = 0x3

.field public static final THUMBNAIL_PROJECTION:[Ljava/lang/String;

.field private static final THUMBNAIL_THREAD:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private static final mAltDateFormat:Ljava/text/DateFormat;

.field private static final mDateFormat:Ljava/text/DateFormat;

.field public static final sAlbumCache:Lcom/ecareme/pixwe/media/DiskCache;

.field private static final sCacheLock:Ljava/lang/Object;

.field private static final sDummyData:[B

.field private static sList:Lcom/ecareme/pixwe/cache/ImageList;

.field public static final sMetaAlbumCache:Lcom/ecareme/pixwe/media/DiskCache;

.field public static final sSkipThumbnailIds:Lcom/ecareme/pixwe/media/DiskCache;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 76
    new-instance v0, Lcom/ecareme/pixwe/media/DiskCache;

    const-string v1, "local-album-cache"

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/DiskCache;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ecareme/pixwe/cache/CacheService;->sAlbumCache:Lcom/ecareme/pixwe/media/DiskCache;

    .line 77
    new-instance v0, Lcom/ecareme/pixwe/media/DiskCache;

    const-string v1, "local-meta-cache"

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/DiskCache;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ecareme/pixwe/cache/CacheService;->sMetaAlbumCache:Lcom/ecareme/pixwe/media/DiskCache;

    .line 78
    new-instance v0, Lcom/ecareme/pixwe/media/DiskCache;

    const-string v1, "local-skip-cache"

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/DiskCache;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ecareme/pixwe/cache/CacheService;->sSkipThumbnailIds:Lcom/ecareme/pixwe/media/DiskCache;

    .line 81
    const/4 v0, 0x0

    sput-object v0, Lcom/ecareme/pixwe/cache/CacheService;->sList:Lcom/ecareme/pixwe/cache/ImageList;

    .line 99
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "bucket_id"

    aput-object v1, v0, v4

    .line 100
    const-string v1, "bucket_display_name"

    aput-object v1, v0, v3

    .line 99
    sput-object v0, Lcom/ecareme/pixwe/cache/CacheService;->BUCKET_PROJECTION_IMAGES:[Ljava/lang/String;

    .line 102
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "bucket_id"

    aput-object v1, v0, v4

    .line 103
    const-string v1, "bucket_display_name"

    aput-object v1, v0, v3

    .line 102
    sput-object v0, Lcom/ecareme/pixwe/cache/CacheService;->BUCKET_PROJECTION_VIDEOS:[Ljava/lang/String;

    .line 111
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "date_added"

    aput-object v1, v0, v3

    .line 112
    const-string v1, "_data"

    aput-object v1, v0, v5

    const-string v1, "orientation"

    aput-object v1, v0, v6

    .line 111
    sput-object v0, Lcom/ecareme/pixwe/cache/CacheService;->THUMBNAIL_PROJECTION:[Ljava/lang/String;

    .line 114
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "bucket_id"

    aput-object v1, v0, v4

    .line 115
    const-string v1, "MAX(date_added), COUNT(*)"

    aput-object v1, v0, v3

    .line 114
    sput-object v0, Lcom/ecareme/pixwe/cache/CacheService;->SENSE_PROJECTION:[Ljava/lang/String;

    .line 131
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "title"

    aput-object v1, v0, v3

    .line 132
    const-string v1, "mime_type"

    aput-object v1, v0, v5

    const-string v1, "latitude"

    aput-object v1, v0, v6

    const-string v1, "longitude"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 133
    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 134
    const-string v2, "_data"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "orientation"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "bucket_id"

    aput-object v2, v0, v1

    .line 131
    sput-object v0, Lcom/ecareme/pixwe/cache/CacheService;->PROJECTION_IMAGES:[Ljava/lang/String;

    .line 136
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "title"

    aput-object v1, v0, v3

    .line 137
    const-string v1, "mime_type"

    aput-object v1, v0, v5

    const-string v1, "latitude"

    aput-object v1, v0, v6

    const-string v1, "longitude"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 138
    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 139
    const-string v2, "bucket_id"

    aput-object v2, v0, v1

    .line 136
    sput-object v0, Lcom/ecareme/pixwe/cache/CacheService;->PROJECTION_VIDEOS:[Ljava/lang/String;

    .line 141
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

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ecareme/pixwe/cache/CacheService;->BASE_CONTENT_STRING_IMAGES:Ljava/lang/String;

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ecareme/pixwe/cache/CacheService;->BASE_CONTENT_STRING_VIDEOS:Ljava/lang/String;

    .line 143
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/ecareme/pixwe/cache/CacheService;->THUMBNAIL_THREAD:Ljava/util/concurrent/atomic/AtomicReference;

    .line 151
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ecareme/pixwe/cache/CacheService;->mDateFormat:Ljava/text/DateFormat;

    .line 152
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ecareme/pixwe/cache/CacheService;->mAltDateFormat:Ljava/text/DateFormat;

    .line 153
    new-array v0, v3, [B

    aput-byte v3, v0, v4

    sput-object v0, Lcom/ecareme/pixwe/cache/CacheService;->sDummyData:[B

    .line 154
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ecareme/pixwe/cache/CacheService;->sCacheLock:Ljava/lang/Object;

    .line 74
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 696
    const-string v0, "CacheService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 697
    return-void
.end method

.method static synthetic access$0(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 528
    invoke-static {p0}, Lcom/ecareme/pixwe/cache/CacheService;->buildThumbnails(Landroid/content/Context;)V

    return-void
.end method

.method private static final addNoDupe(Ljava/util/ArrayList;J)V
    .locals 4
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 1053
    .local p0, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1054
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 1058
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1059
    :cond_0
    return-void

    .line 1055
    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-eqz v2, :cond_0

    .line 1054
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static addToThumbnailerSkipList(J)V
    .locals 6
    .parameter "thumbnailId"

    .prologue
    .line 562
    sget-object v0, Lcom/ecareme/pixwe/cache/CacheService;->sSkipThumbnailIds:Lcom/ecareme/pixwe/media/DiskCache;

    sget-object v3, Lcom/ecareme/pixwe/cache/CacheService;->sDummyData:[B

    const-wide/16 v4, 0x0

    move-wide v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ecareme/pixwe/media/DiskCache;->put(J[BJ)V

    .line 563
    sget-object v0, Lcom/ecareme/pixwe/cache/CacheService;->sSkipThumbnailIds:Lcom/ecareme/pixwe/media/DiskCache;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/DiskCache;->flush()V

    .line 564
    return-void
.end method

.method private static final buildThumbnailForId(Landroid/content/Context;Lcom/ecareme/pixwe/media/DiskCache;JJZIIJ)[B
    .locals 15
    .parameter "context"
    .parameter "thumbnailCache"
    .parameter "thumbId"
    .parameter "origId"
    .parameter "isVideo"
    .parameter "thumbnailWidth"
    .parameter "thumbnailHeight"
    .parameter "timestamp"

    .prologue
    .line 578
    const-wide/16 v5, -0x1

    cmp-long v5, p4, v5

    if-nez v5, :cond_0

    .line 579
    const/4 p0, 0x0

    .line 616
    .end local p0
    .end local p6
    :goto_0
    return-object p0

    .line 582
    .restart local p0
    .restart local p6
    :cond_0
    const/4 v10, 0x0

    .line 583
    .local v10, bitmap:Landroid/graphics/Bitmap;
    const-wide/16 v5, 0x1

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 584
    new-instance v5, Lcom/ecareme/pixwe/cache/CacheService$1;

    move-object v0, v5

    move/from16 v1, p6

    move-object v2, p0

    move-wide/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ecareme/pixwe/cache/CacheService$1;-><init>(ZLandroid/content/Context;J)V

    .line 601
    invoke-virtual {v5}, Lcom/ecareme/pixwe/cache/CacheService$1;->start()V

    .line 602
    if-eqz p6, :cond_1

    .line 603
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 604
    .end local p0
    const/16 p6, 0x1

    const/4 v5, 0x0

    .line 603
    move-object v0, p0

    move-wide/from16 v1, p4

    move/from16 v3, p6

    move-object v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .end local p6
    move-result-object v10

    .line 609
    :goto_1
    if-nez v10, :cond_2

    .line 610
    const/4 p0, 0x0

    goto :goto_0

    .line 606
    .restart local p0
    .restart local p6
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 607
    .end local p0
    const/16 p6, 0x1

    const/4 v5, 0x0

    .line 606
    move-object v0, p0

    move-wide/from16 v1, p4

    move/from16 v3, p6

    move-object v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .end local p6
    move-result-object v10

    goto :goto_1

    :cond_2
    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move/from16 v11, p7

    move/from16 v12, p8

    move-wide/from16 v13, p9

    .line 612
    invoke-static/range {v5 .. v14}, Lcom/ecareme/pixwe/cache/CacheService;->writeBitmapToCache(Lcom/ecareme/pixwe/media/DiskCache;JJLandroid/graphics/Bitmap;IIJ)[B
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 614
    .local p0, retVal:[B
    goto :goto_0

    .line 615
    .end local p0           #retVal:[B
    :catch_0
    move-exception p0

    .line 616
    .local p0, e:Ljava/lang/InterruptedException;
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private static final buildThumbnails(Landroid/content/Context;)V
    .locals 28
    .parameter "context"

    .prologue
    .line 530
    const-string v11, "CacheService"

    const-string v12, "Preparing DiskCache for all thumbnails."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    invoke-static/range {p0 .. p0}, Lcom/ecareme/pixwe/cache/CacheService;->getImageList(Landroid/content/Context;)Lcom/ecareme/pixwe/cache/ImageList;

    move-result-object v11

    .line 532
    .local v11, list:Lcom/ecareme/pixwe/cache/ImageList;
    iget-object v12, v11, Lcom/ecareme/pixwe/cache/ImageList;->ids:[J

    if-nez v12, :cond_1

    const/4 v12, 0x0

    move/from16 v23, v12

    .line 533
    .local v23, size:I
    :goto_0
    move-object v0, v11

    iget-object v0, v0, Lcom/ecareme/pixwe/cache/ImageList;->ids:[J

    move-object/from16 v22, v0

    .line 534
    .local v22, ids:[J
    move-object v0, v11

    iget-object v0, v0, Lcom/ecareme/pixwe/cache/ImageList;->timestamp:[J

    move-object/from16 v25, v0

    .line 535
    .local v25, timestamp:[J
    move-object v0, v11

    iget-object v0, v0, Lcom/ecareme/pixwe/cache/ImageList;->thumbids:[J

    move-object/from16 v24, v0

    .line 536
    .local v24, thumbnailIds:[J
    sget-object v11, Lcom/ecareme/pixwe/media/LocalDataSource;->sThumbnailCache:Lcom/ecareme/pixwe/media/DiskCache;

    .line 537
    .local v11, thumbnailCache:Lcom/ecareme/pixwe/media/DiskCache;
    const/4 v12, 0x0

    .local v12, i:I
    move/from16 v21, v12

    .end local v12           #i:I
    .local v21, i:I
    :goto_1
    move/from16 v0, v21

    move/from16 v1, v23

    if-lt v0, v1, :cond_2

    .line 556
    invoke-virtual {v11}, Lcom/ecareme/pixwe/media/DiskCache;->flush()V

    .line 558
    const-string p0, "CacheService"

    .end local p0
    const-string v11, "DiskCache ready for all thumbnails."

    .end local v11           #thumbnailCache:Lcom/ecareme/pixwe/media/DiskCache;
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_0
    return-void

    .line 532
    .end local v21           #i:I
    .end local v22           #ids:[J
    .end local v23           #size:I
    .end local v24           #thumbnailIds:[J
    .end local v25           #timestamp:[J
    .local v11, list:Lcom/ecareme/pixwe/cache/ImageList;
    .restart local p0
    :cond_1
    iget-object v12, v11, Lcom/ecareme/pixwe/cache/ImageList;->ids:[J

    array-length v12, v12

    move/from16 v23, v12

    goto :goto_0

    .line 538
    .local v11, thumbnailCache:Lcom/ecareme/pixwe/media/DiskCache;
    .restart local v21       #i:I
    .restart local v22       #ids:[J
    .restart local v23       #size:I
    .restart local v24       #thumbnailIds:[J
    .restart local v25       #timestamp:[J
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v12

    if-nez v12, :cond_0

    .line 541
    aget-wide v14, v22, v21

    .line 542
    .local v14, id:J
    aget-wide v19, v25, v21

    .line 543
    .local v19, timeModifiedInSec:J
    aget-wide v12, v24, v21

    .line 544
    .local v12, thumbnailId:J
    invoke-static {v12, v13}, Lcom/ecareme/pixwe/cache/CacheService;->isInThumbnailerSkipList(J)Z

    move-result v16

    if-nez v16, :cond_4

    .line 545
    const-wide/16 v16, 0x3e8

    mul-long v16, v16, v19

    move-object v0, v11

    move-wide v1, v12

    move-wide/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ecareme/pixwe/media/DiskCache;->isDataAvailable(JJ)Z

    move-result v16

    if-nez v16, :cond_4

    .line 546
    const/16 v16, 0x0

    const/16 v17, 0x80

    .line 547
    const/16 v18, 0x60

    const-wide/16 v26, 0x3e8

    mul-long v19, v19, v26

    .line 546
    move-object/from16 v0, p0

    move-object v1, v11

    move-wide v2, v12

    move-wide v4, v14

    move/from16 v6, v16

    move/from16 v7, v17

    move/from16 v8, v18

    move-wide/from16 v9, v19

    invoke-static/range {v0 .. v10}, Lcom/ecareme/pixwe/cache/CacheService;->buildThumbnailForId(Landroid/content/Context;Lcom/ecareme/pixwe/media/DiskCache;JJZIIJ)[B

    .end local v19           #timeModifiedInSec:J
    move-result-object v14

    .line 548
    .local v14, retVal:[B
    if-eqz v14, :cond_3

    array-length v14, v14

    .end local v14           #retVal:[B
    if-nez v14, :cond_4

    .line 551
    :cond_3
    invoke-static {v12, v13}, Lcom/ecareme/pixwe/cache/CacheService;->addToThumbnailerSkipList(J)V

    .line 537
    :cond_4
    add-int/lit8 v12, v21, 0x1

    .end local v21           #i:I
    .local v12, i:I
    move/from16 v21, v12

    .end local v12           #i:I
    .restart local v21       #i:I
    goto :goto_1
.end method

.method public static final computeDirtySets(Landroid/content/Context;)[J
    .locals 23
    .parameter "context"

    .prologue
    .line 942
    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 943
    .local v6, uriImages:Landroid/net/Uri;
    sget-object v13, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 944
    .local v13, uriVideos:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 945
    .local v5, cr:Landroid/content/ContentResolver;
    const-string p0, "bucket_id!=0) GROUP BY (bucket_id "

    .line 946
    .local p0, where:Ljava/lang/String;
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 948
    .local v21, retVal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :try_start_0
    sget-object v7, Lcom/ecareme/pixwe/cache/CacheService;->SENSE_PROJECTION:[Ljava/lang/String;

    const-string v8, "bucket_id!=0) GROUP BY (bucket_id "

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 949
    .local p0, cursorImages:Landroid/database/Cursor;
    sget-object v9, Lcom/ecareme/pixwe/cache/CacheService;->SENSE_PROJECTION:[Ljava/lang/String;

    const-string v10, "bucket_id!=0) GROUP BY (bucket_id "

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v5

    move-object v8, v13

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 950
    .local v5, cursorVideos:Landroid/database/Cursor;
    const/4 v6, 0x2

    new-array v6, v6, [Landroid/database/Cursor;

    .line 951
    .local v6, cursors:[Landroid/database/Cursor;
    const/4 v7, 0x0

    aput-object p0, v6, v7

    .line 952
    const/16 p0, 0x1

    aput-object v5, v6, p0

    .line 953
    .end local p0           #cursorImages:Landroid/database/Cursor;
    new-instance v14, Landroid/database/MergeCursor;

    invoke-direct {v14, v6}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 954
    .local v14, cursor:Landroid/database/MergeCursor;
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 955
    .local v22, setIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 956
    .local v15, maxAdded:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v6, Ljava/util/ArrayList;

    .end local v6           #cursors:[Landroid/database/Cursor;
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 958
    .local v6, counts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_1
    invoke-virtual {v14}, Landroid/database/MergeCursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 960
    .end local v5           #cursorVideos:Landroid/database/Cursor;
    :cond_0
    const/16 p0, 0x0

    move-object v0, v14

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/database/MergeCursor;->getLong(I)J

    move-result-wide v8

    .line 961
    .local v8, setId:J
    const/16 p0, 0x1

    move-object v0, v14

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/database/MergeCursor;->getLong(I)J

    move-result-wide v10

    .line 962
    .local v10, maxAdd:J
    const/16 p0, 0x2

    move-object v0, v14

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/database/MergeCursor;->getInt(I)I

    move-result p0

    .line 964
    .local p0, count:I
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 965
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 966
    .local v5, index:I
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v7, v7, v10

    if-gez v7, :cond_1

    .line 967
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v15, v5, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 969
    :cond_1
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int p0, p0, v7

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local p0           #count:I
    move-result-object p0

    move-object v0, v6

    move v1, v5

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 975
    .end local v5           #index:I
    :goto_0
    invoke-virtual {v14}, Landroid/database/MergeCursor;->moveToNext()Z

    move-result p0

    .line 959
    if-nez p0, :cond_0

    .line 977
    .end local v8           #setId:J
    .end local v10           #maxAdd:J
    :cond_2
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 978
    .local v16, numSets:I
    const/4 v5, 0x0

    .line 979
    .local v5, ctr:I
    if-lez v16, :cond_c

    .line 980
    const/16 p0, 0x0

    .local p0, allDirty:Z
    move v13, v5

    .line 982
    .end local v5           #ctr:I
    .local v13, ctr:I
    :goto_1
    move-object/from16 v0, v22

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 983
    .restart local v8       #setId:J
    if-eqz p0, :cond_5

    .line 984
    move-object/from16 v0, v21

    move-wide v1, v8

    invoke-static {v0, v1, v2}, Lcom/ecareme/pixwe/cache/CacheService;->addNoDupe(Ljava/util/ArrayList;J)V

    .line 1012
    :cond_3
    :goto_2
    add-int/lit8 v5, v13, 0x1

    .line 1013
    .end local v13           #ctr:I
    .restart local v5       #ctr:I
    move v0, v5

    move/from16 v1, v16

    if-lt v0, v1, :cond_d

    .line 1015
    sget-object p0, Lcom/ecareme/pixwe/cache/CacheService;->sAlbumCache:Lcom/ecareme/pixwe/media/DiskCache;

    .end local p0           #allDirty:Z
    const-wide/16 v6, -0x1

    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    move-wide v1, v6

    move-wide v3, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ecareme/pixwe/media/DiskCache;->get(JJ)[B

    .end local v6           #counts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8           #setId:J
    move-result-object p0

    .line 1016
    .local p0, albumData:[B
    if-eqz p0, :cond_c

    move-object/from16 v0, p0

    array-length v0, v0

    move v6, v0

    if-lez v6, :cond_c

    .line 1017
    new-instance v6, Ljava/io/DataInputStream;

    new-instance v7, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/ByteArrayInputStream;

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 p0, 0x100

    move-object v0, v7

    move-object v1, v8

    move/from16 v2, p0

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .end local p0           #albumData:[B
    invoke-direct {v6, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1019
    .local v6, dis:Ljava/io/DataInputStream;
    :try_start_2
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v7

    .line 1020
    .local v7, numAlbums:I
    const/16 p0, 0x0

    .local p0, i:I
    :goto_3
    move/from16 v0, p0

    move v1, v7

    if-lt v0, v1, :cond_9

    move/from16 p0, v5

    .line 1037
    .end local v5           #ctr:I
    .end local v6           #dis:Ljava/io/DataInputStream;
    .end local v7           #numAlbums:I
    .local p0, ctr:I
    :goto_4
    :try_start_3
    invoke-virtual {v14}, Landroid/database/MergeCursor;->close()V

    .line 1039
    sget-object p0, Lcom/ecareme/pixwe/cache/CacheService;->sMetaAlbumCache:Lcom/ecareme/pixwe/media/DiskCache;

    .end local p0           #ctr:I
    invoke-virtual/range {p0 .. p0}, Lcom/ecareme/pixwe/media/DiskCache;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1044
    .end local v14           #cursor:Landroid/database/MergeCursor;
    .end local v15           #maxAdded:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v16           #numSets:I
    .end local v22           #setIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_5
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1045
    .local v5, numIds:I
    new-array v6, v5, [J

    .line 1046
    .local v6, retValIds:[J
    const/16 p0, 0x0

    .local p0, i:I
    :goto_6
    move/from16 v0, p0

    move v1, v5

    if-lt v0, v1, :cond_b

    .line 1049
    return-object v6

    .line 971
    .end local v5           #numIds:I
    .local v6, counts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v8       #setId:J
    .restart local v10       #maxAdd:J
    .local v13, uriVideos:Landroid/net/Uri;
    .restart local v14       #cursor:Landroid/database/MergeCursor;
    .restart local v15       #maxAdded:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v22       #setIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p0, count:I
    :cond_4
    :try_start_4
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 972
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 973
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .end local p0           #count:I
    move-object v0, v6

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1036
    .end local v6           #counts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8           #setId:J
    .end local v10           #maxAdd:J
    .end local v13           #uriVideos:Landroid/net/Uri;
    :catchall_0
    move-exception p0

    .line 1037
    :try_start_5
    invoke-virtual {v14}, Landroid/database/MergeCursor;->close()V

    .line 1038
    throw p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 1040
    .end local v14           #cursor:Landroid/database/MergeCursor;
    .end local v15           #maxAdded:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v22           #setIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catch_0
    move-exception p0

    goto :goto_5

    .line 986
    .restart local v6       #counts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v8       #setId:J
    .local v13, ctr:I
    .restart local v14       #cursor:Landroid/database/MergeCursor;
    .restart local v15       #maxAdded:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v16       #numSets:I
    .restart local v22       #setIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p0, allDirty:Z
    :cond_5
    :try_start_6
    sget-object v5, Lcom/ecareme/pixwe/cache/CacheService;->sAlbumCache:Lcom/ecareme/pixwe/media/DiskCache;

    const-wide/16 v10, 0x0

    invoke-virtual {v5, v8, v9, v10, v11}, Lcom/ecareme/pixwe/media/DiskCache;->isDataAvailable(JJ)Z

    move-result v5

    .line 987
    .local v5, contains:Z
    if-nez v5, :cond_6

    .line 989
    invoke-static {}, Lcom/ecareme/pixwe/cache/CacheService;->markDirty()V

    .line 990
    move-object/from16 v0, v21

    move-wide v1, v8

    invoke-static {v0, v1, v2}, Lcom/ecareme/pixwe/cache/CacheService;->addNoDupe(Ljava/util/ArrayList;J)V

    .line 991
    const/16 p0, 0x1

    .line 993
    :cond_6
    if-nez p0, :cond_3

    .line 994
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #contains:Z
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 995
    .local v11, maxAdd:J
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 996
    .local v5, count:I
    sget-object v7, Lcom/ecareme/pixwe/cache/CacheService;->sMetaAlbumCache:Lcom/ecareme/pixwe/media/DiskCache;

    const-wide/16 v17, 0x0

    move-object v0, v7

    move-wide v1, v8

    move-wide/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ecareme/pixwe/media/DiskCache;->get(JJ)[B

    move-result-object v7

    .line 997
    .local v7, data:[B
    const/4 v10, 0x2

    new-array v10, v10, [J

    .line 998
    .local v10, dataLong:[J
    if-eqz v7, :cond_7

    .line 999
    invoke-static {v7}, Lcom/ecareme/pixwe/cache/CacheService;->toLongArray([B)[J

    move-result-object v7

    .end local v10           #dataLong:[J
    .local v7, dataLong:[J
    move-object v10, v7

    .line 1001
    .end local v7           #dataLong:[J
    .restart local v10       #dataLong:[J
    :cond_7
    const/4 v7, 0x0

    aget-wide v19, v10, v7

    .line 1002
    .local v19, oldMaxAdded:J
    const/4 v7, 0x1

    aget-wide v17, v10, v7

    .line 1003
    .local v17, oldCount:J
    cmp-long v7, v11, v19

    if-gtz v7, :cond_8

    move v0, v5

    int-to-long v0, v0

    move-wide/from16 v19, v0

    cmp-long v7, v17, v19

    if-eqz v7, :cond_3

    .line 1004
    .end local v19           #oldMaxAdded:J
    :cond_8
    invoke-static {v8, v9}, Lcom/ecareme/pixwe/cache/CacheService;->markDirty(J)V

    .line 1005
    move-object/from16 v0, v21

    move-wide v1, v8

    invoke-static {v0, v1, v2}, Lcom/ecareme/pixwe/cache/CacheService;->addNoDupe(Ljava/util/ArrayList;J)V

    .line 1006
    const/4 v7, 0x0

    aput-wide v11, v10, v7

    .line 1007
    const/4 v7, 0x1

    int-to-long v11, v5

    aput-wide v11, v10, v7

    .line 1008
    .end local v11           #maxAdd:J
    sget-object v7, Lcom/ecareme/pixwe/cache/CacheService;->sMetaAlbumCache:Lcom/ecareme/pixwe/media/DiskCache;

    invoke-static {v10}, Lcom/ecareme/pixwe/cache/CacheService;->longArrayToByteArray([J)[B

    move-result-object v10

    .end local v10           #dataLong:[J
    const-wide/16 v11, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/ecareme/pixwe/media/DiskCache;->put(J[BJ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 1021
    .end local v8           #setId:J
    .end local v13           #ctr:I
    .end local v17           #oldCount:J
    .local v5, ctr:I
    .local v6, dis:Ljava/io/DataInputStream;
    .local v7, numAlbums:I
    .local p0, i:I
    :cond_9
    :try_start_7
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    .line 1022
    .restart local v8       #setId:J
    invoke-static {v6}, Lcom/ecareme/pixwe/media/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    .line 1023
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readBoolean()Z

    .line 1024
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readBoolean()Z

    .line 1025
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .end local v8           #setId:J
    move-object/from16 v0, v22

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 1027
    invoke-static {}, Lcom/ecareme/pixwe/cache/CacheService;->markDirty()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move/from16 p0, v5

    .line 1028
    .end local v5           #ctr:I
    .local p0, ctr:I
    goto/16 :goto_4

    .line 1020
    .restart local v5       #ctr:I
    .local p0, i:I
    :cond_a
    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_3

    .line 1031
    .end local v7           #numAlbums:I
    .end local p0           #i:I
    :catch_1
    move-exception p0

    move/from16 p0, v5

    .end local v5           #ctr:I
    .local p0, ctr:I
    goto/16 :goto_4

    .line 1047
    .end local v14           #cursor:Landroid/database/MergeCursor;
    .end local v15           #maxAdded:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v16           #numSets:I
    .end local v22           #setIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local v5, numIds:I
    .local v6, retValIds:[J
    .local p0, i:I
    :cond_b
    move-object/from16 v0, v21

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    aput-wide v7, v6, p0

    .line 1046
    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_6

    .end local v6           #retValIds:[J
    .end local p0           #i:I
    .local v5, ctr:I
    .restart local v14       #cursor:Landroid/database/MergeCursor;
    .restart local v15       #maxAdded:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v16       #numSets:I
    .restart local v22       #setIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_c
    move/from16 p0, v5

    .end local v5           #ctr:I
    .local p0, ctr:I
    goto/16 :goto_4

    .restart local v5       #ctr:I
    .local v6, counts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v8       #setId:J
    .local p0, allDirty:Z
    :cond_d
    move v13, v5

    .end local v5           #ctr:I
    .restart local v13       #ctr:I
    goto/16 :goto_1
.end method

.method private static final concat([B[B)[B
    .locals 4
    .parameter "A"
    .parameter "B"

    .prologue
    const/4 v3, 0x0

    .line 813
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 814
    .local v0, C:[B
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 815
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 816
    return-object v0
.end method

.method public static final fetchDateTaken(Lcom/ecareme/pixwe/media/MediaItem;)J
    .locals 9
    .parameter "item"

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/MediaItem;->isDateTakenValid()Z

    move-result v6

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcom/ecareme/pixwe/media/MediaItem;->mTriedRetrievingExifDateTaken:Z

    if-nez v6, :cond_2

    .line 431
    iget-object v6, p0, Lcom/ecareme/pixwe/media/MediaItem;->mFilePath:Ljava/lang/String;

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/ecareme/pixwe/media/MediaItem;->mFilePath:Ljava/lang/String;

    const-string v7, ".jpeg"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 434
    :cond_0
    :try_start_0
    const-string v6, "CacheService"

    const-string v7, "Parsing date taken from exif"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    new-instance v3, Landroid/media/ExifInterface;

    iget-object v6, p0, Lcom/ecareme/pixwe/media/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-direct {v3, v6}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 436
    .local v3, exif:Landroid/media/ExifInterface;
    const-string v6, "DateTime"

    invoke-virtual {v3, v6}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 437
    .local v1, dateTakenStr:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 439
    :try_start_1
    sget-object v6, Lcom/ecareme/pixwe/cache/CacheService;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v6, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 440
    .local v0, dateTaken:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-wide v6

    .line 459
    .end local v0           #dateTaken:Ljava/util/Date;
    .end local v1           #dateTakenStr:Ljava/lang/String;
    .end local v3           #exif:Landroid/media/ExifInterface;
    :goto_0
    return-wide v6

    .line 441
    .restart local v1       #dateTakenStr:Ljava/lang/String;
    .restart local v3       #exif:Landroid/media/ExifInterface;
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 443
    .local v4, pe:Ljava/text/ParseException;
    :try_start_2
    sget-object v6, Lcom/ecareme/pixwe/cache/CacheService;->mAltDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v6, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 444
    .restart local v0       #dateTaken:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v6

    goto :goto_0

    .line 445
    .end local v0           #dateTaken:Ljava/util/Date;
    :catch_1
    move-exception v6

    move-object v5, v6

    .line 447
    .local v5, pe2:Ljava/text/ParseException;
    :try_start_3
    const-string v6, "CacheService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unable to parse date out of string - "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 457
    .end local v1           #dateTakenStr:Ljava/lang/String;
    .end local v3           #exif:Landroid/media/ExifInterface;
    .end local v4           #pe:Ljava/text/ParseException;
    .end local v5           #pe2:Ljava/text/ParseException;
    :cond_1
    :goto_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/ecareme/pixwe/media/MediaItem;->mTriedRetrievingExifDateTaken:Z

    .line 459
    :cond_2
    const-wide/16 v6, -0x1

    goto :goto_0

    .line 451
    :catch_2
    move-exception v6

    move-object v2, v6

    .line 453
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "CacheService"

    const-string v7, "Error reading Exif information, probably not a jpeg."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static final findSet(JLcom/ecareme/pixwe/media/LongSparseArray;)Lcom/ecareme/pixwe/media/MediaSet;
    .locals 0
    .parameter "id"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/ecareme/pixwe/media/LongSparseArray",
            "<",
            "Lcom/ecareme/pixwe/media/MediaSet;",
            ">;)",
            "Lcom/ecareme/pixwe/media/MediaSet;"
        }
    .end annotation

    .prologue
    .line 1224
    .local p2, acceleratedTable:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<Lcom/ecareme/pixwe/media/MediaSet;>;"
    invoke-virtual {p2, p0, p1}, Lcom/ecareme/pixwe/media/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/ecareme/pixwe/media/MediaSet;

    return-object p0
.end method

.method public static final getCachePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "subFolderName"

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/data/com.ecareme.pixwe/cache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getImageList(Landroid/content/Context;)Lcom/ecareme/pixwe/cache/ImageList;
    .locals 14
    .parameter "context"

    .prologue
    .line 469
    sget-object v2, Lcom/ecareme/pixwe/cache/CacheService;->sList:Lcom/ecareme/pixwe/cache/ImageList;

    if-eqz v2, :cond_0

    .line 470
    sget-object v2, Lcom/ecareme/pixwe/cache/CacheService;->sList:Lcom/ecareme/pixwe/cache/ImageList;

    .line 506
    :goto_0
    return-object v2

    .line 471
    :cond_0
    new-instance v9, Lcom/ecareme/pixwe/cache/ImageList;

    invoke-direct {v9}, Lcom/ecareme/pixwe/cache/ImageList;-><init>()V

    .line 472
    .local v9, list:Lcom/ecareme/pixwe/cache/ImageList;
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 473
    .local v1, uriImages:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 475
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    sget-object v2, Lcom/ecareme/pixwe/cache/CacheService;->THUMBNAIL_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 476
    .local v7, cursorImages:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 477
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 478
    .local v11, size:I
    new-array v8, v11, [J

    .line 479
    .local v8, ids:[J
    new-array v12, v11, [J

    .line 480
    .local v12, thumbnailIds:[J
    new-array v13, v11, [J

    .line 481
    .local v13, timestamp:[J
    new-array v10, v11, [I

    .line 482
    .local v10, orientation:[I
    const/4 v6, 0x0

    .line 484
    .local v6, ctr:I
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 493
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 494
    iput-object v8, v9, Lcom/ecareme/pixwe/cache/ImageList;->ids:[J

    .line 495
    iput-object v12, v9, Lcom/ecareme/pixwe/cache/ImageList;->thumbids:[J

    .line 496
    iput-object v13, v9, Lcom/ecareme/pixwe/cache/ImageList;->timestamp:[J

    .line 497
    iput-object v10, v9, Lcom/ecareme/pixwe/cache/ImageList;->orientation:[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    .end local v6           #ctr:I
    .end local v7           #cursorImages:Landroid/database/Cursor;
    .end local v8           #ids:[J
    .end local v10           #orientation:[I
    .end local v11           #size:I
    .end local v12           #thumbnailIds:[J
    .end local v13           #timestamp:[J
    :cond_2
    :goto_2
    sget-object v2, Lcom/ecareme/pixwe/cache/CacheService;->sList:Lcom/ecareme/pixwe/cache/ImageList;

    if-nez v2, :cond_3

    .line 504
    sput-object v9, Lcom/ecareme/pixwe/cache/CacheService;->sList:Lcom/ecareme/pixwe/cache/ImageList;

    :cond_3
    move-object v2, v9

    .line 506
    goto :goto_0

    .line 487
    .restart local v6       #ctr:I
    .restart local v7       #cursorImages:Landroid/database/Cursor;
    .restart local v8       #ids:[J
    .restart local v10       #orientation:[I
    .restart local v11       #size:I
    .restart local v12       #thumbnailIds:[J
    .restart local v13       #timestamp:[J
    :cond_4
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, v8, v6

    .line 488
    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, v13, v6

    .line 489
    const/4 v2, 0x2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ecareme/pixwe/media/Utils;->Crc64Long(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v12, v6

    .line 490
    const/4 v2, 0x3

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, v10, v6

    .line 491
    add-int/lit8 v6, v6, 0x1

    .line 492
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .line 483
    if-nez v2, :cond_1

    goto :goto_1

    .line 499
    .end local v6           #ctr:I
    .end local v7           #cursorImages:Landroid/database/Cursor;
    .end local v8           #ids:[J
    .end local v10           #orientation:[I
    .end local v11           #size:I
    .end local v12           #thumbnailIds:[J
    .end local v13           #timestamp:[J
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method private static final getLocaleForAlbumCache()Ljava/util/Locale;
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 747
    sget-object v8, Lcom/ecareme/pixwe/cache/CacheService;->sAlbumCache:Lcom/ecareme/pixwe/media/DiskCache;

    const-wide/16 v9, -0x5

    const-wide/16 v11, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/ecareme/pixwe/media/DiskCache;->get(JJ)[B

    move-result-object v2

    .line 748
    .local v2, data:[B
    if-eqz v2, :cond_3

    array-length v8, v2

    if-lez v8, :cond_3

    .line 749
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 750
    .local v0, bis:Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 752
    .local v3, dis:Ljava/io/DataInputStream;
    :try_start_0
    invoke-static {v3}, Lcom/ecareme/pixwe/media/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    .line 753
    .local v1, country:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 754
    const-string v1, ""

    .line 755
    :cond_0
    invoke-static {v3}, Lcom/ecareme/pixwe/media/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    .line 756
    .local v5, language:Ljava/lang/String;
    if-nez v5, :cond_1

    .line 757
    const-string v5, ""

    .line 758
    :cond_1
    invoke-static {v3}, Lcom/ecareme/pixwe/media/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v7

    .line 759
    .local v7, variant:Ljava/lang/String;
    if-nez v7, :cond_2

    .line 760
    const-string v7, ""

    .line 761
    :cond_2
    new-instance v6, Ljava/util/Locale;

    invoke-direct {v6, v5, v1, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    .local v6, locale:Ljava/util/Locale;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 763
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v6

    .line 772
    .end local v0           #bis:Ljava/io/ByteArrayInputStream;
    .end local v1           #country:Ljava/lang/String;
    .end local v3           #dis:Ljava/io/DataInputStream;
    .end local v5           #language:Ljava/lang/String;
    .end local v6           #locale:Ljava/util/Locale;
    .end local v7           #variant:Ljava/lang/String;
    :goto_0
    return-object v8

    .line 765
    .restart local v0       #bis:Ljava/io/ByteArrayInputStream;
    .restart local v3       #dis:Ljava/io/DataInputStream;
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 768
    .local v4, e:Ljava/io/IOException;
    const-string v8, "CacheService"

    const-string v9, "Error reading locale from cache."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v13

    .line 769
    goto :goto_0

    .end local v0           #bis:Ljava/io/ByteArrayInputStream;
    .end local v3           #dis:Ljava/io/DataInputStream;
    .end local v4           #e:Ljava/io/IOException;
    :cond_3
    move-object v8, v13

    .line 772
    goto :goto_0
.end method

.method public static final isCacheReady(Z)Z
    .locals 9
    .parameter "onlyMediaSets"

    .prologue
    const-wide/16 v7, -0x1

    const-wide/16 v1, -0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    .line 173
    if-eqz p0, :cond_1

    .line 174
    sget-object v0, Lcom/ecareme/pixwe/cache/CacheService;->sAlbumCache:Lcom/ecareme/pixwe/media/DiskCache;

    invoke-virtual {v0, v7, v8, v3, v4}, Lcom/ecareme/pixwe/media/DiskCache;->get(JJ)[B

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ecareme/pixwe/cache/CacheService;->sAlbumCache:Lcom/ecareme/pixwe/media/DiskCache;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ecareme/pixwe/media/DiskCache;->get(JJ)[B

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v6

    .line 177
    :goto_0
    return v0

    :cond_0
    move v0, v5

    .line 174
    goto :goto_0

    .line 176
    :cond_1
    sget-object v0, Lcom/ecareme/pixwe/cache/CacheService;->sAlbumCache:Lcom/ecareme/pixwe/media/DiskCache;

    invoke-virtual {v0, v7, v8, v3, v4}, Lcom/ecareme/pixwe/media/DiskCache;->get(JJ)[B

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/ecareme/pixwe/cache/CacheService;->sAlbumCache:Lcom/ecareme/pixwe/media/DiskCache;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ecareme/pixwe/media/DiskCache;->get(JJ)[B

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/ecareme/pixwe/cache/CacheService;->sAlbumCache:Lcom/ecareme/pixwe/media/DiskCache;

    .line 177
    const-wide/16 v1, -0x4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ecareme/pixwe/media/DiskCache;->get(JJ)[B

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v6

    goto :goto_0

    :cond_2
    move v0, v5

    .line 176
    goto :goto_0
.end method

.method private static isInThumbnailerSkipList(J)Z
    .locals 4
    .parameter "thumbnailId"

    .prologue
    const-wide/16 v2, 0x0

    .line 567
    sget-object v1, Lcom/ecareme/pixwe/cache/CacheService;->sSkipThumbnailIds:Lcom/ecareme/pixwe/media/DiskCache;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/ecareme/pixwe/cache/CacheService;->sSkipThumbnailIds:Lcom/ecareme/pixwe/media/DiskCache;

    invoke-virtual {v1, p0, p1, v2, v3}, Lcom/ecareme/pixwe/media/DiskCache;->isDataAvailable(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 568
    sget-object v1, Lcom/ecareme/pixwe/cache/CacheService;->sSkipThumbnailIds:Lcom/ecareme/pixwe/media/DiskCache;

    invoke-virtual {v1, p0, p1, v2, v3}, Lcom/ecareme/pixwe/media/DiskCache;->get(JJ)[B

    move-result-object v0

    .line 569
    .local v0, data:[B
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 570
    const/4 v1, 0x1

    .line 573
    .end local v0           #data:[B
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final isPresentInCache(J)Z
    .locals 3
    .parameter "setId"

    .prologue
    .line 182
    sget-object v0, Lcom/ecareme/pixwe/cache/CacheService;->sAlbumCache:Lcom/ecareme/pixwe/media/DiskCache;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/ecareme/pixwe/media/DiskCache;->get(JJ)[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final loadMediaItemsIntoMediaFeed(Landroid/content/Context;Lcom/ecareme/pixwe/media/MediaFeed;Lcom/ecareme/pixwe/media/MediaSet;IIZZ)V
    .locals 7
    .parameter "context"
    .parameter "feed"
    .parameter "set"
    .parameter "rangeStart"
    .parameter "rangeEnd"
    .parameter "includeImages"
    .parameter "includeVideos"

    .prologue
    .line 318
    invoke-static {p0}, Lcom/ecareme/pixwe/cache/CacheService;->syncCache(Landroid/content/Context;)V

    .line 319
    sget-object p0, Lcom/ecareme/pixwe/cache/CacheService;->sAlbumCache:Lcom/ecareme/pixwe/media/DiskCache;

    .end local p0
    iget-wide p3, p2, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    .end local p3
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p3, p4, v0, v1}, Lcom/ecareme/pixwe/media/DiskCache;->get(JJ)[B

    move-result-object p0

    .line 320
    .local p0, albumData:[B
    if-eqz p0, :cond_7

    iget p3, p2, Lcom/ecareme/pixwe/media/MediaSet;->mNumItemsLoaded:I

    invoke-virtual {p2}, Lcom/ecareme/pixwe/media/MediaSet;->getNumExpectedItems()I

    move-result p4

    .end local p4
    if-ge p3, p4, :cond_7

    .line 321
    new-instance p3, Ljava/io/DataInputStream;

    new-instance p4, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 p0, 0x100

    invoke-direct {p4, v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .end local p0           #albumData:[B
    invoke-direct {p3, p4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 323
    .local p3, dis:Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 324
    .local v1, numItems:I
    invoke-virtual {p2, v1}, Lcom/ecareme/pixwe/media/MediaSet;->setNumExpectedItems(I)V

    .line 325
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/ecareme/pixwe/media/MediaSet;->mMinTimestamp:J

    .line 326
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/ecareme/pixwe/media/MediaSet;->mMaxTimestamp:J

    .line 327
    const/4 p4, 0x0

    .line 328
    .local p4, reuseItem:Lcom/ecareme/pixwe/media/MediaItem;
    const/4 p0, 0x0

    .local p0, i:I
    move v6, p0

    .end local p0           #i:I
    .local v6, i:I
    move-object p0, p4

    .end local p4           #reuseItem:Lcom/ecareme/pixwe/media/MediaItem;
    .local p0, reuseItem:Lcom/ecareme/pixwe/media/MediaItem;
    move p4, v6

    .end local v6           #i:I
    .local p4, i:I
    :goto_0
    if-lt p4, v1, :cond_0

    .line 362
    invoke-virtual {p2}, Lcom/ecareme/pixwe/media/MediaSet;->checkForDeletedItems()V

    .line 363
    invoke-virtual {p3}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    .end local v1           #numItems:I
    .end local p0           #reuseItem:Lcom/ecareme/pixwe/media/MediaItem;
    .end local p1
    .end local p3           #dis:Ljava/io/DataInputStream;
    .end local p4           #i:I
    :goto_1
    invoke-virtual {p2}, Lcom/ecareme/pixwe/media/MediaSet;->updateNumExpectedItems()V

    .line 374
    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Lcom/ecareme/pixwe/media/MediaSet;->generateTitle(Z)V

    .line 375
    return-void

    .line 329
    .restart local v1       #numItems:I
    .restart local p0       #reuseItem:Lcom/ecareme/pixwe/media/MediaItem;
    .restart local p1
    .restart local p3       #dis:Ljava/io/DataInputStream;
    .restart local p4       #i:I
    :cond_0
    if-nez p0, :cond_4

    :try_start_1
    new-instance p0, Lcom/ecareme/pixwe/media/MediaItem;

    .end local p0           #reuseItem:Lcom/ecareme/pixwe/media/MediaItem;
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/MediaItem;-><init>()V

    move-object v0, p0

    .line 331
    .local v0, item:Lcom/ecareme/pixwe/media/MediaItem;
    :goto_2
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/ecareme/pixwe/media/MediaItem;->mId:J

    .line 332
    invoke-static {p3}, Lcom/ecareme/pixwe/media/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mCaption:Ljava/lang/String;

    .line 333
    invoke-static {p3}, Lcom/ecareme/pixwe/media/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mMimeType:Ljava/lang/String;

    .line 334
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/ecareme/pixwe/media/MediaItem;->setMediaType(I)V

    .line 335
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/ecareme/pixwe/media/MediaItem;->mLatitude:D

    .line 336
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/ecareme/pixwe/media/MediaItem;->mLongitude:D

    .line 337
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/ecareme/pixwe/media/MediaItem;->mDateTakenInMs:J

    .line 338
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result p0

    iput-boolean p0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mTriedRetrievingExifDateTaken:Z

    .line 339
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/ecareme/pixwe/media/MediaItem;->mDateAddedInSec:J

    .line 340
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/ecareme/pixwe/media/MediaItem;->mDateModifiedInSec:J

    .line 341
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    iput p0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mDurationInSec:I

    .line 342
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    int-to-float p0, p0

    iput p0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mRotation:F

    .line 343
    invoke-static {p3}, Lcom/ecareme/pixwe/media/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mFilePath:Ljava/lang/String;

    .line 347
    invoke-virtual {p2, v0}, Lcom/ecareme/pixwe/media/MediaSet;->lookupContainsItem(Lcom/ecareme/pixwe/media/MediaItem;)Z

    move-result p0

    .line 348
    .local p0, setLookupContainsItem:Z
    if-eqz p0, :cond_5

    .line 349
    move-object p0, v0

    .local p0, reuseItem:Lcom/ecareme/pixwe/media/MediaItem;
    move-object v2, p0

    .line 353
    .end local p0           #reuseItem:Lcom/ecareme/pixwe/media/MediaItem;
    .local v2, reuseItem:Lcom/ecareme/pixwe/media/MediaItem;
    :goto_3
    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/MediaItem;->getMediaType()I

    move-result p0

    .line 354
    .local p0, itemMediaType:I
    if-nez p0, :cond_1

    if-nez p5, :cond_2

    .line 355
    :cond_1
    const/4 v3, 0x1

    if-ne p0, v3, :cond_3

    if-eqz p6, :cond_3

    .line 356
    :cond_2
    if-nez p0, :cond_6

    sget-object p0, Lcom/ecareme/pixwe/cache/CacheService;->BASE_CONTENT_STRING_IMAGES:Ljava/lang/String;

    .line 358
    .local p0, baseUri:Ljava/lang/String;
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .end local p0           #baseUri:Ljava/lang/String;
    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Lcom/ecareme/pixwe/media/MediaItem;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mContentUri:Ljava/lang/String;

    .line 359
    invoke-virtual {p1, v0, p2}, Lcom/ecareme/pixwe/media/MediaFeed;->addItemToMediaSet(Lcom/ecareme/pixwe/media/MediaItem;Lcom/ecareme/pixwe/media/MediaSet;)V

    .line 328
    :cond_3
    add-int/lit8 p0, p4, 0x1

    .end local p4           #i:I
    .local p0, i:I
    move p4, p0

    .end local p0           #i:I
    .restart local p4       #i:I
    move-object p0, v2

    .end local v2           #reuseItem:Lcom/ecareme/pixwe/media/MediaItem;
    .local p0, reuseItem:Lcom/ecareme/pixwe/media/MediaItem;
    goto/16 :goto_0

    .end local v0           #item:Lcom/ecareme/pixwe/media/MediaItem;
    :cond_4
    move-object v0, p0

    .line 329
    goto/16 :goto_2

    .line 351
    .restart local v0       #item:Lcom/ecareme/pixwe/media/MediaItem;
    .local p0, setLookupContainsItem:Z
    :cond_5
    const/4 p0, 0x0

    .local p0, reuseItem:Lcom/ecareme/pixwe/media/MediaItem;
    move-object v2, p0

    .end local p0           #reuseItem:Lcom/ecareme/pixwe/media/MediaItem;
    .restart local v2       #reuseItem:Lcom/ecareme/pixwe/media/MediaItem;
    goto :goto_3

    .line 357
    .local p0, itemMediaType:I
    :cond_6
    sget-object p0, Lcom/ecareme/pixwe/cache/CacheService;->BASE_CONTENT_STRING_VIDEOS:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 364
    .end local v0           #item:Lcom/ecareme/pixwe/media/MediaItem;
    .end local v1           #numItems:I
    .end local v2           #reuseItem:Lcom/ecareme/pixwe/media/MediaItem;
    .end local p0           #itemMediaType:I
    .end local p4           #i:I
    :catch_0
    move-exception p0

    .line 365
    .local p0, e:Ljava/io/IOException;
    const-string p0, "CacheService"

    .end local p0           #e:Ljava/io/IOException;
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1
    const-string p3, "Error loading items for album "

    .end local p3           #dis:Ljava/io/DataInputStream;
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p2, Lcom/ecareme/pixwe/media/MediaSet;->mName:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    sget-object p0, Lcom/ecareme/pixwe/cache/CacheService;->sAlbumCache:Lcom/ecareme/pixwe/media/DiskCache;

    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/DiskCache;->deleteAll()V

    .line 367
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Lcom/ecareme/pixwe/cache/CacheService;->putLocaleForAlbumCache(Ljava/util/Locale;)V

    goto/16 :goto_1

    .line 371
    .local p0, albumData:[B
    .restart local p1
    :cond_7
    const-string p0, "CacheService"

    .end local p0           #albumData:[B
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1
    const-string p3, "No items found for album "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p2, Lcom/ecareme/pixwe/media/MediaSet;->mName:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public static final loadMediaSet(Landroid/content/Context;Lcom/ecareme/pixwe/media/MediaFeed;Lcom/ecareme/pixwe/media/DataSource;J)V
    .locals 6
    .parameter "context"
    .parameter "feed"
    .parameter "source"
    .parameter "bucketId"

    .prologue
    .line 281
    invoke-static {p0}, Lcom/ecareme/pixwe/cache/CacheService;->syncCache(Landroid/content/Context;)V

    .line 282
    sget-object p0, Lcom/ecareme/pixwe/cache/CacheService;->sAlbumCache:Lcom/ecareme/pixwe/media/DiskCache;

    .end local p0
    const-wide/16 v0, -0x1

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ecareme/pixwe/media/DiskCache;->get(JJ)[B

    move-result-object p0

    .line 283
    .local p0, albumData:[B
    if-eqz p0, :cond_4

    array-length v0, p0

    if-lez v0, :cond_4

    .line 284
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 p0, 0x100

    invoke-direct {v1, v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .end local p0           #albumData:[B
    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 286
    .local v0, dis:Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 287
    .local v2, numAlbums:I
    const/4 p0, 0x0

    .local p0, i:I
    :goto_0
    if-lt p0, v2, :cond_0

    .line 314
    .end local v0           #dis:Ljava/io/DataInputStream;
    .end local v2           #numAlbums:I
    .end local p0           #i:I
    .end local p1
    .end local p2
    :goto_1
    return-void

    .line 288
    .restart local v0       #dis:Ljava/io/DataInputStream;
    .restart local v2       #numAlbums:I
    .restart local p0       #i:I
    .restart local p1
    .restart local p2
    :cond_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    .line 289
    .local v3, setId:J
    const/4 v1, 0x0

    .line 290
    .local v1, mediaSet:Lcom/ecareme/pixwe/media/MediaSet;
    cmp-long v1, v3, p3

    if-nez v1, :cond_2

    .line 291
    .end local v1           #mediaSet:Lcom/ecareme/pixwe/media/MediaSet;
    invoke-virtual {p1, v3, v4}, Lcom/ecareme/pixwe/media/MediaFeed;->getMediaSet(J)Lcom/ecareme/pixwe/media/MediaSet;

    move-result-object v1

    .line 292
    .restart local v1       #mediaSet:Lcom/ecareme/pixwe/media/MediaSet;
    if-nez v1, :cond_1

    .line 293
    invoke-virtual {p1, v3, v4, p2}, Lcom/ecareme/pixwe/media/MediaFeed;->addMediaSet(JLcom/ecareme/pixwe/media/DataSource;)Lcom/ecareme/pixwe/media/MediaSet;

    move-result-object v1

    .line 298
    :cond_1
    :goto_2
    invoke-static {v0}, Lcom/ecareme/pixwe/media/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/ecareme/pixwe/media/MediaSet;->mName:Ljava/lang/String;

    .line 299
    cmp-long v3, v3, p3

    if-nez v3, :cond_3

    .line 300
    .end local v3           #setId:J
    const-wide/16 p0, -0x1

    iput-wide p0, v1, Lcom/ecareme/pixwe/media/MediaSet;->mPicasaAlbumId:J

    .line 301
    .end local p0           #i:I
    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Lcom/ecareme/pixwe/media/MediaSet;->generateTitle(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 305
    .end local v1           #mediaSet:Lcom/ecareme/pixwe/media/MediaSet;
    .end local v2           #numAlbums:I
    :catch_0
    move-exception p0

    .line 306
    .local p0, e:Ljava/io/IOException;
    const-string p0, "CacheService"

    .end local p0           #e:Ljava/io/IOException;
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1
    const-string p2, "Error finding album "

    .end local p2
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    sget-object p0, Lcom/ecareme/pixwe/cache/CacheService;->sAlbumCache:Lcom/ecareme/pixwe/media/DiskCache;

    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/DiskCache;->deleteAll()V

    .line 308
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Lcom/ecareme/pixwe/cache/CacheService;->putLocaleForAlbumCache(Ljava/util/Locale;)V

    goto :goto_1

    .line 296
    .restart local v2       #numAlbums:I
    .restart local v3       #setId:J
    .local p0, i:I
    .restart local p1
    .restart local p2
    :cond_2
    :try_start_1
    new-instance v1, Lcom/ecareme/pixwe/media/MediaSet;

    invoke-direct {v1}, Lcom/ecareme/pixwe/media/MediaSet;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v1       #mediaSet:Lcom/ecareme/pixwe/media/MediaSet;
    goto :goto_2

    .line 287
    .end local v3           #setId:J
    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 312
    .end local v0           #dis:Ljava/io/DataInputStream;
    .end local v1           #mediaSet:Lcom/ecareme/pixwe/media/MediaSet;
    .end local v2           #numAlbums:I
    .local p0, albumData:[B
    :cond_4
    const-string p0, "CacheService"

    .end local p0           #albumData:[B
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1
    const-string p2, "No album found for album id "

    .end local p2
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static final loadMediaSets(Landroid/content/Context;Lcom/ecareme/pixwe/media/MediaFeed;Lcom/ecareme/pixwe/media/DataSource;ZZZ)V
    .locals 10
    .parameter "context"
    .parameter "feed"
    .parameter "source"
    .parameter "includeImages"
    .parameter "includeVideos"
    .parameter "moveCameraToFront"

    .prologue
    .line 241
    invoke-static {p0}, Lcom/ecareme/pixwe/cache/CacheService;->syncCache(Landroid/content/Context;)V

    .line 242
    sget-object p0, Lcom/ecareme/pixwe/cache/CacheService;->sAlbumCache:Lcom/ecareme/pixwe/media/DiskCache;

    .end local p0
    const-wide/16 v0, -0x1

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ecareme/pixwe/media/DiskCache;->get(JJ)[B

    move-result-object p0

    .line 243
    .local p0, albumData:[B
    if-eqz p0, :cond_6

    array-length v0, p0

    if-lez v0, :cond_6

    .line 244
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 p0, 0x100

    invoke-direct {v1, v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .end local p0           #albumData:[B
    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 246
    .local v0, dis:Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 247
    .local v5, numAlbums:I
    const/4 p0, 0x0

    .local p0, i:I
    move v2, p0

    .end local p0           #i:I
    .local v2, i:I
    :goto_0
    if-lt v2, v5, :cond_0

    .line 278
    .end local v0           #dis:Ljava/io/DataInputStream;
    .end local v2           #i:I
    .end local v5           #numAlbums:I
    .end local p1
    :goto_1
    return-void

    .line 248
    .restart local v0       #dis:Ljava/io/DataInputStream;
    .restart local v2       #i:I
    .restart local v5       #numAlbums:I
    .restart local p1
    :cond_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    .line 249
    .local v6, setId:J
    invoke-static {v0}, Lcom/ecareme/pixwe/media/Utils;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v4

    .line 250
    .local v4, name:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result p0

    .line 251
    .local p0, hasImages:Z
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    .line 252
    .local v1, hasVideos:Z
    invoke-virtual {p1, v6, v7}, Lcom/ecareme/pixwe/media/MediaFeed;->getMediaSet(J)Lcom/ecareme/pixwe/media/MediaSet;

    move-result-object v3

    .line 253
    .local v3, mediaSet:Lcom/ecareme/pixwe/media/MediaSet;
    if-nez v3, :cond_5

    .line 254
    invoke-virtual {p1, v6, v7, p2}, Lcom/ecareme/pixwe/media/MediaFeed;->addMediaSet(JLcom/ecareme/pixwe/media/DataSource;)Lcom/ecareme/pixwe/media/MediaSet;

    move-result-object v3

    .line 258
    :goto_2
    if-eqz p5, :cond_1

    iget-wide v6, v3, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    .end local v6           #setId:J
    sget v8, Lcom/ecareme/pixwe/media/LocalDataSource;->CAMERA_BUCKET_ID:I

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 259
    invoke-virtual {p1, v3}, Lcom/ecareme/pixwe/media/MediaFeed;->moveSetToFront(Lcom/ecareme/pixwe/media/MediaSet;)V

    .line 261
    :cond_1
    if-eqz p3, :cond_2

    if-nez p0, :cond_3

    :cond_2
    if-eqz p4, :cond_4

    if-eqz v1, :cond_4

    .line 262
    :cond_3
    iput-object v4, v3, Lcom/ecareme/pixwe/media/MediaSet;->mName:Ljava/lang/String;

    .line 263
    iput-boolean p0, v3, Lcom/ecareme/pixwe/media/MediaSet;->mHasImages:Z

    .line 264
    iput-boolean v1, v3, Lcom/ecareme/pixwe/media/MediaSet;->mHasVideos:Z

    .line 265
    const-wide/16 v6, -0x1

    iput-wide v6, v3, Lcom/ecareme/pixwe/media/MediaSet;->mPicasaAlbumId:J

    .line 266
    const/4 p0, 0x1

    invoke-virtual {v3, p0}, Lcom/ecareme/pixwe/media/MediaSet;->generateTitle(Z)V

    .line 247
    .end local p0           #hasImages:Z
    :cond_4
    add-int/lit8 p0, v2, 0x1

    .end local v2           #i:I
    .local p0, i:I
    move v2, p0

    .end local p0           #i:I
    .restart local v2       #i:I
    goto :goto_0

    .line 256
    .restart local v6       #setId:J
    .local p0, hasImages:Z
    :cond_5
    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/MediaSet;->refresh()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 269
    .end local v1           #hasVideos:Z
    .end local v2           #i:I
    .end local v3           #mediaSet:Lcom/ecareme/pixwe/media/MediaSet;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #numAlbums:I
    .end local v6           #setId:J
    .end local p0           #hasImages:Z
    :catch_0
    move-exception p0

    .line 270
    .local p0, e:Ljava/io/IOException;
    const-string p0, "CacheService"

    .end local p0           #e:Ljava/io/IOException;
    const-string p1, "Error loading albums."

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    sget-object p0, Lcom/ecareme/pixwe/cache/CacheService;->sAlbumCache:Lcom/ecareme/pixwe/media/DiskCache;

    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/DiskCache;->deleteAll()V

    .line 272
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Lcom/ecareme/pixwe/cache/CacheService;->putLocaleForAlbumCache(Ljava/util/Locale;)V

    goto :goto_1

    .line 276
    .end local v0           #dis:Ljava/io/DataInputStream;
    .local p0, albumData:[B
    .restart local p1
    :cond_6
    const-string p0, "CacheService"

    .end local p0           #albumData:[B
    const-string p1, "No albums found."

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static final longArrayToByteArray([J)[B
    .locals 7
    .parameter "l"

    .prologue
    .line 839
    array-length v5, p0

    mul-int/lit8 v5, v5, 0x8

    new-array v0, v5, [B

    .line 840
    .local v0, bArray:[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 841
    .local v1, bBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v3

    .line 842
    .local v3, lBuffer:Ljava/nio/LongBuffer;
    array-length v4, p0

    .line 843
    .local v4, numLongs:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v4, :cond_0

    .line 846
    return-object v0

    .line 844
    :cond_0
    aget-wide v5, p0, v2

    invoke-virtual {v3, v2, v5, v6}, Ljava/nio/LongBuffer;->put(IJ)Ljava/nio/LongBuffer;

    .line 843
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static final longToByteArray(J)[B
    .locals 4
    .parameter "l"

    .prologue
    .line 831
    const/16 v3, 0x8

    new-array v0, v3, [B

    .line 832
    .local v0, bArray:[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 833
    .local v1, bBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v2

    .line 834
    .local v2, lBuffer:Ljava/nio/LongBuffer;
    const/4 v3, 0x0

    invoke-virtual {v2, v3, p0, p1}, Ljava/nio/LongBuffer;->put(IJ)Ljava/nio/LongBuffer;

    .line 835
    return-object v0
.end method

.method public static final markDirty()V
    .locals 7

    .prologue
    .line 186
    const/4 v0, 0x0

    sput-object v0, Lcom/ecareme/pixwe/cache/CacheService;->sList:Lcom/ecareme/pixwe/cache/ImageList;

    .line 187
    sget-object v6, Lcom/ecareme/pixwe/cache/CacheService;->sCacheLock:Ljava/lang/Object;

    monitor-enter v6

    .line 188
    :try_start_0
    sget-object v0, Lcom/ecareme/pixwe/cache/CacheService;->sAlbumCache:Lcom/ecareme/pixwe/media/DiskCache;

    const-wide/16 v1, -0x2

    sget-object v3, Lcom/ecareme/pixwe/cache/CacheService;->sDummyData:[B

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/ecareme/pixwe/media/DiskCache;->put(J[BJ)V

    .line 187
    monitor-exit v6

    .line 190
    return-void

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static final markDirty(J)V
    .locals 11
    .parameter "id"

    .prologue
    .line 193
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 214
    :goto_0
    return-void

    .line 196
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/ecareme/pixwe/cache/CacheService;->sList:Lcom/ecareme/pixwe/cache/ImageList;

    .line 197
    sget-object v10, Lcom/ecareme/pixwe/cache/CacheService;->sCacheLock:Ljava/lang/Object;

    monitor-enter v10

    .line 198
    :try_start_0
    invoke-static {p0, p1}, Lcom/ecareme/pixwe/cache/CacheService;->longToByteArray(J)[B

    move-result-object v3

    .line 199
    .local v3, data:[B
    sget-object v0, Lcom/ecareme/pixwe/cache/CacheService;->sAlbumCache:Lcom/ecareme/pixwe/media/DiskCache;

    const-wide/16 v1, -0x4

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/ecareme/pixwe/media/DiskCache;->get(JJ)[B

    move-result-object v6

    .line 200
    .local v6, existingData:[B
    if-eqz v6, :cond_1

    array-length v0, v6

    if-lez v0, :cond_1

    .line 201
    invoke-static {v6}, Lcom/ecareme/pixwe/cache/CacheService;->toLongArray([B)[J

    move-result-object v8

    .line 202
    .local v8, ids:[J
    array-length v9, v8

    .line 203
    .local v9, numIds:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-lt v7, v9, :cond_2

    .line 210
    invoke-static {v3, v6}, Lcom/ecareme/pixwe/cache/CacheService;->concat([B[B)[B

    move-result-object v3

    .line 212
    .end local v7           #i:I
    .end local v8           #ids:[J
    .end local v9           #numIds:I
    :cond_1
    sget-object v0, Lcom/ecareme/pixwe/cache/CacheService;->sAlbumCache:Lcom/ecareme/pixwe/media/DiskCache;

    const-wide/16 v1, -0x4

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/ecareme/pixwe/media/DiskCache;->put(J[BJ)V

    .line 197
    monitor-exit v10

    goto :goto_0

    .end local v3           #data:[B
    .end local v6           #existingData:[B
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 204
    .restart local v3       #data:[B
    .restart local v6       #existingData:[B
    .restart local v7       #i:I
    .restart local v8       #ids:[J
    .restart local v9       #numIds:I
    :cond_2
    :try_start_1
    aget-wide v0, v8, v7

    cmp-long v0, v0, p0

    if-nez v0, :cond_3

    .line 205
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 203
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method public static final populateMediaItemFromCursor(Lcom/ecareme/pixwe/media/MediaItem;Landroid/content/ContentResolver;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 6
    .parameter "item"
    .parameter "cr"
    .parameter "cursor"
    .parameter "baseUri"

    .prologue
    .line 404
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ecareme/pixwe/media/MediaItem;->mId:J

    .line 405
    const/4 v2, 0x1

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ecareme/pixwe/media/MediaItem;->mCaption:Ljava/lang/String;

    .line 406
    const/4 v2, 0x2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ecareme/pixwe/media/MediaItem;->mMimeType:Ljava/lang/String;

    .line 407
    const/4 v2, 0x3

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/ecareme/pixwe/media/MediaItem;->mLatitude:D

    .line 408
    const/4 v2, 0x4

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/ecareme/pixwe/media/MediaItem;->mLongitude:D

    .line 409
    const/4 v2, 0x5

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ecareme/pixwe/media/MediaItem;->mDateTakenInMs:J

    .line 410
    const/4 v2, 0x6

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ecareme/pixwe/media/MediaItem;->mDateAddedInSec:J

    .line 411
    const/4 v2, 0x7

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ecareme/pixwe/media/MediaItem;->mDateModifiedInSec:J

    .line 412
    iget-wide v2, p0, Lcom/ecareme/pixwe/media/MediaItem;->mDateTakenInMs:J

    iget-wide v4, p0, Lcom/ecareme/pixwe/media/MediaItem;->mDateModifiedInSec:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 413
    iget-wide v2, p0, Lcom/ecareme/pixwe/media/MediaItem;->mDateModifiedInSec:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/ecareme/pixwe/media/MediaItem;->mDateTakenInMs:J

    .line 415
    :cond_0
    const/16 v2, 0x8

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ecareme/pixwe/media/MediaItem;->mFilePath:Ljava/lang/String;

    .line 416
    if-eqz p3, :cond_1

    .line 417
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/ecareme/pixwe/media/MediaItem;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ecareme/pixwe/media/MediaItem;->mContentUri:Ljava/lang/String;

    .line 418
    :cond_1
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/MediaItem;->getMediaType()I

    move-result v0

    .line 419
    .local v0, itemMediaType:I
    const/16 v2, 0x9

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 420
    .local v1, orientationDurationValue:I
    if-nez v0, :cond_2

    .line 421
    int-to-float v2, v1

    iput v2, p0, Lcom/ecareme/pixwe/media/MediaItem;->mRotation:F

    .line 425
    :goto_0
    return-void

    .line 423
    :cond_2
    iput v1, p0, Lcom/ecareme/pixwe/media/MediaItem;->mDurationInSec:I

    goto :goto_0
.end method

.method private static final populateMediaItemsForSets(Landroid/content/Context;Ljava/util/ArrayList;Lcom/ecareme/pixwe/media/LongSparseArray;Z)V
    .locals 10
    .parameter "context"
    .parameter
    .parameter
    .parameter "useWhere"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ecareme/pixwe/media/MediaSet;",
            ">;",
            "Lcom/ecareme/pixwe/media/LongSparseArray",
            "<",
            "Lcom/ecareme/pixwe/media/MediaSet;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1063
    .local p1, sets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaSet;>;"
    .local p2, acceleratedSets:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<Lcom/ecareme/pixwe/media/MediaSet;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1137
    .end local p0
    .end local p1           #sets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaSet;>;"
    .end local p3
    :cond_0
    :goto_0
    return-void

    .line 1067
    .restart local p0
    .restart local p1       #sets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaSet;>;"
    .restart local p3
    :cond_1
    const-string v0, "CacheService"

    const-string v1, "Building items."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1069
    .local v1, uriImages:Landroid/net/Uri;
    sget-object v7, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1070
    .local v7, uriVideos:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1072
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v3, 0x0

    .line 1073
    .local v3, whereClause:Ljava/lang/String;
    if-eqz p3, :cond_2

    .line 1074
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    .line 1075
    .local p3, numSets:I
    new-instance v2, Ljava/lang/StringBuffer;

    const-string p0, "bucket_id in ("

    .end local p0
    invoke-direct {v2, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1076
    .local v2, whereString:Ljava/lang/StringBuffer;
    const/4 p0, 0x0

    .end local v3           #whereClause:Ljava/lang/String;
    .local p0, i:I
    :goto_1
    if-lt p0, p3, :cond_5

    .line 1082
    const-string p0, ")"

    .end local p0           #i:I
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1083
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1085
    .restart local v3       #whereClause:Ljava/lang/String;
    const-string p0, "CacheService"

    new-instance p3, Ljava/lang/StringBuilder;

    .end local p3           #numSets:I
    const-string v2, "Updating dirty albums where "

    .end local v2           #whereString:Ljava/lang/StringBuffer;
    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    :cond_2
    :try_start_0
    sget-object v2, Lcom/ecareme/pixwe/cache/CacheService;->PROJECTION_IMAGES:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "datetaken ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 1089
    .local p0, cursorImages:Landroid/database/Cursor;
    sget-object v6, Lcom/ecareme/pixwe/cache/CacheService;->PROJECTION_VIDEOS:[Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "datetaken ASC"

    move-object v4, v0

    move-object v5, v7

    move-object v7, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v7           #uriVideos:Landroid/net/Uri;
    move-result-object p3

    .line 1090
    .local p3, cursorVideos:Landroid/database/Cursor;
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    .line 1091
    .local v1, cursors:[Landroid/database/Cursor;
    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 1092
    const/4 p0, 0x1

    aput-object p3, v1, p0

    .line 1093
    .end local p0           #cursorImages:Landroid/database/Cursor;
    new-instance v3, Lcom/ecareme/pixwe/media/SortCursor;

    .end local v3           #whereClause:Ljava/lang/String;
    const-string p0, "datetaken"

    const/4 p3, 0x1

    const/4 v2, 0x1

    invoke-direct {v3, v1, p0, p3, v2}, Lcom/ecareme/pixwe/media/SortCursor;-><init>([Landroid/database/Cursor;Ljava/lang/String;IZ)V

    .line 1094
    .end local p3           #cursorVideos:Landroid/database/Cursor;
    .local v3, sortCursor:Lcom/ecareme/pixwe/media/SortCursor;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p0

    if-nez p0, :cond_0

    .line 1098
    if-eqz v3, :cond_a

    :try_start_1
    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/SortCursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_a

    .line 1099
    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/SortCursor;->getCount()I

    move-result p0

    .line 1100
    .local p0, count:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1101
    .local v1, numSets:I
    div-int/2addr p0, v1

    .line 1102
    .local p0, approximateCountPerSet:I
    const/4 p3, 0x0

    .local p3, i:I
    :goto_2
    if-lt p3, v1, :cond_7

    .line 1107
    .end local v1           #numSets:I
    .end local p0           #approximateCountPerSet:I
    .end local p3           #i:I
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result p0

    if-eqz p0, :cond_8

    .line 1125
    if-eqz v3, :cond_0

    .line 1126
    :try_start_2
    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/SortCursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 1128
    .end local v3           #sortCursor:Lcom/ecareme/pixwe/media/SortCursor;
    :catch_0
    move-exception p0

    .line 1132
    :cond_4
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_0

    .line 1133
    invoke-static {p1}, Lcom/ecareme/pixwe/cache/CacheService;->writeItemsToCache(Ljava/util/ArrayList;)V

    .line 1135
    const-string p0, "CacheService"

    const-string p1, "Done building items."

    .end local p1           #sets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaSet;>;"
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1077
    .local v1, uriImages:Landroid/net/Uri;
    .restart local v2       #whereString:Ljava/lang/StringBuffer;
    .restart local v7       #uriVideos:Landroid/net/Uri;
    .local p0, i:I
    .restart local p1       #sets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaSet;>;"
    .local p3, numSets:I
    :cond_5
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ecareme/pixwe/media/MediaSet;

    iget-wide v3, v3, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 1078
    const/4 v3, 0x1

    sub-int v3, p3, v3

    if-eq p0, v3, :cond_6

    .line 1079
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1076
    :cond_6
    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_1

    .line 1103
    .end local v2           #whereString:Ljava/lang/StringBuffer;
    .end local v7           #uriVideos:Landroid/net/Uri;
    .local v1, numSets:I
    .restart local v3       #sortCursor:Lcom/ecareme/pixwe/media/SortCursor;
    .local p0, approximateCountPerSet:I
    .local p3, i:I
    :cond_7
    :try_start_3
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ecareme/pixwe/media/MediaSet;

    .line 1104
    .local v2, set:Lcom/ecareme/pixwe/media/MediaSet;
    invoke-virtual {v2, p0}, Lcom/ecareme/pixwe/media/MediaSet;->setNumExpectedItems(I)V

    .line 1102
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 1110
    .end local v1           #numSets:I
    .end local v2           #set:Lcom/ecareme/pixwe/media/MediaSet;
    .end local p0           #approximateCountPerSet:I
    .end local p3           #i:I
    :cond_8
    new-instance p3, Lcom/ecareme/pixwe/media/MediaItem;

    invoke-direct {p3}, Lcom/ecareme/pixwe/media/MediaItem;-><init>()V

    .line 1111
    .local p3, item:Lcom/ecareme/pixwe/media/MediaItem;
    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/SortCursor;->getCurrentCursorIndex()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_b

    const/4 p0, 0x1

    .line 1112
    .local p0, isVideo:Z
    :goto_4
    if-eqz p0, :cond_c

    .line 1113
    sget-object p0, Lcom/ecareme/pixwe/cache/CacheService;->BASE_CONTENT_STRING_VIDEOS:Ljava/lang/String;

    .end local p0           #isVideo:Z
    invoke-static {p3, v0, v3, p0}, Lcom/ecareme/pixwe/cache/CacheService;->populateVideoItemFromCursor(Lcom/ecareme/pixwe/media/MediaItem;Landroid/content/ContentResolver;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 1117
    :goto_5
    const/16 p0, 0xa

    invoke-virtual {v3, p0}, Lcom/ecareme/pixwe/media/SortCursor;->getLong(I)J

    move-result-wide v1

    .line 1118
    .local v1, setId:J
    invoke-static {v1, v2, p2}, Lcom/ecareme/pixwe/cache/CacheService;->findSet(JLcom/ecareme/pixwe/media/LongSparseArray;)Lcom/ecareme/pixwe/media/MediaSet;

    move-result-object p0

    .line 1119
    .local p0, set:Lcom/ecareme/pixwe/media/MediaSet;
    if-eqz p0, :cond_9

    .line 1120
    invoke-virtual {p0, p3}, Lcom/ecareme/pixwe/media/MediaSet;->addItem(Lcom/ecareme/pixwe/media/MediaItem;)V

    .line 1122
    :cond_9
    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/SortCursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result p0

    .line 1106
    .end local p0           #set:Lcom/ecareme/pixwe/media/MediaSet;
    if-nez p0, :cond_3

    .line 1125
    .end local v1           #setId:J
    .end local p3           #item:Lcom/ecareme/pixwe/media/MediaItem;
    :cond_a
    if-eqz v3, :cond_4

    .line 1126
    :try_start_4
    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/SortCursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .line 1111
    .restart local p3       #item:Lcom/ecareme/pixwe/media/MediaItem;
    :cond_b
    const/4 p0, 0x0

    goto :goto_4

    .line 1115
    .local p0, isVideo:Z
    :cond_c
    :try_start_5
    sget-object p0, Lcom/ecareme/pixwe/cache/CacheService;->BASE_CONTENT_STRING_IMAGES:Ljava/lang/String;

    .end local p0           #isVideo:Z
    invoke-static {p3, v0, v3, p0}, Lcom/ecareme/pixwe/cache/CacheService;->populateMediaItemFromCursor(Lcom/ecareme/pixwe/media/MediaItem;Landroid/content/ContentResolver;Landroid/database/Cursor;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    .line 1124
    .end local p3           #item:Lcom/ecareme/pixwe/media/MediaItem;
    :catchall_0
    move-exception p0

    .line 1125
    if-eqz v3, :cond_d

    .line 1126
    :try_start_6
    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/SortCursor;->close()V

    .line 1127
    :cond_d
    throw p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
.end method

.method public static final populateVideoItemFromCursor(Lcom/ecareme/pixwe/media/MediaItem;Landroid/content/ContentResolver;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 1
    .parameter "item"
    .parameter "cr"
    .parameter "cursor"
    .parameter "baseUri"

    .prologue
    .line 398
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/media/MediaItem;->setMediaType(I)V

    .line 399
    invoke-static {p0, p1, p2, p3}, Lcom/ecareme/pixwe/cache/CacheService;->populateMediaItemFromCursor(Lcom/ecareme/pixwe/media/MediaItem;Landroid/content/ContentResolver;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method private static final putLocaleForAlbumCache(Ljava/util/Locale;)V
    .locals 9
    .parameter "locale"

    .prologue
    .line 725
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 726
    .local v6, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 728
    .local v7, dos:Ljava/io/DataOutputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/ecareme/pixwe/media/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 729
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/ecareme/pixwe/media/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 730
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/ecareme/pixwe/media/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 731
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V

    .line 732
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 733
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 734
    .local v3, data:[B
    sget-object v0, Lcom/ecareme/pixwe/cache/CacheService;->sAlbumCache:Lcom/ecareme/pixwe/media/DiskCache;

    const-wide/16 v1, -0x5

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/ecareme/pixwe/media/DiskCache;->put(J[BJ)V

    .line 735
    sget-object v0, Lcom/ecareme/pixwe/cache/CacheService;->sAlbumCache:Lcom/ecareme/pixwe/media/DiskCache;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/DiskCache;->flush()V

    .line 736
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V

    .line 737
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 744
    .end local v3           #data:[B
    :goto_0
    return-void

    .line 738
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 741
    .local v8, e:Ljava/io/IOException;
    const-string v0, "CacheService"

    const-string v1, "Error writing locale to cache."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final queryThumbnail(Landroid/content/Context;JJZJ)[B
    .locals 9
    .parameter "context"
    .parameter "thumbId"
    .parameter "origId"
    .parameter "isVideo"
    .parameter "timestamp"

    .prologue
    .line 464
    if-eqz p5, :cond_0

    sget-object v0, Lcom/ecareme/pixwe/media/LocalDataSource;->sThumbnailCacheVideo:Lcom/ecareme/pixwe/media/DiskCache;

    move-object v6, v0

    .local v6, thumbnailCache:Lcom/ecareme/pixwe/media/DiskCache;
    :goto_0
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move-wide v7, p6

    .line 465
    invoke-static/range {v0 .. v8}, Lcom/ecareme/pixwe/cache/CacheService;->queryThumbnail(Landroid/content/Context;JJZLcom/ecareme/pixwe/media/DiskCache;J)[B

    move-result-object p0

    .end local p0
    return-object p0

    .line 464
    .end local v6           #thumbnailCache:Lcom/ecareme/pixwe/media/DiskCache;
    .restart local p0
    :cond_0
    sget-object v0, Lcom/ecareme/pixwe/media/LocalDataSource;->sThumbnailCache:Lcom/ecareme/pixwe/media/DiskCache;

    move-object v6, v0

    goto :goto_0
.end method

.method private static final queryThumbnail(Landroid/content/Context;JJZLcom/ecareme/pixwe/media/DiskCache;J)[B
    .locals 18
    .parameter "context"
    .parameter "thumbId"
    .parameter "origId"
    .parameter "isVideo"
    .parameter "thumbnailCache"
    .parameter "timestamp"

    .prologue
    .line 511
    invoke-static/range {p0 .. p0}, Lcom/ecareme/pixwe/app/App;->get(Landroid/content/Context;)Lcom/ecareme/pixwe/app/App;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ecareme/pixwe/app/App;->isPaused()Z

    move-result v5

    if-nez v5, :cond_0

    .line 512
    sget-object v5, Lcom/ecareme/pixwe/cache/CacheService;->THUMBNAIL_THREAD:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Thread;

    .line 513
    .local v5, thumbnailThread:Ljava/lang/Thread;
    if-eqz v5, :cond_0

    .line 514
    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 517
    .end local v5           #thumbnailThread:Ljava/lang/Thread;
    :cond_0
    move-object/from16 v0, p6

    move-wide/from16 v1, p1

    move-wide/from16 v3, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ecareme/pixwe/media/DiskCache;->get(JJ)[B

    move-result-object v5

    .line 518
    .local v5, bitmap:[B
    if-nez v5, :cond_1

    .line 519
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 520
    .local v16, time:J
    const/16 v12, 0x80

    .line 521
    const/16 v13, 0x60

    move-object/from16 v5, p0

    move-object/from16 v6, p6

    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    move/from16 v11, p5

    move-wide/from16 v14, p7

    .line 520
    invoke-static/range {v5 .. v15}, Lcom/ecareme/pixwe/cache/CacheService;->buildThumbnailForId(Landroid/content/Context;Lcom/ecareme/pixwe/media/DiskCache;JJZIIJ)[B

    .end local v5           #bitmap:[B
    move-result-object p0

    .line 523
    .local p0, bitmap:[B
    const-string p1, "CacheService"

    .end local p1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "Built thumbnail and screennail for "

    .end local p5
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " in "

    .end local p3
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p3

    sub-long p3, p3, v16

    invoke-virtual/range {p2 .. p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    .end local v16           #time:J
    :goto_0
    return-object p0

    .restart local v5       #bitmap:[B
    .local p0, context:Landroid/content/Context;
    .restart local p1
    .restart local p3
    .restart local p5
    :cond_1
    move-object/from16 p0, v5

    .end local v5           #bitmap:[B
    .local p0, bitmap:[B
    goto :goto_0
.end method

.method private static final refresh(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    .line 853
    const-string v0, "CacheService"

    const-string v1, "Refreshing cache."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    sget-object v11, Lcom/ecareme/pixwe/cache/CacheService;->sCacheLock:Ljava/lang/Object;

    monitor-enter v11

    .line 855
    :try_start_0
    sget-object v0, Lcom/ecareme/pixwe/cache/CacheService;->sAlbumCache:Lcom/ecareme/pixwe/media/DiskCache;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/DiskCache;->deleteAll()V

    .line 856
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/ecareme/pixwe/cache/CacheService;->putLocaleForAlbumCache(Ljava/util/Locale;)V

    .line 858
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 859
    .local v9, sets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaSet;>;"
    new-instance v8, Lcom/ecareme/pixwe/media/LongSparseArray;

    invoke-direct {v8}, Lcom/ecareme/pixwe/media/LongSparseArray;-><init>()V

    .line 861
    .local v8, acceleratedSets:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<Lcom/ecareme/pixwe/media/MediaSet;>;"
    const-string v0, "CacheService"

    const-string v1, "Building albums."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "distinct"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 863
    .local v1, uriImages:Landroid/net/Uri;
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "distinct"

    const-string v3, "true"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    .line 864
    .local v10, uriVideos:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 866
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_1
    sget-object v2, Lcom/ecareme/pixwe/cache/CacheService;->BUCKET_PROJECTION_IMAGES:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "upper(bucket_display_name) ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 867
    .local v1, cursorImages:Landroid/database/Cursor;
    sget-object v4, Lcom/ecareme/pixwe/cache/CacheService;->BUCKET_PROJECTION_VIDEOS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "upper(bucket_display_name) ASC"

    move-object v2, v0

    move-object v3, v10

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 868
    .local v0, cursorVideos:Landroid/database/Cursor;
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/database/Cursor;

    .line 869
    .local v2, cursors:[Landroid/database/Cursor;
    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 870
    const/4 v1, 0x1

    aput-object v0, v2, v1

    .line 871
    .end local v1           #cursorImages:Landroid/database/Cursor;
    new-instance v4, Lcom/ecareme/pixwe/media/SortCursor;

    const-string v0, "bucket_display_name"

    .line 872
    .end local v0           #cursorVideos:Landroid/database/Cursor;
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 871
    invoke-direct {v4, v2, v0, v1, v3}, Lcom/ecareme/pixwe/media/SortCursor;-><init>([Landroid/database/Cursor;Ljava/lang/String;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 874
    .local v4, sortCursor:Lcom/ecareme/pixwe/media/SortCursor;
    if-eqz v4, :cond_8

    :try_start_2
    invoke-virtual {v4}, Lcom/ecareme/pixwe/media/SortCursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 875
    invoke-virtual {v4}, Lcom/ecareme/pixwe/media/SortCursor;->getCount()I

    move-result v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 876
    new-instance v0, Lcom/ecareme/pixwe/media/LongSparseArray;

    invoke-virtual {v4}, Lcom/ecareme/pixwe/media/SortCursor;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/LongSparseArray;-><init>(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 877
    .end local v8           #acceleratedSets:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<Lcom/ecareme/pixwe/media/MediaSet;>;"
    .local v0, acceleratedSets:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<Lcom/ecareme/pixwe/media/MediaSet;>;"
    :try_start_3
    new-instance v1, Lcom/ecareme/pixwe/media/MediaSet;

    invoke-direct {v1}, Lcom/ecareme/pixwe/media/MediaSet;-><init>()V

    .line 878
    .local v1, cameraSet:Lcom/ecareme/pixwe/media/MediaSet;
    sget v2, Lcom/ecareme/pixwe/media/LocalDataSource;->CAMERA_BUCKET_ID:I

    .end local v2           #cursors:[Landroid/database/Cursor;
    int-to-long v2, v2

    iput-wide v2, v1, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    .line 879
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ecareme/pixwe/media/MediaSet;->mName:Ljava/lang/String;

    .line 880
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 881
    iget-wide v2, v1, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/ecareme/pixwe/media/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 883
    .end local v1           #cameraSet:Lcom/ecareme/pixwe/media/MediaSet;
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v1

    if-eqz v1, :cond_2

    .line 901
    if-eqz v4, :cond_1

    .line 902
    :try_start_4
    invoke-virtual {v4}, Lcom/ecareme/pixwe/media/SortCursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 884
    :cond_1
    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object p0, v0

    .line 915
    .end local v0           #acceleratedSets:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<Lcom/ecareme/pixwe/media/MediaSet;>;"
    .end local v4           #sortCursor:Lcom/ecareme/pixwe/media/SortCursor;
    .local p0, acceleratedSets:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<Lcom/ecareme/pixwe/media/MediaSet;>;"
    :goto_0
    return-void

    .line 886
    .restart local v0       #acceleratedSets:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<Lcom/ecareme/pixwe/media/MediaSet;>;"
    .restart local v4       #sortCursor:Lcom/ecareme/pixwe/media/SortCursor;
    .local p0, context:Landroid/content/Context;
    :cond_2
    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {v4, v1}, Lcom/ecareme/pixwe/media/SortCursor;->getLong(I)J

    move-result-wide v2

    .line 887
    .local v2, setId:J
    invoke-static {v2, v3, v0}, Lcom/ecareme/pixwe/cache/CacheService;->findSet(JLcom/ecareme/pixwe/media/LongSparseArray;)Lcom/ecareme/pixwe/media/MediaSet;

    move-result-object v1

    .line 888
    .local v1, mediaSet:Lcom/ecareme/pixwe/media/MediaSet;
    if-nez v1, :cond_3

    .line 889
    new-instance v1, Lcom/ecareme/pixwe/media/MediaSet;

    .end local v1           #mediaSet:Lcom/ecareme/pixwe/media/MediaSet;
    invoke-direct {v1}, Lcom/ecareme/pixwe/media/MediaSet;-><init>()V

    .line 890
    .restart local v1       #mediaSet:Lcom/ecareme/pixwe/media/MediaSet;
    iput-wide v2, v1, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    .line 891
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/ecareme/pixwe/media/SortCursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/ecareme/pixwe/media/MediaSet;->mName:Ljava/lang/String;

    .line 892
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 893
    invoke-virtual {v0, v2, v3, v1}, Lcom/ecareme/pixwe/media/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 895
    :cond_3
    iget-boolean v2, v1, Lcom/ecareme/pixwe/media/MediaSet;->mHasImages:Z

    .end local v2           #setId:J
    invoke-virtual {v4}, Lcom/ecareme/pixwe/media/SortCursor;->getCurrentCursorIndex()I

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x1

    :goto_1
    or-int/2addr v2, v3

    iput-boolean v2, v1, Lcom/ecareme/pixwe/media/MediaSet;->mHasImages:Z

    .line 896
    iget-boolean v2, v1, Lcom/ecareme/pixwe/media/MediaSet;->mHasVideos:Z

    invoke-virtual {v4}, Lcom/ecareme/pixwe/media/SortCursor;->getCurrentCursorIndex()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_6

    const/4 v3, 0x1

    :goto_2
    or-int/2addr v2, v3

    iput-boolean v2, v1, Lcom/ecareme/pixwe/media/MediaSet;->mHasVideos:Z

    .line 897
    invoke-virtual {v4}, Lcom/ecareme/pixwe/media/SortCursor;->moveToNext()Z

    move-result v1

    .line 882
    .end local v1           #mediaSet:Lcom/ecareme/pixwe/media/MediaSet;
    if-nez v1, :cond_0

    .line 898
    invoke-virtual {v4}, Lcom/ecareme/pixwe/media/SortCursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 901
    :goto_3
    if-eqz v4, :cond_4

    .line 902
    :try_start_7
    invoke-virtual {v4}, Lcom/ecareme/pixwe/media/SortCursor;->close()V

    .line 904
    :cond_4
    invoke-static {v9}, Lcom/ecareme/pixwe/cache/CacheService;->writeSetsToCache(Ljava/util/ArrayList;)V

    .line 906
    const-string v1, "CacheService"

    const-string v2, "Done building albums."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    const/4 v1, 0x0

    invoke-static {p0, v9, v0, v1}, Lcom/ecareme/pixwe/cache/CacheService;->populateMediaItemsForSets(Landroid/content/Context;Ljava/util/ArrayList;Lcom/ecareme/pixwe/media/LongSparseArray;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    move-object p0, v0

    .line 854
    .end local v0           #acceleratedSets:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<Lcom/ecareme/pixwe/media/MediaSet;>;"
    .end local v4           #sortCursor:Lcom/ecareme/pixwe/media/SortCursor;
    .local p0, acceleratedSets:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<Lcom/ecareme/pixwe/media/MediaSet;>;"
    :goto_4
    :try_start_8
    monitor-exit v11

    goto :goto_0

    .end local v9           #sets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaSet;>;"
    .end local v10           #uriVideos:Landroid/net/Uri;
    .end local p0           #acceleratedSets:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<Lcom/ecareme/pixwe/media/MediaSet;>;"
    :catchall_0
    move-exception p0

    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p0

    .line 895
    .restart local v0       #acceleratedSets:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<Lcom/ecareme/pixwe/media/MediaSet;>;"
    .restart local v1       #mediaSet:Lcom/ecareme/pixwe/media/MediaSet;
    .restart local v4       #sortCursor:Lcom/ecareme/pixwe/media/SortCursor;
    .restart local v9       #sets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaSet;>;"
    .restart local v10       #uriVideos:Landroid/net/Uri;
    .local p0, context:Landroid/content/Context;
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 896
    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    .line 900
    .end local v0           #acceleratedSets:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<Lcom/ecareme/pixwe/media/MediaSet;>;"
    .end local v1           #mediaSet:Lcom/ecareme/pixwe/media/MediaSet;
    .local v2, cursors:[Landroid/database/Cursor;
    .restart local v8       #acceleratedSets:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<Lcom/ecareme/pixwe/media/MediaSet;>;"
    :catchall_1
    move-exception p0

    move-object v0, p0

    move-object p0, v8

    .line 901
    .end local v2           #cursors:[Landroid/database/Cursor;
    .end local v8           #acceleratedSets:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<Lcom/ecareme/pixwe/media/MediaSet;>;"
    .local p0, acceleratedSets:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<Lcom/ecareme/pixwe/media/MediaSet;>;"
    :goto_5
    if-eqz v4, :cond_7

    .line 902
    :try_start_9
    invoke-virtual {v4}, Lcom/ecareme/pixwe/media/SortCursor;->close()V

    .line 903
    :cond_7
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 910
    :catch_0
    move-exception v0

    goto :goto_4

    .end local v4           #sortCursor:Lcom/ecareme/pixwe/media/SortCursor;
    .restart local v8       #acceleratedSets:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<Lcom/ecareme/pixwe/media/MediaSet;>;"
    .local p0, context:Landroid/content/Context;
    :catch_1
    move-exception p0

    move-object p0, v8

    .end local v8           #acceleratedSets:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<Lcom/ecareme/pixwe/media/MediaSet;>;"
    .local p0, acceleratedSets:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<Lcom/ecareme/pixwe/media/MediaSet;>;"
    goto :goto_4

    .restart local v0       #acceleratedSets:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<Lcom/ecareme/pixwe/media/MediaSet;>;"
    .restart local v4       #sortCursor:Lcom/ecareme/pixwe/media/SortCursor;
    .local p0, context:Landroid/content/Context;
    :catch_2
    move-exception p0

    move-object p0, v0

    .end local v0           #acceleratedSets:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<Lcom/ecareme/pixwe/media/MediaSet;>;"
    .local p0, acceleratedSets:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<Lcom/ecareme/pixwe/media/MediaSet;>;"
    goto :goto_4

    .line 900
    .restart local v0       #acceleratedSets:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<Lcom/ecareme/pixwe/media/MediaSet;>;"
    .local p0, context:Landroid/content/Context;
    :catchall_2
    move-exception p0

    move-object v12, p0

    move-object p0, v0

    .end local v0           #acceleratedSets:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<Lcom/ecareme/pixwe/media/MediaSet;>;"
    .local p0, acceleratedSets:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<Lcom/ecareme/pixwe/media/MediaSet;>;"
    move-object v0, v12

    goto :goto_5

    .restart local v2       #cursors:[Landroid/database/Cursor;
    .restart local v8       #acceleratedSets:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<Lcom/ecareme/pixwe/media/MediaSet;>;"
    .local p0, context:Landroid/content/Context;
    :cond_8
    move-object v0, v8

    .end local v8           #acceleratedSets:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<Lcom/ecareme/pixwe/media/MediaSet;>;"
    .restart local v0       #acceleratedSets:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<Lcom/ecareme/pixwe/media/MediaSet;>;"
    goto :goto_3
.end method

.method private static final refreshDirtySets(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    .line 918
    sget-object v7, Lcom/ecareme/pixwe/cache/CacheService;->sCacheLock:Ljava/lang/Object;

    monitor-enter v7

    .line 919
    :try_start_0
    sget-object v8, Lcom/ecareme/pixwe/cache/CacheService;->sAlbumCache:Lcom/ecareme/pixwe/media/DiskCache;

    const-wide/16 v9, -0x4

    const-wide/16 v11, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/ecareme/pixwe/media/DiskCache;->get(JJ)[B

    move-result-object v1

    .line 920
    .local v1, existingData:[B
    if-eqz v1, :cond_0

    array-length v8, v1

    if-lez v8, :cond_0

    .line 921
    invoke-static {v1}, Lcom/ecareme/pixwe/cache/CacheService;->toLongArray([B)[J

    move-result-object v3

    .line 922
    .local v3, ids:[J
    array-length v4, v3

    .line 923
    .local v4, numIds:I
    if-lez v4, :cond_0

    .line 924
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 925
    .local v6, sets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaSet;>;"
    new-instance v0, Lcom/ecareme/pixwe/media/LongSparseArray;

    invoke-direct {v0, v4}, Lcom/ecareme/pixwe/media/LongSparseArray;-><init>(I)V

    .line 926
    .local v0, acceleratedSets:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<Lcom/ecareme/pixwe/media/MediaSet;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v4, :cond_1

    .line 933
    const-string v8, "CacheService"

    const-string v9, "Refreshing dirty albums"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    const/4 v8, 0x1

    invoke-static {p0, v6, v0, v8}, Lcom/ecareme/pixwe/cache/CacheService;->populateMediaItemsForSets(Landroid/content/Context;Ljava/util/ArrayList;Lcom/ecareme/pixwe/media/LongSparseArray;Z)V

    .line 937
    .end local v0           #acceleratedSets:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<Lcom/ecareme/pixwe/media/MediaSet;>;"
    .end local v2           #i:I
    .end local v3           #ids:[J
    .end local v4           #numIds:I
    .end local v6           #sets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaSet;>;"
    :cond_0
    sget-object v8, Lcom/ecareme/pixwe/cache/CacheService;->sAlbumCache:Lcom/ecareme/pixwe/media/DiskCache;

    const-wide/16 v9, -0x4

    invoke-virtual {v8, v9, v10}, Lcom/ecareme/pixwe/media/DiskCache;->delete(J)V

    .line 918
    monitor-exit v7

    .line 939
    return-void

    .line 927
    .restart local v0       #acceleratedSets:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<Lcom/ecareme/pixwe/media/MediaSet;>;"
    .restart local v2       #i:I
    .restart local v3       #ids:[J
    .restart local v4       #numIds:I
    .restart local v6       #sets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaSet;>;"
    :cond_1
    new-instance v5, Lcom/ecareme/pixwe/media/MediaSet;

    invoke-direct {v5}, Lcom/ecareme/pixwe/media/MediaSet;-><init>()V

    .line 928
    .local v5, set:Lcom/ecareme/pixwe/media/MediaSet;
    aget-wide v8, v3, v2

    iput-wide v8, v5, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    .line 929
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 930
    iget-wide v8, v5, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    invoke-virtual {v0, v8, v9, v5}, Lcom/ecareme/pixwe/media/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 926
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 918
    .end local v0           #acceleratedSets:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<Lcom/ecareme/pixwe/media/MediaSet;>;"
    .end local v1           #existingData:[B
    .end local v2           #i:I
    .end local v3           #ids:[J
    .end local v4           #numIds:I
    .end local v5           #set:Lcom/ecareme/pixwe/media/MediaSet;
    .end local v6           #sets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaSet;>;"
    :catchall_0
    move-exception v8

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method private static final restartThread(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2
    .parameter
    .parameter "name"
    .parameter "action"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Thread;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 777
    .local p0, threadRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Thread;>;"
    new-instance v1, Lcom/ecareme/pixwe/cache/CacheService$2;

    invoke-direct {v1, p0, p2}, Lcom/ecareme/pixwe/cache/CacheService$2;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Runnable;)V

    .line 786
    .local v1, newThread:Ljava/lang/Thread;
    invoke-virtual {v1, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 787
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 790
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 791
    .local v0, existingThread:Ljava/lang/Thread;
    if-eqz v0, :cond_0

    .line 792
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 794
    :cond_0
    return-void
.end method

.method public static final setHasItems(Landroid/content/ContentResolver;J)Z
    .locals 13
    .parameter "cr"
    .parameter "setId"

    .prologue
    const/4 v12, 0x1

    .line 217
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 218
    .local v1, uriImages:Landroid/net/Uri;
    sget-object v10, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 219
    .local v10, uriVideos:Landroid/net/Uri;
    new-instance v11, Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "bucket_id="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 221
    .local v11, whereString:Ljava/lang/StringBuffer;
    :try_start_0
    sget-object v2, Lcom/ecareme/pixwe/cache/CacheService;->BUCKET_PROJECTION_IMAGES:[Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 222
    .local v8, cursorImages:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 223
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v0, v12

    .line 235
    .end local v8           #cursorImages:Landroid/database/Cursor;
    :goto_0
    return v0

    .line 226
    .restart local v8       #cursorImages:Landroid/database/Cursor;
    :cond_0
    sget-object v4, Lcom/ecareme/pixwe/cache/CacheService;->BUCKET_PROJECTION_VIDEOS:[Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v10

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 227
    .local v9, cursorVideos:Landroid/database/Cursor;
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 228
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v12

    .line 229
    goto :goto_0

    .line 231
    .end local v8           #cursorImages:Landroid/database/Cursor;
    .end local v9           #cursorVideos:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    .line 235
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final startCache(Landroid/content/Context;Z)V
    .locals 6
    .parameter "context"
    .parameter "checkthumbnails"

    .prologue
    .line 161
    invoke-static {}, Lcom/ecareme/pixwe/cache/CacheService;->getLocaleForAlbumCache()Ljava/util/Locale;

    move-result-object v2

    .line 162
    .local v2, locale:Ljava/util/Locale;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 163
    .local v0, defaultLocale:Ljava/util/Locale;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 164
    :cond_0
    sget-object v3, Lcom/ecareme/pixwe/cache/CacheService;->sAlbumCache:Lcom/ecareme/pixwe/media/DiskCache;

    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/DiskCache;->deleteAll()V

    .line 165
    invoke-static {v0}, Lcom/ecareme/pixwe/cache/CacheService;->putLocaleForAlbumCache(Ljava/util/Locale;)V

    .line 167
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.ecareme.pixwe.cache.action.CACHE"

    const/4 v4, 0x0

    const-class v5, Lcom/ecareme/pixwe/cache/CacheService;

    invoke-direct {v1, v3, v4, p0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "checkthumbnails"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 169
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 170
    return-void
.end method

.method public static final startNewThumbnailThread(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 797
    sget-object v0, Lcom/ecareme/pixwe/cache/CacheService;->THUMBNAIL_THREAD:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v1, "ThumbnailRefresh"

    new-instance v2, Lcom/ecareme/pixwe/cache/CacheService$3;

    invoke-direct {v2, p0}, Lcom/ecareme/pixwe/cache/CacheService$3;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/ecareme/pixwe/cache/CacheService;->restartThread(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 810
    return-void
.end method

.method private static syncCache(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const-wide/16 v4, -0x4

    const/4 v3, 0x1

    .line 378
    invoke-static {v3}, Lcom/ecareme/pixwe/cache/CacheService;->isCacheReady(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 380
    instance-of v0, p0, Lcom/ecareme/pixwe/media/Gallery;

    if-eqz v0, :cond_0

    .line 381
    invoke-static {p0}, Lcom/ecareme/pixwe/app/App;->get(Landroid/content/Context;)Lcom/ecareme/pixwe/app/App;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/ecareme/pixwe/app/App;->showToast(Ljava/lang/String;I)V

    .line 384
    :cond_0
    const-string v0, "CacheService"

    const-string v1, "Refreshing Cache for all items"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-static {p0}, Lcom/ecareme/pixwe/cache/CacheService;->refresh(Landroid/content/Context;)V

    .line 386
    sget-object v0, Lcom/ecareme/pixwe/cache/CacheService;->sAlbumCache:Lcom/ecareme/pixwe/media/DiskCache;

    const-wide/16 v1, -0x2

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/DiskCache;->delete(J)V

    .line 387
    sget-object v0, Lcom/ecareme/pixwe/cache/CacheService;->sAlbumCache:Lcom/ecareme/pixwe/media/DiskCache;

    invoke-virtual {v0, v4, v5}, Lcom/ecareme/pixwe/media/DiskCache;->delete(J)V

    .line 394
    :cond_1
    :goto_0
    return-void

    .line 388
    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ecareme/pixwe/cache/CacheService;->isCacheReady(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 390
    const-string v0, "CacheService"

    const-string v1, "Refreshing Cache for dirty items"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-static {p0}, Lcom/ecareme/pixwe/cache/CacheService;->refreshDirtySets(Landroid/content/Context;)V

    .line 392
    sget-object v0, Lcom/ecareme/pixwe/cache/CacheService;->sAlbumCache:Lcom/ecareme/pixwe/media/DiskCache;

    invoke-virtual {v0, v4, v5}, Lcom/ecareme/pixwe/media/DiskCache;->delete(J)V

    goto :goto_0
.end method

.method private static final toLongArray([B)[J
    .locals 7
    .parameter "data"

    .prologue
    .line 820
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 821
    .local v0, bBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v2

    .line 822
    .local v2, lBuffer:Ljava/nio/LongBuffer;
    invoke-virtual {v2}, Ljava/nio/LongBuffer;->capacity()I

    move-result v3

    .line 823
    .local v3, numLongs:I
    new-array v4, v3, [J

    .line 824
    .local v4, retVal:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 827
    return-object v4

    .line 825
    :cond_0
    invoke-virtual {v2, v1}, Ljava/nio/LongBuffer;->get(I)J

    move-result-wide v5

    aput-wide v5, v4, v1

    .line 824
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static final writeBitmapToCache(Lcom/ecareme/pixwe/media/DiskCache;JJLandroid/graphics/Bitmap;IIJ)[B
    .locals 17
    .parameter "thumbnailCache"
    .parameter "thumbId"
    .parameter "origId"
    .parameter "bitmap"
    .parameter "thumbnailWidth"
    .parameter "thumbnailHeight"
    .parameter "timestamp"

    .prologue
    .line 622
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 623
    .local v10, width:I
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 626
    .local v9, height:I
    div-int/lit8 v12, v10, 0x2

    .line 627
    .local v12, focusX:I
    div-int/lit8 v13, v9, 0x2

    .line 648
    .local v13, focusY:I
    mul-int v5, p6, v9

    mul-int v6, p7, v10

    if-ge v5, v6, :cond_0

    .line 650
    mul-int v5, p6, v9

    div-int v6, v5, p7

    .line 651
    .local v6, cropWidth:I
    const/4 v5, 0x0

    div-int/lit8 v7, v6, 0x2

    sub-int v7, v12, v7

    sub-int v8, v10, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 652
    .local v7, cropX:I
    const/4 v8, 0x0

    .line 653
    .local v8, cropY:I
    move v5, v9

    .line 654
    .local v5, cropHeight:I
    move/from16 v0, p7

    int-to-float v0, v0

    move v10, v0

    int-to-float v9, v9

    div-float v9, v10, v9

    .local v9, scaleFactor:F
    move v14, v9

    .end local v9           #scaleFactor:F
    .local v14, scaleFactor:F
    move v10, v8

    .end local v8           #cropY:I
    .local v10, cropY:I
    move v9, v7

    .end local v7           #cropX:I
    .local v9, cropX:I
    move v7, v6

    .end local v6           #cropWidth:I
    .local v7, cropWidth:I
    move v6, v5

    .line 663
    .end local v5           #cropHeight:I
    .local v6, cropHeight:I
    :goto_0
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p6

    move/from16 v1, p7

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 664
    .local v11, finalBitmap:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 665
    .local v5, canvas:Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 666
    .local v8, paint:Landroid/graphics/Paint;
    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Landroid/graphics/Paint;->setDither(Z)V

    .line 667
    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 668
    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 669
    new-instance v15, Landroid/graphics/Rect;

    add-int/2addr v7, v9

    add-int/2addr v6, v10

    invoke-direct {v15, v9, v10, v7, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local v6           #cropHeight:I
    .end local v7           #cropWidth:I
    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/16 v16, 0x0

    .line 670
    move-object v0, v6

    move v1, v7

    move/from16 v2, v16

    move/from16 v3, p6

    move/from16 v4, p7

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 669
    move-object v0, v5

    move-object/from16 v1, p5

    move-object v2, v15

    move-object v3, v6

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 671
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->recycle()V

    .line 674
    new-instance p5, Ljava/io/ByteArrayOutputStream;

    .end local p5
    const/16 p6, 0x4000

    invoke-direct/range {p5 .. p6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 675
    .end local p6
    .local p5, cacheOutput:Ljava/io/ByteArrayOutputStream;
    new-instance p6, Ljava/io/DataOutputStream;

    move-object/from16 v0, p6

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 676
    .local p6, dataOutput:Ljava/io/DataOutputStream;
    const/4 v8, 0x0

    check-cast v8, [B

    .line 678
    .local v8, retVal:[B
    :try_start_0
    move-object/from16 v0, p6

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 679
    sub-int p3, v12, v9

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 p3, v0

    mul-float p3, p3, v14

    move/from16 v0, p3

    float-to-int v0, v0

    move/from16 p3, v0

    move-object/from16 v0, p6

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 680
    .end local p3
    sub-int p3, v13, v10

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 p3, v0

    mul-float p3, p3, v14

    move/from16 v0, p3

    float-to-int v0, v0

    move/from16 p3, v0

    move-object/from16 v0, p6

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 681
    invoke-virtual/range {p6 .. p6}, Ljava/io/DataOutputStream;->flush()V

    .line 682
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p4, 0x50

    move-object v0, v11

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 683
    invoke-virtual/range {p5 .. p5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 684
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-wide/from16 v9, p8

    .line 685
    :try_start_1
    invoke-virtual/range {v5 .. v10}, Lcom/ecareme/pixwe/media/DiskCache;->put(J[BJ)V

    .line 684
    .end local v5           #canvas:Landroid/graphics/Canvas;
    .end local v9           #cropX:I
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 687
    :try_start_2
    invoke-virtual/range {p5 .. p5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 688
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 692
    .end local p0
    .end local p1
    :goto_1
    return-object v8

    .line 657
    .end local v8           #retVal:[B
    .end local v11           #finalBitmap:Landroid/graphics/Bitmap;
    .end local v14           #scaleFactor:F
    .local v9, height:I
    .local v10, width:I
    .restart local p0
    .restart local p1
    .restart local p3
    .local p5, bitmap:Landroid/graphics/Bitmap;
    .local p6, thumbnailWidth:I
    :cond_0
    mul-int v5, p7, v10

    div-int v5, v5, p6

    .line 658
    .local v5, cropHeight:I
    const/4 v6, 0x0

    div-int/lit8 v7, v5, 0x2

    sub-int v7, v13, v7

    sub-int v8, v9, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 659
    .local v8, cropY:I
    const/4 v7, 0x0

    .line 660
    .local v7, cropX:I
    move v6, v10

    .line 661
    .local v6, cropWidth:I
    move/from16 v0, p6

    int-to-float v0, v0

    move v9, v0

    int-to-float v10, v10

    div-float/2addr v9, v10

    .local v9, scaleFactor:F
    move v14, v9

    .end local v9           #scaleFactor:F
    .restart local v14       #scaleFactor:F
    move v10, v8

    .end local v8           #cropY:I
    .local v10, cropY:I
    move v9, v7

    .end local v7           #cropX:I
    .local v9, cropX:I
    move v7, v6

    .end local v6           #cropWidth:I
    .local v7, cropWidth:I
    move v6, v5

    .end local v5           #cropHeight:I
    .local v6, cropHeight:I
    goto/16 :goto_0

    .line 684
    .end local v6           #cropHeight:I
    .end local v7           #cropWidth:I
    .end local v9           #cropX:I
    .end local p1
    .end local p3
    .local v8, retVal:[B
    .restart local v11       #finalBitmap:Landroid/graphics/Bitmap;
    .local p5, cacheOutput:Ljava/io/ByteArrayOutputStream;
    .local p6, dataOutput:Ljava/io/DataOutputStream;
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 689
    :catch_0
    move-exception p0

    goto :goto_1
.end method

.method private static final writeItemsForASet(Lcom/ecareme/pixwe/media/MediaSet;)V
    .locals 13
    .parameter "set"

    .prologue
    .line 1182
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1183
    .local v6, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v7, Ljava/io/DataOutputStream;

    new-instance v0, Ljava/io/BufferedOutputStream;

    const/16 v1, 0x100

    invoke-direct {v0, v6, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v7, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1185
    .local v7, dos:Ljava/io/DataOutputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v11

    .line 1186
    .local v11, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 1187
    .local v12, numItems:I
    invoke-virtual {v7, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1188
    iget-wide v0, p0, Lcom/ecareme/pixwe/media/MediaSet;->mMinTimestamp:J

    invoke-virtual {v7, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1189
    iget-wide v0, p0, Lcom/ecareme/pixwe/media/MediaSet;->mMaxTimestamp:J

    invoke-virtual {v7, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1190
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-lt v9, v12, :cond_0

    .line 1211
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V

    .line 1212
    sget-object v0, Lcom/ecareme/pixwe/cache/CacheService;->sAlbumCache:Lcom/ecareme/pixwe/media/DiskCache;

    iget-wide v1, p0, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/ecareme/pixwe/media/DiskCache;->put(J[BJ)V

    .line 1213
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V

    .line 1219
    .end local v9           #i:I
    .end local v11           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    .end local v12           #numItems:I
    :goto_1
    return-void

    .line 1191
    .restart local v9       #i:I
    .restart local v11       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    .restart local v12       #numItems:I
    :cond_0
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ecareme/pixwe/media/MediaItem;

    .line 1192
    .local v10, item:Lcom/ecareme/pixwe/media/MediaItem;
    iget-wide v0, p0, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    sget v2, Lcom/ecareme/pixwe/media/LocalDataSource;->CAMERA_BUCKET_ID:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    sget v2, Lcom/ecareme/pixwe/media/LocalDataSource;->DOWNLOAD_BUCKET_ID:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 1195
    :cond_1
    sub-int v0, v12, v9

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #item:Lcom/ecareme/pixwe/media/MediaItem;
    check-cast v10, Lcom/ecareme/pixwe/media/MediaItem;

    .line 1197
    .restart local v10       #item:Lcom/ecareme/pixwe/media/MediaItem;
    :cond_2
    iget-wide v0, v10, Lcom/ecareme/pixwe/media/MediaItem;->mId:J

    invoke-virtual {v7, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1198
    iget-object v0, v10, Lcom/ecareme/pixwe/media/MediaItem;->mCaption:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/ecareme/pixwe/media/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 1199
    iget-object v0, v10, Lcom/ecareme/pixwe/media/MediaItem;->mMimeType:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/ecareme/pixwe/media/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 1200
    invoke-virtual {v10}, Lcom/ecareme/pixwe/media/MediaItem;->getMediaType()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1201
    iget-wide v0, v10, Lcom/ecareme/pixwe/media/MediaItem;->mLatitude:D

    invoke-virtual {v7, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 1202
    iget-wide v0, v10, Lcom/ecareme/pixwe/media/MediaItem;->mLongitude:D

    invoke-virtual {v7, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 1203
    iget-wide v0, v10, Lcom/ecareme/pixwe/media/MediaItem;->mDateTakenInMs:J

    invoke-virtual {v7, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1204
    iget-boolean v0, v10, Lcom/ecareme/pixwe/media/MediaItem;->mTriedRetrievingExifDateTaken:Z

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 1205
    iget-wide v0, v10, Lcom/ecareme/pixwe/media/MediaItem;->mDateAddedInSec:J

    invoke-virtual {v7, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1206
    iget-wide v0, v10, Lcom/ecareme/pixwe/media/MediaItem;->mDateModifiedInSec:J

    invoke-virtual {v7, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1207
    iget v0, v10, Lcom/ecareme/pixwe/media/MediaItem;->mDurationInSec:I

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1208
    iget v0, v10, Lcom/ecareme/pixwe/media/MediaItem;->mRotation:F

    float-to-int v0, v0

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1209
    iget-object v0, v10, Lcom/ecareme/pixwe/media/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/ecareme/pixwe/media/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1190
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1214
    .end local v9           #i:I
    .end local v10           #item:Lcom/ecareme/pixwe/media/MediaItem;
    .end local v11           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    .end local v12           #numItems:I
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 1215
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "CacheService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error writing to diskcache for set "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ecareme/pixwe/media/MediaSet;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    sget-object v0, Lcom/ecareme/pixwe/cache/CacheService;->sAlbumCache:Lcom/ecareme/pixwe/media/DiskCache;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/DiskCache;->deleteAll()V

    .line 1217
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/ecareme/pixwe/cache/CacheService;->putLocaleForAlbumCache(Ljava/util/Locale;)V

    goto/16 :goto_1
.end method

.method private static final writeItemsToCache(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ecareme/pixwe/media/MediaSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1171
    .local p0, sets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaSet;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1172
    .local v1, numSets:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 1178
    sget-object v2, Lcom/ecareme/pixwe/cache/CacheService;->sAlbumCache:Lcom/ecareme/pixwe/media/DiskCache;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/DiskCache;->flush()V

    .line 1179
    :cond_0
    return-void

    .line 1173
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1176
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ecareme/pixwe/media/MediaSet;

    invoke-static {v2}, Lcom/ecareme/pixwe/cache/CacheService;->writeItemsForASet(Lcom/ecareme/pixwe/media/MediaSet;)V

    .line 1172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static final writeSetsToCache(Ljava/util/ArrayList;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ecareme/pixwe/media/MediaSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1140
    .local p0, sets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaSet;>;"
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1141
    .local v6, bos:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1142
    .local v10, numSets:I
    new-instance v7, Ljava/io/DataOutputStream;

    new-instance v0, Ljava/io/BufferedOutputStream;

    const/16 v1, 0x100

    invoke-direct {v0, v6, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v7, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1144
    .local v7, dos:Ljava/io/DataOutputStream;
    :try_start_0
    invoke-virtual {v7, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1145
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-lt v9, v10, :cond_2

    .line 1155
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V

    .line 1156
    sget-object v0, Lcom/ecareme/pixwe/cache/CacheService;->sAlbumCache:Lcom/ecareme/pixwe/media/DiskCache;

    const-wide/16 v1, -0x1

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/ecareme/pixwe/media/DiskCache;->put(J[BJ)V

    .line 1157
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V

    .line 1158
    if-nez v10, :cond_0

    .line 1159
    sget-object v0, Lcom/ecareme/pixwe/cache/CacheService;->sAlbumCache:Lcom/ecareme/pixwe/media/DiskCache;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/DiskCache;->deleteAll()V

    .line 1160
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/ecareme/pixwe/cache/CacheService;->putLocaleForAlbumCache(Ljava/util/Locale;)V

    .line 1162
    :cond_0
    sget-object v0, Lcom/ecareme/pixwe/cache/CacheService;->sAlbumCache:Lcom/ecareme/pixwe/media/DiskCache;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/DiskCache;->flush()V

    .line 1168
    .end local v9           #i:I
    :cond_1
    :goto_1
    return-void

    .line 1146
    .restart local v9       #i:I
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1149
    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/ecareme/pixwe/media/MediaSet;

    .line 1150
    .local v11, set:Lcom/ecareme/pixwe/media/MediaSet;
    iget-wide v0, v11, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    invoke-virtual {v7, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1151
    iget-object v0, v11, Lcom/ecareme/pixwe/media/MediaSet;->mName:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/ecareme/pixwe/media/Utils;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 1152
    iget-boolean v0, v11, Lcom/ecareme/pixwe/media/MediaSet;->mHasImages:Z

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 1153
    iget-boolean v0, v11, Lcom/ecareme/pixwe/media/MediaSet;->mHasVideos:Z

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1145
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1163
    .end local v9           #i:I
    .end local v11           #set:Lcom/ecareme/pixwe/media/MediaSet;
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 1164
    .local v8, e:Ljava/io/IOException;
    const-string v0, "CacheService"

    const-string v1, "Error writing albums to diskcache."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    sget-object v0, Lcom/ecareme/pixwe/cache/CacheService;->sAlbumCache:Lcom/ecareme/pixwe/media/DiskCache;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/DiskCache;->deleteAll()V

    .line 1166
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/ecareme/pixwe/cache/CacheService;->putLocaleForAlbumCache(Ljava/util/Locale;)V

    goto :goto_1
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 702
    const-string v2, "CacheService"

    const-string v3, "Starting CacheService"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bad_removal"

    if-ne v2, v3, :cond_0

    .line 704
    sget-object v2, Lcom/ecareme/pixwe/cache/CacheService;->sAlbumCache:Lcom/ecareme/pixwe/media/DiskCache;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/DiskCache;->deleteAll()V

    .line 705
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Lcom/ecareme/pixwe/cache/CacheService;->putLocaleForAlbumCache(Ljava/util/Locale;)V

    .line 707
    :cond_0
    invoke-static {}, Lcom/ecareme/pixwe/cache/CacheService;->getLocaleForAlbumCache()Ljava/util/Locale;

    move-result-object v1

    .line 708
    .local v1, locale:Ljava/util/Locale;
    if-eqz v1, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 712
    :cond_1
    invoke-static {}, Lcom/ecareme/pixwe/cache/CacheService;->markDirty()V

    .line 714
    :cond_2
    const-string v2, "checkthumbnails"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 715
    invoke-static {p0}, Lcom/ecareme/pixwe/cache/CacheService;->startNewThumbnailThread(Landroid/content/Context;)V

    .line 722
    :cond_3
    :goto_0
    return-void

    .line 717
    :cond_4
    sget-object v2, Lcom/ecareme/pixwe/cache/CacheService;->THUMBNAIL_THREAD:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 718
    .local v0, existingThread:Ljava/lang/Thread;
    if-eqz v0, :cond_3

    .line 719
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

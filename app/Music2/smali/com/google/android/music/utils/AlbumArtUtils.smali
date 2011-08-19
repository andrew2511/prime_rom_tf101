.class public Lcom/google/android/music/utils/AlbumArtUtils;
.super Ljava/lang/Object;
.source "AlbumArtUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;,
        Lcom/google/android/music/utils/AlbumArtUtils$FastBitmapDrawable;,
        Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;
    }
.end annotation


# static fields
.field private static CACHE_REQUESTS_TO_RESIZE:I = 0x0

.field private static final CACHE_REQUESTS_TO_RESIZE_DIFF:I = 0xc8

.field private static final CACHE_SIZES:[I = null

.field private static final DEBUG_CREATE_HEAP_DUMP_WHEN_OUT_OF_MEMORY:Z = true

.field private static final DEBUG_CYCLE_FAUX_ART:Z = false

.field private static final DEBUG_FORCE_FAUX_ART:Z = false

.field public static final FAUX_ALBUM:I = 0x0

.field public static final FAUX_ALL_SONGS:I = 0x2

.field public static final FAUX_PLAYLIST:I = 0x1

.field public static final FAUX_SHUFFLE_ALL:I = 0x3

.field private static final MAX_IMAGE_SIZE_TO_CACHE:I = 0x64

.field private static final MIN_CACHE_HITS_TO_CACHE:I = 0x3

.field private static final NUMBER_ALBUM_ART_SIZES:I = 0x5

.field private static final TAG:Ljava/lang/String; = "AlbumArtUtils"

.field public static final UNKNOW_ALBUM_ID:J = -0x1L

.field private static mAlbumLoadingBitmap:Landroid/graphics/Bitmap;

.field private static mShuffleBadge:Landroid/graphics/Bitmap;

.field private static sArtworkListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

.field private static sCachedRezinBitmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/graphics/Point;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static final sColorizedArtCache:Lcom/google/android/music/utils/LruSynchronizedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/music/utils/LruSynchronizedCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFauxGradientPalette:[I

.field private static final sFauxPalette:[I

.field private static sReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private static sReverseArtListenerCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sSizeCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/music/utils/LruCache",
            "<",
            "Ljava/lang/Long;",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sSizeCacheRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static sTotalSizeCacheRequests:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 64
    const/16 v0, 0x64

    sput v0, Lcom/google/android/music/utils/AlbumArtUtils;->CACHE_REQUESTS_TO_RESIZE:I

    .line 76
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->CACHE_SIZES:[I

    .line 83
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sSizeCache:Ljava/util/HashMap;

    .line 93
    sput v1, Lcom/google/android/music/utils/AlbumArtUtils;->sTotalSizeCacheRequests:I

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sSizeCacheRequests:Ljava/util/HashMap;

    .line 100
    new-instance v0, Lcom/google/android/music/utils/LruSynchronizedCache;

    invoke-direct {v0, v4}, Lcom/google/android/music/utils/LruSynchronizedCache;-><init>(I)V

    sput-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sColorizedArtCache:Lcom/google/android/music/utils/LruSynchronizedCache;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sArtworkListeners:Ljava/util/HashMap;

    .line 106
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sCachedRezinBitmap:Ljava/util/HashMap;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sReverseArtListenerCache:Ljava/util/HashMap;

    .line 125
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sFauxPalette:[I

    .line 130
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sFauxGradientPalette:[I

    .line 139
    sget-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 140
    sget-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 141
    sget-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 142
    return-void

    .line 76
    :array_0
    .array-data 0x4
        0x64t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 125
    :array_1
    .array-data 0x4
        0x68t 0x68t 0x68t 0xfft
        0x2ct 0x6dt 0xa9t 0xfft
        0x4at 0x47t 0xaet 0xfft
        0x93t 0x5dt 0x88t 0xfft
        0xa7t 0x6at 0x6at 0xfft
        0x8ft 0x5bt 0x30t 0xfft
        0x7et 0x7dt 0x3ct 0xfft
        0x2at 0x9ft 0x75t 0xfft
        0x3ct 0x97t 0xb6t 0xfft
        0xb6t 0xb6t 0xb6t 0xfft
        0x7at 0xa9t 0xd9t 0xfft
        0xaat 0xa7t 0xd9t 0xfft
        0xcft 0xa4t 0xc7t 0xfft
        0xe3t 0xa4t 0xa6t 0xfft
        0xddt 0xb7t 0x9at 0xfft
        0xcbt 0xc7t 0x8ft 0xfft
        0x78t 0xcdt 0xaft 0xfft
        0x8ct 0xc5t 0xdbt 0xfft
    .end array-data

    .line 130
    :array_2
    .array-data 0x4
        0xb8t 0xa9t 0x9et 0xfft
        0x6bt 0x62t 0x54t 0xfft
        0x6ct 0x92t 0xb3t 0xfft
        0x38t 0x4et 0x87t 0xfft
        0x72t 0xc5t 0xd8t 0xfft
        0x2dt 0x6bt 0x93t 0xfft
        0x72t 0xc5t 0xd8t 0xfft
        0x2dt 0x6bt 0x93t 0xfft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1015
    return-void
.end method

.method static synthetic access$300()V
    .locals 0

    .prologue
    .line 48
    invoke-static {}, Lcom/google/android/music/utils/AlbumArtUtils;->resizeCaches()V

    return-void
.end method

.method private static cleanArtListenerCache()V
    .locals 8

    .prologue
    .line 899
    sget-object v6, Lcom/google/android/music/utils/AlbumArtUtils;->sArtworkListeners:Ljava/util/HashMap;

    monitor-enter v6

    .line 901
    :cond_0
    :try_start_0
    sget-object v7, Lcom/google/android/music/utils/AlbumArtUtils;->sReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v7}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v5

    .local v5, ref:Ljava/lang/ref/Reference;,"Ljava/lang/ref/Reference<+Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;"
    if-eqz v5, :cond_4

    .line 902
    sget-object v7, Lcom/google/android/music/utils/AlbumArtUtils;->sReverseArtListenerCache:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 903
    .local v1, albumIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    if-eqz v1, :cond_0

    .line 904
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 905
    .local v0, albumId:Ljava/lang/Long;
    sget-object v7, Lcom/google/android/music/utils/AlbumArtUtils;->sArtworkListeners:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    .line 907
    .local v4, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    if-eqz v4, :cond_1

    .line 908
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 909
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 910
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v5, :cond_2

    .line 911
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 921
    .end local v0           #albumId:Ljava/lang/Long;
    .end local v1           #albumIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    .end local v4           #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    .end local v5           #ref:Ljava/lang/ref/Reference;,"Ljava/lang/ref/Reference<+Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;"
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 914
    .restart local v0       #albumId:Ljava/lang/Long;
    .restart local v1       #albumIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    .restart local v4       #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    .restart local v5       #ref:Ljava/lang/ref/Reference;,"Ljava/lang/ref/Reference<+Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;"
    :cond_3
    :try_start_1
    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 915
    sget-object v7, Lcom/google/android/music/utils/AlbumArtUtils;->sArtworkListeners:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 921
    .end local v0           #albumId:Ljava/lang/Long;
    .end local v1           #albumIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    .end local v4           #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    :cond_4
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 922
    return-void
.end method

.method private static createFauxAlbumArt(Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "context"
    .parameter "style"
    .parameter "drawLabels"
    .parameter "albumId"
    .parameter "w"
    .parameter "h"
    .parameter "mainLabel"
    .parameter "subLabel"

    .prologue
    .line 594
    const/16 v0, 0x80

    if-lt p5, v0, :cond_0

    const/16 v0, 0x80

    if-ge p6, v0, :cond_1

    .line 595
    :cond_0
    const/16 v5, 0x80

    const/16 v6, 0x80

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v8}, Lcom/google/android/music/utils/AlbumArtUtils;->createFauxAlbumArt2(Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 596
    .local p0, bm:Landroid/graphics/Bitmap;
    invoke-static {p0, p5, p6}, Lcom/google/android/music/utils/AlbumArtUtils;->scaleToFit(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 598
    .end local p0           #bm:Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .local p0, context:Landroid/content/Context;
    :cond_1
    invoke-static/range {p0 .. p8}, Lcom/google/android/music/utils/AlbumArtUtils;->createFauxAlbumArt2(Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method private static createFauxAlbumArt2(Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "context"
    .parameter "style"
    .parameter "drawLabels"
    .parameter "albumId"
    .parameter "w"
    .parameter "h"
    .parameter "mainLabel"
    .parameter "subLabel"

    .prologue
    .line 603
    const/4 v3, 0x0

    .line 605
    .local v3, bm:Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p5

    move/from16 v1, p6

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v13, v3

    .line 610
    .end local v3           #bm:Landroid/graphics/Bitmap;
    .local v13, bm:Landroid/graphics/Bitmap;
    :goto_0
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v3, canvas:Landroid/graphics/Canvas;
    move-object v4, p0

    move v5, p1

    move/from16 v6, p2

    move-wide/from16 v7, p3

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    .line 611
    invoke-static/range {v3 .. v12}, Lcom/google/android/music/utils/AlbumArtUtils;->drawFauxAlbumArt(Landroid/graphics/Canvas;Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;)V

    .line 612
    return-object v13

    .line 607
    .end local v13           #bm:Landroid/graphics/Bitmap;
    .local v3, bm:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v4

    .line 608
    .local v4, e:Ljava/lang/OutOfMemoryError;
    move-object v0, v4

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-static {v0, v1, v2}, Lcom/google/android/music/utils/AlbumArtUtils;->reportAndRethrow(Ljava/lang/OutOfMemoryError;II)V

    move-object v13, v3

    .end local v3           #bm:Landroid/graphics/Bitmap;
    .restart local v13       #bm:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static draw(Landroid/graphics/Canvas;Landroid/content/Context;JIILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "canvas"
    .parameter "context"
    .parameter "album_id"
    .parameter "w"
    .parameter "h"
    .parameter "album"
    .parameter "artist"

    .prologue
    .line 185
    invoke-static/range {p0 .. p5}, Lcom/google/android/music/utils/AlbumArtUtils;->drawArtwork(Landroid/graphics/Canvas;Landroid/content/Context;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 189
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-static/range {v0 .. v9}, Lcom/google/android/music/utils/AlbumArtUtils;->drawFauxAlbumArt(Landroid/graphics/Canvas;Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static drawArtwork(Landroid/graphics/Canvas;Landroid/content/Context;JII)Z
    .locals 12
    .parameter "canvas"
    .parameter "context"
    .parameter "album_id"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 393
    const/4 v6, 0x2

    new-array v6, v6, [I

    .line 394
    .local v6, originalBounds:[I
    move-object v0, p1

    move-wide v1, p2

    move/from16 v3, p4

    move/from16 v4, p5

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/utils/AlbumArtUtils;->resolveArtworkRaw(Landroid/content/Context;JII[I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 395
    .local p2, b:Landroid/graphics/Bitmap;
    if-nez p2, :cond_0

    .line 396
    const/4 p0, 0x0

    .line 426
    .end local p0
    .end local p1
    .end local p4
    .end local p5
    :goto_0
    return p0

    .line 401
    .restart local p0
    .restart local p1
    .restart local p4
    .restart local p5
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    .line 402
    .local p3, bitmapWidth:I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    .line 404
    .local p1, bitmapHeight:I
    new-instance v9, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v9, v7, v8, p3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 405
    .local v9, src:Landroid/graphics/Rect;
    const/4 v8, 0x0

    .line 406
    .local v8, paint:Landroid/graphics/Paint;
    new-instance v7, Landroid/graphics/RectF;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 p4, v0

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 p5, v0

    move-object v0, v7

    move v1, v10

    move v2, v11

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 410
    .end local p4
    .end local p5
    .local v7, dst:Landroid/graphics/RectF;
    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 411
    .local p4, minSize:I
    const/4 p3, 0x0

    .line 412
    .local p3, crop:I
    const/16 p1, 0xc8

    .line 413
    .local p1, CROP_SIZE_THRESHOLD:I
    const/4 p1, 0x3

    .line 414
    .local p1, CROP_PIXEL_AMOUNT:I
    const/4 p1, 0x0

    aget p1, v6, p1

    .end local p1           #CROP_PIXEL_AMOUNT:I
    const/16 p5, 0x1

    aget p5, v6, p5

    move v0, p1

    move/from16 v1, p5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 415
    .local p1, minOriginalSize:I
    const/16 p5, 0xc8

    move v0, p1

    move/from16 v1, p5

    if-lt v0, v1, :cond_2

    const/16 p1, 0xc

    move/from16 v0, p4

    move v1, p1

    if-le v0, v1, :cond_2

    .line 416
    .end local p1           #minOriginalSize:I
    mul-int/lit8 p1, p4, 0x3

    add-int/lit16 p1, p1, 0xc8

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    div-int/lit16 p1, p1, 0xc8

    .line 418
    .end local p3           #crop:I
    .local p1, crop:I
    :goto_1
    if-lez p1, :cond_1

    .line 419
    invoke-virtual {v9, p1, p1}, Landroid/graphics/Rect;->inset(II)V

    .line 420
    new-instance p1, Landroid/graphics/Paint;

    .end local p1           #crop:I
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 421
    .end local v8           #paint:Landroid/graphics/Paint;
    .local p1, paint:Landroid/graphics/Paint;
    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 424
    :goto_2
    invoke-virtual {p0, p2, v9, v7, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 425
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 426
    const/4 p0, 0x1

    goto :goto_0

    .restart local v8       #paint:Landroid/graphics/Paint;
    .local p1, crop:I
    :cond_1
    move-object p1, v8

    .end local v8           #paint:Landroid/graphics/Paint;
    .local p1, paint:Landroid/graphics/Paint;
    goto :goto_2

    .end local p1           #paint:Landroid/graphics/Paint;
    .restart local v8       #paint:Landroid/graphics/Paint;
    .restart local p3       #crop:I
    :cond_2
    move p1, p3

    .end local p3           #crop:I
    .local p1, crop:I
    goto :goto_1
.end method

.method public static drawFauxAlbumArt(Landroid/graphics/Canvas;Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;)V
    .locals 23
    .parameter "canvas"
    .parameter "context"
    .parameter "style"
    .parameter "drawLabels"
    .parameter "albumId"
    .parameter "w"
    .parameter "h"
    .parameter "mainLabel"
    .parameter "subLabel"

    .prologue
    .line 618
    new-instance v7, Ljava/util/Random;

    move-object v0, v7

    move-wide/from16 v1, p4

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 619
    .local v7, random:Ljava/util/Random;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 626
    .local v6, paint:Landroid/graphics/Paint;
    if-eqz p3, :cond_0

    .line 627
    const/16 p4, 0x1

    move/from16 v0, p2

    move/from16 v1, p4

    if-ne v0, v1, :cond_1

    .line 628
    .end local p4
    const p4, 0x7f0c009f

    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p9

    .line 633
    :cond_0
    :goto_0
    move/from16 v0, p7

    mul-int/lit16 v0, v0, 0xc8

    move/from16 p4, v0

    move/from16 v0, p4

    div-int/lit16 v0, v0, 0x258

    move v9, v0

    .line 634
    .local v9, bannerHeight:I
    mul-int/lit8 p4, p7, 0xe

    move/from16 v0, p4

    div-int/lit16 v0, v0, 0x258

    move/from16 p4, v0

    .line 635
    .local p4, bannerShadowHeight:I
    packed-switch p2, :pswitch_data_0

    .line 683
    new-instance p0, Ljava/lang/RuntimeException;

    .end local p0
    const-string p1, "Unknown faux style"

    .end local p1
    invoke-direct/range {p0 .. p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 629
    .end local v9           #bannerHeight:I
    .end local p4           #bannerShadowHeight:I
    .restart local p0
    .restart local p1
    :cond_1
    const/16 p4, 0x2

    move/from16 v0, p2

    move/from16 v1, p4

    if-ne v0, v1, :cond_0

    .line 630
    const p4, 0x7f0c009e

    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p9

    goto :goto_0

    .line 637
    .restart local v9       #bannerHeight:I
    .restart local p4       #bannerShadowHeight:I
    :pswitch_0
    const/4 v8, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v5, p0

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-static/range {v5 .. v14}, Lcom/google/android/music/utils/AlbumArtUtils;->genQuilt(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/Random;IIIIIII)V

    .line 686
    .end local v7           #random:Ljava/util/Random;
    .end local p1
    :goto_1
    if-eqz p3, :cond_3

    const/16 p1, 0x3

    move/from16 v0, p2

    move/from16 v1, p1

    if-eq v0, v1, :cond_3

    .line 687
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v11, p0

    move/from16 v14, p6

    move v15, v9

    move/from16 v16, p4

    move/from16 v17, p2

    invoke-static/range {v11 .. v17}, Lcom/google/android/music/utils/AlbumArtUtils;->genBannerBackground(Landroid/graphics/Canvas;IIIIII)V

    .line 688
    if-eqz p8, :cond_2

    .line 689
    mul-int/lit8 p1, p6, 0x2c

    move/from16 v0, p1

    div-int/lit16 v0, v0, 0x258

    move v13, v0

    .line 690
    .local v13, x0:I
    mul-int/lit8 p1, p7, 0x22

    move/from16 v0, p1

    div-int/lit16 v0, v0, 0x258

    move v14, v0

    .line 691
    .local v14, y0:I
    move/from16 v0, p6

    mul-int/lit16 v0, v0, 0x200

    move/from16 p1, v0

    move/from16 v0, p1

    div-int/lit16 v0, v0, 0x258

    move v12, v0

    .line 692
    .local v12, linew:I
    mul-int/lit8 p1, p7, 0x6d

    move/from16 v0, p1

    div-int/lit16 v0, v0, 0x4b0

    move v15, v0

    .line 693
    .local v15, fontHeight:I
    mul-int/lit8 p1, p6, 0x60

    move/from16 v0, p1

    div-int/lit16 v0, v0, 0x258

    move/from16 v19, v0

    .line 695
    .local v19, fadeWidth:I
    const/16 v16, 0x0

    const/high16 v18, -0x2600

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v11, p0

    move-object/from16 v17, p8

    invoke-static/range {v11 .. v22}, Lcom/google/android/music/utils/AlbumArtUtils;->renderFauxLabel(Landroid/graphics/Canvas;IIIIZLjava/lang/String;IIZII)V

    .line 698
    .end local v12           #linew:I
    .end local v13           #x0:I
    .end local v14           #y0:I
    .end local v15           #fontHeight:I
    .end local v19           #fadeWidth:I
    :cond_2
    if-eqz p9, :cond_3

    .line 699
    mul-int/lit8 p1, p6, 0x2c

    move/from16 v0, p1

    div-int/lit16 v0, v0, 0x258

    move v13, v0

    .line 700
    .restart local v13       #x0:I
    move/from16 v0, p7

    mul-int/lit16 v0, v0, 0x84

    move/from16 p1, v0

    move/from16 v0, p1

    div-int/lit16 v0, v0, 0x258

    move v14, v0

    .line 701
    .restart local v14       #y0:I
    move/from16 v0, p6

    mul-int/lit16 v0, v0, 0x200

    move/from16 p1, v0

    move/from16 v0, p1

    div-int/lit16 v0, v0, 0x258

    move v12, v0

    .line 702
    .restart local v12       #linew:I
    move/from16 v0, p6

    mul-int/lit16 v0, v0, 0x1d0

    move/from16 p1, v0

    move/from16 v0, p1

    div-int/lit16 v0, v0, 0x258

    move/from16 v22, v0

    .line 703
    .local v22, overrideW:I
    move/from16 v0, p6

    mul-int/lit16 v0, v0, 0x1fb

    move/from16 p1, v0

    move/from16 v0, p1

    div-int/lit16 v0, v0, 0x258

    move/from16 v21, v0

    .line 704
    .local v21, rightMargin:I
    mul-int/lit8 p1, p7, 0x22

    move/from16 v0, p1

    div-int/lit16 v0, v0, 0x258

    move v15, v0

    .line 705
    .restart local v15       #fontHeight:I
    mul-int/lit8 p1, p6, 0x30

    move/from16 v0, p1

    div-int/lit16 v0, v0, 0x258

    move/from16 v19, v0

    .line 707
    .restart local v19       #fadeWidth:I
    const/16 v16, 0x1

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v17

    const v18, -0x40000001

    const/16 v20, 0x1

    move-object/from16 v11, p0

    invoke-static/range {v11 .. v22}, Lcom/google/android/music/utils/AlbumArtUtils;->renderFauxLabel(Landroid/graphics/Canvas;IIIIZLjava/lang/String;IIZII)V

    .line 711
    .end local v12           #linew:I
    .end local v13           #x0:I
    .end local v14           #y0:I
    .end local v15           #fontHeight:I
    .end local v19           #fadeWidth:I
    .end local v21           #rightMargin:I
    .end local v22           #overrideW:I
    :cond_3
    return-void

    .line 640
    .restart local v7       #random:Ljava/util/Random;
    .restart local p1
    :pswitch_1
    const/4 v8, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x3

    const/4 v14, 0x0

    move-object/from16 v5, p0

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-static/range {v5 .. v14}, Lcom/google/android/music/utils/AlbumArtUtils;->genQuilt(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/Random;IIIIIII)V

    goto/16 :goto_1

    .line 643
    :pswitch_2
    const/4 v8, 0x0

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x0

    move-object/from16 v5, p0

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-static/range {v5 .. v14}, Lcom/google/android/music/utils/AlbumArtUtils;->genQuilt(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/Random;IIIIIII)V

    goto/16 :goto_1

    .line 647
    :pswitch_3
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x4

    const/16 v18, 0x4

    const/16 v19, 0x660

    move-object/from16 v10, p0

    move-object v11, v6

    move-object v12, v7

    move/from16 v15, p6

    move/from16 v16, p7

    invoke-static/range {v10 .. v19}, Lcom/google/android/music/utils/AlbumArtUtils;->genQuilt(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/Random;IIIIIII)V

    .line 649
    move/from16 v0, p6

    mul-int/lit16 v0, v0, 0x96

    move/from16 p5, v0

    move/from16 v0, p5

    div-int/lit16 v0, v0, 0x258

    move/from16 v18, v0

    .line 650
    .local v18, x0:I
    move/from16 v0, p7

    mul-int/lit16 v0, v0, 0x96

    move/from16 p5, v0

    move/from16 v0, p5

    div-int/lit16 v0, v0, 0x258

    move/from16 v20, v0

    .line 651
    .local v20, y0:I
    move/from16 v0, p6

    mul-int/lit16 v0, v0, 0x1c2

    move/from16 p5, v0

    move/from16 v0, p5

    div-int/lit16 v0, v0, 0x258

    move/from16 v19, v0

    .line 652
    .local v19, x1:I
    move/from16 v0, p7

    mul-int/lit16 v0, v0, 0x1c2

    move/from16 p5, v0

    move/from16 v0, p5

    div-int/lit16 v0, v0, 0x258

    move/from16 v21, v0

    .line 653
    .local v21, y1:I
    mul-int/lit8 p5, p6, 0xe

    move/from16 v0, p5

    div-int/lit16 v0, v0, 0x258

    move v5, v0

    .line 654
    .local v5, shadowWidth:I
    mul-int/lit8 p5, p6, 0xe

    move/from16 v0, p5

    div-int/lit16 v0, v0, 0x258

    move/from16 p5, v0

    .line 655
    .local p5, shadowHeight:I
    new-instance v10, Landroid/graphics/LinearGradient;

    move/from16 v0, v18

    int-to-float v0, v0

    move v11, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move v12, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move v13, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move v14, v0

    sget-object v7, Lcom/google/android/music/utils/AlbumArtUtils;->sFauxGradientPalette:[I

    .end local v7           #random:Ljava/util/Random;
    const/4 v8, 0x6

    aget v15, v7, v8

    sget-object v7, Lcom/google/android/music/utils/AlbumArtUtils;->sFauxGradientPalette:[I

    const/4 v8, 0x7

    aget v16, v7, v8

    sget-object v17, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 658
    .local v10, gradient:Landroid/graphics/LinearGradient;
    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 659
    move/from16 v0, v18

    int-to-float v0, v0

    move v12, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move v13, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move v14, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move v15, v0

    move-object/from16 v11, p0

    move-object/from16 v16, v6

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 660
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 661
    const/high16 v7, 0x5500

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 662
    sub-int v7, v18, v5

    .line 663
    .local v7, sx0:I
    sub-int v8, v20, p5

    .line 664
    .local v8, sy0:I
    add-int v5, v5, v19

    .line 665
    .local v5, sx1:I
    add-int p5, p5, v21

    .line 666
    .local p5, sy1:I
    int-to-float v12, v7

    int-to-float v13, v8

    int-to-float v14, v5

    move/from16 v0, v20

    int-to-float v0, v0

    move v15, v0

    move-object/from16 v11, p0

    move-object/from16 v16, v6

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 667
    int-to-float v12, v7

    move/from16 v0, v20

    int-to-float v0, v0

    move v13, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move v14, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move v15, v0

    move-object/from16 v11, p0

    move-object/from16 v16, v6

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 668
    move/from16 v0, v19

    int-to-float v0, v0

    move v12, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move v13, v0

    int-to-float v14, v5

    move/from16 v0, v21

    int-to-float v0, v0

    move v15, v0

    move-object/from16 v11, p0

    move-object/from16 v16, v6

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 669
    int-to-float v12, v7

    move/from16 v0, v21

    int-to-float v0, v0

    move v13, v0

    int-to-float v14, v5

    move/from16 v0, p5

    int-to-float v0, v0

    move v15, v0

    move-object/from16 v11, p0

    move-object/from16 v16, v6

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 671
    sget-object p5, Lcom/google/android/music/utils/AlbumArtUtils;->mShuffleBadge:Landroid/graphics/Bitmap;

    .end local p5           #sy1:I
    if-nez p5, :cond_4

    .line 672
    const p5, 0x7f02015e

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/google/android/music/utils/AlbumArtUtils;->getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .end local p1
    sput-object p1, Lcom/google/android/music/utils/AlbumArtUtils;->mShuffleBadge:Landroid/graphics/Bitmap;

    .line 674
    :cond_4
    move/from16 v0, p6

    mul-int/lit16 v0, v0, 0xe1

    move/from16 p1, v0

    move/from16 v0, p1

    div-int/lit16 v0, v0, 0x258

    move/from16 p1, v0

    .line 675
    .local p1, bx0:I
    move/from16 v0, p7

    mul-int/lit16 v0, v0, 0xe1

    move/from16 p5, v0

    move/from16 v0, p5

    div-int/lit16 v0, v0, 0x258

    move v5, v0

    .line 676
    .local v5, by0:I
    move/from16 v0, p6

    mul-int/lit16 v0, v0, 0x177

    move/from16 p5, v0

    move/from16 v0, p5

    div-int/lit16 v0, v0, 0x258

    move/from16 p5, v0

    .line 677
    .local p5, bx1:I
    move/from16 v0, p7

    mul-int/lit16 v0, v0, 0x177

    move v7, v0

    div-int/lit16 v7, v7, 0x258

    .line 678
    .local v7, by1:I
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 679
    .end local v8           #sy0:I
    sget-object v8, Lcom/google/android/music/utils/AlbumArtUtils;->mShuffleBadge:Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    new-instance v11, Landroid/graphics/Rect;

    .end local v10           #gradient:Landroid/graphics/LinearGradient;
    move-object v0, v11

    move/from16 v1, p1

    move v2, v5

    move/from16 v3, p5

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v10

    move-object v3, v11

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 635
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static genBannerBackground(Landroid/graphics/Canvas;IIIIII)V
    .locals 9
    .parameter "canvas"
    .parameter "x0"
    .parameter "y0"
    .parameter "x1"
    .parameter "y1"
    .parameter "shadowHeight"
    .parameter "style"

    .prologue
    .line 715
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 716
    .local v8, paint:Landroid/graphics/Paint;
    mul-int/lit8 p6, p6, 0x2

    .line 717
    .local p6, base:I
    new-instance v0, Landroid/graphics/LinearGradient;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p2

    sget-object v5, Lcom/google/android/music/utils/AlbumArtUtils;->sFauxGradientPalette:[I

    aget v5, v5, p6

    sget-object v6, Lcom/google/android/music/utils/AlbumArtUtils;->sFauxGradientPalette:[I

    add-int/lit8 p6, p6, 0x1

    aget v6, v6, p6

    .end local p6           #base:I
    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 719
    .local v0, gradient:Landroid/graphics/LinearGradient;
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 720
    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    int-to-float v5, p4

    move-object v1, p0

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 721
    const/4 p2, 0x0

    invoke-virtual {v8, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 722
    .end local p2
    const/high16 p2, 0x5500

    invoke-virtual {v8, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 723
    int-to-float v2, p1

    int-to-float v3, p4

    int-to-float v4, p3

    add-int p1, p4, p5

    int-to-float v5, p1

    move-object v1, p0

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 724
    .end local p1
    return-void
.end method

.method private static genQuilt(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/Random;IIIIIII)V
    .locals 17
    .parameter "canvas"
    .parameter "paint"
    .parameter "random"
    .parameter "x0"
    .parameter "y0"
    .parameter "x1"
    .parameter "y1"
    .parameter "wc"
    .parameter "hc"
    .parameter "skipMask"

    .prologue
    .line 742
    mul-int v4, p7, p8

    new-array v10, v4, [I

    .line 743
    .local v10, chosen:[I
    sub-int v4, p5, p3

    div-int v14, v4, p7

    .line 744
    .local v14, squareWidth:I
    sub-int v4, p6, p4

    div-int v13, v4, p8

    .line 745
    .local v13, squareHeight:I
    move/from16 v4, p4

    .line 746
    .local v4, y:I
    const/16 p4, 0x0

    .local p4, j:I
    move/from16 v12, p4

    .end local p4           #j:I
    .local v12, j:I
    move/from16 v16, v4

    .end local v4           #y:I
    .local v16, y:I
    :goto_0
    move v0, v12

    move/from16 v1, p8

    if-ge v0, v1, :cond_6

    .line 747
    move/from16 v4, p3

    .line 748
    .local v4, x:I
    const/16 p4, 0x0

    .local p4, i:I
    move/from16 v11, p4

    .end local p4           #i:I
    .local v11, i:I
    move v15, v4

    .end local v4           #x:I
    .local v15, x:I
    :goto_1
    move v0, v11

    move/from16 v1, p7

    if-ge v0, v1, :cond_5

    .line 749
    move v0, v11

    move v1, v12

    move/from16 v2, p7

    move/from16 v3, p9

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/music/utils/AlbumArtUtils;->shouldSkip(IIII)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 765
    :goto_2
    add-int v4, v15, v14

    .line 748
    .end local v15           #x:I
    .restart local v4       #x:I
    add-int/lit8 p4, v11, 0x1

    .end local v11           #i:I
    .restart local p4       #i:I
    move/from16 v11, p4

    .end local p4           #i:I
    .restart local v11       #i:I
    move v15, v4

    .end local v4           #x:I
    .restart local v15       #x:I
    goto :goto_1

    .line 754
    :cond_0
    sget-object p4, Lcom/google/android/music/utils/AlbumArtUtils;->sFauxPalette:[I

    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 p4, v0

    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p4

    .line 757
    .local p4, color:I
    if-lez v12, :cond_1

    const/4 v4, 0x1

    sub-int v4, v12, v4

    move v0, v11

    move v1, v4

    move/from16 v2, p7

    move/from16 v3, p9

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/music/utils/AlbumArtUtils;->shouldSkip(IIII)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    sub-int v4, v12, v4

    mul-int v4, v4, p7

    add-int/2addr v4, v11

    aget v4, v10, v4

    move v0, v4

    move/from16 v1, p4

    if-eq v0, v1, :cond_0

    :cond_1
    if-lez v11, :cond_2

    const/4 v4, 0x1

    sub-int v4, v11, v4

    move v0, v4

    move v1, v12

    move/from16 v2, p7

    move/from16 v3, p9

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/music/utils/AlbumArtUtils;->shouldSkip(IIII)Z

    move-result v4

    if-nez v4, :cond_2

    mul-int v4, v12, p7

    const/4 v5, 0x1

    sub-int v5, v11, v5

    add-int/2addr v4, v5

    aget v4, v10, v4

    move v0, v4

    move/from16 v1, p4

    if-eq v0, v1, :cond_0

    .line 759
    :cond_2
    mul-int v4, v12, p7

    add-int/2addr v4, v11

    aput p4, v10, v4

    .line 760
    sget-object v4, Lcom/google/android/music/utils/AlbumArtUtils;->sFauxPalette:[I

    aget p4, v4, p4

    .end local p4           #color:I
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 761
    int-to-float v5, v15

    move/from16 v0, v16

    int-to-float v0, v0

    move v6, v0

    const/16 p4, 0x1

    sub-int p4, p7, p4

    move v0, v11

    move/from16 v1, p4

    if-ge v0, v1, :cond_3

    add-int p4, v15, v14

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 p4, v0

    move/from16 v7, p4

    :goto_3
    const/16 p4, 0x1

    sub-int p4, p8, p4

    move v0, v12

    move/from16 v1, p4

    if-ge v0, v1, :cond_4

    add-int p4, v16, v13

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 p4, v0

    move/from16 v8, p4

    :goto_4
    move-object/from16 v4, p0

    move-object/from16 v9, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    :cond_3
    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 p4, v0

    move/from16 v7, p4

    goto :goto_3

    :cond_4
    move/from16 v0, p6

    int-to-float v0, v0

    move/from16 p4, v0

    move/from16 v8, p4

    goto :goto_4

    .line 767
    :cond_5
    add-int v4, v16, v13

    .line 746
    .end local v16           #y:I
    .local v4, y:I
    add-int/lit8 p4, v12, 0x1

    .end local v12           #j:I
    .local p4, j:I
    move/from16 v12, p4

    .end local p4           #j:I
    .restart local v12       #j:I
    move/from16 v16, v4

    .end local v4           #y:I
    .restart local v16       #y:I
    goto/16 :goto_0

    .line 769
    .end local v11           #i:I
    .end local v15           #x:I
    :cond_6
    return-void
.end method

.method public static getAlbumsBeingListenedFor()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 975
    sget-object v2, Lcom/google/android/music/utils/AlbumArtUtils;->sArtworkListeners:Ljava/util/HashMap;

    monitor-enter v2

    .line 976
    :try_start_0
    sget-object v3, Lcom/google/android/music/utils/AlbumArtUtils;->sArtworkListeners:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 977
    .local v1, listenerKeySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 978
    .local v0, allAlbums:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 979
    monitor-exit v2

    return-object v0

    .line 980
    .end local v0           #allAlbums:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v1           #listenerKeySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static getArtwork(Landroid/content/Context;JIIZLjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "context"
    .parameter "album_id"
    .parameter "w"
    .parameter "h"
    .parameter "allowdefault"
    .parameter "album"
    .parameter "artist"

    .prologue
    .line 506
    const-string v0, "Getting album art on main thread"

    invoke-static {p0, v0}, Lcom/google/android/music/MusicUtils;->checkMainThread(Landroid/content/Context;Ljava/lang/String;)V

    .line 512
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 513
    if-eqz p5, :cond_0

    .line 514
    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move-object v6, p6

    move-object v7, p7

    invoke-static/range {v0 .. v7}, Lcom/google/android/music/utils/AlbumArtUtils;->getDefaultArtwork(Landroid/content/Context;ZJIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 527
    .end local p0
    :goto_0
    return-object p0

    .line 516
    .restart local p0
    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    .line 519
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/music/utils/AlbumArtUtils;->resolveArtwork(Landroid/content/Context;JII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 520
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    move-object p0, v0

    .line 521
    goto :goto_0

    .line 524
    :cond_2
    if-eqz p5, :cond_3

    .line 525
    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move-object v6, p6

    move-object v7, p7

    invoke-static/range {v0 .. v7}, Lcom/google/android/music/utils/AlbumArtUtils;->getDefaultArtwork(Landroid/content/Context;ZJIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .end local v0           #bm:Landroid/graphics/Bitmap;
    move-result-object p0

    goto :goto_0

    .line 527
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    :cond_3
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private static getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "context"
    .parameter "resourceId"

    .prologue
    .line 840
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 841
    .local v0, opts:Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 842
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getCachedArtwork(Landroid/content/Context;JIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "context"
    .parameter "album_id"
    .parameter "w"
    .parameter "h"
    .parameter "album"
    .parameter "artist"

    .prologue
    .line 154
    const/4 v7, 0x1

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lcom/google/android/music/utils/AlbumArtUtils;->getCachedArtwork(Landroid/content/Context;JIILjava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getCachedArtwork(Landroid/content/Context;JIILjava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "context"
    .parameter "album_id"
    .parameter "w"
    .parameter "h"
    .parameter "album"
    .parameter "artist"
    .parameter "allowResolve"

    .prologue
    .line 160
    invoke-static/range {p0 .. p7}, Lcom/google/android/music/utils/AlbumArtUtils;->getCachedBitmap(Landroid/content/Context;JIILjava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 161
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 162
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 165
    if-lez p3, :cond_0

    if-gtz p4, :cond_2

    .line 168
    :cond_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 173
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_0
    return-object v1

    .line 170
    :cond_2
    new-instance v1, Lcom/google/android/music/utils/AlbumArtUtils$FastBitmapDrawable;

    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {v1, v0}, Lcom/google/android/music/utils/AlbumArtUtils$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public static getCachedBitmap(Landroid/content/Context;JIILjava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "context"
    .parameter "album_id"
    .parameter "w"
    .parameter "h"
    .parameter "album"
    .parameter "artist"
    .parameter "allowResolve"

    .prologue
    .line 195
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    .line 196
    const/4 p0, 0x0

    .line 255
    .end local p0
    .end local p1
    .end local p3
    .end local p7
    :cond_0
    :goto_0
    return-object p0

    .line 199
    .restart local p0
    .restart local p1
    .restart local p3
    .restart local p7
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v2

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 200
    .local v12, sizeKey:Ljava/lang/String;
    const/4 v2, 0x0

    .line 201
    .local v2, cache:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<Ljava/lang/Long;Landroid/graphics/Bitmap;>;"
    const/16 v3, 0x64

    move/from16 v0, p3

    move v1, v3

    if-ge v0, v1, :cond_a

    const/16 v3, 0x64

    move/from16 v0, p4

    move v1, v3

    if-ge v0, v1, :cond_a

    .line 202
    sget-object v4, Lcom/google/android/music/utils/AlbumArtUtils;->sSizeCache:Ljava/util/HashMap;

    monitor-enter v4

    .line 203
    :try_start_0
    sget-object v3, Lcom/google/android/music/utils/AlbumArtUtils;->sSizeCache:Ljava/util/HashMap;

    invoke-virtual {v3, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/android/music/utils/LruCache;

    move-object v2, v0

    .line 204
    if-nez v2, :cond_2

    .line 206
    new-instance v3, Lcom/google/android/music/utils/LruCache;

    sget-object v5, Lcom/google/android/music/utils/AlbumArtUtils;->CACHE_SIZES:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-direct {v3, v5}, Lcom/google/android/music/utils/LruCache;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    .end local v2           #cache:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<Ljava/lang/Long;Landroid/graphics/Bitmap;>;"
    .local v3, cache:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<Ljava/lang/Long;Landroid/graphics/Bitmap;>;"
    :try_start_1
    sget-object v2, Lcom/google/android/music/utils/AlbumArtUtils;->sSizeCache:Ljava/util/HashMap;

    invoke-virtual {v2, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-object v2, v3

    .line 209
    .end local v3           #cache:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<Ljava/lang/Long;Landroid/graphics/Bitmap;>;"
    .restart local v2       #cache:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<Ljava/lang/Long;Landroid/graphics/Bitmap;>;"
    :cond_2
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v10, v2

    .line 212
    .end local v2           #cache:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<Ljava/lang/Long;Landroid/graphics/Bitmap;>;"
    .local v10, cache:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<Ljava/lang/Long;Landroid/graphics/Bitmap;>;"
    :goto_1
    const/4 v2, 0x0

    .line 213
    .local v2, bitmap:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 214
    .local v3, cacheHit:Z
    if-eqz v10, :cond_4

    .line 215
    monitor-enter v10

    .line 216
    :try_start_3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .end local v3           #cacheHit:Z
    invoke-virtual {v10, v3}, Lcom/google/android/music/utils/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v2, v0

    .line 217
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 218
    const-string v3, "AlbumArtUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found a recycled bitmap for albumid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/google/android/music/utils/LruCache;->remove(Ljava/lang/Object;)V

    .line 220
    const/4 v2, 0x0

    .line 222
    :cond_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 225
    :cond_4
    if-eqz v2, :cond_5

    const/4 v3, 0x1

    move v11, v3

    .line 226
    .local v11, cacheHit:Z
    :goto_2
    if-nez v2, :cond_9

    if-eqz p7, :cond_9

    .line 230
    invoke-static/range {p0 .. p4}, Lcom/google/android/music/utils/AlbumArtUtils;->resolveArtwork(Landroid/content/Context;JII)Landroid/graphics/Bitmap;

    move-result-object p7

    .line 232
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .local p7, bitmap:Landroid/graphics/Bitmap;
    if-nez p7, :cond_8

    .line 233
    const/4 v3, 0x1

    move-object v2, p0

    move-wide v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-static/range {v2 .. v9}, Lcom/google/android/music/utils/AlbumArtUtils;->getDefaultArtwork(Landroid/content/Context;ZJIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 235
    .end local p7           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    :goto_3
    if-eqz v10, :cond_7

    .line 236
    monitor-enter v10

    .line 238
    :try_start_4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    .end local p3
    move-object v0, v10

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/google/android/music/utils/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Bitmap;

    .line 239
    .local p3, value:Landroid/graphics/Bitmap;
    if-nez p3, :cond_6

    .line 240
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .end local p1
    invoke-virtual {v10, p1, p0}, Lcom/google/android/music/utils/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move p1, v11

    .line 247
    .end local v11           #cacheHit:Z
    :goto_4
    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 251
    .end local p3           #value:Landroid/graphics/Bitmap;
    :goto_5
    if-eqz v10, :cond_0

    .line 252
    invoke-static {v12, p1}, Lcom/google/android/music/utils/AlbumArtUtils;->trackCacheUsage(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 209
    .end local v10           #cache:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<Ljava/lang/Long;Landroid/graphics/Bitmap;>;"
    .local v2, cache:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<Ljava/lang/Long;Landroid/graphics/Bitmap;>;"
    .local p0, context:Landroid/content/Context;
    .restart local p1
    .local p3, w:I
    .local p7, allowResolve:Z
    :catchall_0
    move-exception p0

    move-object p1, p0

    move-object p0, v2

    .end local v2           #cache:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<Ljava/lang/Long;Landroid/graphics/Bitmap;>;"
    .end local p1
    .local p0, cache:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<Ljava/lang/Long;Landroid/graphics/Bitmap;>;"
    :goto_6
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw p1

    .line 222
    .local v2, bitmap:Landroid/graphics/Bitmap;
    .restart local v10       #cache:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<Ljava/lang/Long;Landroid/graphics/Bitmap;>;"
    .local p0, context:Landroid/content/Context;
    .restart local p1
    :catchall_1
    move-exception p0

    move-object p1, p0

    move-object p0, v2

    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local p1
    .local p0, bitmap:Landroid/graphics/Bitmap;
    :goto_7
    :try_start_7
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p1

    .line 225
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    .local p0, context:Landroid/content/Context;
    .restart local p1
    :cond_5
    const/4 v3, 0x0

    move v11, v3

    goto :goto_2

    .line 243
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local p7           #allowResolve:Z
    .restart local v11       #cacheHit:Z
    .local p0, bitmap:Landroid/graphics/Bitmap;
    .local p3, value:Landroid/graphics/Bitmap;
    :cond_6
    :try_start_8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 244
    move-object/from16 p0, p3

    .line 245
    const/4 p1, 0x1

    .end local v11           #cacheHit:Z
    .local p1, cacheHit:Z
    goto :goto_4

    .line 247
    .end local p1           #cacheHit:Z
    .end local p3           #value:Landroid/graphics/Bitmap;
    .restart local v11       #cacheHit:Z
    :catchall_2
    move-exception p1

    move-object p2, p1

    move p1, v11

    .end local v11           #cacheHit:Z
    :goto_8
    :try_start_9
    monitor-exit v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw p2

    :catchall_3
    move-exception p2

    goto :goto_8

    .line 222
    .local p3, w:I
    .restart local p7       #allowResolve:Z
    :catchall_4
    move-exception p1

    goto :goto_7

    .line 209
    .end local v10           #cache:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<Ljava/lang/Long;Landroid/graphics/Bitmap;>;"
    .local v3, cache:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<Ljava/lang/Long;Landroid/graphics/Bitmap;>;"
    .local p0, context:Landroid/content/Context;
    .local p1, album_id:J
    :catchall_5
    move-exception p0

    move-object p1, p0

    move-object p0, v3

    .end local v3           #cache:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<Ljava/lang/Long;Landroid/graphics/Bitmap;>;"
    .local p0, cache:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<Ljava/lang/Long;Landroid/graphics/Bitmap;>;"
    goto :goto_6

    .end local p1           #album_id:J
    :catchall_6
    move-exception p1

    goto :goto_6

    .end local p7           #allowResolve:Z
    .restart local v10       #cache:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<Ljava/lang/Long;Landroid/graphics/Bitmap;>;"
    .restart local v11       #cacheHit:Z
    .local p0, bitmap:Landroid/graphics/Bitmap;
    .restart local p1       #album_id:J
    :cond_7
    move p1, v11

    .local p1, cacheHit:I
    goto :goto_5

    .local p0, context:Landroid/content/Context;
    .local p1, album_id:J
    .local p7, bitmap:Landroid/graphics/Bitmap;
    :cond_8
    move-object/from16 p0, p7

    .end local p7           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto :goto_3

    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    .local p0, context:Landroid/content/Context;
    .local p7, allowResolve:Z
    :cond_9
    move p1, v11

    .local p1, cacheHit:I
    move-object p0, v2

    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto :goto_5

    .end local v10           #cache:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<Ljava/lang/Long;Landroid/graphics/Bitmap;>;"
    .end local v11           #cacheHit:Z
    .local v2, cache:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<Ljava/lang/Long;Landroid/graphics/Bitmap;>;"
    .local p0, context:Landroid/content/Context;
    .local p1, album_id:J
    :cond_a
    move-object v10, v2

    .end local v2           #cache:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<Ljava/lang/Long;Landroid/graphics/Bitmap;>;"
    .restart local v10       #cache:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<Ljava/lang/Long;Landroid/graphics/Bitmap;>;"
    goto/16 :goto_1
.end method

.method public static getDefaultArtwork(Landroid/content/Context;ZJIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "context"
    .parameter "drawLabels"
    .parameter "albumId"
    .parameter "w"
    .parameter "h"
    .parameter "album"
    .parameter "artist"

    .prologue
    .line 532
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lcom/google/android/music/utils/AlbumArtUtils;->getFauxAlbumArt(Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    .end local p0
    return-object p0
.end method

.method public static getFauxAlbumArt(Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "context"
    .parameter "style"
    .parameter "drawLabels"
    .parameter "albumId"
    .parameter "w"
    .parameter "h"
    .parameter "mainLabel"
    .parameter "subLabel"

    .prologue
    const/16 v5, 0x64

    .line 570
    if-eqz p7, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 571
    .local v2, keyStart:Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 574
    .local v1, key:Ljava/lang/String;
    const/4 v0, 0x0

    .line 575
    .local v0, bm:Landroid/graphics/Bitmap;
    if-ge p5, v5, :cond_0

    if-ge p6, v5, :cond_0

    .line 576
    sget-object v3, Lcom/google/android/music/utils/AlbumArtUtils;->sColorizedArtCache:Lcom/google/android/music/utils/LruSynchronizedCache;

    invoke-virtual {v3, v1}, Lcom/google/android/music/utils/LruSynchronizedCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bm:Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 579
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 580
    const/4 v0, 0x0

    .line 582
    :cond_1
    if-nez v0, :cond_2

    .line 583
    invoke-static/range {p0 .. p8}, Lcom/google/android/music/utils/AlbumArtUtils;->createFauxAlbumArt(Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 584
    if-ge p5, v5, :cond_2

    .line 586
    sget-object v3, Lcom/google/android/music/utils/AlbumArtUtils;->sColorizedArtCache:Lcom/google/android/music/utils/LruSynchronizedCache;

    invoke-virtual {v3, v1, v0}, Lcom/google/android/music/utils/LruSynchronizedCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    :cond_2
    return-object v0

    .line 570
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #keyStart:Ljava/lang/String;
    :cond_3
    const-string v3, ""

    move-object v2, v3

    goto :goto_0
.end method

.method public static getLoadingAlbumArtwork(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "context"

    .prologue
    .line 541
    sget-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->mAlbumLoadingBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 542
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020136

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->mAlbumLoadingBitmap:Landroid/graphics/Bitmap;

    .line 545
    :cond_0
    sget-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->mAlbumLoadingBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static getPreferredConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget-object v0, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public static getResizedLoadingArtwork(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "context"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 553
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 554
    :cond_0
    const/4 v2, 0x0

    .line 563
    .end local p0
    :goto_0
    return-object v2

    .line 556
    .restart local p0
    :cond_1
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 557
    .local v1, size:Landroid/graphics/Point;
    sget-object v2, Lcom/google/android/music/utils/AlbumArtUtils;->sCachedRezinBitmap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 558
    sget-object v2, Lcom/google/android/music/utils/AlbumArtUtils;->sCachedRezinBitmap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Bitmap;

    move-object v2, p0

    goto :goto_0

    .line 561
    .restart local p0
    :cond_2
    invoke-static {p0}, Lcom/google/android/music/utils/AlbumArtUtils;->getLoadingAlbumArtwork(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p1, p2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 562
    .local v0, b:Landroid/graphics/Bitmap;
    sget-object v2, Lcom/google/android/music/utils/AlbumArtUtils;->sCachedRezinBitmap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    .line 563
    goto :goto_0
.end method

.method private static getScaledBitmap(Landroid/content/Context;III)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "context"
    .parameter "resourceId"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 828
    invoke-static {p0, p1}, Lcom/google/android/music/utils/AlbumArtUtils;->getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 829
    .local v0, bm0:Landroid/graphics/Bitmap;
    if-lez p2, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, p2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v2, p3, :cond_2

    .line 830
    :cond_0
    const/4 v2, 0x1

    invoke-static {v0, p2, p3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 831
    .local v1, tmp:Landroid/graphics/Bitmap;
    if-eq v1, v0, :cond_1

    .line 832
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 834
    :cond_1
    move-object v0, v1

    .line 836
    .end local v1           #tmp:Landroid/graphics/Bitmap;
    :cond_2
    return-object v0
.end method

.method public static notifyAlbumArtChanged(J)V
    .locals 9
    .parameter "albumId"

    .prologue
    .line 867
    sget-object v6, Lcom/google/android/music/utils/AlbumArtUtils;->sSizeCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    const/4 v7, 0x5

    if-le v6, v7, :cond_0

    .line 868
    const-string v6, "AlbumArtUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "There are too many size caches: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/google/android/music/utils/AlbumArtUtils;->sSizeCache:Ljava/util/HashMap;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/Throwable;

    invoke-direct {v8}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6, v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 870
    :cond_0
    sget-object v7, Lcom/google/android/music/utils/AlbumArtUtils;->sSizeCache:Ljava/util/HashMap;

    monitor-enter v7

    .line 871
    :try_start_0
    sget-object v6, Lcom/google/android/music/utils/AlbumArtUtils;->sSizeCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 872
    .local v0, cache:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/music/utils/LruCache<Ljava/lang/Long;Landroid/graphics/Bitmap;>;>;"
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 873
    :try_start_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/music/utils/LruCache;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/music/utils/LruCache;->remove(Ljava/lang/Object;)V

    .line 874
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6

    .line 876
    .end local v0           #cache:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/music/utils/LruCache<Ljava/lang/Long;Landroid/graphics/Bitmap;>;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 877
    sget-object v6, Lcom/google/android/music/utils/AlbumArtUtils;->sArtworkListeners:Ljava/util/HashMap;

    monitor-enter v6

    .line 878
    :try_start_4
    sget-object v7, Lcom/google/android/music/utils/AlbumArtUtils;->sArtworkListeners:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    .line 880
    .local v4, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    if-eqz v4, :cond_4

    .line 881
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 882
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 883
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 884
    .local v3, item:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;

    .line 885
    .local v5, possibleListener:Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;
    if-nez v5, :cond_2

    .line 886
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 895
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    .end local v3           #item:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;"
    .end local v4           #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    .end local v5           #possibleListener:Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;
    :catchall_2
    move-exception v7

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v7

    .line 888
    .restart local v2       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    .restart local v3       #item:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;"
    .restart local v4       #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    .restart local v5       #possibleListener:Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;
    :cond_2
    :try_start_5
    invoke-interface {v5, p0, p1}, Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;->notifyAlbumArtChanged(J)V

    goto :goto_1

    .line 891
    .end local v3           #item:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;"
    .end local v5           #possibleListener:Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;
    :cond_3
    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 892
    sget-object v7, Lcom/google/android/music/utils/AlbumArtUtils;->sArtworkListeners:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    :cond_4
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 896
    return-void
.end method

.method public static registerAlbumArtChangeListener(JLcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;)V
    .locals 6
    .parameter "albumId"
    .parameter "listener"

    .prologue
    .line 926
    invoke-static {}, Lcom/google/android/music/utils/AlbumArtUtils;->cleanArtListenerCache()V

    .line 927
    sget-object v3, Lcom/google/android/music/utils/AlbumArtUtils;->sArtworkListeners:Ljava/util/HashMap;

    monitor-enter v3

    .line 928
    :try_start_0
    sget-object v4, Lcom/google/android/music/utils/AlbumArtUtils;->sArtworkListeners:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 929
    .local v1, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    if-nez v1, :cond_0

    .line 930
    new-instance v1, Ljava/util/LinkedList;

    .end local v1           #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 931
    .restart local v1       #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    sget-object v4, Lcom/google/android/music/utils/AlbumArtUtils;->sArtworkListeners:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    :cond_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    sget-object v4, Lcom/google/android/music/utils/AlbumArtUtils;->sReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, p2, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 935
    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;"
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 937
    sget-object v4, Lcom/google/android/music/utils/AlbumArtUtils;->sReverseArtListenerCache:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 938
    .local v0, allRegisteredAlbums:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    if-nez v0, :cond_1

    .line 939
    new-instance v0, Ljava/util/TreeSet;

    .end local v0           #allRegisteredAlbums:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 940
    .restart local v0       #allRegisteredAlbums:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    sget-object v4, Lcom/google/android/music/utils/AlbumArtUtils;->sReverseArtListenerCache:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 943
    monitor-exit v3

    .line 944
    return-void

    .line 943
    .end local v0           #allRegisteredAlbums:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v1           #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;"
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public static removeAlbumArtChangeListener(JLcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;)V
    .locals 8
    .parameter "albumId"
    .parameter "listener"

    .prologue
    .line 947
    sget-object v5, Lcom/google/android/music/utils/AlbumArtUtils;->sArtworkListeners:Ljava/util/HashMap;

    monitor-enter v5

    .line 948
    :try_start_0
    sget-object v6, Lcom/google/android/music/utils/AlbumArtUtils;->sArtworkListeners:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    .line 950
    .local v3, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    if-eqz v3, :cond_3

    .line 951
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 952
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 953
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 954
    .local v2, item:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;

    .line 955
    .local v4, possibleListener:Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;
    if-eqz v4, :cond_1

    if-ne v4, p2, :cond_0

    .line 956
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 958
    sget-object v6, Lcom/google/android/music/utils/AlbumArtUtils;->sReverseArtListenerCache:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 959
    .local v0, allAlbumsForListener:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    if-eqz v0, :cond_0

    .line 960
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 961
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 962
    sget-object v6, Lcom/google/android/music/utils/AlbumArtUtils;->sReverseArtListenerCache:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 971
    .end local v0           #allAlbumsForListener:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    .end local v2           #item:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;"
    .end local v3           #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    .end local v4           #possibleListener:Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 967
    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    .restart local v3       #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 968
    sget-object v6, Lcom/google/android/music/utils/AlbumArtUtils;->sArtworkListeners:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    :cond_3
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 972
    return-void
.end method

.method private static renderFauxLabel(Landroid/graphics/Canvas;IIIIZLjava/lang/String;IIZII)V
    .locals 14
    .parameter "c"
    .parameter "width"
    .parameter "x"
    .parameter "y"
    .parameter "fontHeight"
    .parameter "bold"
    .parameter "label"
    .parameter "color"
    .parameter "fadeWidth"
    .parameter "rightJustify"
    .parameter "rightMargin"
    .parameter "overrideW"

    .prologue
    .line 794
    new-instance v13, Landroid/text/TextPaint;

    const/16 v5, 0x81

    invoke-direct {v13, v5}, Landroid/text/TextPaint;-><init>(I)V

    .line 795
    .local v13, paint:Landroid/text/TextPaint;
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 p4, v0

    move-object v0, v13

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 796
    .end local p4
    if-eqz p5, :cond_0

    .line 797
    sget-object p4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    move-object v0, v13

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 800
    :cond_0
    invoke-virtual {v13}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p5

    .line 802
    .local p5, metrics:Landroid/graphics/Paint$FontMetricsInt;
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct/range {p4 .. p4}, Landroid/graphics/Rect;-><init>()V

    .line 803
    .local p4, bounds:Landroid/graphics/Rect;
    const/4 v5, 0x0

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v6

    move-object v0, v13

    move-object/from16 v1, p6

    move v2, v5

    move v3, v6

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 804
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 p5, v0

    .end local p5           #metrics:Landroid/graphics/Paint$FontMetricsInt;
    sub-int p3, p3, p5

    .line 805
    .local p3, baselineY:I
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v5, v0

    .line 806
    .local v5, rightEdge:I
    move/from16 p5, p1

    .line 807
    .local p5, maxOffset:I
    move v0, v5

    move/from16 v1, p11

    if-lt v0, v1, :cond_1

    .line 808
    const/16 p9, 0x0

    .line 810
    :cond_1
    move v0, v5

    move/from16 v1, p5

    if-le v0, v1, :cond_3

    const/4 p1, 0x1

    .line 811
    .local p1, clipped:Z
    :goto_0
    if-eqz p1, :cond_4

    .line 812
    new-instance v5, Landroid/graphics/LinearGradient;

    .end local v5           #rightEdge:I
    add-int p1, p2, p5

    sub-int p1, p1, p8

    int-to-float v6, p1

    const/4 v7, 0x0

    add-int p1, p2, p5

    int-to-float v8, p1

    const/4 v9, 0x0

    const p1, 0xffffff

    and-int v11, p1, p7

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .end local p1           #clipped:Z
    move/from16 v10, p7

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 816
    .local v5, gradient:Landroid/graphics/LinearGradient;
    invoke-virtual {v13, v5}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 823
    .end local v5           #gradient:Landroid/graphics/LinearGradient;
    :cond_2
    :goto_1
    move/from16 v0, p2

    int-to-float v0, v0

    move p1, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 p2, v0

    move-object v0, p0

    move-object/from16 v1, p6

    move v2, p1

    move/from16 v3, p2

    move-object v4, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 824
    .end local p2
    return-void

    .line 810
    .local v5, rightEdge:I
    .local p1, width:I
    .restart local p2
    :cond_3
    const/4 p1, 0x0

    goto :goto_0

    .line 818
    .local p1, clipped:Z
    :cond_4
    move-object v0, v13

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 819
    if-eqz p9, :cond_2

    .line 820
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move p1, v0

    .end local p1           #clipped:Z
    sub-int p2, p10, p1

    goto :goto_1
.end method

.method public static reportAndRethrow(Ljava/lang/OutOfMemoryError;II)V
    .locals 4
    .parameter "e"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 487
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/music2_hprof_data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, path:Ljava/lang/String;
    invoke-static {v0}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V

    .line 489
    const-string v1, "AlbumArtUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Out of memory allocating a ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") sized texture.\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Please do the following to copy the heap dump to your computer:\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  adb pull "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "And attach the file to your bug report."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    .end local v0           #path:Ljava/lang/String;
    :goto_0
    throw p0

    .line 493
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static resizeCaches()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 286
    sget-object v9, Lcom/google/android/music/utils/AlbumArtUtils;->sSizeCache:Ljava/util/HashMap;

    monitor-enter v9

    .line 287
    :try_start_0
    sget v10, Lcom/google/android/music/utils/AlbumArtUtils;->sTotalSizeCacheRequests:I

    sget v11, Lcom/google/android/music/utils/AlbumArtUtils;->CACHE_REQUESTS_TO_RESIZE:I

    if-gt v10, v11, :cond_1

    .line 290
    monitor-exit v9

    .line 319
    :cond_0
    return-void

    .line 292
    :cond_1
    sget v8, Lcom/google/android/music/utils/AlbumArtUtils;->sTotalSizeCacheRequests:I

    .line 294
    .local v8, totalSizeCacheRequests:I
    new-instance v6, Ljava/util/HashMap;

    sget-object v10, Lcom/google/android/music/utils/AlbumArtUtils;->sSizeCacheRequests:Ljava/util/HashMap;

    invoke-direct {v6, v10}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 295
    .local v6, sizeCacheRequests:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;>;"
    const/4 v10, 0x0

    sput v10, Lcom/google/android/music/utils/AlbumArtUtils;->sTotalSizeCacheRequests:I

    .line 296
    sget v10, Lcom/google/android/music/utils/AlbumArtUtils;->CACHE_REQUESTS_TO_RESIZE:I

    add-int/lit16 v10, v10, 0xc8

    sput v10, Lcom/google/android/music/utils/AlbumArtUtils;->CACHE_REQUESTS_TO_RESIZE:I

    .line 297
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v7, sortedCacheKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 300
    .local v1, cache:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;

    invoke-static {v0}, Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;->access$200(Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/google/android/music/utils/AlbumArtUtils;->sortedInsert(Ljava/util/ArrayList;Landroid/util/Pair;)V

    goto :goto_0

    .line 297
    .end local v1           #cache:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #sizeCacheRequests:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;>;"
    .end local v7           #sortedCacheKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v8           #totalSizeCacheRequests:I
    :catchall_0
    move-exception v10

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    .line 303
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v6       #sizeCacheRequests:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;>;"
    .restart local v7       #sortedCacheKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .restart local v8       #totalSizeCacheRequests:I
    :cond_2
    const/4 v2, 0x0

    .line 304
    .local v2, cacheSizeIndex:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 305
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 307
    .local v5, keyAndHits:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-object v9, Lcom/google/android/music/utils/AlbumArtUtils;->sSizeCache:Ljava/util/HashMap;

    iget-object v10, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/utils/LruCache;

    .line 308
    .local v0, cache:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<Ljava/lang/Long;Landroid/graphics/Bitmap;>;"
    iget-object v9, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x3

    if-le v9, v10, :cond_4

    .line 309
    sget-object v9, Lcom/google/android/music/utils/AlbumArtUtils;->CACHE_SIZES:[I

    aget v9, v9, v2

    invoke-virtual {v0, v9}, Lcom/google/android/music/utils/LruCache;->setCapacity(I)V

    .line 314
    :goto_2
    sget-object v9, Lcom/google/android/music/utils/AlbumArtUtils;->CACHE_SIZES:[I

    array-length v9, v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    if-eq v2, v9, :cond_3

    .line 315
    add-int/lit8 v2, v2, 0x1

    .line 304
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 311
    :cond_4
    invoke-virtual {v0, v12}, Lcom/google/android/music/utils/LruCache;->setCapacity(I)V

    goto :goto_2
.end method

.method private static resolveArtwork(Landroid/content/Context;JII)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "context"
    .parameter "album_id"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 341
    const/4 v6, 0x2

    new-array v6, v6, [I

    .line 342
    .local v6, originalBounds:[I
    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/utils/AlbumArtUtils;->resolveArtworkRaw(Landroid/content/Context;JII[I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 344
    .local p0, b:Landroid/graphics/Bitmap;
    if-eqz p0, :cond_4

    .line 346
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    .line 347
    .end local p1
    .local p2, outWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    .line 348
    .local p1, outHeight:I
    if-ne p2, p3, :cond_0

    if-eq p1, p4, :cond_4

    .line 349
    :cond_0
    const/4 p1, 0x1

    invoke-static {p0, p3, p4, p1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .end local p1           #outHeight:I
    move-result-object p1

    .line 351
    .local p1, tmp:Landroid/graphics/Bitmap;
    if-eq p1, p0, :cond_1

    .line 352
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 354
    :cond_1
    move-object p0, p1

    move-object p1, p0

    .line 358
    .end local p0           #b:Landroid/graphics/Bitmap;
    .end local p2           #outWidth:I
    .local p1, b:Landroid/graphics/Bitmap;
    :goto_0
    if-eqz p1, :cond_2

    .line 361
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    .line 362
    .local p3, bitmapWidth:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    .line 363
    .local p2, bitmapHeight:I
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 364
    .local v7, minSize:I
    const/4 p4, 0x0

    .line 365
    .local p4, crop:I
    const/16 p0, 0xc8

    .line 366
    .local p0, CROP_SIZE_THRESHOLD:I
    const/4 p0, 0x3

    .line 367
    .local p0, CROP_PIXEL_AMOUNT:I
    const/4 p0, 0x0

    aget p0, v6, p0

    .end local p0           #CROP_PIXEL_AMOUNT:I
    const/4 v8, 0x1

    aget v6, v6, v8

    .end local v6           #originalBounds:[I
    invoke-static {p0, v6}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 368
    .local p0, minOriginalSize:I
    const/16 v6, 0xc8

    if-lt p0, v6, :cond_3

    const/16 p0, 0xc

    if-le v7, p0, :cond_3

    .line 369
    .end local p0           #minOriginalSize:I
    mul-int/lit8 p0, v7, 0x3

    add-int/lit16 p0, p0, 0xc8

    const/4 p4, 0x1

    sub-int/2addr p0, p4

    div-int/lit16 p0, p0, 0xc8

    .end local p4           #crop:I
    .local p0, crop:I
    move v6, p0

    .line 371
    .end local p0           #crop:I
    .local v6, crop:I
    :goto_1
    if-lez v6, :cond_2

    .line 372
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-static {p3, p2, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 373
    .local p0, bitmap:Landroid/graphics/Bitmap;
    new-instance p4, Landroid/graphics/Canvas;

    invoke-direct {p4, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 374
    .local p4, canvas:Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/Rect;

    .end local v7           #minSize:I
    sub-int v8, p3, v6

    sub-int v9, p2, v6

    invoke-direct {v7, v6, v6, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 376
    .local v7, src:Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/RectF;

    .end local v6           #crop:I
    const/4 v8, 0x0

    const/4 v9, 0x0

    int-to-float p3, p3

    int-to-float p2, p2

    invoke-direct {v6, v8, v9, p3, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 377
    .end local p2           #bitmapHeight:I
    .end local p3           #bitmapWidth:I
    .local v6, dst:Landroid/graphics/RectF;
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 378
    .local p2, paint:Landroid/graphics/Paint;
    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 379
    invoke-virtual {p4, p1, v7, v6, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 380
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 381
    move-object p0, p0

    .line 384
    .end local v6           #dst:Landroid/graphics/RectF;
    .end local v7           #src:Landroid/graphics/Rect;
    .end local p1           #b:Landroid/graphics/Bitmap;
    .end local p2           #paint:Landroid/graphics/Paint;
    .end local p4           #canvas:Landroid/graphics/Canvas;
    .local p0, b:Landroid/graphics/Bitmap;
    :goto_2
    return-object p0

    .end local p0           #b:Landroid/graphics/Bitmap;
    .restart local p1       #b:Landroid/graphics/Bitmap;
    :cond_2
    move-object p0, p1

    .end local p1           #b:Landroid/graphics/Bitmap;
    .restart local p0       #b:Landroid/graphics/Bitmap;
    goto :goto_2

    .end local p0           #b:Landroid/graphics/Bitmap;
    .local v7, minSize:I
    .restart local p1       #b:Landroid/graphics/Bitmap;
    .local p2, bitmapHeight:I
    .restart local p3       #bitmapWidth:I
    .local p4, crop:I
    :cond_3
    move v6, p4

    .end local p4           #crop:I
    .local v6, crop:I
    goto :goto_1

    .end local v7           #minSize:I
    .end local p1           #b:Landroid/graphics/Bitmap;
    .end local p2           #bitmapHeight:I
    .local v6, originalBounds:[I
    .restart local p0       #b:Landroid/graphics/Bitmap;
    .local p3, w:I
    .local p4, h:I
    :cond_4
    move-object p1, p0

    .end local p0           #b:Landroid/graphics/Bitmap;
    .restart local p1       #b:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private static resolveArtworkRaw(Landroid/content/Context;JII[I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "context"
    .parameter "album_id"
    .parameter "w"
    .parameter "h"
    .parameter "outOriginalBounds"

    .prologue
    .line 436
    const/4 v0, 0x0

    .line 438
    .local v0, fd:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/google/android/music/store/MusicContent$AlbumArt;->openFileDescriptor(Landroid/content/Context;J)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object p1

    .line 439
    .end local v0           #fd:Landroid/os/ParcelFileDescriptor;
    .local p1, fd:Landroid/os/ParcelFileDescriptor;
    const/4 v0, 0x1

    .line 440
    .local v0, sampleSize:I
    if-lez p3, :cond_1

    if-lez p4, :cond_1

    const/4 p0, 0x1

    .line 442
    .local p0, sizeGiven:Z
    :goto_0
    if-eqz p0, :cond_2

    .line 446
    :try_start_1
    sget-object p0, Lcom/google/android/music/utils/AlbumArtUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    .end local p0           #sizeGiven:Z
    const/4 p2, 0x1

    iput-boolean p2, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 447
    sget-object p0, Lcom/google/android/music/utils/AlbumArtUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    const/4 p2, 0x1

    iput p2, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 448
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    const/4 p2, 0x0

    sget-object v1, Lcom/google/android/music/utils/AlbumArtUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p0, p2, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 450
    if-eqz p5, :cond_0

    .line 451
    const/4 p0, 0x0

    sget-object p2, Lcom/google/android/music/utils/AlbumArtUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget p2, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput p2, p5, p0

    .line 452
    const/4 p0, 0x1

    sget-object p2, Lcom/google/android/music/utils/AlbumArtUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget p2, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput p2, p5, p0

    .line 454
    :cond_0
    sget-object p0, Lcom/google/android/music/utils/AlbumArtUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 p2, p0, 0x1

    .line 455
    .local p2, nextWidth:I
    sget-object p0, Lcom/google/android/music/utils/AlbumArtUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 p0, p0, 0x1

    .local p0, nextHeight:I
    move p5, v0

    .line 456
    .end local v0           #sampleSize:I
    .local p5, sampleSize:I
    :goto_1
    if-le p2, p3, :cond_5

    if-le p0, p4, :cond_5

    .line 457
    shl-int/lit8 p5, p5, 0x1

    .line 458
    shr-int/lit8 p2, p2, 0x1

    .line 459
    shr-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 440
    .end local p2           #nextWidth:I
    .restart local v0       #sampleSize:I
    .local p0, context:Landroid/content/Context;
    .local p5, outOriginalBounds:[I
    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    .line 462
    .local p0, sizeGiven:Z
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0           #sizeGiven:Z
    const-string p2, "must specify target height and width"

    invoke-direct {p0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6

    .line 471
    .end local v0           #sampleSize:I
    .end local p5           #outOriginalBounds:[I
    :catch_0
    move-exception p0

    .line 472
    .local p0, e:Ljava/lang/OutOfMemoryError;
    :goto_2
    :try_start_2
    invoke-static {p0, p3, p4}, Lcom/google/android/music/utils/AlbumArtUtils;->reportAndRethrow(Ljava/lang/OutOfMemoryError;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 476
    if-eqz p1, :cond_3

    .line 477
    :try_start_3
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    move-object p0, p1

    .line 481
    .end local p1           #fd:Landroid/os/ParcelFileDescriptor;
    .local p0, fd:Landroid/os/ParcelFileDescriptor;
    :cond_4
    :goto_3
    const/4 p1, 0x0

    :goto_4
    return-object p1

    .line 465
    .local p0, nextHeight:I
    .restart local p1       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local p2       #nextWidth:I
    .local p5, sampleSize:I
    :cond_5
    :try_start_4
    sget-object p0, Lcom/google/android/music/utils/AlbumArtUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    .end local p0           #nextHeight:I
    iput p5, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 466
    sget-object p0, Lcom/google/android/music/utils/AlbumArtUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 467
    .end local p2           #nextWidth:I
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    const/4 p2, 0x0

    sget-object p5, Lcom/google/android/music/utils/AlbumArtUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    .end local p5           #sampleSize:I
    invoke-static {p0, p2, p5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_6

    move-result-object p0

    .line 476
    .local p0, b:Landroid/graphics/Bitmap;
    if-eqz p1, :cond_6

    .line 477
    :try_start_5
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_6
    :goto_5
    move-object v2, p1

    .end local p1           #fd:Landroid/os/ParcelFileDescriptor;
    .local v2, fd:Landroid/os/ParcelFileDescriptor;
    move-object p1, p0

    move-object p0, v2

    .line 479
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    .local p0, fd:Landroid/os/ParcelFileDescriptor;
    goto :goto_4

    .line 478
    .local p0, e:Ljava/lang/OutOfMemoryError;
    .restart local p1       #fd:Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception p0

    .end local p0           #e:Ljava/lang/OutOfMemoryError;
    move-object p0, p1

    .line 480
    .end local p1           #fd:Landroid/os/ParcelFileDescriptor;
    .local p0, fd:Landroid/os/ParcelFileDescriptor;
    goto :goto_3

    .line 473
    .local v0, fd:Landroid/os/ParcelFileDescriptor;
    .local p0, context:Landroid/content/Context;
    .local p1, album_id:J
    .local p5, outOriginalBounds:[I
    :catch_2
    move-exception p0

    move-object p0, v0

    .line 476
    .end local v0           #fd:Landroid/os/ParcelFileDescriptor;
    .end local p1           #album_id:J
    .end local p5           #outOriginalBounds:[I
    .local p0, fd:Landroid/os/ParcelFileDescriptor;
    :goto_6
    if-eqz p0, :cond_4

    .line 477
    :try_start_6
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    .line 478
    :catch_3
    move-exception p1

    goto :goto_3

    .line 475
    .restart local v0       #fd:Landroid/os/ParcelFileDescriptor;
    .local p0, context:Landroid/content/Context;
    .restart local p1       #album_id:J
    .restart local p5       #outOriginalBounds:[I
    :catchall_0
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .line 476
    .end local v0           #fd:Landroid/os/ParcelFileDescriptor;
    .end local p1           #album_id:J
    .end local p5           #outOriginalBounds:[I
    .local p0, fd:Landroid/os/ParcelFileDescriptor;
    :goto_7
    if-eqz p0, :cond_7

    .line 477
    :try_start_7
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 479
    .end local p0           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_7
    :goto_8
    throw p1

    .line 478
    .local p0, b:Landroid/graphics/Bitmap;
    .local p1, fd:Landroid/os/ParcelFileDescriptor;
    :catch_4
    move-exception p2

    goto :goto_5

    .end local p1           #fd:Landroid/os/ParcelFileDescriptor;
    .local p0, fd:Landroid/os/ParcelFileDescriptor;
    :catch_5
    move-exception p0

    goto :goto_8

    .line 475
    .end local p0           #fd:Landroid/os/ParcelFileDescriptor;
    .restart local p1       #fd:Landroid/os/ParcelFileDescriptor;
    :catchall_1
    move-exception p0

    move-object v2, p0

    move-object p0, p1

    .end local p1           #fd:Landroid/os/ParcelFileDescriptor;
    .restart local p0       #fd:Landroid/os/ParcelFileDescriptor;
    move-object p1, v2

    goto :goto_7

    .line 473
    .end local p0           #fd:Landroid/os/ParcelFileDescriptor;
    .restart local p1       #fd:Landroid/os/ParcelFileDescriptor;
    :catch_6
    move-exception p0

    move-object p0, p1

    .end local p1           #fd:Landroid/os/ParcelFileDescriptor;
    .restart local p0       #fd:Landroid/os/ParcelFileDescriptor;
    goto :goto_6

    .line 471
    .restart local v0       #fd:Landroid/os/ParcelFileDescriptor;
    .local p0, context:Landroid/content/Context;
    .local p1, album_id:J
    .restart local p5       #outOriginalBounds:[I
    :catch_7
    move-exception p0

    move-object p1, v0

    .end local v0           #fd:Landroid/os/ParcelFileDescriptor;
    .local p1, fd:Landroid/os/ParcelFileDescriptor;
    goto :goto_2
.end method

.method public static scaleToFit(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "bm"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v3, 0x1

    .line 847
    if-lez p1, :cond_4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v1, p2, :cond_4

    .line 849
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    mul-int/lit8 v2, p1, 0x2

    if-le v1, v2, :cond_2

    .line 850
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {p0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 852
    .local v0, tmp:Landroid/graphics/Bitmap;
    if-eq v0, p0, :cond_1

    .line 853
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 855
    :cond_1
    move-object p0, v0

    .line 856
    goto :goto_0

    .line 857
    .end local v0           #tmp:Landroid/graphics/Bitmap;
    :cond_2
    invoke-static {p0, p1, p2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 858
    .restart local v0       #tmp:Landroid/graphics/Bitmap;
    if-eq v0, p0, :cond_3

    .line 859
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 861
    :cond_3
    move-object p0, v0

    .line 863
    .end local v0           #tmp:Landroid/graphics/Bitmap;
    :cond_4
    return-object p0
.end method

.method public static setPreferredConfig(Landroid/graphics/Bitmap$Config;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 145
    sget-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput-object p0, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 146
    return-void
.end method

.method private static shouldSkip(IIII)Z
    .locals 2
    .parameter "i"
    .parameter "j"
    .parameter "wc"
    .parameter "skipMask"

    .prologue
    const/4 v1, 0x1

    .line 772
    mul-int v0, p1, p2

    add-int/2addr v0, p0

    shl-int v0, v1, v0

    and-int/2addr v0, p3

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static sortedInsert(Ljava/util/ArrayList;Landroid/util/Pair;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 329
    .local p0, sortedCacheKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .local p1, insertMe:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 330
    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 333
    :cond_0
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 334
    return-void
.end method

.method private static trackCacheUsage(Ljava/lang/String;Z)V
    .locals 4
    .parameter "sizeKey"
    .parameter "cacheHit"

    .prologue
    .line 259
    sget-object v1, Lcom/google/android/music/utils/AlbumArtUtils;->sSizeCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 260
    :try_start_0
    sget v2, Lcom/google/android/music/utils/AlbumArtUtils;->sTotalSizeCacheRequests:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/google/android/music/utils/AlbumArtUtils;->sTotalSizeCacheRequests:I

    .line 261
    sget-object v2, Lcom/google/android/music/utils/AlbumArtUtils;->sSizeCacheRequests:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;

    .line 263
    .local v0, cacheRequest:Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;
    if-nez v0, :cond_0

    .line 264
    new-instance v0, Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;

    .end local v0           #cacheRequest:Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;-><init>(Lcom/google/android/music/utils/AlbumArtUtils$1;)V

    .line 265
    .restart local v0       #cacheRequest:Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;
    sget-object v2, Lcom/google/android/music/utils/AlbumArtUtils;->sSizeCacheRequests:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    :cond_0
    invoke-static {v0}, Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;->access$108(Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;)I

    .line 268
    if-eqz p1, :cond_1

    .line 269
    invoke-static {v0}, Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;->access$208(Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;)I

    .line 272
    :cond_1
    sget v2, Lcom/google/android/music/utils/AlbumArtUtils;->sTotalSizeCacheRequests:I

    sget v3, Lcom/google/android/music/utils/AlbumArtUtils;->CACHE_REQUESTS_TO_RESIZE:I

    if-le v2, v3, :cond_2

    .line 273
    new-instance v2, Lcom/google/android/music/utils/AlbumArtUtils$1;

    invoke-direct {v2}, Lcom/google/android/music/utils/AlbumArtUtils$1;-><init>()V

    invoke-static {v2}, Lcom/google/android/music/MusicUtils;->runAsync(Ljava/lang/Runnable;)V

    .line 279
    :cond_2
    monitor-exit v1

    .line 280
    return-void

    .line 279
    .end local v0           #cacheRequest:Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

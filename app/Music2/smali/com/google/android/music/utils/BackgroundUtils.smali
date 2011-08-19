.class public Lcom/google/android/music/utils/BackgroundUtils;
.super Ljava/lang/Object;
.source "BackgroundUtils.java"


# static fields
.field public static final ADAPTED_BITMAP_INPUT_SIZE:I = 0x80

.field public static final ADAPTED_BITMAP_OUTPUT_SIZE:I = 0x40

.field private static final BLUE_MASK:I = 0xff

.field private static final COLOR_FADE:[C = null

.field private static final GREEN_MASK:I = 0xff00

.field private static final GREEN_MASK_SHIFT:I = 0x8

.field private static final KERNEL_NORM:[I = null

.field private static final KERNEL_SIZE:I = 0x9

.field private static final MAX_COLOR_VALUE:I = 0xff

.field private static final NUM_CACHED_BITMAPS:I = 0x10

.field private static final NUM_COLORS:I = 0x100

.field private static final RADIUS:I = 0x4

.field private static final RED_MASK:I = 0xff0000

.field private static final RED_MASK_SHIFT:I = 0x10

.field private static final START_FADE_X:I = 0x60

.field private static TAG:Ljava/lang/String; = null

.field private static final THUMBNAIL_MAX_X:I = 0x80

.field private static mAdaptedBitmapCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static mDefaultBackgroundBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f80

    .line 17
    const-string v2, "BackgroundUtils"

    sput-object v2, Lcom/google/android/music/utils/BackgroundUtils;->TAG:Ljava/lang/String;

    .line 19
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/google/android/music/utils/BackgroundUtils;->mAdaptedBitmapCache:Ljava/util/HashMap;

    .line 34
    const/16 v2, 0x900

    new-array v2, v2, [I

    sput-object v2, Lcom/google/android/music/utils/BackgroundUtils;->KERNEL_NORM:[I

    .line 35
    const/16 v2, 0x100

    new-array v2, v2, [C

    sput-object v2, Lcom/google/android/music/utils/BackgroundUtils;->COLOR_FADE:[C

    .line 47
    const/16 v0, 0x8ff

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 48
    sget-object v2, Lcom/google/android/music/utils/BackgroundUtils;->KERNEL_NORM:[I

    div-int/lit8 v3, v0, 0x9

    aput v3, v2, v0

    .line 47
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 52
    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/16 v2, 0xff

    if-ge v0, v2, :cond_1

    .line 54
    const/high16 v2, 0x4000

    int-to-float v3, v0

    const/high16 v4, 0x40c0

    mul-float/2addr v3, v4

    const/high16 v4, 0x437f

    div-float/2addr v3, v4

    neg-float v3, v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    double-to-float v3, v3

    add-float/2addr v3, v5

    div-float/2addr v2, v3

    sub-float v1, v2, v5

    .line 55
    .local v1, p:F
    sget-object v2, Lcom/google/android/music/utils/BackgroundUtils;->COLOR_FADE:[C

    const/high16 v3, 0x42e0

    mul-float/2addr v3, v1

    float-to-int v3, v3

    int-to-char v3, v3

    aput-char v3, v2, v0

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 57
    .end local v1           #p:F
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAdaptedBitmap(Landroid/content/Context;J)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "context"
    .parameter "albumId"

    .prologue
    const/4 v6, 0x0

    const/16 v3, 0x80

    .line 114
    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move v4, v3

    move-object v7, v6

    invoke-static/range {v0 .. v7}, Lcom/google/android/music/utils/AlbumArtUtils;->getArtwork(Landroid/content/Context;JIIZLjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 116
    .local v8, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v8}, Lcom/google/android/music/utils/BackgroundUtils;->createAdaptedBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createAdaptedBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "bitmap"

    .prologue
    const/16 v1, 0x80

    .line 124
    if-eqz p0, :cond_1

    .line 125
    invoke-static {p0, v1, v1}, Lcom/google/android/music/utils/BackgroundUtils;->scaleShadeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 127
    .local v0, adaptedBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/google/android/music/utils/BackgroundUtils;->createTileableTexture(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 128
    invoke-static {v0}, Lcom/google/android/music/utils/BackgroundUtils;->gaussianBlur(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 132
    :goto_0
    sget-object v1, Lcom/google/android/music/utils/BackgroundUtils;->mAdaptedBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 133
    sget-object v1, Lcom/google/android/music/utils/BackgroundUtils;->mAdaptedBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 135
    :cond_0
    return-object v0

    .line 130
    .end local v0           #adaptedBitmap:Landroid/graphics/Bitmap;
    :cond_1
    sget-object v0, Lcom/google/android/music/utils/BackgroundUtils;->mDefaultBackgroundBitmap:Landroid/graphics/Bitmap;

    .restart local v0       #adaptedBitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private static createDefaultBackgroundBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "context"

    .prologue
    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020134

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 76
    .local v2, is:Ljava/io/InputStream;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 77
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    invoke-static {}, Lcom/google/android/music/utils/AlbumArtUtils;->getPreferredConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    iput-object v4, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 79
    const/4 v4, 0x0

    :try_start_0
    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 82
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 88
    :goto_0
    return-object v0

    .line 83
    :catch_0
    move-exception v1

    .line 85
    .local v1, e:Ljava/io/IOException;
    sget-object v4, Lcom/google/android/music/utils/BackgroundUtils;->TAG:Ljava/lang/String;

    const-string v5, "Could not create default background bitmap"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 81
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 82
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 86
    :goto_1
    throw v4

    .line 83
    :catch_1
    move-exception v1

    .line 85
    .restart local v1       #e:Ljava/io/IOException;
    sget-object v5, Lcom/google/android/music/utils/BackgroundUtils;->TAG:Ljava/lang/String;

    const-string v6, "Could not create default background bitmap"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static createTileableTexture(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "source"

    .prologue
    const/4 v2, 0x0

    .line 140
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 141
    .local v3, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 142
    .local v7, height:I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .line 143
    .local v1, pixels:[I
    div-int/lit8 v11, v3, 0x2

    .line 144
    .local v11, outWidth:I
    div-int/lit8 v10, v7, 0x2

    .line 145
    .local v10, outHeight:I
    mul-int v0, v10, v3

    new-array v12, v0, [I

    .line 146
    .local v12, tmp:[I
    mul-int v0, v11, v10

    new-array v9, v0, [I

    .local v9, out:[I
    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    .line 147
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 148
    invoke-static {v1, v12, v3, v7}, Lcom/google/android/music/utils/BackgroundUtils;->tilepass([I[III)V

    .line 149
    invoke-static {v12, v9, v10, v3}, Lcom/google/android/music/utils/BackgroundUtils;->tilepass([I[III)V

    .line 150
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v11, v10, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 151
    .local v8, dest:Landroid/graphics/Bitmap;
    return-object v8
.end method

.method private static darken([I)V
    .locals 13
    .parameter "in"

    .prologue
    .line 298
    array-length v8, p0

    .line 299
    .local v8, numPixels:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v8, :cond_2

    .line 300
    aget v5, p0, v2

    .line 301
    .local v5, inpixel:I
    shr-int/lit8 v11, v5, 0x10

    and-int/lit16 v6, v11, 0xff

    .line 302
    .local v6, inr:I
    shr-int/lit8 v11, v5, 0x8

    and-int/lit16 v4, v11, 0xff

    .line 303
    .local v4, ing:I
    and-int/lit16 v3, v5, 0xff

    .line 304
    .local v3, inb:I
    if-le v6, v4, :cond_0

    move v7, v6

    .line 305
    .local v7, lum:I
    :goto_1
    if-le v7, v3, :cond_1

    .line 306
    :goto_2
    sget-object v11, Lcom/google/android/music/utils/BackgroundUtils;->COLOR_FADE:[C

    aget-char v10, v11, v7

    .line 307
    .local v10, scale:I
    mul-int v11, v10, v6

    shr-int/lit8 v9, v11, 0x8

    .line 308
    .local v9, r:I
    mul-int v11, v10, v4

    shr-int/lit8 v1, v11, 0x8

    .line 309
    .local v1, g:I
    mul-int v11, v10, v3

    shr-int/lit8 v0, v11, 0x8

    .line 310
    .local v0, b:I
    const/high16 v11, -0x100

    shl-int/lit8 v12, v9, 0x10

    or-int/2addr v11, v12

    shl-int/lit8 v12, v1, 0x8

    or-int/2addr v11, v12

    or-int/2addr v11, v0

    aput v11, p0, v2

    .line 299
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #b:I
    .end local v1           #g:I
    .end local v7           #lum:I
    .end local v9           #r:I
    .end local v10           #scale:I
    :cond_0
    move v7, v4

    .line 304
    goto :goto_1

    .restart local v7       #lum:I
    :cond_1
    move v7, v3

    .line 305
    goto :goto_2

    .line 312
    .end local v3           #inb:I
    .end local v4           #ing:I
    .end local v5           #inpixel:I
    .end local v6           #inr:I
    .end local v7           #lum:I
    :cond_2
    return-void
.end method

.method public static gaussianBlur(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "source"

    .prologue
    const/4 v2, 0x0

    .line 185
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 186
    .local v3, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 188
    .local v7, height:I
    mul-int v9, v3, v7

    .line 189
    .local v9, numPixels:I
    new-array v1, v9, [I

    .line 190
    .local v1, in:[I
    new-array v10, v9, [I

    .local v10, tmp:[I
    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    .line 193
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 202
    invoke-static {v1, v10, v3, v7}, Lcom/google/android/music/utils/BackgroundUtils;->gaussianBlurFilter([I[III)V

    .line 203
    invoke-static {v10, v1, v3, v7}, Lcom/google/android/music/utils/BackgroundUtils;->gaussianBlurFilter([I[III)V

    .line 206
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v7, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 207
    .local v8, filtered:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 208
    return-object v8
.end method

.method private static gaussianBlurFilter([I[III)V
    .locals 16
    .parameter "in"
    .parameter "out"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 212
    const/16 v2, 0x9

    new-array v11, v2, [I

    fill-array-data v11, :array_0

    .line 213
    .local v11, weights:[I
    const/4 v2, 0x0

    .line 214
    .local v2, inPos:I
    const/4 v3, 0x1

    sub-int v12, p2, v3

    .line 215
    .local v12, widthMask:I
    const/4 v3, 0x0

    .local v3, y:I
    move v14, v3

    .end local v3           #y:I
    .local v14, y:I
    move v7, v2

    .end local v2           #inPos:I
    .local v7, inPos:I
    :goto_0
    move v0, v14

    move/from16 v1, p3

    if-ge v0, v1, :cond_2

    .line 217
    const/16 v2, 0xff

    .line 219
    .local v2, alpha:I
    move v3, v14

    .line 220
    .local v3, outPos:I
    const/4 v4, 0x0

    .local v4, x:I
    move v13, v4

    .end local v4           #x:I
    .local v13, x:I
    move v8, v3

    .end local v3           #outPos:I
    .local v8, outPos:I
    :goto_1
    move v0, v13

    move/from16 v1, p2

    if-ge v0, v1, :cond_1

    .line 221
    const/4 v6, 0x0

    .line 222
    .local v6, red:I
    const/4 v4, 0x0

    .line 223
    .local v4, green:I
    const/4 v3, 0x0

    .line 224
    .local v3, blue:I
    const/4 v5, -0x4

    .local v5, i:I
    move v9, v6

    .end local v6           #red:I
    .local v9, red:I
    move v6, v5

    .end local v5           #i:I
    .local v6, i:I
    move v5, v4

    .end local v4           #green:I
    .local v5, green:I
    move v4, v3

    .end local v3           #blue:I
    .local v4, blue:I
    :goto_2
    const/4 v3, 0x4

    if-gt v6, v3, :cond_0

    .line 225
    add-int v3, v13, v6

    and-int/2addr v3, v12

    add-int/2addr v3, v7

    aget v3, p0, v3

    .line 226
    .local v3, argb:I
    add-int/lit8 v10, v6, 0x4

    aget v10, v11, v10

    .line 227
    .local v10, weight:I
    const/high16 v15, 0xff

    and-int/2addr v15, v3

    shr-int/lit8 v15, v15, 0x10

    mul-int/2addr v15, v10

    add-int/2addr v9, v15

    .line 228
    const v15, 0xff00

    and-int/2addr v15, v3

    shr-int/lit8 v15, v15, 0x8

    mul-int/2addr v15, v10

    add-int/2addr v5, v15

    .line 229
    and-int/lit16 v3, v3, 0xff

    mul-int/2addr v3, v10

    add-int/2addr v3, v4

    .line 224
    .end local v4           #blue:I
    .local v3, blue:I
    add-int/lit8 v4, v6, 0x1

    .end local v6           #i:I
    .local v4, i:I
    move v6, v4

    .end local v4           #i:I
    .restart local v6       #i:I
    move v4, v3

    .end local v3           #blue:I
    .local v4, blue:I
    goto :goto_2

    .line 232
    .end local v10           #weight:I
    :cond_0
    shl-int/lit8 v3, v2, 0x18

    shr-int/lit8 v6, v9, 0x8

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v3, v6

    shr-int/lit8 v5, v5, 0x8

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v3, v5

    shr-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    aput v3, p1, v8

    .line 235
    .end local v4           #blue:I
    .end local v5           #green:I
    .end local v6           #i:I
    add-int v3, v8, p3

    .line 220
    .end local v8           #outPos:I
    .local v3, outPos:I
    add-int/lit8 v4, v13, 0x1

    .end local v13           #x:I
    .local v4, x:I
    move v13, v4

    .end local v4           #x:I
    .restart local v13       #x:I
    move v8, v3

    .end local v3           #outPos:I
    .restart local v8       #outPos:I
    goto :goto_1

    .line 237
    .end local v9           #red:I
    :cond_1
    add-int v2, v7, p2

    .line 215
    .end local v7           #inPos:I
    .local v2, inPos:I
    add-int/lit8 v3, v14, 0x1

    .end local v14           #y:I
    .local v3, y:I
    move v14, v3

    .end local v3           #y:I
    .restart local v14       #y:I
    move v7, v2

    .end local v2           #inPos:I
    .restart local v7       #inPos:I
    goto :goto_0

    .line 239
    .end local v8           #outPos:I
    .end local v13           #x:I
    :cond_2
    return-void

    .line 212
    nop

    :array_0
    .array-data 0x4
        0xdt 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static getAdaptedBitmap(Landroid/content/Context;J)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "context"
    .parameter "albumId"

    .prologue
    .line 93
    sget-object v1, Lcom/google/android/music/utils/BackgroundUtils;->mAdaptedBitmapCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 94
    :try_start_0
    sget-object v2, Lcom/google/android/music/utils/BackgroundUtils;->mAdaptedBitmapCache:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 95
    .local v0, adaptedBitmap:Landroid/graphics/Bitmap;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/music/utils/BackgroundUtils;->createAdaptedBitmap(Landroid/content/Context;J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 102
    sget-object v1, Lcom/google/android/music/utils/BackgroundUtils;->mAdaptedBitmapCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 103
    :try_start_1
    sget-object v2, Lcom/google/android/music/utils/BackgroundUtils;->mAdaptedBitmapCache:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 106
    :cond_1
    return-object v0

    .line 95
    .end local v0           #adaptedBitmap:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 104
    .restart local v0       #adaptedBitmap:Landroid/graphics/Bitmap;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public static getDefaultBackground(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "context"

    .prologue
    .line 66
    sget-object v0, Lcom/google/android/music/utils/BackgroundUtils;->mDefaultBackgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/music/utils/BackgroundUtils;->mDefaultBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    :cond_0
    invoke-static {p0}, Lcom/google/android/music/utils/BackgroundUtils;->createDefaultBackgroundBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/utils/BackgroundUtils;->mDefaultBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 69
    :cond_1
    sget-object v0, Lcom/google/android/music/utils/BackgroundUtils;->mDefaultBackgroundBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static final resizeBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "bitmap"
    .parameter "maxSize"

    .prologue
    .line 315
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 316
    .local v4, srcWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 317
    .local v3, srcHeight:I
    move v5, p1

    .line 318
    .local v5, width:I
    move v0, p1

    .line 319
    .local v0, height:I
    const/4 v1, 0x0

    .line 320
    .local v1, needsResize:Z
    if-le v4, v3, :cond_1

    .line 321
    if-le v4, p1, :cond_0

    .line 322
    const/4 v1, 0x1

    .line 323
    mul-int v6, p1, v3

    div-int v0, v6, v4

    .line 331
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 332
    const/4 v6, 0x1

    invoke-static {p0, v5, v0, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .local v2, retVal:Landroid/graphics/Bitmap;
    move-object v6, v2

    .line 335
    .end local v2           #retVal:Landroid/graphics/Bitmap;
    :goto_1
    return-object v6

    .line 326
    :cond_1
    if-le v3, p1, :cond_0

    .line 327
    const/4 v1, 0x1

    .line 328
    mul-int v6, p1, v4

    div-int v5, v6, v3

    goto :goto_0

    :cond_2
    move-object v6, p0

    .line 335
    goto :goto_1
.end method

.method public static scaleShadeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "source"
    .parameter "destWidth"
    .parameter "destHeight"

    .prologue
    .line 244
    const/16 v0, 0x80

    invoke-static {p0, v0}, Lcom/google/android/music/utils/BackgroundUtils;->resizeBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 245
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 246
    .local v4, sourceWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 247
    .local v2, sourceHeight:I
    int-to-float v0, v4

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 248
    .local v0, fitX:F
    int-to-float v1, v2

    int-to-float v3, p2

    div-float/2addr v1, v3

    .line 254
    .local v1, fitY:F
    cmpg-float v3, v0, v1

    if-gez v3, :cond_1

    .line 256
    move v3, v4

    .line 257
    .local v3, cropWidth:I
    int-to-float v1, p2

    mul-float/2addr v1, v0

    float-to-int v7, v1

    .line 258
    .local v7, cropHeight:I
    const/4 v4, 0x0

    .line 259
    .local v4, cropX:I
    sub-int v1, v2, v7

    div-int/lit8 v5, v1, 0x2

    .line 260
    .end local v1           #fitY:F
    .local v5, cropY:I
    const/high16 v1, 0x3f80

    div-float v0, v1, v0

    .local v0, scale:F
    move v8, v0

    .line 271
    .end local v0           #scale:F
    .local v8, scale:F
    :goto_0
    mul-int v0, v3, v7

    .line 272
    .local v0, numPixels:I
    new-array v1, v0, [I

    .line 275
    .local v1, in:[I
    const/4 v2, 0x0

    move-object v0, p0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 277
    .end local v0           #numPixels:I
    .end local v2           #sourceHeight:I
    invoke-static {v1}, Lcom/google/android/music/utils/BackgroundUtils;->darken([I)V

    .line 280
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .end local p0
    invoke-static {v1, v3, v7, p0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 283
    .local v0, filtered:Landroid/graphics/Bitmap;
    if-ne p1, v3, :cond_0

    if-eq p2, v7, :cond_2

    .line 284
    :cond_0
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 285
    .local p1, output:Landroid/graphics/Bitmap;
    new-instance p0, Landroid/graphics/Canvas;

    invoke-direct {p0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 286
    .local p0, canvas:Landroid/graphics/Canvas;
    new-instance p2, Landroid/graphics/Paint;

    .end local p2
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 287
    .local p2, paint:Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 288
    .end local v1           #in:[I
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 289
    invoke-virtual {p0, v8, v8}, Landroid/graphics/Canvas;->scale(FF)V

    .line 290
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 291
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 292
    move-object p0, p1

    .line 294
    .end local v0           #filtered:Landroid/graphics/Bitmap;
    .end local p1           #output:Landroid/graphics/Bitmap;
    .end local p2           #paint:Landroid/graphics/Paint;
    .local p0, filtered:Landroid/graphics/Bitmap;
    :goto_1
    return-object p0

    .line 263
    .end local v3           #cropWidth:I
    .end local v5           #cropY:I
    .end local v7           #cropHeight:I
    .end local v8           #scale:F
    .local v0, fitX:F
    .local v1, fitY:F
    .restart local v2       #sourceHeight:I
    .local v4, sourceWidth:I
    .local p0, source:Landroid/graphics/Bitmap;
    .local p1, destWidth:I
    .local p2, destHeight:I
    :cond_1
    int-to-float v0, p1

    mul-float/2addr v0, v1

    float-to-int v3, v0

    .line 264
    .restart local v3       #cropWidth:I
    move v7, v2

    .line 265
    .restart local v7       #cropHeight:I
    sub-int v0, v4, v3

    div-int/lit8 v4, v0, 0x2

    .line 266
    .end local v0           #fitX:F
    .local v4, cropX:I
    const/4 v5, 0x0

    .line 267
    .restart local v5       #cropY:I
    const/high16 v0, 0x3f80

    div-float/2addr v0, v1

    .local v0, scale:F
    move v8, v0

    .end local v0           #scale:F
    .restart local v8       #scale:F
    goto :goto_0

    .end local v2           #sourceHeight:I
    .end local p0           #source:Landroid/graphics/Bitmap;
    .local v0, filtered:Landroid/graphics/Bitmap;
    .local v1, in:[I
    :cond_2
    move-object p0, v0

    .end local v0           #filtered:Landroid/graphics/Bitmap;
    .local p0, filtered:Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method private static tilepass([I[III)V
    .locals 10
    .parameter "in"
    .parameter "out"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 159
    div-int/lit8 v5, p3, 0x2

    .line 160
    .local v5, halfHeight:I
    const/4 p3, 0x0

    .local p3, y:I
    move v9, p3

    .end local p3           #y:I
    .local v9, y:I
    :goto_0
    if-ge v9, v5, :cond_1

    .line 162
    shl-int/lit8 p3, v9, 0x8

    div-int/2addr p3, v5

    .line 163
    .local p3, a0:I
    const/16 v0, 0x100

    sub-int/2addr v0, p3

    .line 164
    .local v0, a1:I
    const/4 v1, 0x0

    .local v1, x:I
    move v8, v1

    .end local v1           #x:I
    .local v8, x:I
    :goto_1
    if-ge v8, p2, :cond_0

    .line 165
    mul-int v1, v9, p2

    add-int/2addr v1, v8

    aget v1, p0, v1

    .line 166
    .local v1, p0:I
    add-int v2, v9, v5

    mul-int/2addr v2, p2

    add-int/2addr v2, v8

    aget v2, p0, v2

    .line 167
    .local v2, p1:I
    shr-int/lit8 v3, v1, 0x10

    and-int/lit16 v6, v3, 0xff

    .line 168
    .local v6, r0:I
    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    .line 169
    .local v3, g0:I
    and-int/lit16 v1, v1, 0xff

    .line 170
    .local v1, b0:I
    shr-int/lit8 v4, v2, 0x10

    and-int/lit16 v7, v4, 0xff

    .line 171
    .local v7, r1:I
    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    .line 172
    .local v4, g1:I
    and-int/lit16 v2, v2, 0xff

    .line 173
    .local v2, b1:I
    mul-int/2addr v6, p3

    mul-int/2addr v7, v0

    add-int/2addr v6, v7

    shr-int/lit8 v6, v6, 0x8

    .line 174
    .local v6, r3:I
    mul-int/2addr v3, p3

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x8

    .line 175
    .local v3, g3:I
    mul-int/2addr v1, p3

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    shr-int/lit8 v2, v1, 0x8

    .line 176
    .local v2, b3:I
    const/16 v1, 0xff

    .line 177
    .local v1, a3:I
    shl-int/lit8 v1, v1, 0x18

    shl-int/lit8 v4, v6, 0x10

    or-int/2addr v1, v4

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    or-int/2addr v1, v2

    .line 179
    .local v1, p3:I
    mul-int v2, v8, v5

    add-int/2addr v2, v9

    aput v1, p1, v2

    .line 164
    .end local v2           #b3:I
    .end local v3           #g3:I
    .end local v4           #g1:I
    .end local v7           #r1:I
    add-int/lit8 v1, v8, 0x1

    .end local v8           #x:I
    .local v1, x:I
    move v8, v1

    .end local v1           #x:I
    .restart local v8       #x:I
    goto :goto_1

    .line 160
    .end local v6           #r3:I
    :cond_0
    add-int/lit8 p3, v9, 0x1

    .end local v9           #y:I
    .local p3, y:I
    move v9, p3

    .end local p3           #y:I
    .restart local v9       #y:I
    goto :goto_0

    .line 182
    .end local v0           #a1:I
    .end local v8           #x:I
    :cond_1
    return-void
.end method

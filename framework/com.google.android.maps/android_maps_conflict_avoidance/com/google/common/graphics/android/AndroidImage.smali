.class public Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;
.super Ljava/lang/Object;
.source "AndroidImage.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;
    }
.end annotation


# static fields
.field private static volatile bitmapCount:I


# instance fields
.field private volatile bitmap:Landroid/graphics/Bitmap;

.field private final isOriginal:Z

.field private pinned:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmapCount:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 78
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;-><init>(IIZ)V

    .line 79
    return-void
.end method

.method public constructor <init>(IIZ)V
    .registers 7
    .parameter "width"
    .parameter "height"
    .parameter "processAlpha"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->pinned:Z

    .line 82
    if-eqz p3, :cond_1d

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object v0, v1

    .line 84
    .local v0, config:Landroid/graphics/Bitmap$Config;
    :goto_b
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    .line 85
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_21

    .line 86
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Null Bitmap!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    .end local v0           #config:Landroid/graphics/Bitmap$Config;
    :cond_1d
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object v0, v1

    goto :goto_b

    .line 88
    .restart local v0       #config:Landroid/graphics/Bitmap$Config;
    :cond_21
    const-class v1, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    monitor-enter v1

    .line 89
    :try_start_24
    sget v2, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmapCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmapCount:I

    .line 90
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->isOriginal:Z

    .line 91
    monitor-exit v1

    .line 92
    return-void

    .line 91
    :catchall_2f
    move-exception v2

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_24 .. :try_end_31} :catchall_2f

    throw v2
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;)V
    .registers 11
    .parameter "context"
    .parameter
    .parameter "name"
    .parameter "autoScale"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, stringIdMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean v4, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->pinned:Z

    .line 119
    invoke-static {p3}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->cleanName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, cleanName:Ljava/lang/String;
    if-eqz p2, :cond_43

    .line 123
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 124
    .local v2, resourceId:Ljava/lang/Integer;
    if-eqz v2, :cond_43

    .line 125
    const/4 v1, 0x0

    .line 126
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v3, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;->AUTO_SCALE_DISABLED:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;

    if-ne p4, v3, :cond_20

    .line 128
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 129
    .restart local v1       #options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 131
    :cond_20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    .line 132
    sget-object v3, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;->AUTO_SCALE_DISABLED:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;

    if-ne p4, v3, :cond_43

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_43

    .line 134
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v4

    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getPixelsPerInch()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 139
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v2           #resourceId:Ljava/lang/Integer;
    :cond_43
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_4d

    .line 141
    invoke-static {p3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    .line 144
    :cond_4d
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_76

    .line 145
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Null Bitmap! \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"; if seen during a test, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "this usually means that the image file needs to be added to the test.config file"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 148
    :cond_76
    const-class v3, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    monitor-enter v3

    .line 149
    :try_start_79
    sget v4, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmapCount:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmapCount:I

    .line 150
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->isOriginal:Z

    .line 151
    monitor-exit v3

    .line 152
    return-void

    .line 151
    :catchall_84
    move-exception v4

    monitor-exit v3
    :try_end_86
    .catchall {:try_start_79 .. :try_end_86} :catchall_84

    throw v4
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "bitmap"

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->pinned:Z

    .line 105
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    .line 106
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->isOriginal:Z

    .line 107
    return-void
.end method

.method public constructor <init>([BII)V
    .registers 6
    .parameter "imageData"
    .parameter "imageOffset"
    .parameter "imageLength"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->pinned:Z

    .line 60
    invoke-static {p1, p2, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    .line 62
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_18

    .line 63
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Null Bitmap!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_18
    const-class v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    monitor-enter v0

    .line 66
    :try_start_1b
    sget v1, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmapCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmapCount:I

    .line 67
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->isOriginal:Z

    .line 68
    monitor-exit v0

    .line 69
    return-void

    .line 68
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_26

    throw v1
.end method

.method private static cleanName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "name"

    .prologue
    .line 155
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_d

    .line 156
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 158
    :cond_d
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 159
    .local v0, dotIndex:I
    if-lez v0, :cond_1a

    .line 160
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 162
    :cond_1a
    return-object p0
.end method

.method private compact()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 267
    iget-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->isOriginal:Z

    if-nez v1, :cond_8

    .line 268
    iput-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    .line 292
    :cond_7
    :goto_7
    return-void

    .line 272
    :cond_8
    monitor-enter p0

    .line 273
    :try_start_9
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    .line 274
    .local v0, b:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    .line 275
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_27

    .line 276
    if-eqz v0, :cond_7

    .line 277
    const-class v1, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    monitor-enter v1

    .line 278
    :try_start_14
    sget v2, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmapCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    sput v2, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmapCount:I

    .line 286
    sget v2, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmapCount:I

    if-gez v2, :cond_2a

    .line 288
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 290
    :catchall_24
    move-exception v2

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_24

    throw v2

    .line 275
    .end local v0           #b:Landroid/graphics/Bitmap;
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v1

    .line 290
    .restart local v0       #b:Landroid/graphics/Bitmap;
    :cond_2a
    :try_start_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_24

    goto :goto_7
.end method


# virtual methods
.method public createScaledImage(IIIIII)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .registers 15
    .parameter "srcX"
    .parameter "srcY"
    .parameter "srcWidth"
    .parameter "srcHeight"
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    .line 204
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;

    move-object v1, p0

    move v2, p5

    move v3, p6

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;-><init>(Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;IIIIII)V

    .line 206
    .local v0, image:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;
    mul-int v1, p5, p6

    const/16 v2, 0x1000

    if-ge v1, v2, :cond_15

    .line 214
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/ScaledAndroidImage;->getGraphics()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;

    .line 216
    :cond_15
    return-object v0
.end method

.method public drawImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;II)V
    .registers 11
    .parameter "g"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 256
    move-object v0, p1

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;

    move-object v1, v0

    .line 257
    .local v1, ag:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    int-to-float v4, p2

    int-to-float v5, p3

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 258
    return-void
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 262
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->compact()V

    .line 263
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 264
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getGraphics()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;
    .registers 4

    .prologue
    .line 195
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidGraphics;-><init>(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public pin()V
    .registers 2

    .prologue
    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->pinned:Z

    .line 167
    return-void
.end method

.method public recycle()V
    .registers 2

    .prologue
    .line 170
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->pinned:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_10

    .line 171
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    .line 174
    :cond_10
    return-void
.end method

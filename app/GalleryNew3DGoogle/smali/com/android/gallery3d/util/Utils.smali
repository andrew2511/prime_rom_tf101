.class public Lcom/android/gallery3d/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static sCrcTable:[J

.field private static volatile sCurrentThread:Ljava/lang/Thread;

.field static sPixelDensity:F

.field private static volatile sWarned:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x100

    .line 60
    new-array v6, v8, [J

    sput-object v6, Lcom/android/gallery3d/util/Utils;->sCrcTable:[J

    .line 146
    const/high16 v6, -0x4080

    sput v6, Lcom/android/gallery3d/util/Utils;->sPixelDensity:F

    .line 203
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v8, :cond_2

    .line 204
    int-to-long v2, v0

    .line 205
    .local v2, part:J
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    const/16 v6, 0x8

    if-ge v1, v6, :cond_1

    .line 206
    long-to-int v6, v2

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    const-wide v6, -0x6a536cd653b4364bL

    move-wide v4, v6

    .line 207
    .local v4, x:J
    :goto_2
    const/4 v6, 0x1

    shr-long v6, v2, v6

    xor-long v2, v6, v4

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 206
    .end local v4           #x:J
    :cond_0
    const-wide/16 v6, 0x0

    move-wide v4, v6

    goto :goto_2

    .line 209
    :cond_1
    sget-object v6, Lcom/android/gallery3d/util/Utils;->sCrcTable:[J

    aput-wide v2, v6, v0

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    .end local v1           #j:I
    .end local v2           #part:J
    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Assert(Z)V
    .locals 1
    .parameter "cond"

    .prologue
    .line 64
    if-nez p0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 67
    :cond_0
    return-void
.end method

.method public static Assert(ZLjava/lang/String;)V
    .locals 1
    .parameter "cond"
    .parameter "message"

    .prologue
    .line 71
    if-nez p0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 74
    :cond_0
    return-void
.end method

.method public static accurateDistanceMeters(DDDD)D
    .locals 4
    .parameter "lat1"
    .parameter "lng1"
    .parameter "lat2"
    .parameter "lng2"

    .prologue
    .line 318
    const-wide/high16 v0, 0x3fe0

    sub-double v2, p4, p0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    .line 319
    .local v0, dlat:D
    const-wide/high16 v2, 0x3fe0

    sub-double p2, p6, p2

    mul-double/2addr p2, v2

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    .end local p2
    move-result-wide p2

    .line 320
    .local p2, dlng:D
    mul-double p6, v0, v0

    mul-double/2addr p2, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    .end local p2           #dlng:D
    .end local p6
    move-result-wide p0

    .end local p0
    mul-double/2addr p0, p2

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    mul-double/2addr p0, p2

    add-double/2addr p0, p6

    .line 321
    .local p0, x:D
    const-wide/high16 p2, 0x4000

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p4

    .end local p4
    const-wide/16 p6, 0x0

    const-wide/high16 v0, 0x3ff0

    sub-double p0, v0, p0

    invoke-static {p6, p7, p0, p1}, Ljava/lang/Math;->max(DD)D

    .end local v0           #dlat:D
    .end local p0           #x:D
    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    invoke-static {p4, p5, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    mul-double/2addr p0, p2

    const-wide p2, 0x415849c600000000L

    mul-double/2addr p0, p2

    return-wide p0
.end method

.method public static assertNotInRenderThread()V
    .locals 3

    .prologue
    .line 242
    sget-boolean v0, Lcom/android/gallery3d/util/Utils;->sWarned:Z

    if-nez v0, :cond_0

    .line 243
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/util/Utils;->sCurrentThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    .line 244
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/gallery3d/util/Utils;->sWarned:Z

    .line 245
    const-string v0, "Utils"

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Should not do this in render thread"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    :cond_0
    return-void
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, object:Ljava/lang/Object;,"TT;"
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 79
    :cond_0
    return-object p0
.end method

.method public static clamp(FFF)F
    .locals 1
    .parameter "x"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 134
    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    move v0, p2

    .line 136
    :goto_0
    return v0

    .line 135
    :cond_0
    cmpg-float v0, p0, p1

    if-gez v0, :cond_1

    move v0, p1

    goto :goto_0

    :cond_1
    move v0, p0

    .line 136
    goto :goto_0
.end method

.method public static clamp(III)I
    .locals 1
    .parameter "x"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 127
    if-le p0, p2, :cond_0

    move v0, p2

    .line 129
    :goto_0
    return v0

    .line 128
    :cond_0
    if-ge p0, p1, :cond_1

    move v0, p1

    goto :goto_0

    :cond_1
    move v0, p0

    .line 129
    goto :goto_0
.end method

.method public static clamp(JJJ)J
    .locals 2
    .parameter "x"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 141
    cmp-long v0, p0, p4

    if-lez v0, :cond_0

    move-wide v0, p4

    .line 143
    :goto_0
    return-wide v0

    .line 142
    :cond_0
    cmp-long v0, p0, p2

    if-gez v0, :cond_1

    move-wide v0, p2

    goto :goto_0

    :cond_1
    move-wide v0, p0

    .line 143
    goto :goto_0
.end method

.method public static closeSilently(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 340
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "Utils"

    const-string v2, "fail to close"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static closeSilently(Landroid/os/ParcelFileDescriptor;)V
    .locals 3
    .parameter "fd"

    .prologue
    .line 332
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "Utils"

    const-string v2, "fail to close"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 251
    if-nez p0, :cond_0

    .line 257
    :goto_0
    return-void

    .line 253
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "Utils"

    const-string v2, "close fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static compare(JJ)I
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 260
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, p0, p2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final crc64Long(Ljava/lang/String;)J
    .locals 2
    .parameter "in"

    .prologue
    .line 194
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 195
    :cond_0
    const-wide/16 v0, 0x0

    .line 197
    :goto_0
    return-wide v0

    :cond_1
    invoke-static {p0}, Lcom/android/gallery3d/util/Utils;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/util/Utils;->crc64Long([B)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static final crc64Long([B)J
    .locals 8
    .parameter "buffer"

    .prologue
    .line 214
    const-wide/16 v0, -0x1

    .line 215
    .local v0, crc:J
    const/4 v2, 0x0

    .local v2, k:I
    array-length v3, p0

    .local v3, n:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 216
    sget-object v4, Lcom/android/gallery3d/util/Utils;->sCrcTable:[J

    long-to-int v5, v0

    aget-byte v6, p0, v2

    xor-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-wide v4, v4, v5

    const/16 v6, 0x8

    shr-long v6, v0, v6

    xor-long v0, v4, v6

    .line 215
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 218
    :cond_0
    return-wide v0
.end method

.method public static determineTypeBits(Landroid/content/Context;Landroid/content/Intent;)I
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 489
    const/4 v1, 0x0

    .line 490
    .local v1, typeBits:I
    invoke-virtual {p1, p0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, type:Ljava/lang/String;
    const-string v2, "android.intent.extra.LOCAL_ONLY"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 492
    const-string v2, "*/*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 493
    const/4 v1, 0x7

    .line 508
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    const/4 v1, 0x3

    .line 510
    :cond_1
    return v1

    .line 494
    :cond_2
    const-string v2, "image/*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 495
    const/4 v1, 0x5

    goto :goto_0

    .line 496
    :cond_3
    const-string v2, "video/*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 497
    const/4 v1, 0x6

    goto :goto_0

    .line 500
    :cond_4
    const-string v2, "*/*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 501
    const/4 v1, 0x3

    goto :goto_0

    .line 502
    :cond_5
    const-string v2, "image/*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 503
    const/4 v1, 0x1

    goto :goto_0

    .line 504
    :cond_6
    const-string v2, "video/*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 505
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public static dpToPixel(F)F
    .locals 1
    .parameter "dp"

    .prologue
    .line 159
    sget v0, Lcom/android/gallery3d/util/Utils;->sPixelDensity:F

    mul-float/2addr v0, p0

    return v0
.end method

.method public static ensureNotNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 425
    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 85
    if-eq p0, p1, :cond_2

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static fastDistanceMeters(DDDD)D
    .locals 4
    .parameter "latRad1"
    .parameter "lngRad1"
    .parameter "latRad2"
    .parameter "lngRad2"

    .prologue
    .line 295
    sub-double v0, p0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f91df46a2529d39L

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_0

    sub-double v0, p2, p6

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f91df46a2529d39L

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 297
    :cond_0
    invoke-static/range {p0 .. p7}, Lcom/android/gallery3d/util/Utils;->accurateDistanceMeters(DDDD)D

    move-result-wide p0

    .line 313
    .end local p0
    .end local p2
    .end local p4
    :goto_0
    return-wide p0

    .line 300
    .restart local p0
    .restart local p2
    .restart local p4
    :cond_1
    sub-double v0, p0, p4

    .line 303
    .local v0, sineLat:D
    sub-double/2addr p2, p6

    .line 307
    .local p2, sineLng:D
    add-double/2addr p0, p4

    const-wide/high16 p4, 0x4000

    div-double/2addr p0, p4

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    .end local p0
    .end local p4
    move-result-wide p0

    .line 308
    .local p0, cosTerms:D
    mul-double/2addr p0, p0

    .line 309
    mul-double p4, v0, v0

    mul-double/2addr p0, p2

    mul-double/2addr p0, p2

    add-double/2addr p0, p4

    .line 310
    .local p0, trigTerm:D
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    .line 313
    const-wide p2, 0x415849c600000000L

    mul-double/2addr p0, p2

    goto :goto_0
.end method

.method public static floorLog2(F)I
    .locals 3
    .parameter "value"

    .prologue
    const/4 v2, 0x1

    .line 273
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    .line 274
    shl-int v1, v2, v0

    int-to-float v1, v1

    cmpl-float v1, v1, p0

    if-lez v1, :cond_1

    .line 276
    :cond_0
    sub-int v1, v0, v2

    return v1

    .line 273
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static formatDuration(Landroid/content/Context;I)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "duration"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 443
    div-int/lit16 v1, p1, 0xe10

    .line 444
    .local v1, h:I
    mul-int/lit16 v4, v1, 0xe10

    sub-int v4, p1, v4

    div-int/lit8 v2, v4, 0x3c

    .line 445
    .local v2, m:I
    mul-int/lit16 v4, v1, 0xe10

    mul-int/lit8 v5, v2, 0x3c

    add-int/2addr v4, v5

    sub-int v3, p1, v4

    .line 447
    .local v3, s:I
    if-nez v1, :cond_0

    .line 448
    const v4, 0x7f080002

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, durationValue:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 450
    .end local v0           #durationValue:Ljava/lang/String;
    :cond_0
    const v4, 0x7f080003

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #durationValue:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getBucketId(Ljava/lang/String;)I
    .locals 1
    .parameter "path"

    .prologue
    .line 429
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 8
    .parameter "in"

    .prologue
    .line 222
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    new-array v6, v7, [B

    .line 223
    .local v6, result:[B
    const/4 v4, 0x0

    .line 224
    .local v4, output:I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, arr$:[C
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v5, v4

    .end local v4           #output:I
    .local v5, output:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-char v1, v0, v2

    .line 225
    .local v1, ch:C
    add-int/lit8 v4, v5, 0x1

    .end local v5           #output:I
    .restart local v4       #output:I
    and-int/lit16 v7, v1, 0xff

    int-to-byte v7, v7

    aput-byte v7, v6, v5

    .line 226
    add-int/lit8 v5, v4, 0x1

    .end local v4           #output:I
    .restart local v5       #output:I
    shr-int/lit8 v7, v1, 0x8

    int-to-byte v7, v7

    aput-byte v7, v6, v4

    .line 224
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    .end local v1           #ch:C
    :cond_0
    return-object v6
.end method

.method public static getSelectionModePrompt(I)I
    .locals 1
    .parameter "typeBits"

    .prologue
    .line 514
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 515
    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_0

    const v0, 0x7f080013

    .line 519
    :goto_0
    return v0

    .line 515
    :cond_0
    const v0, 0x7f080014

    goto :goto_0

    .line 519
    :cond_1
    const v0, 0x7f080012

    goto :goto_0
.end method

.method public static hasSpaceForSize(J)Z
    .locals 9
    .parameter "size"

    .prologue
    const/4 v8, 0x0

    .line 523
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 524
    .local v3, state:Ljava/lang/String;
    const-string v4, "mounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v8

    .line 535
    :goto_0
    return v4

    .line 528
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 530
    .local v1, path:Ljava/lang/String;
    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 531
    .local v2, stat:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v4, v6

    cmp-long v4, v4, p0

    if-lez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v8

    goto :goto_0

    .line 532
    .end local v2           #stat:Landroid/os/StatFs;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 533
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "Utils"

    const-string v5, "Fail to access external storage"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v8

    .line 535
    goto :goto_0
.end method

.method public static initPixelDensity(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 149
    sget v2, Lcom/android/gallery3d/util/Utils;->sPixelDensity:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 150
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 151
    .local v0, metrics:Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 153
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 154
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lcom/android/gallery3d/util/Utils;->sPixelDensity:F

    .line 156
    .end local v0           #metrics:Landroid/util/DisplayMetrics;
    .end local v1           #wm:Landroid/view/WindowManager;
    :cond_0
    return-void
.end method

.method public static interpolateAngle(FFF)F
    .locals 5
    .parameter "source"
    .parameter "target"
    .parameter "progress"

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x43b4

    .line 375
    sub-float v0, p1, p0

    .line 376
    .local v0, diff:F
    cmpg-float v2, v0, v4

    if-gez v2, :cond_0

    add-float/2addr v0, v3

    .line 377
    :cond_0
    const/high16 v2, 0x4334

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    sub-float/2addr v0, v3

    .line 379
    :cond_1
    mul-float v2, v0, p2

    add-float v1, p0, v2

    .line 380
    .local v1, result:F
    cmpg-float v2, v1, v4

    if-gez v2, :cond_2

    add-float v2, v1, v3

    :goto_0
    return v2

    :cond_2
    move v2, v1

    goto :goto_0
.end method

.method public static interpolateScale(FFF)F
    .locals 1
    .parameter "source"
    .parameter "target"
    .parameter "progress"

    .prologue
    .line 385
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method public static isEditorAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "activity"
    .parameter "mimeType"

    .prologue
    const/4 v4, 0x0

    .line 359
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 360
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 362
    .local v0, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    move v2, v4

    goto :goto_0
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 1
    .parameter "exifMake"

    .prologue
    .line 476
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOpaque(I)Z
    .locals 2
    .parameter "color"

    .prologue
    .line 172
    ushr-int/lit8 v0, p0, 0x18

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidLocation(DD)Z
    .locals 3
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    const-wide/16 v1, 0x0

    .line 367
    cmpl-double v0, p0, v1

    if-nez v0, :cond_0

    cmpl-double v0, p2, v1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static meterToPixel(F)I
    .locals 2
    .parameter "meter"

    .prologue
    .line 168
    const v0, 0x421d7ae1

    mul-float/2addr v0, p0

    const/high16 v1, 0x4320

    mul-float/2addr v0, v1

    invoke-static {v0}, Lcom/android/gallery3d/util/Utils;->dpToPixel(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static nextPowerOf2(I)I
    .locals 1
    .parameter "n"

    .prologue
    .line 100
    if-lez p0, :cond_0

    const/high16 v0, 0x4000

    if-le p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 101
    :cond_1
    add-int/lit8 p0, p0, -0x1

    .line 102
    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 103
    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 104
    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 105
    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 106
    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 107
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method public static parseFloatSafely(Ljava/lang/String;F)F
    .locals 4
    .parameter "content"
    .parameter "defaultValue"

    .prologue
    .line 456
    if-nez p0, :cond_0

    move v1, p1

    .line 461
    :goto_0
    return v1

    .line 458
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v1, "Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid float: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, p1

    .line 461
    goto :goto_0
.end method

.method public static parseIntSafely(Ljava/lang/String;I)I
    .locals 4
    .parameter "content"
    .parameter "defaultValue"

    .prologue
    .line 466
    if-nez p0, :cond_0

    move v1, p1

    .line 471
    :goto_0
    return v1

    .line 468
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 469
    :catch_0
    move-exception v0

    .line 470
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v1, "Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid int: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, p1

    .line 471
    goto :goto_0
.end method

.method public static prevPowerOf2(I)I
    .locals 1
    .parameter "n"

    .prologue
    .line 114
    if-gtz p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 115
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    return v0
.end method

.method public static setRenderThread()V
    .locals 1

    .prologue
    .line 238
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/util/Utils;->sCurrentThread:Ljava/lang/Thread;

    .line 239
    return-void
.end method

.method public static setSpinnerVisibility(Landroid/app/Activity;Z)V
    .locals 1
    .parameter "activity"
    .parameter "visible"

    .prologue
    .line 481
    new-instance v0, Lcom/android/gallery3d/util/Utils$2;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/util/Utils$2;-><init>(Landroid/app/Activity;Z)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 486
    return-void
.end method

.method public static setViewPointMatrix([FFFF)V
    .locals 4
    .parameter "matrix"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    const/4 v3, 0x0

    .line 417
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-static {p0, v3, v0, v1}, Ljava/util/Arrays;->fill([FIIF)V

    .line 418
    const/4 v0, 0x5

    const/16 v1, 0xf

    neg-float v2, p3

    aput v2, p0, v1

    aput v2, p0, v0

    aput v2, p0, v3

    .line 419
    const/16 v0, 0x8

    aput p1, p0, v0

    .line 420
    const/16 v0, 0x9

    aput p2, p0, v0

    .line 421
    const/16 v0, 0xa

    const/16 v1, 0xb

    const/high16 v2, 0x3f80

    aput v2, p0, v1

    aput v2, p0, v0

    .line 422
    return-void
.end method

.method public static showOnMap(Landroid/content/Context;DD)V
    .locals 4
    .parameter "context"
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 394
    :try_start_0
    const-string v0, "http://maps.google.com/maps?f=q&q=(%f,%f)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 396
    .local v1, uri:Ljava/lang/String;
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.google.android.apps.maps"

    const-string v3, "com.google.android.maps.MapsActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    .local v0, compName:Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .end local v1           #uri:Ljava/lang/String;
    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 400
    .local v0, mapsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    .line 408
    .end local v0           #mapsIntent:Landroid/content/Intent;
    .end local p1
    .end local p3
    .local p0, mapsIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 401
    .local p0, context:Landroid/content/Context;
    .restart local p1
    .restart local p3
    :catch_0
    move-exception v0

    .line 403
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v1, "Utils"

    const-string v2, "GMM activity not found!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 404
    const-string v0, "geo:%f,%f"

    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .end local p1
    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    aput-object p2, v1, p1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 405
    .local p2, url:Ljava/lang/String;
    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    .end local p3
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .end local p2           #url:Ljava/lang/String;
    invoke-direct {p1, p3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 406
    .local p1, mapsIntent:Landroid/content/Intent;
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move-object p0, p1

    .end local p1           #mapsIntent:Landroid/content/Intent;
    .local p0, mapsIntent:Landroid/content/Intent;
    goto :goto_0
.end method

.method public static swap([III)V
    .locals 2
    .parameter "array"
    .parameter "i"
    .parameter "j"

    .prologue
    .line 182
    aget v0, p0, p1

    .line 183
    .local v0, temp:I
    aget v1, p0, p2

    aput v1, p0, p1

    .line 184
    aput v0, p0, p2

    .line 185
    return-void
.end method

.method public static swap([Ljava/lang/Object;II)V
    .locals 2
    .parameter
    .parameter "i"
    .parameter "j"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, array:[Ljava/lang/Object;,"[TT;"
    aget-object v0, p0, p1

    .line 177
    .local v0, temp:Ljava/lang/Object;,"TT;"
    aget-object v1, p0, p2

    aput-object v1, p0, p1

    .line 178
    aput-object v0, p0, p2

    .line 179
    return-void
.end method

.method public static final toMile(D)D
    .locals 2
    .parameter "meter"

    .prologue
    .line 327
    const-wide v0, 0x4099240000000000L

    div-double v0, p0, v0

    return-wide v0
.end method

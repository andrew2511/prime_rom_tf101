.class public Lcom/android/volley/toolbox/ImageRequest;
.super Lcom/android/volley/Request;
.source "ImageRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDecodeConfig:Landroid/graphics/Bitmap$Config;

.field private final mListener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxHeight:I

.field private final mMaxWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0
    .parameter "url"
    .parameter
    .parameter "maxWidth"
    .parameter "maxHeight"
    .parameter "decodeConfig"
    .parameter "errorListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap$Config;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    .local p2, listener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<Landroid/graphics/Bitmap;>;"
    invoke-direct {p0, p1, p6}, Lcom/android/volley/Request;-><init>(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 59
    iput-object p2, p0, Lcom/android/volley/toolbox/ImageRequest;->mListener:Lcom/android/volley/Response$Listener;

    .line 60
    iput-object p5, p0, Lcom/android/volley/toolbox/ImageRequest;->mDecodeConfig:Landroid/graphics/Bitmap$Config;

    .line 61
    iput p3, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxWidth:I

    .line 62
    iput p4, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxHeight:I

    .line 63
    return-void
.end method

.method static findBestSampleSize(IIII)I
    .locals 12
    .parameter "actualWidth"
    .parameter "actualHeight"
    .parameter "desiredWidth"
    .parameter "desiredHeight"

    .prologue
    const/high16 v11, 0x4000

    .line 175
    int-to-double v7, p0

    int-to-double v9, p2

    div-double v5, v7, v9

    .line 176
    .local v5, wr:D
    int-to-double v7, p1

    int-to-double v9, p3

    div-double v0, v7, v9

    .line 177
    .local v0, hr:D
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    .line 178
    .local v3, ratio:D
    const/high16 v2, 0x3f80

    .line 179
    .local v2, n:F
    :goto_0
    mul-float v7, v2, v11

    float-to-double v7, v7

    cmpg-double v7, v7, v3

    if-gtz v7, :cond_0

    .line 180
    mul-float/2addr v2, v11

    goto :goto_0

    .line 183
    :cond_0
    float-to-int v7, v2

    return v7
.end method

.method private static getResizedHeight(IIII)I
    .locals 7
    .parameter "maxWidth"
    .parameter "maxHeight"
    .parameter "actualWidth"
    .parameter "actualHeight"

    .prologue
    .line 95
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    move v3, p3

    .line 113
    :goto_0
    return v3

    .line 99
    :cond_0
    if-nez p1, :cond_1

    .line 100
    int-to-double v3, p0

    int-to-double v5, p2

    div-double v0, v3, v5

    .line 101
    .local v0, ratio:D
    int-to-double v3, p3

    mul-double/2addr v3, v0

    double-to-int v3, v3

    goto :goto_0

    .line 104
    .end local v0           #ratio:D
    :cond_1
    if-nez p0, :cond_2

    move v3, p1

    .line 105
    goto :goto_0

    .line 108
    :cond_2
    int-to-double v3, p2

    int-to-double v5, p3

    div-double v0, v3, v5

    .line 109
    .restart local v0       #ratio:D
    move v2, p1

    .line 110
    .local v2, resized:I
    int-to-double v3, v2

    mul-double/2addr v3, v0

    int-to-double v5, p0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_3

    .line 111
    int-to-double v3, p0

    div-double/2addr v3, v0

    double-to-int v2, v3

    :cond_3
    move v3, v2

    .line 113
    goto :goto_0
.end method

.method private static getResizedWidth(IIII)I
    .locals 7
    .parameter "maxWidth"
    .parameter "maxHeight"
    .parameter "actualWidth"
    .parameter "actualHeight"

    .prologue
    .line 72
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    move v3, p2

    .line 90
    :goto_0
    return v3

    .line 76
    :cond_0
    if-nez p0, :cond_1

    .line 77
    int-to-double v3, p1

    int-to-double v5, p3

    div-double v0, v3, v5

    .line 78
    .local v0, ratio:D
    int-to-double v3, p2

    mul-double/2addr v3, v0

    double-to-int v3, v3

    goto :goto_0

    .line 81
    .end local v0           #ratio:D
    :cond_1
    if-nez p1, :cond_2

    move v3, p0

    .line 82
    goto :goto_0

    .line 85
    :cond_2
    int-to-double v3, p3

    int-to-double v5, p2

    div-double v0, v3, v5

    .line 86
    .restart local v0       #ratio:D
    move v2, p0

    .line 87
    .local v2, resized:I
    int-to-double v3, v2

    mul-double/2addr v3, v0

    int-to-double v5, p1

    cmpl-double v3, v3, v5

    if-lez v3, :cond_3

    .line 88
    int-to-double v3, p1

    div-double/2addr v3, v0

    double-to-int v2, v3

    :cond_3
    move v3, v2

    .line 90
    goto :goto_0
.end method


# virtual methods
.method protected deliverResponse(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageRequest;->mListener:Lcom/android/volley/Response$Listener;

    invoke-interface {v0, p1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    .line 161
    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/ImageRequest;->deliverResponse(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public getPriority()Lcom/android/volley/Request$Priority;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/volley/Request$Priority;->LOW:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 11
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 118
    iget-object v3, p1, Lcom/android/volley/NetworkResponse;->data:[B

    .line 119
    .local v3, data:[B
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 120
    .local v4, decodeOptions:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x0

    .line 122
    .local v2, bitmap:Landroid/graphics/Bitmap;
    iget v7, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxWidth:I

    if-nez v7, :cond_1

    iget v7, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxHeight:I

    if-nez v7, :cond_1

    .line 123
    iget-object v7, p0, Lcom/android/volley/toolbox/ImageRequest;->mDecodeConfig:Landroid/graphics/Bitmap$Config;

    iput-object v7, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 124
    array-length v7, v3

    invoke-static {v3, v9, v7, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 151
    :cond_0
    :goto_0
    if-nez v2, :cond_3

    .line 152
    sget-object v7, Lcom/android/volley/Response$ErrorCode;->SERVER:Lcom/android/volley/Response$ErrorCode;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/volley/Response;->error(Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)Lcom/android/volley/Response;

    move-result-object v7

    .line 154
    :goto_1
    return-object v7

    .line 127
    :cond_1
    iput-boolean v10, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 128
    array-length v7, v3

    invoke-static {v3, v9, v7, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 129
    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 130
    .local v1, actualWidth:I
    iget v0, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 133
    .local v0, actualHeight:I
    iget v7, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxWidth:I

    iget v8, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxHeight:I

    invoke-static {v7, v8, v1, v0}, Lcom/android/volley/toolbox/ImageRequest;->getResizedWidth(IIII)I

    move-result v6

    .line 134
    .local v6, desiredWidth:I
    iget v7, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxWidth:I

    iget v8, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxHeight:I

    invoke-static {v7, v8, v1, v0}, Lcom/android/volley/toolbox/ImageRequest;->getResizedHeight(IIII)I

    move-result v5

    .line 137
    .local v5, desiredHeight:I
    iput-boolean v9, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 140
    invoke-static {v1, v0, v6, v5}, Lcom/android/volley/toolbox/ImageRequest;->findBestSampleSize(IIII)I

    move-result v7

    iput v7, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 142
    array-length v7, v3

    invoke-static {v3, v9, v7, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 145
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-ne v7, v6, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-eq v7, v5, :cond_0

    .line 147
    :cond_2
    invoke-static {v2, v6, v5, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 154
    .end local v0           #actualHeight:I
    .end local v1           #actualWidth:I
    .end local v5           #desiredHeight:I
    .end local v6           #desiredWidth:I
    :cond_3
    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v7

    goto :goto_1
.end method

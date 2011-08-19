.class public Lcom/layar/core/POIRenderer2D;
.super Lcom/layar/core/POIRenderer;
.source "POIRenderer2D.java"


# static fields
.field public static LOW_TEXTURE_SIZE:Z = false

.field private static final TAG:Ljava/lang/String; = "layar.POIRenderer2D"


# instance fields
.field downloading:Z

.field private full:Landroid/graphics/Bitmap;

.field private fullReady:Z

.field private fullTextureId:I

.field private hasReduced:Z

.field private height:F

.field private imageDownload:Ljava/lang/Runnable;

.field private imageDownloaded:Z

.field private isFullMissed:Z

.field private isReducedMissed:Z

.field private final mTextureBuffer:Ljava/nio/IntBuffer;

.field private final mVertexBuffer:Ljava/nio/IntBuffer;

.field private reduced:Landroid/graphics/Bitmap;

.field private reducedReady:Z

.field private reducedTextureId:I

.field private width:F

.field private width_reduced:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/layar/core/POIRenderer2D;->LOW_TEXTURE_SIZE:Z

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/layar/data/POI;)V
    .locals 11
    .parameter "context"
    .parameter "poi"

    .prologue
    const/4 v10, 0x3

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/layar/core/POIRenderer;-><init>(Landroid/content/Context;Lcom/layar/data/BasePOI;)V

    .line 33
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/layar/core/POIRenderer2D;->full:Landroid/graphics/Bitmap;

    .line 34
    iput v9, p0, Lcom/layar/core/POIRenderer2D;->fullTextureId:I

    .line 35
    iput-boolean v7, p0, Lcom/layar/core/POIRenderer2D;->fullReady:Z

    .line 36
    iput-boolean v7, p0, Lcom/layar/core/POIRenderer2D;->isFullMissed:Z

    .line 39
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/layar/core/POIRenderer2D;->reduced:Landroid/graphics/Bitmap;

    .line 40
    iput v9, p0, Lcom/layar/core/POIRenderer2D;->reducedTextureId:I

    .line 41
    iput-boolean v7, p0, Lcom/layar/core/POIRenderer2D;->reducedReady:Z

    .line 42
    iput-boolean v7, p0, Lcom/layar/core/POIRenderer2D;->isReducedMissed:Z

    .line 44
    iput-boolean v7, p0, Lcom/layar/core/POIRenderer2D;->downloading:Z

    .line 46
    iput v6, p0, Lcom/layar/core/POIRenderer2D;->height:F

    .line 47
    iput v6, p0, Lcom/layar/core/POIRenderer2D;->width:F

    .line 48
    iput v6, p0, Lcom/layar/core/POIRenderer2D;->width_reduced:F

    .line 50
    iput-boolean v7, p0, Lcom/layar/core/POIRenderer2D;->imageDownloaded:Z

    .line 51
    new-instance v5, Lcom/layar/core/POIRenderer2D$1;

    invoke-direct {v5, p0}, Lcom/layar/core/POIRenderer2D$1;-><init>(Lcom/layar/core/POIRenderer2D;)V

    iput-object v5, p0, Lcom/layar/core/POIRenderer2D;->imageDownload:Ljava/lang/Runnable;

    .line 125
    iput-boolean v8, p0, Lcom/layar/core/POIRenderer2D;->showThrobber:Z

    .line 127
    const/high16 v0, 0x1

    .line 129
    .local v0, i:I
    const/16 v5, 0xc

    new-array v4, v5, [I

    .line 130
    neg-int v5, v0

    div-int/lit8 v5, v5, 0x2

    aput v5, v4, v7

    .line 131
    div-int/lit8 v5, v0, 0x2

    aput v5, v4, v10

    const/4 v5, 0x6

    .line 132
    neg-int v6, v0

    div-int/lit8 v6, v6, 0x2

    aput v6, v4, v5

    const/16 v5, 0x8

    aput v0, v4, v5

    const/16 v5, 0x9

    .line 133
    div-int/lit8 v6, v0, 0x2

    aput v6, v4, v5

    const/16 v5, 0xb

    aput v0, v4, v5

    .line 136
    .local v4, vertices:[I
    const/16 v5, 0x8

    new-array v2, v5, [I

    .line 137
    aput v0, v2, v8

    const/4 v5, 0x2

    .line 138
    aput v0, v2, v5

    aput v0, v2, v10

    const/4 v5, 0x6

    .line 140
    aput v0, v2, v5

    .line 143
    .local v2, texCoords:[I
    array-length v5, v4

    mul-int/lit8 v5, v5, 0x4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 144
    .local v3, vbb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 145
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v5

    iput-object v5, p0, Lcom/layar/core/POIRenderer2D;->mVertexBuffer:Ljava/nio/IntBuffer;

    .line 146
    iget-object v5, p0, Lcom/layar/core/POIRenderer2D;->mVertexBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 147
    iget-object v5, p0, Lcom/layar/core/POIRenderer2D;->mVertexBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v5, v7}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 149
    array-length v5, v2

    mul-int/lit8 v5, v5, 0x4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 150
    .local v1, tbb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 151
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v5

    iput-object v5, p0, Lcom/layar/core/POIRenderer2D;->mTextureBuffer:Ljava/nio/IntBuffer;

    .line 152
    iget-object v5, p0, Lcom/layar/core/POIRenderer2D;->mTextureBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v5, v2}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 153
    iget-object v5, p0, Lcom/layar/core/POIRenderer2D;->mTextureBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v5, v7}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 155
    iget-object v5, p2, Lcom/layar/data/POI;->object:Lcom/layar/data/BasePOI$POIObject;

    if-eqz v5, :cond_0

    .line 156
    iget-object v5, p2, Lcom/layar/data/POI;->object:Lcom/layar/data/BasePOI$POIObject;

    iget-object v5, v5, Lcom/layar/data/BasePOI$POIObject;->reduced:Ljava/lang/String;

    if-eqz v5, :cond_0

    iput-boolean v8, p0, Lcom/layar/core/POIRenderer2D;->hasReduced:Z

    .line 158
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/layar/core/POIRenderer2D;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput p1, p0, Lcom/layar/core/POIRenderer2D;->height:F

    return-void
.end method

.method static synthetic access$1(Lcom/layar/core/POIRenderer2D;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/layar/core/POIRenderer2D;->isFullMissed:Z

    return-void
.end method

.method static synthetic access$10(Lcom/layar/core/POIRenderer2D;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/layar/core/POIRenderer2D;->full:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$11(Lcom/layar/core/POIRenderer2D;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/layar/core/POIRenderer2D;->imageDownloaded:Z

    return-void
.end method

.method static synthetic access$2(Lcom/layar/core/POIRenderer2D;)Z
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/layar/core/POIRenderer2D;->isFullMissed:Z

    return v0
.end method

.method static synthetic access$3(Lcom/layar/core/POIRenderer2D;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput p1, p0, Lcom/layar/core/POIRenderer2D;->width:F

    return-void
.end method

.method static synthetic access$4(I)I
    .locals 1
    .parameter

    .prologue
    .line 112
    invoke-static {p0}, Lcom/layar/core/POIRenderer2D;->fitToPower2(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lcom/layar/core/POIRenderer2D;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/layar/core/POIRenderer2D;->full:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$6(Lcom/layar/core/POIRenderer2D;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/layar/core/POIRenderer2D;->isReducedMissed:Z

    return-void
.end method

.method static synthetic access$7(Lcom/layar/core/POIRenderer2D;)Z
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/layar/core/POIRenderer2D;->isReducedMissed:Z

    return v0
.end method

.method static synthetic access$8(Lcom/layar/core/POIRenderer2D;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput p1, p0, Lcom/layar/core/POIRenderer2D;->width_reduced:F

    return-void
.end method

.method static synthetic access$9(Lcom/layar/core/POIRenderer2D;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/layar/core/POIRenderer2D;->reduced:Landroid/graphics/Bitmap;

    return-void
.end method

.method private static fitToPower2(I)I
    .locals 6
    .parameter "dimension"

    .prologue
    const/16 v5, 0x40

    const/16 v4, 0x20

    const/16 v3, 0x10

    const/16 v2, 0x8

    const/4 v1, 0x4

    .line 113
    const/16 v0, 0x100

    if-le p0, v0, :cond_0

    sget-boolean v0, Lcom/layar/core/POIRenderer2D;->LOW_TEXTURE_SIZE:Z

    if-nez v0, :cond_0

    const/16 v0, 0x100

    .line 120
    :goto_0
    return v0

    .line 114
    :cond_0
    const/16 v0, 0x80

    if-le p0, v0, :cond_1

    const/16 v0, 0x80

    goto :goto_0

    .line 115
    :cond_1
    if-le p0, v5, :cond_2

    move v0, v5

    goto :goto_0

    .line 116
    :cond_2
    if-le p0, v4, :cond_3

    move v0, v4

    goto :goto_0

    .line 117
    :cond_3
    if-le p0, v3, :cond_4

    move v0, v3

    goto :goto_0

    .line 118
    :cond_4
    if-le p0, v2, :cond_5

    move v0, v2

    goto :goto_0

    .line 119
    :cond_5
    if-le p0, v1, :cond_6

    move v0, v1

    goto :goto_0

    .line 120
    :cond_6
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private initFull(Ljavax/microedition/khronos/opengles/GL10;)Z
    .locals 8
    .parameter "gl"

    .prologue
    const v7, 0x47012f00

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0xde1

    .line 322
    iget-boolean v2, p0, Lcom/layar/core/POIRenderer2D;->fullReady:Z

    if-eqz v2, :cond_0

    move v2, v6

    .line 347
    :goto_0
    return v2

    .line 325
    :cond_0
    new-array v1, v6, [I

    .line 326
    .local v1, textures:[I
    invoke-interface {p1, v6, v1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 328
    aget v2, v1, v5

    iput v2, p0, Lcom/layar/core/POIRenderer2D;->fullTextureId:I

    .line 329
    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 330
    iget v2, p0, Lcom/layar/core/POIRenderer2D;->fullTextureId:I

    invoke-interface {p1, v4, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 332
    const/16 v2, 0x2801

    const/high16 v3, 0x4618

    invoke-interface {p1, v4, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 333
    const/16 v2, 0x2800

    const v3, 0x46180400

    invoke-interface {p1, v4, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 334
    const/16 v2, 0x2802

    invoke-interface {p1, v4, v2, v7}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 335
    const/16 v2, 0x2803

    invoke-interface {p1, v4, v2, v7}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 337
    iget-object v2, p0, Lcom/layar/core/POIRenderer2D;->full:Landroid/graphics/Bitmap;

    invoke-static {v4, v5, v2, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 338
    iput-boolean v6, p0, Lcom/layar/core/POIRenderer2D;->fullReady:Z

    .line 340
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v0

    .line 341
    .local v0, error:I
    if-lez v0, :cond_1

    .line 342
    const-string v2, "layar.POIRenderer2D"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GL error string: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/opengl/GLU;->gluErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 343
    goto :goto_0

    .line 346
    :cond_1
    const-string v2, "layar.POIRenderer2D"

    const-string v3, "initialized OpenGL texture"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    .line 347
    goto :goto_0
.end method

.method private initReduded(Ljavax/microedition/khronos/opengles/GL10;)Z
    .locals 8
    .parameter "gl"

    .prologue
    const v4, 0x47012f00

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0xde1

    .line 288
    iget-boolean v2, p0, Lcom/layar/core/POIRenderer2D;->reducedReady:Z

    if-eqz v2, :cond_0

    move v2, v7

    .line 318
    :goto_0
    return v2

    .line 291
    :cond_0
    new-array v1, v7, [I

    .line 292
    .local v1, textures:[I
    invoke-interface {p1, v7, v1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 294
    aget v2, v1, v6

    iput v2, p0, Lcom/layar/core/POIRenderer2D;->reducedTextureId:I

    .line 296
    const v2, 0x8078

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 297
    const v2, 0x8074

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 299
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 300
    iget v2, p0, Lcom/layar/core/POIRenderer2D;->reducedTextureId:I

    invoke-interface {p1, v5, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 302
    const/16 v2, 0x2801

    const/high16 v3, 0x4618

    invoke-interface {p1, v5, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 303
    const/16 v2, 0x2800

    const v3, 0x46180400

    invoke-interface {p1, v5, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 304
    const/16 v2, 0x2802

    invoke-interface {p1, v5, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 305
    const/16 v2, 0x2803

    invoke-interface {p1, v5, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 306
    const/16 v2, 0x2300

    const/16 v3, 0x2200

    const v4, 0x45f00800

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 308
    iget-object v2, p0, Lcom/layar/core/POIRenderer2D;->reduced:Landroid/graphics/Bitmap;

    invoke-static {v5, v6, v2, v6}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 309
    iput-boolean v7, p0, Lcom/layar/core/POIRenderer2D;->reducedReady:Z

    .line 311
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v0

    .line 312
    .local v0, error:I
    if-lez v0, :cond_1

    .line 313
    const-string v2, "layar.POIRenderer2D"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GL error string: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/opengl/GLU;->gluErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    .line 314
    goto :goto_0

    .line 317
    :cond_1
    const-string v2, "layar.POIRenderer2D"

    const-string v3, "initialized OpenGL texture"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v7

    .line 318
    goto :goto_0
.end method


# virtual methods
.method protected drawObject(Ljavax/microedition/khronos/opengles/GL10;Z)Z
    .locals 13
    .parameter "gl"
    .parameter "focus"

    .prologue
    const/4 v12, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x4120

    const/high16 v11, 0x3f80

    const/4 v10, 0x0

    .line 193
    iget-object v7, p0, Lcom/layar/core/POIRenderer2D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v7, v7, Lcom/layar/data/BasePOI;->object:Lcom/layar/data/BasePOI$POIObject;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/layar/core/POIRenderer2D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v7, v7, Lcom/layar/data/BasePOI;->object:Lcom/layar/data/BasePOI$POIObject;

    iget-object v7, v7, Lcom/layar/data/BasePOI$POIObject;->full:Ljava/lang/String;

    if-nez v7, :cond_1

    :cond_0
    move v7, v10

    .line 284
    :goto_0
    return v7

    .line 195
    :cond_1
    iget-boolean v7, p0, Lcom/layar/core/POIRenderer2D;->isFullMissed:Z

    if-eqz v7, :cond_3

    iget-boolean v7, p0, Lcom/layar/core/POIRenderer2D;->hasReduced:Z

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lcom/layar/core/POIRenderer2D;->isReducedMissed:Z

    if-eqz v7, :cond_3

    :cond_2
    move v7, v10

    .line 196
    goto :goto_0

    .line 198
    :cond_3
    iget-object v7, p0, Lcom/layar/core/POIRenderer2D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v7, v7, Lcom/layar/data/BasePOI;->object:Lcom/layar/data/BasePOI$POIObject;

    iget v4, v7, Lcom/layar/data/BasePOI$POIObject;->size:F

    .line 199
    .local v4, objectSize:F
    invoke-virtual {p0, v4}, Lcom/layar/core/POIRenderer2D;->getViewSize(F)F

    move-result v2

    .line 201
    .local v2, fixedScale:F
    const/high16 v5, 0x3f80

    .line 202
    .local v5, scale:F
    iget-object v7, p0, Lcom/layar/core/POIRenderer2D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v7, v7, Lcom/layar/data/BasePOI;->transform:Lcom/layar/data/Transform;

    if-eqz v7, :cond_4

    .line 203
    iget-object v7, p0, Lcom/layar/core/POIRenderer2D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v7, v7, Lcom/layar/data/BasePOI;->transform:Lcom/layar/data/Transform;

    iget v5, v7, Lcom/layar/data/Transform;->scale:F

    .line 205
    :cond_4
    const/4 v6, 0x0

    .line 207
    .local v6, textId:I
    iget-boolean v7, p0, Lcom/layar/core/POIRenderer2D;->imageDownloaded:Z

    if-nez v7, :cond_6

    .line 208
    iget-boolean v7, p0, Lcom/layar/core/POIRenderer2D;->downloading:Z

    if-nez v7, :cond_5

    .line 209
    invoke-static {}, Lcom/layar/util/DownloadManager;->getInstance()Lcom/layar/util/DownloadManager;

    move-result-object v7

    iget-object v8, p0, Lcom/layar/core/POIRenderer2D;->imageDownload:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Lcom/layar/util/DownloadManager;->enqueueRunnable(Ljava/lang/Runnable;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/layar/core/POIRenderer2D;->downloading:Z

    .line 210
    iput-boolean v12, p0, Lcom/layar/core/POIRenderer2D;->showThrobber:Z

    :cond_5
    move v7, v10

    .line 212
    goto :goto_0

    .line 215
    :cond_6
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 217
    iget-object v7, p0, Lcom/layar/core/POIRenderer2D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v7, v7, Lcom/layar/data/BasePOI;->transform:Lcom/layar/data/Transform;

    if-eqz v7, :cond_8

    .line 218
    iget-object v7, p0, Lcom/layar/core/POIRenderer2D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v7, v7, Lcom/layar/data/BasePOI;->transform:Lcom/layar/data/Transform;

    iget v0, v7, Lcom/layar/data/Transform;->angle:F

    .line 219
    .local v0, angle:F
    iget-object v7, p0, Lcom/layar/core/POIRenderer2D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v7, v7, Lcom/layar/data/BasePOI;->transform:Lcom/layar/data/Transform;

    iget-boolean v7, v7, Lcom/layar/data/Transform;->rel:Z

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/layar/core/POIRenderer2D;->mPoi:Lcom/layar/data/BasePOI;

    iget v7, v7, Lcom/layar/data/BasePOI;->bearing:F

    sub-float/2addr v0, v7

    .line 220
    :cond_7
    iget-object v7, p0, Lcom/layar/core/POIRenderer2D;->transformationState:Lcom/layar/core/animation/TransformationState;

    invoke-virtual {v7, v0, v9, v9, v11}, Lcom/layar/core/animation/TransformationState;->rotate(FFFF)V

    .line 223
    .end local v0           #angle:F
    :cond_8
    iget-boolean v7, p0, Lcom/layar/core/POIRenderer2D;->hasReduced:Z

    if-eqz v7, :cond_9

    const/high16 v7, 0x42c8

    move v3, v7

    .line 224
    .local v3, fullSize:F
    :goto_1
    iget-object v7, p0, Lcom/layar/core/POIRenderer2D;->full:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_c

    cmpl-float v7, v2, v3

    if-lez v7, :cond_c

    .line 225
    iget-boolean v7, p0, Lcom/layar/core/POIRenderer2D;->fullReady:Z

    if-nez v7, :cond_a

    .line 226
    invoke-direct {p0, p1}, Lcom/layar/core/POIRenderer2D;->initFull(Ljavax/microedition/khronos/opengles/GL10;)Z

    move-result v7

    if-nez v7, :cond_a

    move v7, v10

    .line 227
    goto :goto_0

    .end local v3           #fullSize:F
    :cond_9
    move v3, v8

    .line 223
    goto :goto_1

    .line 230
    .restart local v3       #fullSize:F
    :cond_a
    iget v6, p0, Lcom/layar/core/POIRenderer2D;->fullTextureId:I

    .line 240
    iget-object v7, p0, Lcom/layar/core/POIRenderer2D;->transformationState:Lcom/layar/core/animation/TransformationState;

    iget v8, p0, Lcom/layar/core/POIRenderer2D;->width:F

    mul-float/2addr v8, v5

    iget v9, p0, Lcom/layar/core/POIRenderer2D;->height:F

    mul-float/2addr v9, v5

    invoke-virtual {v7, v8, v5, v9}, Lcom/layar/core/animation/TransformationState;->scale(FFF)V

    .line 270
    :cond_b
    :goto_2
    invoke-virtual {p0}, Lcom/layar/core/POIRenderer2D;->applyAnimations()V

    .line 271
    iget-object v7, p0, Lcom/layar/core/POIRenderer2D;->transformationState:Lcom/layar/core/animation/TransformationState;

    invoke-virtual {v7, p1}, Lcom/layar/core/animation/TransformationState;->apply(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 273
    const v7, 0x8078

    invoke-interface {p1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 274
    const v7, 0x8074

    invoke-interface {p1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 276
    const/16 v7, 0xde1

    invoke-interface {p1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 277
    invoke-interface {p1, v11, v11, v11, v11}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 278
    const/16 v7, 0xde1

    invoke-interface {p1, v7, v6}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 279
    const/4 v7, 0x3

    const/16 v8, 0x140c

    iget-object v9, p0, Lcom/layar/core/POIRenderer2D;->mVertexBuffer:Ljava/nio/IntBuffer;

    invoke-interface {p1, v7, v8, v10, v9}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 280
    const/4 v7, 0x2

    const/16 v8, 0x140c

    iget-object v9, p0, Lcom/layar/core/POIRenderer2D;->mTextureBuffer:Ljava/nio/IntBuffer;

    invoke-interface {p1, v7, v8, v10, v9}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 281
    const/4 v7, 0x5

    const/4 v8, 0x4

    invoke-interface {p1, v7, v10, v8}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 283
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    move v7, v12

    .line 284
    goto/16 :goto_0

    .line 241
    :cond_c
    iget-object v7, p0, Lcom/layar/core/POIRenderer2D;->reduced:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_e

    cmpl-float v7, v2, v8

    if-lez v7, :cond_e

    .line 242
    iget-boolean v7, p0, Lcom/layar/core/POIRenderer2D;->reducedReady:Z

    if-nez v7, :cond_d

    .line 243
    invoke-direct {p0, p1}, Lcom/layar/core/POIRenderer2D;->initReduded(Ljavax/microedition/khronos/opengles/GL10;)Z

    move-result v7

    if-nez v7, :cond_d

    move v7, v10

    .line 244
    goto/16 :goto_0

    .line 247
    :cond_d
    iget v6, p0, Lcom/layar/core/POIRenderer2D;->reducedTextureId:I

    .line 248
    iget-object v7, p0, Lcom/layar/core/POIRenderer2D;->transformationState:Lcom/layar/core/animation/TransformationState;

    iget v8, p0, Lcom/layar/core/POIRenderer2D;->width_reduced:F

    mul-float/2addr v8, v5

    iget v9, p0, Lcom/layar/core/POIRenderer2D;->height:F

    mul-float/2addr v9, v5

    invoke-virtual {v7, v8, v5, v9}, Lcom/layar/core/animation/TransformationState;->scale(FFF)V

    goto :goto_2

    .line 249
    :cond_e
    cmpg-float v7, v2, v8

    if-gez v7, :cond_b

    .line 250
    const/high16 v1, 0x3f80

    .line 251
    .local v1, curWidth:F
    iget-object v7, p0, Lcom/layar/core/POIRenderer2D;->reduced:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_10

    .line 252
    invoke-direct {p0, p1}, Lcom/layar/core/POIRenderer2D;->initReduded(Ljavax/microedition/khronos/opengles/GL10;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 253
    iget v6, p0, Lcom/layar/core/POIRenderer2D;->reducedTextureId:I

    .line 254
    iget v1, p0, Lcom/layar/core/POIRenderer2D;->width_reduced:F

    .line 266
    :goto_3
    div-float v7, v8, v2

    mul-float v2, v7, v5

    .line 267
    iget-object v7, p0, Lcom/layar/core/POIRenderer2D;->transformationState:Lcom/layar/core/animation/TransformationState;

    mul-float v8, v1, v2

    iget v9, p0, Lcom/layar/core/POIRenderer2D;->height:F

    mul-float/2addr v9, v2

    invoke-virtual {v7, v8, v2, v9}, Lcom/layar/core/animation/TransformationState;->scale(FFF)V

    goto/16 :goto_2

    :cond_f
    move v7, v10

    .line 256
    goto/16 :goto_0

    .line 257
    :cond_10
    iget-object v7, p0, Lcom/layar/core/POIRenderer2D;->full:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_12

    .line 258
    invoke-direct {p0, p1}, Lcom/layar/core/POIRenderer2D;->initFull(Ljavax/microedition/khronos/opengles/GL10;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 259
    iget v6, p0, Lcom/layar/core/POIRenderer2D;->fullTextureId:I

    .line 260
    iget v1, p0, Lcom/layar/core/POIRenderer2D;->width:F

    goto :goto_3

    :cond_11
    move v7, v10

    .line 262
    goto/16 :goto_0

    :cond_12
    move v7, v10

    .line 264
    goto/16 :goto_0
.end method

.method public getIconScale()F
    .locals 6

    .prologue
    const/high16 v5, 0x4120

    .line 388
    const/high16 v3, 0x3f80

    .line 389
    .local v3, scale:F
    iget-object v4, p0, Lcom/layar/core/POIRenderer2D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v4, v4, Lcom/layar/data/BasePOI;->transform:Lcom/layar/data/Transform;

    if-eqz v4, :cond_0

    .line 390
    iget-object v4, p0, Lcom/layar/core/POIRenderer2D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v4, v4, Lcom/layar/data/BasePOI;->transform:Lcom/layar/data/Transform;

    iget v3, v4, Lcom/layar/data/Transform;->scale:F

    .line 391
    :cond_0
    iget-boolean v4, p0, Lcom/layar/core/POIRenderer2D;->isFullMissed:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/layar/core/POIRenderer2D;->hasReduced:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/layar/core/POIRenderer2D;->isReducedMissed:Z

    if-eqz v4, :cond_2

    :cond_1
    move v4, v3

    .line 408
    :goto_0
    return v4

    .line 394
    :cond_2
    const/high16 v1, 0x3f80

    .line 395
    .local v1, objectSize:F
    iget-object v4, p0, Lcom/layar/core/POIRenderer2D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v4, v4, Lcom/layar/data/BasePOI;->object:Lcom/layar/data/BasePOI$POIObject;

    if-eqz v4, :cond_3

    .line 396
    iget-object v4, p0, Lcom/layar/core/POIRenderer2D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v4, v4, Lcom/layar/data/BasePOI;->object:Lcom/layar/data/BasePOI$POIObject;

    iget v1, v4, Lcom/layar/data/BasePOI$POIObject;->size:F

    .line 397
    :cond_3
    invoke-virtual {p0, v1}, Lcom/layar/core/POIRenderer2D;->getViewSize(F)F

    move-result v0

    .line 399
    .local v0, currentScale:F
    cmpg-float v4, v0, v5

    if-gez v4, :cond_4

    .line 400
    div-float v4, v5, v0

    mul-float/2addr v4, v3

    mul-float v2, v4, v1

    .local v2, resultScale:F
    :goto_1
    move v4, v2

    .line 408
    goto :goto_0

    .line 406
    .end local v2           #resultScale:F
    :cond_4
    mul-float v2, v3, v1

    .restart local v2       #resultScale:F
    goto :goto_1
.end method

.method protected intersect([F[F)F
    .locals 21
    .parameter "near"
    .parameter "far"

    .prologue
    .line 352
    const/16 v12, 0x10

    new-array v9, v12, [F

    .line 353
    .local v9, matrix:[F
    invoke-static {v9}, Lcom/layar/util/MathUtil;->matrixIdentity([F)V

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/POIRenderer2D;->transformationState:Lcom/layar/core/animation/TransformationState;

    move-object v12, v0

    invoke-virtual {v12, v9}, Lcom/layar/core/animation/TransformationState;->apply([F)V

    .line 357
    const/4 v12, 0x4

    const/4 v13, 0x4

    filled-new-array {v12, v13}, [I

    move-result-object v12

    sget-object v13, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[F

    .line 358
    .local v10, points:[[F
    const/4 v12, 0x0

    aget-object v12, v10, v12

    const/4 v13, 0x0

    const/4 v14, 0x2

    aget-object v14, v10, v14

    const/4 v15, 0x0

    const/high16 v16, -0x4100

    aput v16, v14, v15

    aput v16, v12, v13

    .line 359
    const/4 v12, 0x1

    aget-object v12, v10, v12

    const/4 v13, 0x0

    const/4 v14, 0x3

    aget-object v14, v10, v14

    const/4 v15, 0x0

    const/high16 v16, 0x3f00

    aput v16, v14, v15

    aput v16, v12, v13

    .line 360
    const/4 v12, 0x0

    aget-object v12, v10, v12

    const/4 v13, 0x1

    const/4 v14, 0x1

    aget-object v14, v10, v14

    const/4 v15, 0x1

    const/16 v16, 0x2

    aget-object v16, v10, v16

    const/16 v17, 0x1

    const/16 v18, 0x3

    aget-object v18, v10, v18

    const/16 v19, 0x1

    const/16 v20, 0x0

    aput v20, v18, v19

    aput v20, v16, v17

    aput v20, v14, v15

    aput v20, v12, v13

    .line 361
    const/4 v12, 0x0

    aget-object v12, v10, v12

    const/4 v13, 0x2

    const/4 v14, 0x1

    aget-object v14, v10, v14

    const/4 v15, 0x2

    const/16 v16, 0x0

    aput v16, v14, v15

    aput v16, v12, v13

    .line 362
    const/4 v12, 0x2

    aget-object v12, v10, v12

    const/4 v13, 0x2

    const/4 v14, 0x3

    aget-object v14, v10, v14

    const/4 v15, 0x2

    const/high16 v16, 0x3f80

    aput v16, v14, v15

    aput v16, v12, v13

    .line 363
    const/4 v12, 0x0

    aget-object v12, v10, v12

    const/4 v13, 0x3

    const/4 v14, 0x1

    aget-object v14, v10, v14

    const/4 v15, 0x3

    const/16 v16, 0x2

    aget-object v16, v10, v16

    const/16 v17, 0x3

    const/16 v18, 0x3

    aget-object v18, v10, v18

    const/16 v19, 0x3

    const/high16 v20, 0x3f80

    aput v20, v18, v19

    aput v20, v16, v17

    aput v20, v14, v15

    aput v20, v12, v13

    .line 365
    const/4 v12, 0x3

    new-array v5, v12, [F

    .line 366
    .local v5, boxMin:[F
    const/4 v12, 0x3

    new-array v4, v12, [F

    .line 367
    .local v4, boxMax:[F
    const/16 v12, 0x8

    const/4 v13, 0x4

    filled-new-array {v12, v13}, [I

    move-result-object v12

    sget-object v13, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[F

    .line 369
    .local v11, pointsW:[[F
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    const/4 v12, 0x4

    if-lt v7, v12, :cond_0

    .line 378
    new-instance v3, Lcom/layar/util/OrientedBoundingBox;

    invoke-direct {v3, v5, v4}, Lcom/layar/util/OrientedBoundingBox;-><init>([F[F)V

    .line 380
    .local v3, box:Lcom/layar/util/OrientedBoundingBox;
    const/4 v12, 0x3

    new-array v6, v12, [F

    .line 381
    .local v6, dir:[F
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object v2, v6

    invoke-static {v0, v1, v2}, Lcom/layar/util/MathUtil;->vectorSubstract([F[F[F)V

    .line 382
    invoke-static {v6}, Lcom/layar/util/MathUtil;->vectorNormalize([F)V

    .line 384
    move-object v0, v3

    move-object/from16 v1, p1

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/layar/util/OrientedBoundingBox;->nearestRayIntersection([F[F)F

    move-result v12

    return v12

    .line 370
    .end local v3           #box:Lcom/layar/util/OrientedBoundingBox;
    .end local v6           #dir:[F
    :cond_0
    aget-object v12, v10, v7

    aget-object v13, v11, v7

    invoke-static {v9, v12, v13}, Lcom/layar/util/MathUtil;->matrixVectorMultiply([F[F[F)V

    .line 372
    const/4 v8, 0x0

    .local v8, j:I
    :goto_1
    const/4 v12, 0x3

    if-lt v8, v12, :cond_1

    .line 369
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 373
    :cond_1
    if-eqz v7, :cond_2

    aget-object v12, v11, v7

    aget v12, v12, v8

    aget v13, v5, v8

    cmpg-float v12, v12, v13

    if-gez v12, :cond_3

    :cond_2
    aget-object v12, v11, v7

    aget v12, v12, v8

    aput v12, v5, v8

    .line 374
    :cond_3
    if-eqz v7, :cond_4

    aget-object v12, v11, v7

    aget v12, v12, v8

    aget v13, v4, v8

    cmpl-float v12, v12, v13

    if-lez v12, :cond_5

    :cond_4
    aget-object v12, v11, v7

    aget v12, v12, v8

    aput v12, v4, v8

    .line 372
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method protected needUpdate(Lcom/layar/data/POI;)Z
    .locals 2
    .parameter "poi"

    .prologue
    .line 183
    invoke-super {p0, p1}, Lcom/layar/core/POIRenderer;->needUpdate(Lcom/layar/data/POI;)Z

    move-result v0

    .line 184
    .local v0, res:Z
    if-nez v0, :cond_0

    iget-object v1, p1, Lcom/layar/data/POI;->object:Lcom/layar/data/BasePOI$POIObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/layar/core/POIRenderer2D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v1, v1, Lcom/layar/data/BasePOI;->object:Lcom/layar/data/BasePOI$POIObject;

    if-eqz v1, :cond_0

    .line 185
    invoke-virtual {p0, p1}, Lcom/layar/core/POIRenderer2D;->_needUpdate2D3D(Lcom/layar/data/POI;)Z

    move-result v0

    .line 187
    :cond_0
    return v0
.end method

.method protected resetObject()V
    .locals 3

    .prologue
    .line 171
    invoke-super {p0}, Lcom/layar/core/POIRenderer;->resetObject()V

    .line 173
    iget-object v1, p0, Lcom/layar/core/POIRenderer2D;->mPoi:Lcom/layar/data/BasePOI;

    iget-object v1, v1, Lcom/layar/data/BasePOI;->object:Lcom/layar/data/BasePOI$POIObject;

    iget v0, v1, Lcom/layar/data/BasePOI$POIObject;->size:F

    .line 175
    .local v0, objectSize:F
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/layar/core/POIRenderer2D;->imageDownloaded:Z

    .line 176
    invoke-virtual {p0, v0}, Lcom/layar/core/POIRenderer2D;->getViewSize(F)F

    move-result v1

    const/high16 v2, 0x4120

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 177
    invoke-static {}, Lcom/layar/util/DownloadManager;->getInstance()Lcom/layar/util/DownloadManager;

    move-result-object v1

    iget-object v2, p0, Lcom/layar/core/POIRenderer2D;->imageDownload:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/layar/util/DownloadManager;->enqueueRunnable(Ljava/lang/Runnable;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/layar/core/POIRenderer2D;->downloading:Z

    .line 179
    :cond_0
    return-void
.end method

.method public resetTextures()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 162
    invoke-super {p0}, Lcom/layar/core/POIRenderer;->resetTextures()V

    .line 163
    iput-boolean v0, p0, Lcom/layar/core/POIRenderer2D;->fullReady:Z

    .line 164
    iput-boolean v0, p0, Lcom/layar/core/POIRenderer2D;->reducedReady:Z

    .line 165
    iput-boolean v0, p0, Lcom/layar/core/POIRenderer2D;->isFullMissed:Z

    .line 166
    iput-boolean v0, p0, Lcom/layar/core/POIRenderer2D;->isReducedMissed:Z

    .line 167
    return-void
.end method

.method public startAnimation(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 415
    if-eqz p1, :cond_0

    .line 416
    invoke-super {p0, p1}, Lcom/layar/core/POIRenderer;->startAnimation(I)V

    .line 417
    :cond_0
    return-void
.end method

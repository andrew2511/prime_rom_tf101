.class public Lcom/asus/reader/pdf/PDFPage;
.super Ljava/lang/Object;
.source "PDFPage.java"


# instance fields
.field private a:I

.field public bPage:I

.field public bmHeight:F

.field public bmWidth:F

.field public boundaryX:F

.field public boundaryY:F

.field private count:I

.field public isWhite:Z

.field public mBaseNum:I

.field public mLowPagePath:Ljava/lang/String;

.field public mPageID:I

.field public mPageInitScale:F

.field public mPageNo:I

.field public mbitmap:Landroid/graphics/Bitmap;

.field public scale:F

.field public screenBase:F

.field public screenHeight:F

.field public screenWidth:F

.field private texBuffer:Ljava/nio/FloatBuffer;

.field private texCoords:[F

.field private textureIDs:[I

.field public translateX:F

.field public translateY:F

.field private vertexBuffer:Ljava/nio/FloatBuffer;

.field private vertices:[F


# direct methods
.method public constructor <init>(IFFFF)V
    .locals 5
    .parameter "No"
    .parameter "width"
    .parameter "height"
    .parameter "pageWidth"
    .parameter "pageHeight"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v0, p0, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    .line 28
    iput v0, p0, Lcom/asus/reader/pdf/PDFPage;->translateY:F

    .line 29
    iput v1, p0, Lcom/asus/reader/pdf/PDFPage;->scale:F

    .line 30
    iput v1, p0, Lcom/asus/reader/pdf/PDFPage;->boundaryX:F

    .line 31
    iput v1, p0, Lcom/asus/reader/pdf/PDFPage;->boundaryY:F

    .line 35
    iput v2, p0, Lcom/asus/reader/pdf/PDFPage;->count:I

    .line 36
    iput v4, p0, Lcom/asus/reader/pdf/PDFPage;->a:I

    .line 41
    iput v1, p0, Lcom/asus/reader/pdf/PDFPage;->mPageInitScale:F

    .line 42
    iput v2, p0, Lcom/asus/reader/pdf/PDFPage;->mBaseNum:I

    .line 45
    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/asus/reader/pdf/PDFPage;->vertices:[F

    .line 53
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/asus/reader/pdf/PDFPage;->texCoords:[F

    .line 61
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/asus/reader/pdf/PDFPage;->textureIDs:[I

    .line 65
    iput p1, p0, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    .line 66
    invoke-virtual {p0, p2, p3}, Lcom/asus/reader/pdf/PDFPage;->setScreenBase(FF)V

    .line 67
    iput v3, p0, Lcom/asus/reader/pdf/PDFPage;->bPage:I

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/reader/pdf/PDFPage;->mbitmap:Landroid/graphics/Bitmap;

    .line 69
    cmpl-float v0, p4, v1

    if-nez v0, :cond_1

    .line 70
    iput-boolean v4, p0, Lcom/asus/reader/pdf/PDFPage;->isWhite:Z

    .line 74
    :goto_0
    iget v0, p0, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    if-eq v0, v3, :cond_0

    .line 75
    invoke-virtual {p0, p1, p4, p5}, Lcom/asus/reader/pdf/PDFPage;->pageinit(IFF)V

    .line 77
    :cond_0
    return-void

    .line 72
    :cond_1
    iput-boolean v2, p0, Lcom/asus/reader/pdf/PDFPage;->isWhite:Z

    goto :goto_0

    .line 45
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 53
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7
    .parameter "gl"

    .prologue
    const v6, 0x8078

    const v5, 0x8074

    const/16 v4, 0x1406

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 83
    const/16 v0, 0x901

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 89
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 90
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFPage;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v4, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 92
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 94
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFPage;->texBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v4, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 97
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 98
    iget v0, p0, Lcom/asus/reader/pdf/PDFPage;->scale:F

    iget v1, p0, Lcom/asus/reader/pdf/PDFPage;->scale:F

    invoke-interface {p1, v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 119
    iget v0, p0, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    iget v1, p0, Lcom/asus/reader/pdf/PDFPage;->translateY:F

    invoke-interface {p1, v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 120
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-interface {p1, v0, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 121
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 124
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 125
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 127
    return-void
.end method

.method public finish(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .parameter "gl"

    .prologue
    .line 272
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFPage;->textureIDs:[I

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 273
    return-void
.end method

.method public getIDs(I)I
    .locals 1
    .parameter "a"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFPage;->textureIDs:[I

    aget v0, v0, p1

    return v0
.end method

.method public loadTexture(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;)V
    .locals 6
    .parameter "gl"
    .parameter "file"

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0xde1

    const/4 v3, 0x0

    .line 132
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFPage;->textureIDs:[I

    invoke-interface {p1, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 135
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFPage;->textureIDs:[I

    aget v1, v1, v3

    invoke-interface {p1, v4, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 138
    const/16 v1, 0x2801

    const/high16 v2, 0x4618

    invoke-interface {p1, v4, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 139
    const/16 v1, 0x2800

    const v2, 0x46180400

    invoke-interface {p1, v4, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 142
    if-nez p2, :cond_0

    .line 143
    iput-boolean v5, p0, Lcom/asus/reader/pdf/PDFPage;->isWhite:Z

    .line 144
    iget-object v1, p0, Lcom/asus/reader/pdf/PDFPage;->textureIDs:[I

    aput v3, v1, v3

    .line 158
    :goto_0
    return-void

    .line 148
    :cond_0
    iput-boolean v3, p0, Lcom/asus/reader/pdf/PDFPage;->isWhite:Z

    .line 150
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 152
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-ne v1, v5, :cond_1

    .line 153
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v0, v3, v3, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 156
    :cond_1
    invoke-static {v4, v3, v0, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 157
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public loadTexture(Ljavax/microedition/khronos/opengles/GL10;)Z
    .locals 6
    .parameter "gl"

    .prologue
    const/16 v5, 0xde1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 162
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFPage;->textureIDs:[I

    invoke-interface {p1, v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 165
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFPage;->textureIDs:[I

    aget v0, v0, v4

    invoke-interface {p1, v5, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 168
    const/16 v0, 0x2801

    const/high16 v1, 0x4618

    invoke-interface {p1, v5, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 169
    const/16 v0, 0x2800

    const v1, 0x46180400

    invoke-interface {p1, v5, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 171
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFPage;->mbitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 172
    const-string v0, "PDFPage"

    const-string v1, "BITMAP IS NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 184
    :goto_0
    return v0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFPage;->mbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v4, :cond_1

    .line 177
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFPage;->mbitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/asus/reader/pdf/PDFPage;->mbitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFPage;->mbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v1, v4

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFPage;->mbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v0, v3, v3, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/reader/pdf/PDFPage;->mbitmap:Landroid/graphics/Bitmap;

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFPage;->mbitmap:Landroid/graphics/Bitmap;

    invoke-static {v5, v3, v0, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 181
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFPage;->mbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/reader/pdf/PDFPage;->mbitmap:Landroid/graphics/Bitmap;

    move v0, v4

    .line 184
    goto :goto_0
.end method

.method public pageinit(IFF)V
    .locals 12
    .parameter "No"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x7

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/high16 v7, 0x3f80

    .line 192
    iput p1, p0, Lcom/asus/reader/pdf/PDFPage;->mPageNo:I

    .line 193
    iput p2, p0, Lcom/asus/reader/pdf/PDFPage;->bmWidth:F

    .line 194
    iput p3, p0, Lcom/asus/reader/pdf/PDFPage;->bmHeight:F

    .line 195
    iput v7, p0, Lcom/asus/reader/pdf/PDFPage;->boundaryX:F

    .line 196
    iput v7, p0, Lcom/asus/reader/pdf/PDFPage;->boundaryY:F

    .line 198
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v3, 0xc

    if-ge v0, v3, :cond_0

    .line 199
    packed-switch v0, :pswitch_data_0

    .line 198
    :goto_1
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :pswitch_1
    iget-object v3, p0, Lcom/asus/reader/pdf/PDFPage;->vertices:[F

    iget v4, p0, Lcom/asus/reader/pdf/PDFPage;->screenWidth:F

    neg-float v4, v4

    iget v5, p0, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v4, v5

    aput v4, v3, v0

    goto :goto_1

    .line 206
    :pswitch_2
    iget-object v3, p0, Lcom/asus/reader/pdf/PDFPage;->vertices:[F

    iget v4, p0, Lcom/asus/reader/pdf/PDFPage;->screenHeight:F

    neg-float v4, v4

    iget v5, p0, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v4, v5

    aput v4, v3, v0

    goto :goto_1

    .line 210
    :pswitch_3
    iget-object v3, p0, Lcom/asus/reader/pdf/PDFPage;->vertices:[F

    iget v4, p0, Lcom/asus/reader/pdf/PDFPage;->screenWidth:F

    iget v5, p0, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v4, v5

    aput v4, v3, v0

    goto :goto_1

    .line 214
    :pswitch_4
    iget-object v3, p0, Lcom/asus/reader/pdf/PDFPage;->vertices:[F

    iget v4, p0, Lcom/asus/reader/pdf/PDFPage;->screenHeight:F

    iget v5, p0, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v4, v5

    aput v4, v3, v0

    goto :goto_1

    .line 219
    :cond_0
    iget v3, p0, Lcom/asus/reader/pdf/PDFPage;->bmWidth:F

    iget v4, p0, Lcom/asus/reader/pdf/PDFPage;->screenHeight:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/asus/reader/pdf/PDFPage;->bmHeight:F

    div-float/2addr v3, v4

    iget v4, p0, Lcom/asus/reader/pdf/PDFPage;->screenWidth:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 220
    iget v3, p0, Lcom/asus/reader/pdf/PDFPage;->screenHeight:F

    iget v4, p0, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v3, v4

    iput v3, p0, Lcom/asus/reader/pdf/PDFPage;->mPageInitScale:F

    .line 221
    iget-object v3, p0, Lcom/asus/reader/pdf/PDFPage;->vertices:[F

    iget v4, p0, Lcom/asus/reader/pdf/PDFPage;->bmWidth:F

    iget v5, p0, Lcom/asus/reader/pdf/PDFPage;->bmHeight:F

    div-float/2addr v4, v5

    neg-float v4, v4

    iget v5, p0, Lcom/asus/reader/pdf/PDFPage;->mPageInitScale:F

    mul-float/2addr v4, v5

    aput v4, v3, v8

    .line 222
    iget-object v3, p0, Lcom/asus/reader/pdf/PDFPage;->vertices:[F

    iget v4, p0, Lcom/asus/reader/pdf/PDFPage;->bmWidth:F

    iget v5, p0, Lcom/asus/reader/pdf/PDFPage;->bmHeight:F

    div-float/2addr v4, v5

    iget v5, p0, Lcom/asus/reader/pdf/PDFPage;->mPageInitScale:F

    mul-float/2addr v4, v5

    aput v4, v3, v9

    .line 223
    iget-object v3, p0, Lcom/asus/reader/pdf/PDFPage;->vertices:[F

    const/4 v4, 0x6

    iget v5, p0, Lcom/asus/reader/pdf/PDFPage;->bmWidth:F

    iget v6, p0, Lcom/asus/reader/pdf/PDFPage;->bmHeight:F

    div-float/2addr v5, v6

    neg-float v5, v5

    iget v6, p0, Lcom/asus/reader/pdf/PDFPage;->mPageInitScale:F

    mul-float/2addr v5, v6

    aput v5, v3, v4

    .line 224
    iget-object v3, p0, Lcom/asus/reader/pdf/PDFPage;->vertices:[F

    const/16 v4, 0x9

    iget v5, p0, Lcom/asus/reader/pdf/PDFPage;->bmWidth:F

    iget v6, p0, Lcom/asus/reader/pdf/PDFPage;->bmHeight:F

    div-float/2addr v5, v6

    iget v6, p0, Lcom/asus/reader/pdf/PDFPage;->mPageInitScale:F

    mul-float/2addr v5, v6

    aput v5, v3, v4

    .line 225
    iget v3, p0, Lcom/asus/reader/pdf/PDFPage;->bmWidth:F

    iget v4, p0, Lcom/asus/reader/pdf/PDFPage;->bmHeight:F

    div-float/2addr v3, v4

    iget v4, p0, Lcom/asus/reader/pdf/PDFPage;->mPageInitScale:F

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/asus/reader/pdf/PDFPage;->boundaryX:F

    .line 226
    iput v11, p0, Lcom/asus/reader/pdf/PDFPage;->mBaseNum:I

    .line 227
    iget-object v3, p0, Lcom/asus/reader/pdf/PDFPage;->vertices:[F

    aget v3, v3, v10

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_1

    .line 228
    iget-object v3, p0, Lcom/asus/reader/pdf/PDFPage;->vertices:[F

    aget v3, v3, v10

    iput v3, p0, Lcom/asus/reader/pdf/PDFPage;->boundaryY:F

    .line 244
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/asus/reader/pdf/PDFPage;->vertices:[F

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 246
    .local v2, vbb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 248
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/asus/reader/pdf/PDFPage;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 250
    iget-object v3, p0, Lcom/asus/reader/pdf/PDFPage;->vertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/asus/reader/pdf/PDFPage;->vertices:[F

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 252
    iget-object v3, p0, Lcom/asus/reader/pdf/PDFPage;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 255
    iget-object v3, p0, Lcom/asus/reader/pdf/PDFPage;->texCoords:[F

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 256
    .local v1, tbb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 257
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/asus/reader/pdf/PDFPage;->texBuffer:Ljava/nio/FloatBuffer;

    .line 258
    iget-object v3, p0, Lcom/asus/reader/pdf/PDFPage;->texBuffer:Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/asus/reader/pdf/PDFPage;->texCoords:[F

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 259
    iget-object v3, p0, Lcom/asus/reader/pdf/PDFPage;->texBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 260
    return-void

    .line 231
    .end local v1           #tbb:Ljava/nio/ByteBuffer;
    .end local v2           #vbb:Ljava/nio/ByteBuffer;
    :cond_2
    iget v3, p0, Lcom/asus/reader/pdf/PDFPage;->screenWidth:F

    iget v4, p0, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    div-float/2addr v3, v4

    iput v3, p0, Lcom/asus/reader/pdf/PDFPage;->mPageInitScale:F

    .line 232
    iget-object v3, p0, Lcom/asus/reader/pdf/PDFPage;->vertices:[F

    iget v4, p0, Lcom/asus/reader/pdf/PDFPage;->bmHeight:F

    iget v5, p0, Lcom/asus/reader/pdf/PDFPage;->bmWidth:F

    div-float/2addr v4, v5

    neg-float v4, v4

    iget v5, p0, Lcom/asus/reader/pdf/PDFPage;->mPageInitScale:F

    mul-float/2addr v4, v5

    aput v4, v3, v11

    .line 233
    iget-object v3, p0, Lcom/asus/reader/pdf/PDFPage;->vertices:[F

    const/4 v4, 0x4

    iget v5, p0, Lcom/asus/reader/pdf/PDFPage;->bmHeight:F

    iget v6, p0, Lcom/asus/reader/pdf/PDFPage;->bmWidth:F

    div-float/2addr v5, v6

    neg-float v5, v5

    iget v6, p0, Lcom/asus/reader/pdf/PDFPage;->mPageInitScale:F

    mul-float/2addr v5, v6

    aput v5, v3, v4

    .line 234
    iget-object v3, p0, Lcom/asus/reader/pdf/PDFPage;->vertices:[F

    iget v4, p0, Lcom/asus/reader/pdf/PDFPage;->bmHeight:F

    iget v5, p0, Lcom/asus/reader/pdf/PDFPage;->bmWidth:F

    div-float/2addr v4, v5

    iget v5, p0, Lcom/asus/reader/pdf/PDFPage;->mPageInitScale:F

    mul-float/2addr v4, v5

    aput v4, v3, v10

    .line 235
    iget-object v3, p0, Lcom/asus/reader/pdf/PDFPage;->vertices:[F

    const/16 v4, 0xa

    iget v5, p0, Lcom/asus/reader/pdf/PDFPage;->bmHeight:F

    iget v6, p0, Lcom/asus/reader/pdf/PDFPage;->bmWidth:F

    div-float/2addr v5, v6

    iget v6, p0, Lcom/asus/reader/pdf/PDFPage;->mPageInitScale:F

    mul-float/2addr v5, v6

    aput v5, v3, v4

    .line 236
    iget v3, p0, Lcom/asus/reader/pdf/PDFPage;->bmHeight:F

    iget v4, p0, Lcom/asus/reader/pdf/PDFPage;->bmWidth:F

    div-float/2addr v3, v4

    iget v4, p0, Lcom/asus/reader/pdf/PDFPage;->mPageInitScale:F

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/asus/reader/pdf/PDFPage;->boundaryY:F

    .line 237
    iput v8, p0, Lcom/asus/reader/pdf/PDFPage;->mBaseNum:I

    .line 238
    iget-object v3, p0, Lcom/asus/reader/pdf/PDFPage;->vertices:[F

    aget v3, v3, v9

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_1

    .line 239
    iget-object v3, p0, Lcom/asus/reader/pdf/PDFPage;->vertices:[F

    aget v3, v3, v9

    iput v3, p0, Lcom/asus/reader/pdf/PDFPage;->boundaryX:F

    goto/16 :goto_2

    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setDefault()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 287
    iput v0, p0, Lcom/asus/reader/pdf/PDFPage;->translateX:F

    .line 288
    iput v0, p0, Lcom/asus/reader/pdf/PDFPage;->translateY:F

    .line 289
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/asus/reader/pdf/PDFPage;->scale:F

    .line 290
    return-void
.end method

.method public setID(I)V
    .locals 2
    .parameter "n"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFPage;->textureIDs:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 268
    return-void
.end method

.method public setScreenBase(FF)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 276
    iput p1, p0, Lcom/asus/reader/pdf/PDFPage;->screenWidth:F

    .line 277
    iput p2, p0, Lcom/asus/reader/pdf/PDFPage;->screenHeight:F

    .line 279
    iget v0, p0, Lcom/asus/reader/pdf/PDFPage;->screenWidth:F

    iget v1, p0, Lcom/asus/reader/pdf/PDFPage;->screenHeight:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 280
    iget v0, p0, Lcom/asus/reader/pdf/PDFPage;->screenWidth:F

    iput v0, p0, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    .line 284
    :goto_0
    return-void

    .line 282
    :cond_0
    iget v0, p0, Lcom/asus/reader/pdf/PDFPage;->screenHeight:F

    iput v0, p0, Lcom/asus/reader/pdf/PDFPage;->screenBase:F

    goto :goto_0
.end method

.method public setTexture(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .parameter "gl"

    .prologue
    .line 188
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFPage;->textureIDs:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 189
    return-void
.end method

.class public Lcom/asus/reader/pdf/PDFHPage;
.super Ljava/lang/Object;
.source "PDFHPage.java"


# static fields
.field public static hPar:D

.field public static mBaseTranslateX:F

.field public static mBaseTranslateY:F

.field public static mBoundaryX:F

.field public static mBoundaryY:F

.field public static mParPageHeight:F

.field public static mParPageWidth:F

.field public static mXAxis:F

.field public static mYAxis:F

.field private static screenHeight:F

.field private static screenWidth:F

.field public static wPar:D


# instance fields
.field public bmPageLoc:I

.field public bmPageNo:I

.field public bmPageScale:I

.field public mPageHeight:F

.field public mPageLoadSuccess:Z

.field public mPageNo:I

.field public mPageWidth:F

.field public mParPageId:I

.field public mParPageScale:D

.field public mShowPage:Z

.field public mbitmap:Landroid/graphics/Bitmap;

.field public scale:F

.field public screenBase:F

.field private texBuffer:Ljava/nio/FloatBuffer;

.field private texCoords:[F

.field public textureIDs:[I

.field public translateX:F

.field public translateY:F

.field private vertexBuffer:Ljava/nio/FloatBuffer;

.field private vertices:[F


# direct methods
.method public constructor <init>(IFF)V
    .locals 7
    .parameter "No"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/high16 v2, 0x3f80

    iput v2, p0, Lcom/asus/reader/pdf/PDFHPage;->scale:F

    .line 33
    iput v4, p0, Lcom/asus/reader/pdf/PDFHPage;->translateX:F

    .line 34
    iput v4, p0, Lcom/asus/reader/pdf/PDFHPage;->translateY:F

    .line 46
    const/16 v2, 0xc

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/asus/reader/pdf/PDFHPage;->vertices:[F

    .line 53
    const/16 v2, 0x8

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/asus/reader/pdf/PDFHPage;->texCoords:[F

    .line 60
    new-array v2, v6, [I

    iput-object v2, p0, Lcom/asus/reader/pdf/PDFHPage;->textureIDs:[I

    .line 63
    iput p1, p0, Lcom/asus/reader/pdf/PDFHPage;->mPageNo:I

    .line 64
    sput p2, Lcom/asus/reader/pdf/PDFHPage;->screenWidth:F

    .line 65
    sput p3, Lcom/asus/reader/pdf/PDFHPage;->screenHeight:F

    .line 66
    sget v2, Lcom/asus/reader/pdf/PDFHPage;->screenWidth:F

    sget v3, Lcom/asus/reader/pdf/PDFHPage;->screenHeight:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 67
    sget v2, Lcom/asus/reader/pdf/PDFHPage;->screenWidth:F

    iput v2, p0, Lcom/asus/reader/pdf/PDFHPage;->screenBase:F

    .line 71
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/asus/reader/pdf/PDFHPage;->mbitmap:Landroid/graphics/Bitmap;

    .line 72
    sput v4, Lcom/asus/reader/pdf/PDFHPage;->mBaseTranslateX:F

    .line 73
    sput v4, Lcom/asus/reader/pdf/PDFHPage;->mBaseTranslateY:F

    .line 74
    const/4 v2, -0x1

    iput v2, p0, Lcom/asus/reader/pdf/PDFHPage;->mParPageId:I

    .line 75
    iput-boolean v5, p0, Lcom/asus/reader/pdf/PDFHPage;->mPageLoadSuccess:Z

    .line 76
    iput-boolean v6, p0, Lcom/asus/reader/pdf/PDFHPage;->mShowPage:Z

    .line 80
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFHPage;->vertices:[F

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 81
    .local v1, vbb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 82
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/asus/reader/pdf/PDFHPage;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 83
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFHPage;->vertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFHPage;->vertices:[F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 84
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFHPage;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 86
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFHPage;->texCoords:[F

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 87
    .local v0, tbb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 88
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/asus/reader/pdf/PDFHPage;->texBuffer:Ljava/nio/FloatBuffer;

    .line 89
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFHPage;->texBuffer:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFHPage;->texCoords:[F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 90
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFHPage;->texBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 91
    return-void

    .line 69
    .end local v0           #tbb:Ljava/nio/ByteBuffer;
    .end local v1           #vbb:Ljava/nio/ByteBuffer;
    :cond_0
    sget v2, Lcom/asus/reader/pdf/PDFHPage;->screenHeight:F

    iput v2, p0, Lcom/asus/reader/pdf/PDFHPage;->screenBase:F

    goto :goto_0

    .line 46
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
.method public changeSize(FFFFFFF)V
    .locals 6
    .parameter "width"
    .parameter "height"
    .parameter "boundaryX"
    .parameter "boundaryY"
    .parameter "base"
    .parameter "pageScale"
    .parameter "currScale"

    .prologue
    const/4 v5, 0x0

    .line 153
    iput p1, p0, Lcom/asus/reader/pdf/PDFHPage;->mPageWidth:F

    .line 154
    iput p2, p0, Lcom/asus/reader/pdf/PDFHPage;->mPageHeight:F

    .line 155
    sget v2, Lcom/asus/reader/pdf/PDFHPage;->screenWidth:F

    div-float/2addr v2, p5

    div-float/2addr v2, p6

    sub-float v2, p3, v2

    sput v2, Lcom/asus/reader/pdf/PDFHPage;->mBoundaryX:F

    .line 156
    sget v2, Lcom/asus/reader/pdf/PDFHPage;->screenHeight:F

    div-float/2addr v2, p5

    div-float/2addr v2, p6

    sub-float v2, p4, v2

    sput v2, Lcom/asus/reader/pdf/PDFHPage;->mBoundaryY:F

    .line 157
    div-float v2, p7, p6

    iput v2, p0, Lcom/asus/reader/pdf/PDFHPage;->scale:F

    .line 158
    const-string v2, "PDFHPage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(========================"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/asus/reader/pdf/PDFHPage;->screenWidth:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/asus/reader/pdf/PDFHPage;->screenHeight:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=======================)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFHPage;->vertices:[F

    const/4 v3, 0x1

    neg-float v4, p2

    aput v4, v2, v3

    .line 160
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFHPage;->vertices:[F

    const/4 v3, 0x4

    neg-float v4, p2

    aput v4, v2, v3

    .line 161
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFHPage;->vertices:[F

    const/4 v3, 0x7

    aput p2, v2, v3

    .line 162
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFHPage;->vertices:[F

    const/16 v3, 0xa

    aput p2, v2, v3

    .line 163
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFHPage;->vertices:[F

    neg-float v3, p1

    aput v3, v2, v5

    .line 164
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFHPage;->vertices:[F

    const/4 v3, 0x3

    aput p1, v2, v3

    .line 165
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFHPage;->vertices:[F

    const/4 v3, 0x6

    neg-float v4, p1

    aput v4, v2, v3

    .line 166
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFHPage;->vertices:[F

    const/16 v3, 0x9

    aput p1, v2, v3

    .line 168
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFHPage;->vertices:[F

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 169
    .local v1, vbb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 170
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/asus/reader/pdf/PDFHPage;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 171
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFHPage;->vertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFHPage;->vertices:[F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 172
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFHPage;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 174
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFHPage;->texCoords:[F

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 175
    .local v0, tbb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 176
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/asus/reader/pdf/PDFHPage;->texBuffer:Ljava/nio/FloatBuffer;

    .line 177
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFHPage;->texBuffer:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/asus/reader/pdf/PDFHPage;->texCoords:[F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 178
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFHPage;->texBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 179
    return-void
.end method

.method public deleteTexture(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .parameter "gl"

    .prologue
    .line 112
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFHPage;->textureIDs:[I

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 113
    return-void
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7
    .parameter "gl"

    .prologue
    const v6, 0x8078

    const v5, 0x8074

    const/16 v4, 0x1406

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 94
    const/16 v0, 0x901

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 96
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 97
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFHPage;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v4, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 98
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 99
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFHPage;->texBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v4, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 101
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 102
    iget v0, p0, Lcom/asus/reader/pdf/PDFHPage;->scale:F

    iget v1, p0, Lcom/asus/reader/pdf/PDFHPage;->scale:F

    invoke-interface {p1, v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 103
    iget v0, p0, Lcom/asus/reader/pdf/PDFHPage;->translateX:F

    iget v1, p0, Lcom/asus/reader/pdf/PDFHPage;->translateY:F

    invoke-interface {p1, v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 104
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-interface {p1, v0, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 105
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 107
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 108
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 109
    return-void
.end method

.method public finish(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .parameter "gl"

    .prologue
    .line 222
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFHPage;->textureIDs:[I

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 223
    return-void
.end method

.method public loadTexture(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .parameter "gl"

    .prologue
    const/4 v2, 0x1

    const/16 v4, 0xde1

    const/4 v3, 0x0

    .line 117
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFHPage;->textureIDs:[I

    invoke-interface {p1, v2, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 120
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFHPage;->textureIDs:[I

    aget v0, v0, v3

    invoke-interface {p1, v4, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 123
    const/16 v0, 0x2801

    const/high16 v1, 0x4618

    invoke-interface {p1, v4, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 124
    const/16 v0, 0x2800

    const v1, 0x46180400

    invoke-interface {p1, v4, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 127
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFHPage;->mbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_0

    .line 128
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFHPage;->mbitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/asus/reader/pdf/PDFHPage;->mbitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFHPage;->mbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/asus/reader/pdf/PDFHPage;->mbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v0, v3, v3, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/reader/pdf/PDFHPage;->mbitmap:Landroid/graphics/Bitmap;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFHPage;->mbitmap:Landroid/graphics/Bitmap;

    invoke-static {v4, v3, v0, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 132
    iget-object v0, p0, Lcom/asus/reader/pdf/PDFHPage;->mbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/reader/pdf/PDFHPage;->mbitmap:Landroid/graphics/Bitmap;

    .line 134
    return-void
.end method

.method public screenRotate(FF)V
    .locals 2
    .parameter "mWidth"
    .parameter "mHeight"

    .prologue
    const/4 v0, 0x0

    .line 212
    sput p1, Lcom/asus/reader/pdf/PDFHPage;->screenWidth:F

    .line 213
    sput p2, Lcom/asus/reader/pdf/PDFHPage;->screenHeight:F

    .line 214
    iput-boolean v0, p0, Lcom/asus/reader/pdf/PDFHPage;->mPageLoadSuccess:Z

    .line 215
    iput-boolean v0, p0, Lcom/asus/reader/pdf/PDFHPage;->mShowPage:Z

    .line 216
    const/4 v0, -0x1

    iput v0, p0, Lcom/asus/reader/pdf/PDFHPage;->mParPageId:I

    .line 217
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/asus/reader/pdf/PDFHPage;->mParPageScale:D

    .line 218
    return-void
.end method

.method public setPartialPageInfo(IID)V
    .locals 0
    .parameter "No"
    .parameter "id"
    .parameter "scale"

    .prologue
    .line 206
    iput p1, p0, Lcom/asus/reader/pdf/PDFHPage;->mPageNo:I

    .line 207
    iput p2, p0, Lcom/asus/reader/pdf/PDFHPage;->mParPageId:I

    .line 208
    iput-wide p3, p0, Lcom/asus/reader/pdf/PDFHPage;->mParPageScale:D

    .line 209
    return-void
.end method

.method public setPartialPageSize(FFDDFFF)V
    .locals 6
    .parameter "width"
    .parameter "height"
    .parameter "w"
    .parameter "h"
    .parameter "glscale"
    .parameter "modW"
    .parameter "modH"

    .prologue
    const/high16 v5, 0x4000

    const/high16 v4, 0x3f80

    const-wide/high16 v2, 0x3ff0

    .line 182
    sput p1, Lcom/asus/reader/pdf/PDFHPage;->mParPageWidth:F

    .line 183
    sput p2, Lcom/asus/reader/pdf/PDFHPage;->mParPageHeight:F

    .line 184
    sput-wide p3, Lcom/asus/reader/pdf/PDFHPage;->wPar:D

    .line 185
    sput-wide p5, Lcom/asus/reader/pdf/PDFHPage;->hPar:D

    .line 186
    sget v0, Lcom/asus/reader/pdf/PDFHPage;->screenWidth:F

    sget v1, Lcom/asus/reader/pdf/PDFHPage;->screenHeight:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 187
    sget-wide v0, Lcom/asus/reader/pdf/PDFHPage;->wPar:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 188
    sget v0, Lcom/asus/reader/pdf/PDFHPage;->mParPageWidth:F

    sput v0, Lcom/asus/reader/pdf/PDFHPage;->mXAxis:F

    .line 189
    sget v0, Lcom/asus/reader/pdf/PDFHPage;->mXAxis:F

    sput v0, Lcom/asus/reader/pdf/PDFHPage;->mYAxis:F

    .line 203
    :goto_0
    return-void

    .line 191
    :cond_0
    sget v0, Lcom/asus/reader/pdf/PDFHPage;->mParPageWidth:F

    mul-float/2addr v0, p8

    sub-float v0, p7, v0

    sget-wide v1, Lcom/asus/reader/pdf/PDFHPage;->wPar:D

    double-to-float v1, v1

    sub-float/2addr v1, v4

    div-float/2addr v0, v1

    mul-float/2addr v0, v5

    div-float/2addr v0, p7

    sput v0, Lcom/asus/reader/pdf/PDFHPage;->mXAxis:F

    .line 192
    sget v0, Lcom/asus/reader/pdf/PDFHPage;->mXAxis:F

    sput v0, Lcom/asus/reader/pdf/PDFHPage;->mYAxis:F

    goto :goto_0

    .line 195
    :cond_1
    sget-wide v0, Lcom/asus/reader/pdf/PDFHPage;->hPar:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    .line 196
    sget v0, Lcom/asus/reader/pdf/PDFHPage;->mParPageHeight:F

    sput v0, Lcom/asus/reader/pdf/PDFHPage;->mYAxis:F

    .line 197
    sget v0, Lcom/asus/reader/pdf/PDFHPage;->mYAxis:F

    sput v0, Lcom/asus/reader/pdf/PDFHPage;->mXAxis:F

    goto :goto_0

    .line 199
    :cond_2
    sget v0, Lcom/asus/reader/pdf/PDFHPage;->mParPageHeight:F

    mul-float/2addr v0, p9

    sub-float v0, p7, v0

    sget-wide v1, Lcom/asus/reader/pdf/PDFHPage;->hPar:D

    double-to-float v1, v1

    sub-float/2addr v1, v4

    div-float/2addr v0, v1

    mul-float/2addr v0, v5

    div-float/2addr v0, p7

    sput v0, Lcom/asus/reader/pdf/PDFHPage;->mYAxis:F

    .line 200
    sget v0, Lcom/asus/reader/pdf/PDFHPage;->mYAxis:F

    sput v0, Lcom/asus/reader/pdf/PDFHPage;->mXAxis:F

    goto :goto_0
.end method

.method public setTexture(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .parameter "gl"

    .prologue
    .line 137
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/asus/reader/pdf/PDFHPage;->textureIDs:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 138
    return-void
.end method

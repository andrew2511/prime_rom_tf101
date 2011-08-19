.class public Lcom/asus/reader/book/PageTexture;
.super Ljava/lang/Object;
.source "PageTexture.java"


# static fields
.field public static final DBG:Z

.field private static mBackgroundBitmap:Landroid/graphics/Bitmap;

.field private static mBackgroundBitmapContent:[B

.field private static mBuffer:[B


# instance fields
.field private gl:Ljavax/microedition/khronos/opengles/GL10;

.field public mHeight:I

.field private mIsLandscape:Z

.field private mPage:Lcom/asus/reader/book/Page;

.field public mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    sget-boolean v0, Lcom/asus/reader/ReaderApp;->DBG:Z

    sput-boolean v0, Lcom/asus/reader/book/PageTexture;->DBG:Z

    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/asus/reader/book/PageTexture;->mBuffer:[B

    .line 21
    const/16 v0, 0x4a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/asus/reader/book/PageTexture;->mBackgroundBitmapContent:[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0x42t
        0x4dt
        0xb6t
        0x7et
        0x4t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x36t
        0x0t
        0x0t
        0x0t
        0x28t
        0x0t
        0x0t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x20t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x80t
        0x7et
        0x4t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xfft
        0xfft
        0xfft
        0x0t
        0xe8t
        0xf4t
        0xfft
        0x0t
        0xe8t
        0xf4t
        0xfft
        0x0t
        0xe8t
        0xf4t
        0xfft
        0x0t
        0xe8t
        0xf4t
        0xfft
        0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/asus/reader/book/Page;Z)V
    .locals 0
    .parameter "page"
    .parameter "isLandscape"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/asus/reader/book/PageTexture;->mPage:Lcom/asus/reader/book/Page;

    .line 33
    iput-boolean p2, p0, Lcom/asus/reader/book/PageTexture;->mIsLandscape:Z

    .line 34
    return-void
.end method


# virtual methods
.method public native getRawStreamNative([BI)[B
.end method

.method public init(Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 2
    .parameter "gl"
    .parameter "textureNo"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/asus/reader/book/PageTexture;->mPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v0}, Lcom/asus/reader/book/Page;->getCurrentPageNo()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/asus/reader/book/PageTexture;->mPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v0}, Lcom/asus/reader/book/Page;->getCurrentPageNo()I

    move-result v0

    sget v1, Lcom/asus/reader/book/PageRenderer;->PAGECOUNT:I

    if-lt v0, v1, :cond_2

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/book/PageTexture;->mPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v0}, Lcom/asus/reader/book/Page;->getCurrentPageNo()I

    move-result v0

    sget v1, Lcom/asus/reader/book/PageRenderer;->PAGECOUNT:I

    if-ne v0, v1, :cond_1

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/asus/reader/book/PageTexture;->setBackgroundTexture(Ljavax/microedition/khronos/opengles/GL10;I)Z

    .line 48
    :cond_1
    :goto_0
    return-void

    .line 43
    :cond_2
    invoke-virtual {p0}, Lcom/asus/reader/book/PageTexture;->loadRawStream()V

    .line 44
    sget-object v0, Lcom/asus/reader/book/PageTexture;->mBuffer:[B

    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {p0, p1}, Lcom/asus/reader/book/PageTexture;->setGLobj(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 47
    invoke-virtual {p0, p2}, Lcom/asus/reader/book/PageTexture;->loadTextures(I)V

    goto :goto_0
.end method

.method public loadRawStream()V
    .locals 12

    .prologue
    .line 51
    iget-object v0, p0, Lcom/asus/reader/book/PageTexture;->mPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v0}, Lcom/asus/reader/book/Page;->getBookId()I

    move-result v1

    .line 52
    .local v1, BookId:I
    iget-object v0, p0, Lcom/asus/reader/book/PageTexture;->mPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v0}, Lcom/asus/reader/book/Page;->getCurrentPageNo()I

    move-result v2

    .line 53
    .local v2, pageNo:I
    iget-object v0, p0, Lcom/asus/reader/book/PageTexture;->mPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v0}, Lcom/asus/reader/book/Page;->getFontSize()I

    move-result v3

    .line 55
    .local v3, FontSize:I
    sget-object v0, Lcom/asus/reader/book/PageTexture;->mBuffer:[B

    if-nez v0, :cond_0

    .line 56
    sget v0, Lcom/asus/reader/Cache;->PORTRAIT_HEIGHT:I

    sget v4, Lcom/asus/reader/Cache;->PORTRAIT_WIDTH:I

    mul-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    sput-object v0, Lcom/asus/reader/book/PageTexture;->mBuffer:[B

    .line 57
    :cond_0
    invoke-static {}, Lcom/asus/reader/Cache;->getInstance()Lcom/asus/reader/Cache;

    move-result-object v0

    sget-object v4, Lcom/asus/reader/book/PageTexture;->mBuffer:[B

    iget-boolean v5, p0, Lcom/asus/reader/book/PageTexture;->mIsLandscape:Z

    invoke-virtual/range {v0 .. v5}, Lcom/asus/reader/Cache;->ReadFromCache(III[BZ)I

    move-result v11

    .local v11, cacheNo:I
    const/4 v0, -0x1

    if-ne v11, v0, :cond_3

    .line 58
    sget-object v0, Lcom/asus/reader/book/PageTexture;->mBuffer:[B

    invoke-virtual {p0, v0, v2}, Lcom/asus/reader/book/PageTexture;->getRawStreamNative([BI)[B

    move-result-object v0

    sput-object v0, Lcom/asus/reader/book/PageTexture;->mBuffer:[B

    .line 59
    sget-boolean v0, Lcom/asus/reader/book/PageTexture;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "PageTexture"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mWidth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/asus/reader/book/PageTexture;->mWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/asus/reader/book/PageTexture;->mHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_1
    invoke-static {}, Lcom/asus/reader/Cache;->getInstance()Lcom/asus/reader/Cache;

    move-result-object v4

    sget-object v7, Lcom/asus/reader/book/PageTexture;->mBuffer:[B

    iget v8, p0, Lcom/asus/reader/book/PageTexture;->mWidth:I

    iget v9, p0, Lcom/asus/reader/book/PageTexture;->mHeight:I

    move v5, v1

    move v6, v2

    move v10, v3

    invoke-virtual/range {v4 .. v10}, Lcom/asus/reader/Cache;->WriteToCache(II[BIII)V

    .line 78
    :cond_2
    :goto_0
    return-void

    .line 74
    :cond_3
    invoke-static {}, Lcom/asus/reader/Cache;->getInstance()Lcom/asus/reader/Cache;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/asus/reader/Cache;->getWidth(I)I

    move-result v0

    iput v0, p0, Lcom/asus/reader/book/PageTexture;->mWidth:I

    .line 75
    invoke-static {}, Lcom/asus/reader/Cache;->getInstance()Lcom/asus/reader/Cache;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/asus/reader/Cache;->getHeight(I)I

    move-result v0

    iput v0, p0, Lcom/asus/reader/book/PageTexture;->mHeight:I

    .line 76
    sget-boolean v0, Lcom/asus/reader/book/PageTexture;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "PageTexture"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ReadFromCache mWidth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/asus/reader/book/PageTexture;->mWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/asus/reader/book/PageTexture;->mHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public loadTextures(I)V
    .locals 10
    .parameter "textureNo"

    .prologue
    .line 86
    sget-boolean v0, Lcom/asus/reader/book/BookViewActivity;->UseGLES20:Z

    if-eqz v0, :cond_0

    .line 88
    const/16 v0, 0xde1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 89
    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/16 v2, 0x1907

    iget v3, p0, Lcom/asus/reader/book/PageTexture;->mWidth:I

    iget v4, p0, Lcom/asus/reader/book/PageTexture;->mHeight:I

    const/4 v5, 0x0

    const/16 v6, 0x1907

    const/16 v7, 0x1401

    sget-object v8, Lcom/asus/reader/book/PageTexture;->mBuffer:[B

    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 90
    const/16 v0, 0xde1

    const/16 v1, 0x2801

    const v2, 0x46180400

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 91
    const/16 v0, 0xde1

    const/16 v1, 0x2800

    const v2, 0x46180400

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 99
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/book/PageTexture;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xde1

    invoke-interface {v0, v1, p1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 95
    iget-object v0, p0, Lcom/asus/reader/book/PageTexture;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x1907

    iget v4, p0, Lcom/asus/reader/book/PageTexture;->mWidth:I

    iget v5, p0, Lcom/asus/reader/book/PageTexture;->mHeight:I

    const/4 v6, 0x0

    const/16 v7, 0x1907

    const/16 v8, 0x1401

    sget-object v9, Lcom/asus/reader/book/PageTexture;->mBuffer:[B

    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 96
    iget-object v0, p0, Lcom/asus/reader/book/PageTexture;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xde1

    const/16 v2, 0x2801

    const/16 v3, 0x2601

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 97
    iget-object v0, p0, Lcom/asus/reader/book/PageTexture;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xde1

    const/16 v2, 0x2800

    const/16 v3, 0x2601

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 133
    sput-object v1, Lcom/asus/reader/book/PageTexture;->mBuffer:[B

    .line 134
    sget-object v0, Lcom/asus/reader/book/PageTexture;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 135
    sget-object v0, Lcom/asus/reader/book/PageTexture;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 136
    sput-object v1, Lcom/asus/reader/book/PageTexture;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 138
    :cond_0
    return-void
.end method

.method public setBackgroundTexture(Ljavax/microedition/khronos/opengles/GL10;I)Z
    .locals 4
    .parameter "gl"
    .parameter "textureNo"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0xde1

    .line 103
    sget-object v0, Lcom/asus/reader/book/PageTexture;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 104
    sget-object v0, Lcom/asus/reader/book/PageTexture;->mBackgroundBitmapContent:[B

    sget-object v1, Lcom/asus/reader/book/PageTexture;->mBackgroundBitmapContent:[B

    array-length v1, v1

    invoke-static {v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/asus/reader/book/PageTexture;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 105
    :cond_0
    sget-boolean v0, Lcom/asus/reader/book/BookViewActivity;->UseGLES20:Z

    if-eqz v0, :cond_2

    .line 107
    invoke-static {v2, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 108
    sget-boolean v0, Lcom/asus/reader/book/BookViewActivity;->isNightMode:Z

    if-nez v0, :cond_1

    .line 109
    sget-object v0, Lcom/asus/reader/book/PageTexture;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2, v3, v0, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 110
    const/16 v0, 0x2801

    const/high16 v1, 0x4618

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 111
    const/16 v0, 0x2800

    const v1, 0x46180400

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 116
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 114
    :cond_2
    invoke-interface {p1, v2, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    goto :goto_0
.end method

.method public setGLobj(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .parameter "gl"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/asus/reader/book/PageTexture;->gl:Ljavax/microedition/khronos/opengles/GL10;

    .line 82
    return-void
.end method

.method public setTexture(Ljavax/microedition/khronos/opengles/GL10;I)Z
    .locals 3
    .parameter "gl"
    .parameter "textureNo"

    .prologue
    const/16 v2, 0xde1

    .line 121
    iget-object v0, p0, Lcom/asus/reader/book/PageTexture;->mPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v0}, Lcom/asus/reader/book/Page;->getCurrentPageNo()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/asus/reader/book/PageTexture;->mPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v0}, Lcom/asus/reader/book/Page;->getCurrentPageNo()I

    move-result v0

    sget v1, Lcom/asus/reader/book/PageRenderer;->PAGECOUNT:I

    if-le v0, v1, :cond_1

    .line 123
    :cond_0
    const/4 v0, 0x0

    .line 129
    :goto_0
    return v0

    .line 124
    :cond_1
    sget-boolean v0, Lcom/asus/reader/book/BookViewActivity;->UseGLES20:Z

    if-eqz v0, :cond_2

    .line 125
    invoke-static {v2, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 129
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 127
    :cond_2
    invoke-interface {p1, v2, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    goto :goto_1
.end method

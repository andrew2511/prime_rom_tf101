.class public Lcom/splashtop/remote/VideoRender;
.super Ljava/lang/Thread;
.source "VideoRender.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "IRISVideo"

.field private static mCropFilter:Z

.field private static mFrameCount:I

.field private static mRatio:F

.field private static mRealVideoHeight:I

.field private static mRealVideoWidth:I

.field private static mRealVideoX:I

.field private static mRealVideoY:I

.field private static mSize:J

.field private static mSurfaceVideoHeight:I

.field private static mSurfaceVideoWidth:I

.field private static mVideoHeight:I

.field private static mVideoWidth:I


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDstRect:Landroid/graphics/Rect;

.field private mHalt:Z

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mPaint:Landroid/graphics/Paint;

.field private mSrcRect:Landroid/graphics/Rect;

.field private mSrcRectZoom:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceHolder;IIZZ)V
    .locals 3
    .parameter "holder"
    .parameter "width"
    .parameter "height"
    .parameter "cropfilter"
    .parameter "bUsePaint"

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 24
    iput-boolean v2, p0, Lcom/splashtop/remote/VideoRender;->mHalt:Z

    .line 45
    iput-object p1, p0, Lcom/splashtop/remote/VideoRender;->mHolder:Landroid/view/SurfaceHolder;

    .line 46
    if-eqz p5, :cond_0

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/splashtop/remote/VideoRender;->mPaint:Landroid/graphics/Paint;

    .line 48
    iget-object v0, p0, Lcom/splashtop/remote/VideoRender;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 53
    :goto_0
    sput p2, Lcom/splashtop/remote/VideoRender;->mVideoWidth:I

    .line 54
    sput p3, Lcom/splashtop/remote/VideoRender;->mVideoHeight:I

    .line 55
    sput-boolean p4, Lcom/splashtop/remote/VideoRender;->mCropFilter:Z

    .line 56
    mul-int v0, p2, p3

    mul-int/lit8 v0, v0, 0x10

    div-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    sput-wide v0, Lcom/splashtop/remote/VideoRender;->mSize:J

    .line 57
    sput v2, Lcom/splashtop/remote/VideoRender;->mSurfaceVideoWidth:I

    .line 58
    sput v2, Lcom/splashtop/remote/VideoRender;->mSurfaceVideoHeight:I

    .line 59
    const/high16 v0, 0x3f80

    sput v0, Lcom/splashtop/remote/VideoRender;->mRatio:F

    .line 60
    sput v2, Lcom/splashtop/remote/VideoRender;->mFrameCount:I

    .line 62
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/splashtop/remote/VideoRender;->mPaint:Landroid/graphics/Paint;

    goto :goto_0
.end method


# virtual methods
.method public caculate_ratio()F
    .locals 4

    .prologue
    .line 65
    sget v2, Lcom/splashtop/remote/VideoRender;->mSurfaceVideoWidth:I

    int-to-float v2, v2

    sget v3, Lcom/splashtop/remote/VideoRender;->mVideoWidth:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 66
    .local v1, ratio_width:F
    sget v2, Lcom/splashtop/remote/VideoRender;->mSurfaceVideoHeight:I

    int-to-float v2, v2

    sget v3, Lcom/splashtop/remote/VideoRender;->mVideoHeight:I

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 67
    .local v0, ratio_height:F
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    return v2
.end method

.method public close()V
    .locals 3

    .prologue
    .line 134
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/splashtop/remote/VideoRender;->mHalt:Z

    .line 135
    invoke-virtual {p0}, Lcom/splashtop/remote/VideoRender;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 137
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "IRISVideo"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getFrameCount()I
    .locals 1

    .prologue
    .line 169
    sget v0, Lcom/splashtop/remote/VideoRender;->mFrameCount:I

    return v0
.end method

.method public resetFrameCount()V
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    sput v0, Lcom/splashtop/remote/VideoRender;->mFrameCount:I

    .line 174
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, canvas:Landroid/graphics/Canvas;
    :goto_0
    iget-boolean v2, p0, Lcom/splashtop/remote/VideoRender;->mHalt:Z

    if-nez v2, :cond_0

    .line 78
    iget-object v2, p0, Lcom/splashtop/remote/VideoRender;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/splashtop/remote/JNILib;->nativeDrawBitmap(Landroid/graphics/Bitmap;)I

    move-result v1

    .line 79
    .local v1, scale_mode:I
    if-lez v1, :cond_0

    .line 81
    sget v2, Lcom/splashtop/remote/VideoRender;->mFrameCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/splashtop/remote/VideoRender;->mFrameCount:I

    .line 82
    iget-object v2, p0, Lcom/splashtop/remote/VideoRender;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    .line 83
    if-nez v0, :cond_1

    .line 129
    .end local v1           #scale_mode:I
    :cond_0
    return-void

    .line 88
    .restart local v1       #scale_mode:I
    :cond_1
    const/high16 v2, -0x100

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 89
    sget-boolean v2, Lcom/splashtop/remote/VideoRender;->mCropFilter:Z

    if-eqz v2, :cond_5

    .line 90
    invoke-virtual {p0}, Lcom/splashtop/remote/VideoRender;->caculate_ratio()F

    move-result v2

    sput v2, Lcom/splashtop/remote/VideoRender;->mRatio:F

    .line 91
    iget-object v2, p0, Lcom/splashtop/remote/VideoRender;->mSrcRect:Landroid/graphics/Rect;

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 92
    iget-object v2, p0, Lcom/splashtop/remote/VideoRender;->mSrcRect:Landroid/graphics/Rect;

    sget v3, Lcom/splashtop/remote/VideoRender;->mVideoWidth:I

    sget v4, Lcom/splashtop/remote/VideoRender;->mVideoWidth:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/splashtop/remote/VideoRender;->mRatio:F

    mul-float/2addr v3, v4

    sget v4, Lcom/splashtop/remote/VideoRender;->mRealVideoWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 93
    iget-object v2, p0, Lcom/splashtop/remote/VideoRender;->mSrcRect:Landroid/graphics/Rect;

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 94
    iget-object v2, p0, Lcom/splashtop/remote/VideoRender;->mSrcRect:Landroid/graphics/Rect;

    sget v3, Lcom/splashtop/remote/VideoRender;->mVideoHeight:I

    sget v4, Lcom/splashtop/remote/VideoRender;->mVideoHeight:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/splashtop/remote/VideoRender;->mRatio:F

    mul-float/2addr v3, v4

    sget v4, Lcom/splashtop/remote/VideoRender;->mRealVideoHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 95
    iget-object v2, p0, Lcom/splashtop/remote/VideoRender;->mDstRect:Landroid/graphics/Rect;

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 96
    iget-object v2, p0, Lcom/splashtop/remote/VideoRender;->mDstRect:Landroid/graphics/Rect;

    sget v3, Lcom/splashtop/remote/VideoRender;->mVideoWidth:I

    int-to-float v3, v3

    sget v4, Lcom/splashtop/remote/VideoRender;->mRatio:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 97
    iget-object v2, p0, Lcom/splashtop/remote/VideoRender;->mDstRect:Landroid/graphics/Rect;

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 98
    iget-object v2, p0, Lcom/splashtop/remote/VideoRender;->mDstRect:Landroid/graphics/Rect;

    sget v3, Lcom/splashtop/remote/VideoRender;->mVideoHeight:I

    int-to-float v3, v3

    sget v4, Lcom/splashtop/remote/VideoRender;->mRatio:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 100
    sget v2, Lcom/splashtop/remote/VideoRender;->mRealVideoWidth:I

    sget v3, Lcom/splashtop/remote/VideoRender;->mVideoWidth:I

    if-gt v2, v3, :cond_2

    sget v2, Lcom/splashtop/remote/VideoRender;->mRealVideoHeight:I

    sget v3, Lcom/splashtop/remote/VideoRender;->mVideoHeight:I

    if-le v2, v3, :cond_4

    .line 101
    :cond_2
    iget-object v2, p0, Lcom/splashtop/remote/VideoRender;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/splashtop/remote/VideoRender;->mSrcRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/splashtop/remote/VideoRender;->mDstRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/splashtop/remote/VideoRender;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 121
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/splashtop/remote/VideoRender;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 103
    :cond_4
    iget-object v2, p0, Lcom/splashtop/remote/VideoRender;->mBitmap:Landroid/graphics/Bitmap;

    sget v3, Lcom/splashtop/remote/VideoRender;->mRealVideoX:I

    int-to-float v3, v3

    sget v4, Lcom/splashtop/remote/VideoRender;->mRealVideoY:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/splashtop/remote/VideoRender;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 106
    :cond_5
    const/4 v2, 0x1

    if-ne v2, v1, :cond_6

    .line 107
    iget-object v2, p0, Lcom/splashtop/remote/VideoRender;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/splashtop/remote/VideoRender;->mSrcRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/splashtop/remote/VideoRender;->mDstRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/splashtop/remote/VideoRender;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 111
    :cond_6
    const/4 v2, 0x2

    if-ne v2, v1, :cond_3

    .line 117
    iget-object v2, p0, Lcom/splashtop/remote/VideoRender;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/splashtop/remote/VideoRender;->mSrcRectZoom:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/splashtop/remote/VideoRender;->mDstRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/splashtop/remote/VideoRender;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/splashtop/remote/VideoRender;->mBitmap:Landroid/graphics/Bitmap;

    .line 144
    return-void
.end method

.method public setRealVideo(IIII)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 157
    sput p1, Lcom/splashtop/remote/VideoRender;->mRealVideoX:I

    .line 158
    sput p2, Lcom/splashtop/remote/VideoRender;->mRealVideoY:I

    .line 159
    sput p3, Lcom/splashtop/remote/VideoRender;->mRealVideoWidth:I

    .line 160
    sput p4, Lcom/splashtop/remote/VideoRender;->mRealVideoHeight:I

    .line 161
    return-void
.end method

.method public setRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6
    .parameter "srcRect"
    .parameter "dstRect"

    .prologue
    const/high16 v5, 0x3fc0

    .line 147
    iput-object p1, p0, Lcom/splashtop/remote/VideoRender;->mSrcRect:Landroid/graphics/Rect;

    .line 148
    iput-object p2, p0, Lcom/splashtop/remote/VideoRender;->mDstRect:Landroid/graphics/Rect;

    .line 149
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/splashtop/remote/VideoRender;->mSrcRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    div-float/2addr v1, v5

    float-to-int v1, v1

    iget-object v2, p0, Lcom/splashtop/remote/VideoRender;->mSrcRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    float-to-int v2, v2

    iget-object v3, p0, Lcom/splashtop/remote/VideoRender;->mSrcRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    float-to-int v3, v3

    iget-object v4, p0, Lcom/splashtop/remote/VideoRender;->mSrcRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    div-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/splashtop/remote/VideoRender;->mSrcRectZoom:Landroid/graphics/Rect;

    .line 154
    return-void
.end method

.method public setSurface(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 164
    sput p1, Lcom/splashtop/remote/VideoRender;->mSurfaceVideoWidth:I

    .line 165
    sput p2, Lcom/splashtop/remote/VideoRender;->mSurfaceVideoHeight:I

    .line 166
    return-void
.end method

.class public abstract Lcom/ecareme/pixwe/media/Texture;
.super Ljava/lang/Object;
.source "Texture.java"


# static fields
.field public static final STATE_ERROR:I = 0x4

.field public static final STATE_LOADED:I = 0x3

.field public static final STATE_LOADING:I = 0x2

.field public static final STATE_QUEUED:I = 0x1

.field public static final STATE_UNLOADED:I


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field mHeight:I

.field mId:I

.field mNormalizedHeight:F

.field mNormalizedWidth:F

.field mState:I

.field mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/ecareme/pixwe/media/Texture;->mState:I

    .line 21
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/ecareme/pixwe/media/Texture;->mId:I

    .line 43
    iput v0, p0, Lcom/ecareme/pixwe/media/Texture;->mState:I

    .line 44
    iput v0, p0, Lcom/ecareme/pixwe/media/Texture;->mWidth:I

    .line 45
    iput v0, p0, Lcom/ecareme/pixwe/media/Texture;->mHeight:I

    .line 46
    iput v1, p0, Lcom/ecareme/pixwe/media/Texture;->mNormalizedWidth:F

    .line 47
    iput v1, p0, Lcom/ecareme/pixwe/media/Texture;->mNormalizedHeight:F

    .line 48
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Texture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Texture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ecareme/pixwe/media/Texture;->mBitmap:Landroid/graphics/Bitmap;

    .line 52
    :cond_0
    return-void
.end method

.method public final getHeight()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/ecareme/pixwe/media/Texture;->mHeight:I

    return v0
.end method

.method public final getNormalizedHeight()F
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/ecareme/pixwe/media/Texture;->mNormalizedHeight:F

    return v0
.end method

.method public final getNormalizedWidth()F
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/ecareme/pixwe/media/Texture;->mNormalizedWidth:F

    return v0
.end method

.method public final getState()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/ecareme/pixwe/media/Texture;->mState:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/ecareme/pixwe/media/Texture;->mWidth:I

    return v0
.end method

.method public isCached()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public final isLoaded()Z
    .locals 2

    .prologue
    .line 55
    iget v0, p0, Lcom/ecareme/pixwe/media/Texture;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUncachedVideo()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract load(Lcom/ecareme/pixwe/media/RenderView;)Landroid/graphics/Bitmap;
.end method

.method protected shouldQueue()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    return v0
.end method

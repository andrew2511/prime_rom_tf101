.class public Lcom/google/android/opengl/glview/DrawableView;
.super Lcom/google/android/opengl/glview/TexturedQuad;
.source "DrawableView.java"


# static fields
.field private static final sStateSet:[[I


# instance fields
.field private mBitmapConfig:Landroid/graphics/Bitmap$Config;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mTextureHeight:[I

.field private mTextureId:[I

.field private mTextureWidth:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    const/4 v0, 0x2

    new-array v0, v0, [[I

    new-array v1, v3, [I

    aput-object v1, v0, v3

    new-array v1, v4, [I

    const v2, 0x10100a7

    aput v2, v1, v3

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/opengl/glview/DrawableView;->sStateSet:[[I

    return-void
.end method

.method public constructor <init>(ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "id"
    .parameter "drawable"

    .prologue
    .line 26
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/opengl/glview/DrawableView;-><init>(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;)V

    .line 27
    return-void
.end method

.method public constructor <init>(ILandroid/graphics/drawable/Drawable;FFLandroid/graphics/Bitmap$Config;)V
    .locals 2
    .parameter "id"
    .parameter "drawable"
    .parameter "width"
    .parameter "height"
    .parameter "config"

    .prologue
    const/4 v1, 0x2

    .line 43
    invoke-direct {p0, p1, p3, p4}, Lcom/google/android/opengl/glview/TexturedQuad;-><init>(IFF)V

    .line 12
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/android/opengl/glview/DrawableView;->mTextureId:[I

    .line 13
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/android/opengl/glview/DrawableView;->mTextureWidth:[I

    .line 14
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/android/opengl/glview/DrawableView;->mTextureHeight:[I

    .line 44
    iput-object p2, p0, Lcom/google/android/opengl/glview/DrawableView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 45
    iput-object p5, p0, Lcom/google/android/opengl/glview/DrawableView;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 46
    return-void
.end method

.method public constructor <init>(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;)V
    .locals 6
    .parameter "id"
    .parameter "drawable"
    .parameter "config"

    .prologue
    .line 37
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/opengl/glview/DrawableView;-><init>(ILandroid/graphics/drawable/Drawable;FFLandroid/graphics/Bitmap$Config;)V

    .line 39
    return-void
.end method

.method private clearTextureIds()V
    .locals 3

    .prologue
    .line 97
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/android/opengl/glview/DrawableView;->mTextureId:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/google/android/opengl/glview/DrawableView;->mTextureId:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_0
    return-void
.end method


# virtual methods
.method public freeOpenGlResources()V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/opengl/glview/DrawableView;->mTextureId:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/google/android/opengl/glview/DrawableView;->mTextureId:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 93
    invoke-direct {p0}, Lcom/google/android/opengl/glview/DrawableView;->clearTextureIds()V

    .line 94
    return-void
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/opengl/glview/DrawableView;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getTextureId()I
    .locals 11

    .prologue
    const/16 v10, 0xde1

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 54
    invoke-virtual {p0, v8}, Lcom/google/android/opengl/glview/DrawableView;->testAndFlags(I)Z

    move-result v7

    if-eqz v7, :cond_2

    move v5, v8

    .line 55
    .local v5, textureIndex:I
    :goto_0
    iget-object v7, p0, Lcom/google/android/opengl/glview/DrawableView;->mTextureId:[I

    aget v4, v7, v5

    .line 56
    .local v4, textureId:I
    if-nez v4, :cond_0

    .line 57
    iget-object v7, p0, Lcom/google/android/opengl/glview/DrawableView;->mTextureId:[I

    invoke-static {v8, v7, v5}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 58
    iget-object v7, p0, Lcom/google/android/opengl/glview/DrawableView;->mTextureId:[I

    aget v4, v7, v5

    .line 59
    invoke-static {v10, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 60
    invoke-static {}, Lcom/google/android/opengl/glview/GLCanvas;->setDefaultNPOTTextureState()V

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/DrawableView;->width()F

    move-result v7

    float-to-int v6, v7

    .line 64
    .local v6, width:I
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/DrawableView;->height()F

    move-result v7

    float-to-int v3, v7

    .line 66
    .local v3, height:I
    if-lez v6, :cond_1

    if-gtz v3, :cond_3

    :cond_1
    move v7, v9

    .line 82
    :goto_1
    return v7

    .end local v3           #height:I
    .end local v4           #textureId:I
    .end local v5           #textureIndex:I
    .end local v6           #width:I
    :cond_2
    move v5, v9

    .line 54
    goto :goto_0

    .line 69
    .restart local v3       #height:I
    .restart local v4       #textureId:I
    .restart local v5       #textureIndex:I
    .restart local v6       #width:I
    :cond_3
    iget-object v7, p0, Lcom/google/android/opengl/glview/DrawableView;->mTextureWidth:[I

    aget v7, v7, v5

    if-ne v7, v6, :cond_4

    iget-object v7, p0, Lcom/google/android/opengl/glview/DrawableView;->mTextureHeight:[I

    aget v7, v7, v5

    if-eq v7, v3, :cond_5

    .line 71
    :cond_4
    iget-object v7, p0, Lcom/google/android/opengl/glview/DrawableView;->mTextureWidth:[I

    aput v6, v7, v5

    .line 72
    iget-object v7, p0, Lcom/google/android/opengl/glview/DrawableView;->mTextureHeight:[I

    aput v3, v7, v5

    .line 73
    iget-object v2, p0, Lcom/google/android/opengl/glview/DrawableView;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 74
    .local v2, config:Landroid/graphics/Bitmap$Config;
    invoke-static {v6, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 75
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 76
    .local v1, canvas:Landroid/graphics/Canvas;
    iget-object v7, p0, Lcom/google/android/opengl/glview/DrawableView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v9, v9, v6, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 77
    iget-object v7, p0, Lcom/google/android/opengl/glview/DrawableView;->mDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v8, Lcom/google/android/opengl/glview/DrawableView;->sStateSet:[[I

    aget-object v8, v8, v5

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 78
    iget-object v7, p0, Lcom/google/android/opengl/glview/DrawableView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 79
    invoke-static {v10, v9, v0, v9}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 80
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #config:Landroid/graphics/Bitmap$Config;
    :cond_5
    move v7, v4

    .line 82
    goto :goto_1
.end method

.method public onSurfaceCreated(Lcom/google/android/opengl/glview/GLCanvas;)V
    .locals 0
    .parameter "glCanvas"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/google/android/opengl/glview/DrawableView;->clearTextureIds()V

    .line 88
    return-void
.end method

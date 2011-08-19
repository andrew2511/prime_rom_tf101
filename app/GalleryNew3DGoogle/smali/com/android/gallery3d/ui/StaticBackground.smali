.class public Lcom/android/gallery3d/ui/StaticBackground;
.super Lcom/android/gallery3d/ui/GLView;
.source "StaticBackground.java"


# instance fields
.field private mBackground:Lcom/android/gallery3d/ui/BasicTexture;

.field private mContext:Landroid/content/Context;

.field private mIsLandscape:Z

.field private mLandscapeResource:I

.field private mPortraitResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/StaticBackground;->mIsLandscape:Z

    .line 31
    iput-object p1, p0, Lcom/android/gallery3d/ui/StaticBackground;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method private setOrientation(Z)V
    .locals 3
    .parameter "isLandscape"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/StaticBackground;->mIsLandscape:Z

    if-ne v0, p1, :cond_0

    .line 46
    :goto_0
    return-void

    .line 41
    :cond_0
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/StaticBackground;->mIsLandscape:Z

    .line 42
    iget-object v0, p0, Lcom/android/gallery3d/ui/StaticBackground;->mBackground:Lcom/android/gallery3d/ui/BasicTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/ui/StaticBackground;->mBackground:Lcom/android/gallery3d/ui/BasicTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->recycle()V

    .line 43
    :cond_1
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    iget-object v1, p0, Lcom/android/gallery3d/ui/StaticBackground;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/android/gallery3d/ui/StaticBackground;->mIsLandscape:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/gallery3d/ui/StaticBackground;->mLandscapeResource:I

    :goto_1
    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/StaticBackground;->mBackground:Lcom/android/gallery3d/ui/BasicTexture;

    .line 45
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/StaticBackground;->invalidate()V

    goto :goto_0

    .line 43
    :cond_2
    iget v2, p0, Lcom/android/gallery3d/ui/StaticBackground;->mPortraitResource:I

    goto :goto_1
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changeSize"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/StaticBackground;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/StaticBackground;->getHeight()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/StaticBackground;->setOrientation(Z)V

    .line 37
    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/StaticBackground;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/StaticBackground;->getHeight()I

    move-result v0

    int-to-float v4, v0

    const/high16 v5, -0x100

    move-object v0, p1

    move v2, v1

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/GLCanvas;->fillRect(FFFFI)V

    .line 61
    return-void
.end method

.method public setImage(II)V
    .locals 3
    .parameter "landscapeId"
    .parameter "portraitId"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/gallery3d/ui/StaticBackground;->mLandscapeResource:I

    .line 50
    iput p2, p0, Lcom/android/gallery3d/ui/StaticBackground;->mPortraitResource:I

    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/ui/StaticBackground;->mBackground:Lcom/android/gallery3d/ui/BasicTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/StaticBackground;->mBackground:Lcom/android/gallery3d/ui/BasicTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->recycle()V

    .line 52
    :cond_0
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    iget-object v1, p0, Lcom/android/gallery3d/ui/StaticBackground;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/android/gallery3d/ui/StaticBackground;->mIsLandscape:Z

    if-eqz v2, :cond_1

    move v2, p1

    :goto_0
    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/StaticBackground;->mBackground:Lcom/android/gallery3d/ui/BasicTexture;

    .line 54
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/StaticBackground;->invalidate()V

    .line 55
    return-void

    :cond_1
    move v2, p2

    .line 52
    goto :goto_0
.end method

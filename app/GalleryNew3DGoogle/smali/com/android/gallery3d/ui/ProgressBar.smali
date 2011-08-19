.class public Lcom/android/gallery3d/ui/ProgressBar;
.super Lcom/android/gallery3d/ui/GLView;
.source "ProgressBar.java"


# instance fields
.field private final MAX_PROGRESS:I

.field private mBackgrondTexture:Lcom/android/gallery3d/ui/BasicTexture;

.field private mProgress:I

.field private mProgressTexture:Lcom/android/gallery3d/ui/BasicTexture;

.field private mSecondaryProgress:I

.field private mSecondaryProgressTexture:Lcom/android/gallery3d/ui/BasicTexture;


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 1
    .parameter "context"
    .parameter "resProgress"
    .parameter "resSecondaryProgress"
    .parameter "resBackground"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 23
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/gallery3d/ui/ProgressBar;->MAX_PROGRESS:I

    .line 33
    new-instance v0, Lcom/android/gallery3d/ui/NinePatchTexture;

    invoke-direct {v0, p1, p2}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ProgressBar;->mProgressTexture:Lcom/android/gallery3d/ui/BasicTexture;

    .line 34
    new-instance v0, Lcom/android/gallery3d/ui/NinePatchTexture;

    invoke-direct {v0, p1, p3}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ProgressBar;->mSecondaryProgressTexture:Lcom/android/gallery3d/ui/BasicTexture;

    .line 36
    new-instance v0, Lcom/android/gallery3d/ui/NinePatchTexture;

    invoke-direct {v0, p1, p4}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ProgressBar;->mBackgrondTexture:Lcom/android/gallery3d/ui/BasicTexture;

    .line 38
    return-void
.end method


# virtual methods
.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 19
    .parameter "canvas"

    .prologue
    .line 51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/ProgressBar;->mPaddings:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    .line 53
    .local v18, p:Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/ProgressBar;->getWidth()I

    move-result v1

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v2, v0

    sub-int/2addr v1, v2

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v2, v0

    sub-int v5, v1, v2

    .line 54
    .local v5, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/ProgressBar;->getHeight()I

    move-result v1

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v2, v0

    sub-int/2addr v1, v2

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v2, v0

    sub-int v6, v1, v2

    .line 56
    .local v6, height:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/ProgressBar;->mProgress:I

    move v1, v0

    mul-int/2addr v1, v5

    div-int/lit16 v11, v1, 0x2710

    .line 57
    .local v11, primary:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/ProgressBar;->mSecondaryProgress:I

    move v1, v0

    mul-int/2addr v1, v5

    move v0, v1

    div-int/lit16 v0, v0, 0x2710

    move/from16 v16, v0

    .line 58
    .local v16, secondary:I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v3, v0

    .line 59
    .local v3, x:I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v4, v0

    .line 61
    .local v4, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/ProgressBar;->mBackgrondTexture:Lcom/android/gallery3d/ui/BasicTexture;

    move-object v2, v0

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    .line 62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/ProgressBar;->mProgressTexture:Lcom/android/gallery3d/ui/BasicTexture;

    move-object v8, v0

    move-object/from16 v7, p1

    move v9, v3

    move v10, v4

    move v12, v6

    invoke-interface/range {v7 .. v12}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    .line 63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/ProgressBar;->mSecondaryProgressTexture:Lcom/android/gallery3d/ui/BasicTexture;

    move-object v13, v0

    move-object/from16 v12, p1

    move v14, v3

    move v15, v4

    move/from16 v17, v6

    invoke-interface/range {v12 .. v17}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    .line 64
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 42
    iput p1, p0, Lcom/android/gallery3d/ui/ProgressBar;->mProgress:I

    .line 43
    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 46
    iput p1, p0, Lcom/android/gallery3d/ui/ProgressBar;->mSecondaryProgress:I

    .line 47
    return-void
.end method

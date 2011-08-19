.class Lcom/android/camera/ui/GLPopupWindow;
.super Lcom/android/camera/ui/GLView;
.source "GLPopupWindow.java"


# instance fields
.field protected mAnchor:Lcom/android/camera/ui/BitmapTexture;

.field protected mAnchorOffset:I

.field protected mAnchorPosition:I

.field protected mBackground:Lcom/android/camera/ui/Texture;

.field private mBackupTexture:Lcom/android/camera/ui/RawTexture;

.field private final mRotatePane:Lcom/android/camera/ui/RotatePane;

.field private mUsingStencil:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/camera/ui/GLView;-><init>()V

    .line 35
    new-instance v0, Lcom/android/camera/ui/RotatePane;

    invoke-direct {v0}, Lcom/android/camera/ui/RotatePane;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/GLPopupWindow;->mRotatePane:Lcom/android/camera/ui/RotatePane;

    .line 42
    iget-object v0, p0, Lcom/android/camera/ui/GLPopupWindow;->mRotatePane:Lcom/android/camera/ui/RotatePane;

    invoke-super {p0, v0}, Lcom/android/camera/ui/GLView;->addComponent(Lcom/android/camera/ui/GLView;)V

    .line 43
    return-void
.end method

.method private renderBackgroundWithStencil(Lcom/android/camera/ui/GLRootView;Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 13
    .parameter "root"
    .parameter "gl"

    .prologue
    const/4 v2, 0x0

    const/4 v12, 0x1

    const/16 v4, 0x1e00

    .line 113
    invoke-virtual {p0}, Lcom/android/camera/ui/GLPopupWindow;->getWidth()I

    move-result v11

    .line 114
    .local v11, width:I
    invoke-virtual {p0}, Lcom/android/camera/ui/GLPopupWindow;->getHeight()I

    move-result v5

    .line 115
    .local v5, height:I
    iget-object v0, p0, Lcom/android/camera/ui/GLPopupWindow;->mAnchor:Lcom/android/camera/ui/BitmapTexture;

    invoke-virtual {v0}, Lcom/android/camera/ui/BitmapTexture;->getWidth()I

    move-result v7

    .line 116
    .local v7, aWidth:I
    iget-object v0, p0, Lcom/android/camera/ui/GLPopupWindow;->mAnchor:Lcom/android/camera/ui/BitmapTexture;

    invoke-virtual {v0}, Lcom/android/camera/ui/BitmapTexture;->getHeight()I

    move-result v6

    .line 118
    .local v6, aHeight:I
    iget-object v10, p0, Lcom/android/camera/ui/GLPopupWindow;->mPaddings:Landroid/graphics/Rect;

    .line 119
    .local v10, p:Landroid/graphics/Rect;
    sub-int v8, v11, v7

    .line 120
    .local v8, aXoffset:I
    iget v0, v10, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/camera/ui/GLPopupWindow;->mAnchorPosition:I

    div-int/lit8 v3, v6, 0x2

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 121
    .local v9, aYoffset:I
    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v5, v0

    sub-int/2addr v0, v6

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 123
    iget-object v0, p0, Lcom/android/camera/ui/GLPopupWindow;->mAnchor:Lcom/android/camera/ui/BitmapTexture;

    if-eqz v0, :cond_0

    .line 124
    const/16 v0, 0x1e01

    invoke-interface {p2, v4, v4, v0}, Ljavax/microedition/khronos/opengles/GL11;->glStencilOp(III)V

    .line 125
    const/16 v0, 0x207

    invoke-interface {p2, v0, v12, v12}, Ljavax/microedition/khronos/opengles/GL11;->glStencilFunc(III)V

    .line 126
    iget-object v0, p0, Lcom/android/camera/ui/GLPopupWindow;->mAnchor:Lcom/android/camera/ui/BitmapTexture;

    invoke-virtual {v0, p1, v8, v9}, Lcom/android/camera/ui/BitmapTexture;->draw(Lcom/android/camera/ui/GLRootView;II)V

    .line 127
    const/16 v0, 0x205

    invoke-interface {p2, v0, v12, v12}, Ljavax/microedition/khronos/opengles/GL11;->glStencilFunc(III)V

    .line 128
    invoke-interface {p2, v4, v4, v4}, Ljavax/microedition/khronos/opengles/GL11;->glStencilOp(III)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/GLPopupWindow;->mBackground:Lcom/android/camera/ui/Texture;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/android/camera/ui/GLPopupWindow;->mBackground:Lcom/android/camera/ui/Texture;

    sub-int v1, v11, v7

    iget v3, p0, Lcom/android/camera/ui/GLPopupWindow;->mAnchorOffset:I

    add-int v4, v1, v3

    move-object v1, p1

    move v3, v2

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/Texture;->draw(Lcom/android/camera/ui/GLRootView;IIII)V

    .line 135
    :cond_1
    return-void
.end method

.method private renderBackgroundWithoutStencil(Lcom/android/camera/ui/GLRootView;Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 25
    .parameter "root"
    .parameter "gl"

    .prologue
    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/GLPopupWindow;->getWidth()I

    move-result v24

    .line 139
    .local v24, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/GLPopupWindow;->getHeight()I

    move-result v15

    .line 140
    .local v15, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLPopupWindow;->mAnchor:Lcom/android/camera/ui/BitmapTexture;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/camera/ui/BitmapTexture;->getWidth()I

    move-result v8

    .line 141
    .local v8, aWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLPopupWindow;->mAnchor:Lcom/android/camera/ui/BitmapTexture;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/camera/ui/BitmapTexture;->getHeight()I

    move-result v9

    .line 143
    .local v9, aHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLPopupWindow;->mPaddings:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    .line 144
    .local v23, p:Landroid/graphics/Rect;
    sub-int v6, v24, v8

    .line 145
    .local v6, aXoffset:I
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/GLPopupWindow;->mAnchorPosition:I

    move v5, v0

    div-int/lit8 v7, v9, 0x2

    sub-int/2addr v5, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 146
    .local v7, aYoffset:I
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v4, v0

    sub-int v4, v15, v4

    sub-int/2addr v4, v9

    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLPopupWindow;->mAnchor:Lcom/android/camera/ui/BitmapTexture;

    move-object v4, v0

    if-eqz v4, :cond_0

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLPopupWindow;->mAnchor:Lcom/android/camera/ui/BitmapTexture;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/BitmapTexture;->draw(Lcom/android/camera/ui/GLRootView;II)V

    .line 152
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLPopupWindow;->mBackupTexture:Lcom/android/camera/ui/RawTexture;

    move-object v4, v0

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLPopupWindow;->mBackupTexture:Lcom/android/camera/ui/RawTexture;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/camera/ui/RawTexture;->getBoundGL()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_2

    .line 153
    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/android/camera/ui/RawTexture;->newInstance(Ljavax/microedition/khronos/opengles/GL11;)Lcom/android/camera/ui/RawTexture;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ui/GLPopupWindow;->mBackupTexture:Lcom/android/camera/ui/RawTexture;

    .line 156
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLPopupWindow;->mBackupTexture:Lcom/android/camera/ui/RawTexture;

    move-object v5, v0

    .local v5, backup:Lcom/android/camera/ui/RawTexture;
    move-object/from16 v4, p1

    .line 161
    :try_start_0
    invoke-virtual/range {v4 .. v9}, Lcom/android/camera/ui/GLRootView;->copyTexture2D(Lcom/android/camera/ui/RawTexture;IIII)V
    :try_end_0
    .catch Lcom/android/camera/ui/GLOutOfMemoryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLPopupWindow;->mBackground:Lcom/android/camera/ui/Texture;

    move-object v4, v0

    if-eqz v4, :cond_3

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLPopupWindow;->mBackground:Lcom/android/camera/ui/Texture;

    move-object v10, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    sub-int v4, v24, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/GLPopupWindow;->mAnchorOffset:I

    move v11, v0

    add-int v14, v4, v11

    move-object/from16 v11, p1

    invoke-interface/range {v10 .. v15}, Lcom/android/camera/ui/Texture;->draw(Lcom/android/camera/ui/GLRootView;IIII)V

    .line 171
    :cond_3
    const/4 v4, 0x1

    const/4 v10, 0x0

    move-object/from16 v0, p2

    move v1, v4

    move v2, v10

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    move-object/from16 v16, v5

    move-object/from16 v17, p1

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v9

    .line 172
    invoke-virtual/range {v16 .. v21}, Lcom/android/camera/ui/RawTexture;->drawBack(Lcom/android/camera/ui/GLRootView;IIII)V

    .line 173
    const/4 v4, 0x1

    const/16 v5, 0x303

    move-object/from16 v0, p2

    move v1, v4

    move v2, v5

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    .line 174
    .end local v5           #backup:Lcom/android/camera/ui/RawTexture;
    return-void

    .line 162
    .restart local v5       #backup:Lcom/android/camera/ui/RawTexture;
    :catch_0
    move-exception v22

    .line 163
    .local v22, e:Lcom/android/camera/ui/GLOutOfMemoryException;
    invoke-virtual/range {v22 .. v22}, Lcom/android/camera/ui/GLOutOfMemoryException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addComponent(Lcom/android/camera/ui/GLView;)V
    .locals 2
    .parameter "component"

    .prologue
    .line 69
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "use setContent(GLView)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onAttachToRoot(Lcom/android/camera/ui/GLRootView;)V
    .locals 1
    .parameter "root"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/android/camera/ui/GLView;->onAttachToRoot(Lcom/android/camera/ui/GLRootView;)V

    .line 48
    invoke-virtual {p1}, Lcom/android/camera/ui/GLRootView;->getEGLConfigChooser()Lcom/android/camera/ui/CameraEGLConfigChooser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraEGLConfigChooser;->getStencilBits()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/ui/GLPopupWindow;->mUsingStencil:Z

    .line 49
    return-void

    .line 48
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter "change"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/camera/ui/GLPopupWindow;->getPaddings()Landroid/graphics/Rect;

    move-result-object v0

    .line 102
    .local v0, p:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/camera/ui/GLPopupWindow;->mRotatePane:Lcom/android/camera/ui/RotatePane;

    .line 103
    .local v1, view:Lcom/android/camera/ui/GLView;
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/camera/ui/GLPopupWindow;->getWidth()I

    move-result v4

    iget v5, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/camera/ui/GLPopupWindow;->mAnchor:Lcom/android/camera/ui/BitmapTexture;

    invoke-virtual {v5}, Lcom/android/camera/ui/BitmapTexture;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/GLPopupWindow;->mAnchorOffset:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/camera/ui/GLPopupWindow;->getHeight()I

    move-result v5

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/camera/ui/GLView;->layout(IIII)V

    .line 106
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    const/4 v8, 0x0

    .line 74
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 75
    .local v5, widthMode:I
    if-eqz v5, :cond_0

    .line 76
    iget-object v3, p0, Lcom/android/camera/ui/GLPopupWindow;->mPaddings:Landroid/graphics/Rect;

    .line 77
    .local v3, p:Landroid/graphics/Rect;
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 78
    .local v4, width:I
    iget v6, v3, Landroid/graphics/Rect;->left:I

    sub-int v6, v4, v6

    iget v7, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/camera/ui/GLPopupWindow;->mAnchor:Lcom/android/camera/ui/BitmapTexture;

    invoke-virtual {v7}, Lcom/android/camera/ui/BitmapTexture;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/camera/ui/GLPopupWindow;->mAnchorOffset:I

    add-int/2addr v6, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 83
    .end local v3           #p:Landroid/graphics/Rect;
    .end local v4           #width:I
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 84
    .local v2, heightMode:I
    if-eqz v2, :cond_1

    .line 85
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 86
    .local v1, height:I
    iget-object v6, p0, Lcom/android/camera/ui/GLPopupWindow;->mPaddings:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int v6, v1, v6

    iget-object v7, p0, Lcom/android/camera/ui/GLPopupWindow;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v6, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 90
    .end local v1           #height:I
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ui/GLPopupWindow;->mPaddings:Landroid/graphics/Rect;

    .line 91
    .restart local v3       #p:Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/camera/ui/GLPopupWindow;->mRotatePane:Lcom/android/camera/ui/RotatePane;

    .line 92
    .local v0, child:Lcom/android/camera/ui/GLView;
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/GLView;->measure(II)V

    .line 93
    invoke-virtual {v0}, Lcom/android/camera/ui/GLView;->getMeasuredWidth()I

    move-result v6

    iget v7, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iget v7, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/camera/ui/GLPopupWindow;->mAnchor:Lcom/android/camera/ui/BitmapTexture;

    invoke-virtual {v7}, Lcom/android/camera/ui/BitmapTexture;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/camera/ui/GLPopupWindow;->mAnchorOffset:I

    sub-int/2addr v6, v7

    invoke-virtual {v0}, Lcom/android/camera/ui/GLView;->getMeasuredHeight()I

    move-result v7

    iget v8, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/ui/GLPopupWindow;->setMeasuredSize(II)V

    .line 96
    return-void
.end method

.method public popoff()V
    .locals 3

    .prologue
    .line 206
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/GLPopupWindow;->setVisibility(I)V

    .line 207
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3f333333

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 208
    .local v0, alpha:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 209
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/GLPopupWindow;->startAnimation(Landroid/view/animation/Animation;)V

    .line 210
    return-void
.end method

.method public popup()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const v1, 0x3f333333

    const/high16 v2, 0x3f80

    .line 190
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/GLPopupWindow;->setVisibility(I)V

    .line 192
    new-instance v8, Landroid/view/animation/AnimationSet;

    invoke-direct {v8, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 193
    .local v8, set:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p0}, Lcom/android/camera/ui/GLPopupWindow;->getWidth()I

    move-result v3

    int-to-float v5, v3

    iget v3, p0, Lcom/android/camera/ui/GLPopupWindow;->mAnchorPosition:I

    int-to-float v6, v3

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 195
    .local v0, scale:Landroid/view/animation/Animation;
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f00

    invoke-direct {v7, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 197
    .local v7, alpha:Landroid/view/animation/Animation;
    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 198
    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 199
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 200
    const-wide/16 v1, 0x64

    invoke-virtual {v7, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 201
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 202
    invoke-virtual {p0, v8}, Lcom/android/camera/ui/GLPopupWindow;->startAnimation(Landroid/view/animation/Animation;)V

    .line 203
    return-void
.end method

.method protected renderBackground(Lcom/android/camera/ui/GLRootView;Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 1
    .parameter "root"
    .parameter "gl"

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/android/camera/ui/GLPopupWindow;->mUsingStencil:Z

    if-eqz v0, :cond_0

    .line 179
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/GLPopupWindow;->renderBackgroundWithStencil(Lcom/android/camera/ui/GLRootView;Ljavax/microedition/khronos/opengles/GL11;)V

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/GLPopupWindow;->renderBackgroundWithoutStencil(Lcom/android/camera/ui/GLRootView;Ljavax/microedition/khronos/opengles/GL11;)V

    goto :goto_0
.end method

.method public setAnchor(Lcom/android/camera/ui/BitmapTexture;I)V
    .locals 0
    .parameter "anchor"
    .parameter "offset"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/camera/ui/GLPopupWindow;->mAnchor:Lcom/android/camera/ui/BitmapTexture;

    .line 64
    iput p2, p0, Lcom/android/camera/ui/GLPopupWindow;->mAnchorOffset:I

    .line 65
    return-void
.end method

.method public setAnchorPosition(I)V
    .locals 0
    .parameter "yoffset"

    .prologue
    .line 109
    iput p1, p0, Lcom/android/camera/ui/GLPopupWindow;->mAnchorPosition:I

    .line 110
    return-void
.end method

.method public setBackground(Lcom/android/camera/ui/Texture;)V
    .locals 2
    .parameter "background"

    .prologue
    const/4 v1, 0x0

    .line 52
    iget-object v0, p0, Lcom/android/camera/ui/GLPopupWindow;->mBackground:Lcom/android/camera/ui/Texture;

    if-ne p1, v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 53
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/GLPopupWindow;->mBackground:Lcom/android/camera/ui/Texture;

    .line 54
    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/android/camera/ui/NinePatchTexture;

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/android/camera/ui/GLPopupWindow;->mBackground:Lcom/android/camera/ui/Texture;

    check-cast v0, Lcom/android/camera/ui/NinePatchTexture;

    invoke-virtual {v0}, Lcom/android/camera/ui/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/GLPopupWindow;->setPaddings(Landroid/graphics/Rect;)V

    .line 59
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/ui/GLPopupWindow;->invalidate()V

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/android/camera/ui/GLPopupWindow;->setPaddings(IIII)V

    goto :goto_1
.end method

.method public setContent(Lcom/android/camera/ui/GLView;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/camera/ui/GLPopupWindow;->mRotatePane:Lcom/android/camera/ui/RotatePane;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotatePane;->setContent(Lcom/android/camera/ui/GLView;)V

    .line 187
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 213
    sparse-switch p1, :sswitch_data_0

    .line 224
    iget-object v0, p0, Lcom/android/camera/ui/GLPopupWindow;->mRotatePane:Lcom/android/camera/ui/RotatePane;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotatePane;->setOrientation(I)V

    .line 227
    :goto_0
    return-void

    .line 215
    :sswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/GLPopupWindow;->mRotatePane:Lcom/android/camera/ui/RotatePane;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotatePane;->setOrientation(I)V

    goto :goto_0

    .line 218
    :sswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/GLPopupWindow;->mRotatePane:Lcom/android/camera/ui/RotatePane;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotatePane;->setOrientation(I)V

    goto :goto_0

    .line 221
    :sswitch_2
    iget-object v0, p0, Lcom/android/camera/ui/GLPopupWindow;->mRotatePane:Lcom/android/camera/ui/RotatePane;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotatePane;->setOrientation(I)V

    goto :goto_0

    .line 213
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

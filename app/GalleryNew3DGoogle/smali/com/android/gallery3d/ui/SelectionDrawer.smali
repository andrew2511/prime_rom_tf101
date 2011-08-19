.class public abstract Lcom/android/gallery3d/ui/SelectionDrawer;
.super Ljava/lang/Object;
.source "SelectionDrawer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawFrame(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/NinePatchTexture;IIII)V
    .locals 7
    .parameter "canvas"
    .parameter "frame"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 86
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v6

    .line 87
    .local v6, p:Landroid/graphics/Rect;
    iget v0, v6, Landroid/graphics/Rect;->left:I

    sub-int v2, p2, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    sub-int v3, p3, v0

    iget v0, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p4

    iget v1, v6, Landroid/graphics/Rect;->right:I

    add-int v4, v0, v1

    iget v0, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p5

    iget v1, v6, Landroid/graphics/Rect;->bottom:I

    add-int v5, v0, v1

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/NinePatchTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 89
    return-void
.end method

.method public static drawWithRotation(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;IIIII)V
    .locals 6
    .parameter "canvas"
    .parameter "content"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "rotation"

    .prologue
    const/4 v2, 0x0

    .line 51
    if-eqz p6, :cond_0

    .line 52
    const/4 v0, 0x4

    invoke-interface {p0, v0}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)I

    .line 53
    int-to-float v0, p6

    const/high16 v1, 0x3f80

    invoke-interface {p0, v0, v2, v2, v1}, Lcom/android/gallery3d/ui/GLCanvas;->rotate(FFFF)V

    :cond_0
    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 56
    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/Texture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 58
    if-eqz p6, :cond_1

    .line 59
    invoke-interface {p0}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 61
    :cond_1
    return-void
.end method

.method public static drawWithRotationAndGray(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;IIIIII)V
    .locals 13
    .parameter "canvas"
    .parameter "content"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "rotation"
    .parameter "topIndex"

    .prologue
    .line 66
    if-eqz p6, :cond_0

    .line 67
    const/4 v3, 0x4

    invoke-interface {p0, v3}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)I

    .line 68
    move/from16 v0, p6

    int-to-float v0, v0

    move v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    invoke-interface {p0, v3, v4, v5, v6}, Lcom/android/gallery3d/ui/GLCanvas;->rotate(FFFF)V

    .line 71
    :cond_0
    if-lez p7, :cond_2

    instance-of v3, p1, Lcom/android/gallery3d/ui/BasicTexture;

    if-eqz v3, :cond_2

    .line 72
    const v3, 0x3e99999a

    const v4, 0x3e4ccccd

    move/from16 v0, p7

    int-to-float v0, v0

    move/from16 p7, v0

    mul-float p7, p7, v4

    add-float p7, p7, v3

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    move/from16 v0, p7

    move v1, v3

    move v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/util/Utils;->clamp(FFF)F

    .end local p7
    move-result v6

    .line 73
    .local v6, ratio:F
    move-object v0, p1

    check-cast v0, Lcom/android/gallery3d/ui/BasicTexture;

    move-object v4, v0

    const v5, -0xddddde

    move-object v3, p0

    move v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-interface/range {v3 .. v10}, Lcom/android/gallery3d/ui/GLCanvas;->drawMixed(Lcom/android/gallery3d/ui/BasicTexture;IFIIII)V

    .line 79
    .end local v6           #ratio:F
    :goto_0
    if-eqz p6, :cond_1

    .line 80
    invoke-interface {p0}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 82
    :cond_1
    return-void

    .restart local p7
    :cond_2
    move-object v7, p1

    move-object v8, p0

    move v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    .line 76
    invoke-interface/range {v7 .. v12}, Lcom/android/gallery3d/ui/Texture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_0
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;IIILcom/android/gallery3d/data/Path;I)V
    .locals 12
    .parameter "canvas"
    .parameter "content"
    .parameter "width"
    .parameter "height"
    .parameter "rotation"
    .parameter "path"
    .parameter "mediaType"

    .prologue
    .line 44
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v11}, Lcom/android/gallery3d/ui/SelectionDrawer;->draw(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;IIILcom/android/gallery3d/data/Path;IIIZZ)V

    .line 47
    return-void
.end method

.method public abstract draw(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;IIILcom/android/gallery3d/data/Path;IIIZZ)V
.end method

.method public abstract drawFocus(Lcom/android/gallery3d/ui/GLCanvas;II)V
.end method

.method public abstract prepareDrawing()V
.end method

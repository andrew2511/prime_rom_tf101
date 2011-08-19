.class public Lcom/android/gallery3d/ui/StripDrawer;
.super Lcom/android/gallery3d/ui/SelectionDrawer;
.source "StripDrawer.java"


# instance fields
.field private mFocusBox:Lcom/android/gallery3d/ui/NinePatchTexture;

.field private mFocusBoxPadding:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SelectionDrawer;-><init>()V

    .line 30
    new-instance v0, Lcom/android/gallery3d/ui/NinePatchTexture;

    const v1, 0x7f020012

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/StripDrawer;->mFocusBox:Lcom/android/gallery3d/ui/NinePatchTexture;

    .line 31
    iget-object v0, p0, Lcom/android/gallery3d/ui/StripDrawer;->mFocusBox:Lcom/android/gallery3d/ui/NinePatchTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/StripDrawer;->mFocusBoxPadding:Landroid/graphics/Rect;

    .line 32
    return-void
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;IIILcom/android/gallery3d/data/Path;IIIZZ)V
    .locals 7
    .parameter "canvas"
    .parameter "content"
    .parameter "width"
    .parameter "height"
    .parameter "rotation"
    .parameter "path"
    .parameter "topIndex"
    .parameter "dataSourceType"
    .parameter "mediaType"
    .parameter "wantCache"
    .parameter "isCaching"

    .prologue
    .line 43
    neg-int v0, p3

    div-int/lit8 v2, v0, 0x2

    .line 44
    .local v2, x:I
    neg-int v0, p4

    div-int/lit8 v3, v0, 0x2

    .local v3, y:I
    move-object v0, p1

    move-object v1, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 46
    invoke-static/range {v0 .. v6}, Lcom/android/gallery3d/ui/StripDrawer;->drawWithRotation(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;IIIII)V

    .line 47
    return-void
.end method

.method public drawFocus(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 9
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 51
    neg-int v0, p2

    div-int/lit8 v7, v0, 0x2

    .line 52
    .local v7, x:I
    neg-int v0, p3

    div-int/lit8 v8, v0, 0x2

    .line 53
    .local v8, y:I
    iget-object v6, p0, Lcom/android/gallery3d/ui/StripDrawer;->mFocusBoxPadding:Landroid/graphics/Rect;

    .line 54
    .local v6, p:Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/gallery3d/ui/StripDrawer;->mFocusBox:Lcom/android/gallery3d/ui/NinePatchTexture;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    sub-int v2, v7, v1

    iget v1, v6, Landroid/graphics/Rect;->top:I

    sub-int v3, v8, v1

    iget v1, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p2

    iget v4, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v1

    iget v1, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p3

    iget v5, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/NinePatchTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 56
    return-void
.end method

.method public prepareDrawing()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

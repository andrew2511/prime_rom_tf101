.class public Lcom/android/gallery3d/ui/Icon;
.super Lcom/android/gallery3d/ui/GLView;
.source "Icon.java"


# instance fields
.field private final mIcon:Lcom/android/gallery3d/ui/BasicTexture;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "iconId"

    .prologue
    .line 27
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    invoke-direct {v0, p1, p2}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/ui/Icon;-><init>(Landroid/content/Context;Lcom/android/gallery3d/ui/BasicTexture;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/gallery3d/ui/BasicTexture;)V
    .locals 0
    .parameter "context"
    .parameter "icon"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 31
    iput-object p2, p0, Lcom/android/gallery3d/ui/Icon;->mIcon:Lcom/android/gallery3d/ui/BasicTexture;

    .line 32
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 36
    iget-object v2, p0, Lcom/android/gallery3d/ui/Icon;->mIcon:Lcom/android/gallery3d/ui/BasicTexture;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v1

    .line 37
    .local v1, width:I
    iget-object v2, p0, Lcom/android/gallery3d/ui/Icon;->mIcon:Lcom/android/gallery3d/ui/BasicTexture;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v0

    .line 38
    .local v0, height:I
    invoke-static {p0}, Lcom/android/gallery3d/ui/MeasureHelper;->getInstance(Lcom/android/gallery3d/ui/GLView;)Lcom/android/gallery3d/ui/MeasureHelper;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/android/gallery3d/ui/MeasureHelper;->setPreferredContentSize(II)Lcom/android/gallery3d/ui/MeasureHelper;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/gallery3d/ui/MeasureHelper;->measure(II)V

    .line 41
    return-void
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 45
    iget-object v1, p0, Lcom/android/gallery3d/ui/Icon;->mPaddings:Landroid/graphics/Rect;

    .line 47
    .local v1, p:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/Icon;->getWidth()I

    move-result v5

    iget v6, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iget v6, v1, Landroid/graphics/Rect;->right:I

    sub-int v2, v5, v6

    .line 48
    .local v2, width:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/Icon;->getHeight()I

    move-result v5

    iget v6, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v5, v6

    .line 50
    .local v0, height:I
    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/android/gallery3d/ui/Icon;->mIcon:Lcom/android/gallery3d/ui/BasicTexture;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v6

    sub-int v6, v2, v6

    div-int/lit8 v6, v6, 0x2

    add-int v3, v5, v6

    .line 51
    .local v3, xoffset:I
    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/android/gallery3d/ui/Icon;->mIcon:Lcom/android/gallery3d/ui/BasicTexture;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v6

    sub-int v6, v0, v6

    div-int/lit8 v6, v6, 0x2

    add-int v4, v5, v6

    .line 53
    .local v4, yoffset:I
    iget-object v5, p0, Lcom/android/gallery3d/ui/Icon;->mIcon:Lcom/android/gallery3d/ui/BasicTexture;

    invoke-virtual {v5, p1, v3, v4}, Lcom/android/gallery3d/ui/BasicTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 54
    return-void
.end method

.class public Lcom/android/gallery3d/ui/ScrollBarView;
.super Lcom/android/gallery3d/ui/GLView;
.source "ScrollBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/ScrollBarView$Listener;
    }
.end annotation


# instance fields
.field private mBarHeight:I

.field private mContentPosition:I

.field private mContentTotal:I

.field private mGivenGripWidth:I

.field private mGripHeight:I

.field private mGripPosition:I

.field private mGripWidth:I

.field private mListener:Lcom/android/gallery3d/ui/ScrollBarView$Listener;

.field private mScrollBarTexture:Lcom/android/gallery3d/ui/DrawableTexture;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .parameter "context"
    .parameter "gripHeight"
    .parameter "gripWidth"

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 49
    iput v0, p0, Lcom/android/gallery3d/ui/ScrollBarView;->mGripPosition:I

    .line 50
    iput v0, p0, Lcom/android/gallery3d/ui/ScrollBarView;->mGripWidth:I

    .line 51
    iput p3, p0, Lcom/android/gallery3d/ui/ScrollBarView;->mGivenGripWidth:I

    .line 52
    iput p2, p0, Lcom/android/gallery3d/ui/ScrollBarView;->mGripHeight:I

    .line 53
    invoke-direct {p0, p1, p3, p2}, Lcom/android/gallery3d/ui/ScrollBarView;->loadScrollBar(Landroid/content/Context;II)V

    .line 54
    return-void
.end method

.method private loadScrollBar(Landroid/content/Context;II)V
    .locals 4
    .parameter "context"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 59
    .local v0, scrollBar:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v3, v3, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 60
    new-instance v1, Lcom/android/gallery3d/ui/DrawableTexture;

    invoke-direct {v1, v0, p2, p3}, Lcom/android/gallery3d/ui/DrawableTexture;-><init>(Landroid/graphics/drawable/Drawable;II)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/ScrollBarView;->mScrollBarTexture:Lcom/android/gallery3d/ui/DrawableTexture;

    .line 62
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 71
    if-nez p1, :cond_0

    .line 73
    :goto_0
    return-void

    .line 72
    :cond_0
    sub-int v0, p5, p3

    iput v0, p0, Lcom/android/gallery3d/ui/ScrollBarView;->mBarHeight:I

    goto :goto_0
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/GLView;->render(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 113
    iget v0, p0, Lcom/android/gallery3d/ui/ScrollBarView;->mGripWidth:I

    if-nez v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ScrollBarView;->bounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 115
    .local v6, b:Landroid/graphics/Rect;
    iget v0, p0, Lcom/android/gallery3d/ui/ScrollBarView;->mBarHeight:I

    iget v1, p0, Lcom/android/gallery3d/ui/ScrollBarView;->mGripHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v3, v0, 0x2

    .line 116
    .local v3, y:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/ScrollBarView;->mScrollBarTexture:Lcom/android/gallery3d/ui/DrawableTexture;

    iget v2, p0, Lcom/android/gallery3d/ui/ScrollBarView;->mGripPosition:I

    iget v4, p0, Lcom/android/gallery3d/ui/ScrollBarView;->mGripWidth:I

    iget v5, p0, Lcom/android/gallery3d/ui/ScrollBarView;->mGripHeight:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/DrawableTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_0
.end method

.method public setContentPosition(II)V
    .locals 3
    .parameter "position"
    .parameter "total"

    .prologue
    const/4 v2, 0x0

    .line 78
    iget v1, p0, Lcom/android/gallery3d/ui/ScrollBarView;->mContentPosition:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/ui/ScrollBarView;->mContentTotal:I

    if-ne p2, v1, :cond_0

    .line 101
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ScrollBarView;->invalidate()V

    .line 84
    iput p1, p0, Lcom/android/gallery3d/ui/ScrollBarView;->mContentPosition:I

    .line 85
    iput p2, p0, Lcom/android/gallery3d/ui/ScrollBarView;->mContentTotal:I

    .line 88
    iget v1, p0, Lcom/android/gallery3d/ui/ScrollBarView;->mContentTotal:I

    if-gtz v1, :cond_1

    .line 89
    iput v2, p0, Lcom/android/gallery3d/ui/ScrollBarView;->mGripPosition:I

    .line 90
    iput v2, p0, Lcom/android/gallery3d/ui/ScrollBarView;->mGripWidth:I

    goto :goto_0

    .line 98
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/ui/ScrollBarView;->mGivenGripWidth:I

    iput v1, p0, Lcom/android/gallery3d/ui/ScrollBarView;->mGripWidth:I

    .line 99
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ScrollBarView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/gallery3d/ui/ScrollBarView;->mGripWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/gallery3d/ui/ScrollBarView;->mContentTotal:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 100
    .local v0, r:F
    iget v1, p0, Lcom/android/gallery3d/ui/ScrollBarView;->mContentPosition:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/ScrollBarView;->mGripPosition:I

    goto :goto_0
.end method

.method public setListener(Lcom/android/gallery3d/ui/ScrollBarView$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/gallery3d/ui/ScrollBarView;->mListener:Lcom/android/gallery3d/ui/ScrollBarView$Listener;

    .line 66
    return-void
.end method

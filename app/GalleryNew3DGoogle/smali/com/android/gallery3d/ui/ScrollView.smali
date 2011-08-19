.class public Lcom/android/gallery3d/ui/ScrollView;
.super Lcom/android/gallery3d/ui/GLView;
.source "ScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/ScrollView$1;,
        Lcom/android/gallery3d/ui/ScrollView$MyGestureListener;
    }
.end annotation


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mScrollLimit:I

.field private mScroller:Landroid/graphics/drawable/Drawable;

.field private mScrollerTexture:Lcom/android/gallery3d/ui/DrawableTexture;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/ScrollView;->mScrollLimit:I

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/ScrollView;->mScroller:Landroid/graphics/drawable/Drawable;

    .line 39
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/gallery3d/ui/ScrollView$MyGestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/ui/ScrollView$MyGestureListener;-><init>(Lcom/android/gallery3d/ui/ScrollView;Lcom/android/gallery3d/ui/ScrollView$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ScrollView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 40
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/ScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/android/gallery3d/ui/ScrollView;->mScrollLimit:I

    return v0
.end method

.method private getContentView()Lcom/android/gallery3d/ui/GLView;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ScrollView;->getComponentCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/ScrollView;->getComponent(I)Lcom/android/gallery3d/ui/GLView;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onLayout(ZIIII)V
    .locals 9
    .parameter "sizeChange"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v8, 0x0

    .line 48
    invoke-direct {p0}, Lcom/android/gallery3d/ui/ScrollView;->getContentView()Lcom/android/gallery3d/ui/GLView;

    move-result-object v0

    .line 49
    .local v0, content:Lcom/android/gallery3d/ui/GLView;
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ScrollView;->getWidth()I

    move-result v4

    .line 50
    .local v4, width:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ScrollView;->getHeight()I

    move-result v2

    .line 51
    .local v2, height:I
    const/high16 v5, 0x4000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v0, v5, v8}, Lcom/android/gallery3d/ui/GLView;->measure(II)V

    .line 53
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->getMeasuredHeight()I

    move-result v1

    .line 54
    .local v1, contentHeight:I
    invoke-virtual {v0, v8, v8, v4, v1}, Lcom/android/gallery3d/ui/GLView;->layout(IIII)V

    .line 55
    if-ge v2, v1, :cond_0

    .line 56
    mul-int v5, v2, v2

    div-int v3, v5, v1

    .line 57
    .local v3, scrollerHeight:I
    sub-int v5, v1, v2

    iput v5, p0, Lcom/android/gallery3d/ui/ScrollView;->mScrollLimit:I

    .line 58
    new-instance v5, Lcom/android/gallery3d/ui/DrawableTexture;

    iget-object v6, p0, Lcom/android/gallery3d/ui/ScrollView;->mScroller:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/android/gallery3d/ui/ScrollView;->mScroller:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-direct {v5, v6, v7, v3}, Lcom/android/gallery3d/ui/DrawableTexture;-><init>(Landroid/graphics/drawable/Drawable;II)V

    iput-object v5, p0, Lcom/android/gallery3d/ui/ScrollView;->mScrollerTexture:Lcom/android/gallery3d/ui/DrawableTexture;

    .line 64
    .end local v3           #scrollerHeight:I
    :goto_0
    iget v5, p0, Lcom/android/gallery3d/ui/ScrollView;->mScrollY:I

    iget v6, p0, Lcom/android/gallery3d/ui/ScrollView;->mScrollLimit:I

    invoke-static {v5, v8, v6}, Lcom/android/gallery3d/util/Utils;->clamp(III)I

    move-result v5

    iput v5, p0, Lcom/android/gallery3d/ui/ScrollView;->mScrollY:I

    .line 65
    return-void

    .line 61
    :cond_0
    iput v8, p0, Lcom/android/gallery3d/ui/ScrollView;->mScrollLimit:I

    .line 62
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/gallery3d/ui/ScrollView;->mScrollerTexture:Lcom/android/gallery3d/ui/DrawableTexture;

    goto :goto_0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/gallery3d/ui/ScrollView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 69
    invoke-direct {p0}, Lcom/android/gallery3d/ui/ScrollView;->getContentView()Lcom/android/gallery3d/ui/GLView;

    move-result-object v0

    .line 70
    .local v0, content:Lcom/android/gallery3d/ui/GLView;
    if-nez v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ScrollView;->getWidth()I

    move-result v2

    .line 72
    .local v2, width:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ScrollView;->getHeight()I

    move-result v1

    .line 74
    .local v1, height:I
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)I

    .line 75
    invoke-interface {p1, v5, v5, v2, v1}, Lcom/android/gallery3d/ui/GLCanvas;->clipRect(IIII)Z

    .line 76
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/GLView;->render(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 77
    iget-object v4, p0, Lcom/android/gallery3d/ui/ScrollView;->mScrollerTexture:Lcom/android/gallery3d/ui/DrawableTexture;

    if-eqz v4, :cond_1

    .line 78
    iget-object v4, p0, Lcom/android/gallery3d/ui/ScrollView;->mScrollerTexture:Lcom/android/gallery3d/ui/DrawableTexture;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/DrawableTexture;->getHeight()I

    move-result v4

    sub-int v4, v1, v4

    iget v5, p0, Lcom/android/gallery3d/ui/ScrollView;->mScrollY:I

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/android/gallery3d/ui/ScrollView;->mScrollLimit:I

    div-int v3, v4, v5

    .line 80
    .local v3, y:I
    iget-object v4, p0, Lcom/android/gallery3d/ui/ScrollView;->mScrollerTexture:Lcom/android/gallery3d/ui/DrawableTexture;

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ScrollView;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/gallery3d/ui/ScrollView;->mScrollerTexture:Lcom/android/gallery3d/ui/DrawableTexture;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/DrawableTexture;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4, p1, v5, v3}, Lcom/android/gallery3d/ui/DrawableTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 82
    .end local v3           #y:I
    :cond_1
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    goto :goto_0
.end method

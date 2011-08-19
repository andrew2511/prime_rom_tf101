.class public abstract Lcom/zinio/mobile/android/view/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/graphics/RectF;

.field private final c:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/zinio/mobile/android/view/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zinio/mobile/android/view/a/a;->d:Ljava/lang/String;

    return-void
.end method

.method private b(Landroid/graphics/Matrix;)V
    .locals 3
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/zinio/mobile/android/view/a/a;->a:Landroid/view/View;

    .line 82
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/zinio/mobile/android/view/a/a;->b:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 83
    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 85
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    .line 91
    const/16 v2, 0x33

    iput v2, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 92
    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 93
    iget v2, v1, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 94
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 95
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 96
    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    return-void
.end method

.method private final c(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/zinio/mobile/android/view/a/a;->a:Landroid/view/View;

    .line 56
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    .line 58
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    .line 59
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 64
    if-lt v4, v1, :cond_0

    if-gt v4, v3, :cond_0

    if-lt v5, v2, :cond_0

    if-gt v5, v0, :cond_0

    .line 65
    const/4 v0, 0x1

    .line 68
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final a()Landroid/view/View;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/zinio/mobile/android/view/a/a;->a:Landroid/view/View;

    return-object v0
.end method

.method public final a(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zinio/mobile/android/view/a/a;->c:Landroid/graphics/Matrix;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 51
    iget-object v0, p0, Lcom/zinio/mobile/android/view/a/a;->c:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Lcom/zinio/mobile/android/view/a/a;->b(Landroid/graphics/Matrix;)V

    .line 52
    return-void
.end method

.method public final a(Landroid/graphics/Matrix;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/zinio/mobile/android/view/a/a;->b(Landroid/graphics/Matrix;)V

    .line 47
    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/zinio/mobile/android/view/a/a;->c(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/a/a;->b()Z

    move-result v0

    .line 34
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract b()Z
.end method

.method public final b(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/zinio/mobile/android/view/a/a;->c(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/a/a;->c()Z

    move-result v0

    .line 42
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract c()Z
.end method

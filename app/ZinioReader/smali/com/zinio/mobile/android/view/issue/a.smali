.class public final Lcom/zinio/mobile/android/view/issue/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zinio/mobile/android/view/issue/i;


# instance fields
.field final synthetic a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

.field private b:F

.field private c:F

.field private d:F


# direct methods
.method protected constructor <init>(Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;)V
    .locals 0
    .parameter

    .prologue
    .line 806
    iput-object p1, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(FFF)Landroid/graphics/PointF;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v7, 0x3f80

    .line 968
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 969
    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->a:Lcom/zinio/mobile/android/view/issue/o;

    iget-object v2, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget-object v2, v2, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v2}, Lcom/zinio/mobile/android/a/a/j;->k()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zinio/mobile/android/view/issue/o;->b(I)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v1

    .line 970
    invoke-virtual {v1}, Lcom/zinio/mobile/android/view/issue/h;->d()I

    move-result v2

    .line 971
    invoke-virtual {v1}, Lcom/zinio/mobile/android/view/issue/h;->e()I

    move-result v1

    .line 972
    sub-float v3, p1, v7

    div-float v3, p1, v3

    .line 974
    int-to-float v4, v2

    mul-float/2addr v4, p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 975
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 984
    :goto_0
    int-to-float v4, v1

    mul-float/2addr v4, p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 985
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 994
    :goto_1
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1

    .line 977
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    .line 978
    int-to-float v5, v4

    mul-float/2addr v5, v3

    .line 979
    add-int/2addr v2, v4

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    sub-float v6, p1, v7

    div-float/2addr v4, v6

    sub-float/2addr v2, v4

    .line 981
    invoke-static {p2, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_0

    .line 987
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    .line 988
    int-to-float v5, v4

    mul-float/2addr v5, v3

    .line 989
    add-int/2addr v1, v4

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    sub-float v3, p1, v7

    div-float/2addr v0, v3

    sub-float v0, v1, v0

    .line 991
    invoke-static {p3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 913
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->b:Landroid/os/Handler;

    new-instance v1, Lcom/zinio/mobile/android/view/issue/j;

    invoke-direct {v1, p0}, Lcom/zinio/mobile/android/view/issue/j;-><init>(Lcom/zinio/mobile/android/view/issue/a;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 924
    return-void
.end method

.method public final a(Lcom/zinio/mobile/android/view/issue/e;)Z
    .locals 5
    .parameter

    .prologue
    .line 883
    iget v0, p0, Lcom/zinio/mobile/android/view/issue/a;->b:F

    invoke-virtual {p1}, Lcom/zinio/mobile/android/view/issue/e;->c()F

    move-result v1

    const/high16 v2, 0x3f80

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/zinio/mobile/android/view/issue/a;->b:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 885
    iget v1, p0, Lcom/zinio/mobile/android/view/issue/a;->c:F

    iget v2, p0, Lcom/zinio/mobile/android/view/issue/a;->d:F

    invoke-direct {p0, v0, v1, v2}, Lcom/zinio/mobile/android/view/issue/a;->a(FFF)Landroid/graphics/PointF;

    move-result-object v1

    .line 886
    iget-object v2, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget-object v2, v2, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v4, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v0, v3, v4}, Lcom/zinio/mobile/android/a/a/j;->a(FFF)V

    .line 887
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->a(Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;)Lcom/zinio/mobile/android/view/a/c;

    move-result-object v0

    iget-object v2, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget-object v2, v2, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v2}, Lcom/zinio/mobile/android/a/a/j;->m()F

    move-result v2

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v3, v1}, Lcom/zinio/mobile/android/view/a/c;->a(FFF)V

    .line 891
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Lcom/zinio/mobile/android/view/issue/e;)Z
    .locals 2
    .parameter

    .prologue
    .line 895
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->e:Lcom/zinio/mobile/android/view/issue/g;

    sget-object v1, Lcom/zinio/mobile/android/view/issue/g;->a:Lcom/zinio/mobile/android/view/issue/g;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/issue/g;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->e:Lcom/zinio/mobile/android/view/issue/g;

    sget-object v1, Lcom/zinio/mobile/android/view/issue/g;->b:Lcom/zinio/mobile/android/view/issue/g;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/issue/g;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 897
    const/4 v0, 0x0

    .line 909
    :goto_0
    return v0

    .line 899
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 900
    invoke-virtual {p1}, Lcom/zinio/mobile/android/view/issue/e;->a()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/zinio/mobile/android/view/issue/a;->c:F

    .line 901
    invoke-virtual {p1}, Lcom/zinio/mobile/android/view/issue/e;->b()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/zinio/mobile/android/view/issue/a;->d:F

    .line 906
    :goto_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    sget-object v1, Lcom/zinio/mobile/android/view/issue/g;->d:Lcom/zinio/mobile/android/view/issue/g;

    iput-object v1, v0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->e:Lcom/zinio/mobile/android/view/issue/g;

    .line 907
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->m()F

    move-result v0

    iput v0, p0, Lcom/zinio/mobile/android/view/issue/a;->b:F

    .line 909
    const/4 v0, 0x1

    goto :goto_0

    .line 903
    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget v0, v0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->h:F

    iput v0, p0, Lcom/zinio/mobile/android/view/issue/a;->c:F

    .line 904
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget v0, v0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->i:F

    iput v0, p0, Lcom/zinio/mobile/android/view/issue/a;->d:F

    goto :goto_1
.end method

.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/high16 v5, 0x4000

    .line 927
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 943
    :goto_0
    return v0

    .line 932
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->a(Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;)Lcom/zinio/mobile/android/view/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zinio/mobile/android/view/a/c;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 933
    goto :goto_0

    .line 935
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v5, v0, v1}, Lcom/zinio/mobile/android/view/issue/a;->a(FFF)Landroid/graphics/PointF;

    move-result-object v0

    .line 936
    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->o()Z

    move-result v4

    if-nez v4, :cond_2

    const/high16 v4, 0x3f80

    :goto_1
    invoke-virtual {v1, v4, v2, v3}, Lcom/zinio/mobile/android/a/a/j;->a(FFF)V

    .line 937
    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->o()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 938
    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    sget-object v2, Lcom/zinio/mobile/android/view/issue/g;->a:Lcom/zinio/mobile/android/view/issue/g;

    iput-object v2, v1, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->e:Lcom/zinio/mobile/android/view/issue/g;

    .line 942
    :goto_2
    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    invoke-static {v1}, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->a(Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;)Lcom/zinio/mobile/android/view/a/c;

    move-result-object v1

    iget-object v2, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget-object v2, v2, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v2}, Lcom/zinio/mobile/android/a/a/j;->m()F

    move-result v2

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3, v0}, Lcom/zinio/mobile/android/view/a/c;->a(FFF)V

    .line 943
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v4, v5

    .line 936
    goto :goto_1

    .line 940
    :cond_3
    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    sget-object v2, Lcom/zinio/mobile/android/view/issue/g;->b:Lcom/zinio/mobile/android/view/issue/g;

    iput-object v2, v1, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->e:Lcom/zinio/mobile/android/view/issue/g;

    goto :goto_2
.end method

.method public final onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 948
    const/4 v0, 0x0

    return v0
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 818
    const/4 v0, 0x1

    return v0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 824
    const/4 v0, 0x0

    return v0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 829
    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 835
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->e:Lcom/zinio/mobile/android/view/issue/g;

    .line 838
    const/high16 v1, 0x4080

    iget-object v2, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget v2, v2, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->g:F

    iget-object v3, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget v3, v3, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->g:F

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    .line 840
    sget-object v2, Lcom/zinio/mobile/android/view/issue/l;->b:[I

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/issue/g;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    move v0, v4

    .line 870
    :goto_0
    return v0

    .line 842
    :pswitch_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    sget-object v1, Lcom/zinio/mobile/android/view/issue/g;->c:Lcom/zinio/mobile/android/view/issue/g;

    iput-object v1, v0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->e:Lcom/zinio/mobile/android/view/issue/g;

    .line 844
    :pswitch_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->f:I

    .line 845
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/a/j;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/a/j;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 847
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget v1, v0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->f:I

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->f:I

    .line 849
    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->c:Lcom/zinio/mobile/android/view/issue/q;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/issue/q;->a(I)V

    .line 850
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->a(Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;)Lcom/zinio/mobile/android/view/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget v1, v1, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->f:I

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/a/c;->a(I)V

    move v0, v5

    .line 851
    goto :goto_0

    .line 854
    :pswitch_2
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    sget-object v2, Lcom/zinio/mobile/android/view/issue/g;->e:Lcom/zinio/mobile/android/view/issue/g;

    iput-object v2, v0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->e:Lcom/zinio/mobile/android/view/issue/g;

    .line 856
    :pswitch_3
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget v0, v0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->h:F

    mul-float v2, p3, v1

    add-float/2addr v0, v2

    .line 857
    iget-object v2, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget v2, v2, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->i:F

    mul-float/2addr v1, p4

    add-float/2addr v1, v2

    .line 858
    iget-object v2, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget v2, v2, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->g:F

    invoke-direct {p0, v2, v0, v1}, Lcom/zinio/mobile/android/view/issue/a;->a(FFF)Landroid/graphics/PointF;

    move-result-object v0

    .line 859
    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iput v2, v1, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->h:F

    .line 860
    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, v1, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->i:F

    .line 861
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->c:Lcom/zinio/mobile/android/view/issue/q;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/issue/q;->a(I)V

    .line 862
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->a(Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;)Lcom/zinio/mobile/android/view/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget v1, v1, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->g:F

    iget-object v2, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget v2, v2, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->h:F

    iget-object v3, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget v3, v3, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->i:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/zinio/mobile/android/view/a/c;->a(FFF)V

    move v0, v5

    .line 863
    goto/16 :goto_0

    :pswitch_4
    move v0, v4

    .line 867
    goto/16 :goto_0

    .line 840
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 875
    return-void
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 952
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->a(Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;)Lcom/zinio/mobile/android/view/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zinio/mobile/android/view/a/c;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    .line 962
    :goto_0
    return v0

    .line 955
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->a:Lcom/zinio/mobile/android/view/issue/o;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/issue/o;->b(I)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v0

    .line 956
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/zinio/mobile/android/view/issue/h;->a(FF)Lcom/zinio/mobile/android/a/a/n;

    move-result-object v0

    .line 957
    if-eqz v0, :cond_4

    .line 958
    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    iget-object v2, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    invoke-virtual {v2}, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->q()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/n;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "text/html"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/n;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/n;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "folio"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->p()V

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/n;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/zinio/mobile/android/a/a/j;->a(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/zinio/mobile/android/d/a;->a(Lcom/zinio/mobile/android/a/a/j;I)Z

    :cond_2
    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/n;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "video/x-mp4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/n;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zinio/mobile/android/a/a/u;->a(Ljava/lang/String;)Lcom/zinio/mobile/android/a/a/u;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zinio/mobile/android/resources/a/a;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    sget-object v3, Lcom/zinio/mobile/android/a;->h:Landroid/content/Intent;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v3, "file"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_1
    move v0, v6

    .line 962
    goto/16 :goto_0

    .line 960
    :cond_4
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/a;->a:Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;

    invoke-virtual {p0, p1}, Lcom/zinio/mobile/android/view/IssueBrowseModeActivity;->a(Landroid/view/MotionEvent;)V

    goto :goto_1
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 879
    const/4 v0, 0x0

    return v0
.end method

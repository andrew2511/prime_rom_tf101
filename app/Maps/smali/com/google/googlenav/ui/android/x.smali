.class public Lcom/google/googlenav/ui/android/x;
.super Lcom/google/googlenav/ui/bV;

# interfaces
.implements Lf/q;


# static fields
.field private static final A:Landroid/graphics/Rect;

.field private static final z:Landroid/graphics/Rect;


# instance fields
.field private e:I

.field private f:F

.field private g:I

.field private final h:Landroid/graphics/PointF;

.field private i:Z

.field private final j:Landroid/graphics/PointF;

.field private k:F

.field private l:J

.field private m:Landroid/graphics/PointF;

.field private n:Landroid/graphics/PointF;

.field private o:Landroid/graphics/PointF;

.field private p:F

.field private q:Z

.field private r:Landroid/graphics/Paint;

.field private s:Z

.field private t:J

.field private u:J

.field private v:Lcom/google/googlenav/ui/android/ar;

.field private w:Lcom/google/googlenav/ui/bo;

.field private x:I

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/android/x;->z:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/android/x;->A:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Lf/v;LaU/a;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/high16 v1, 0x3f80

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/bV;-><init>(Lf/v;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/android/x;->e:I

    iput v1, p0, Lcom/google/googlenav/ui/android/x;->f:F

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/x;->h:Landroid/graphics/PointF;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/x;->i:Z

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/x;->j:Landroid/graphics/PointF;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/android/x;->k:F

    iput-wide v2, p0, Lcom/google/googlenav/ui/android/x;->l:J

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/x;->m:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/x;->n:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/x;->o:Landroid/graphics/PointF;

    iput v1, p0, Lcom/google/googlenav/ui/android/x;->p:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/x;->r:Landroid/graphics/Paint;

    iput-wide v2, p0, Lcom/google/googlenav/ui/android/x;->t:J

    check-cast p2, Lcom/google/googlenav/ui/android/ar;

    iput-object p2, p0, Lcom/google/googlenav/ui/android/x;->v:Lcom/google/googlenav/ui/android/ar;

    iget-object v0, p0, Lcom/google/googlenav/ui/android/x;->r:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method

.method private a(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/x;->w:Lcom/google/googlenav/ui/bo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/x;->w:Lcom/google/googlenav/ui/bo;

    invoke-interface {v0}, Lcom/google/googlenav/ui/bo;->a()V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/android/x;->a:Lf/v;

    invoke-virtual {v0}, Lf/v;->c()Lf/l;

    move-result-object v0

    invoke-virtual {v0}, Lf/l;->a()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/android/x;->g:I

    iget v0, p0, Lcom/google/googlenav/ui/android/x;->g:I

    iput v0, p0, Lcom/google/googlenav/ui/android/x;->e:I

    iget v0, p0, Lcom/google/googlenav/ui/android/x;->f:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/google/googlenav/ui/android/x;->f:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/x;->d:Z

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/x;->o()V

    return-void
.end method

.method private a(ILandroid/graphics/PointF;F)V
    .locals 8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/x;->h:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/google/googlenav/ui/android/x;->h:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/google/googlenav/ui/android/x;->k:F

    iget v3, p0, Lcom/google/googlenav/ui/android/x;->p:F

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v5, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {p2, p3, v0}, Lcom/google/googlenav/ui/android/x;->a(Landroid/graphics/PointF;FLandroid/graphics/PointF;)V

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v2, v1

    move v1, v0

    move v0, p3

    :goto_0
    iget v3, p0, Lcom/google/googlenav/ui/android/x;->x:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/google/googlenav/ui/android/x;->y:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    mul-float v5, v0, v3

    sub-float v3, v5, v3

    add-float/2addr v2, v3

    mul-float/2addr v0, v4

    sub-float/2addr v0, v4

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/googlenav/ui/android/x;->a:Lf/v;

    invoke-static {p1}, Lf/l;->b(I)Lf/l;

    move-result-object v3

    invoke-virtual {v1, v3}, Lf/v;->a(Lf/l;)V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->p()Lac/p;

    move-result-object v1

    invoke-interface {v1}, Lac/p;->a()J

    move-result-wide v3

    const-wide/16 v5, 0x230

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/googlenav/ui/android/x;->u:J

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    neg-int v1, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    neg-int v0, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/googlenav/ui/android/x;->a(IIZ)V

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/x;->c(I)V

    return-void

    :cond_0
    move v7, v2

    move v2, v0

    move v0, v7

    goto :goto_0
.end method

.method private a(J)V
    .locals 5

    const/high16 v4, 0x437f

    iget-wide v0, p0, Lcom/google/googlenav/ui/android/x;->t:J

    const-wide/16 v2, 0xe6

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/x;->o()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/x;->p()V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/x;->r:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/google/googlenav/ui/android/x;->t:J

    sub-long v0, p1, v0

    long-to-float v0, v0

    const/high16 v1, 0x4366

    div-float/2addr v0, v1

    mul-float/2addr v0, v4

    sub-float v0, v4, v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/x;->r:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0
.end method

.method private a(Landroid/graphics/PointF;F)V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/x;->i:Z

    iget v0, p0, Lcom/google/googlenav/ui/android/x;->k:F

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/google/googlenav/ui/android/x;->k:F

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/ui/android/x;->l:J

    iget-object v0, p0, Lcom/google/googlenav/ui/android/x;->h:Landroid/graphics/PointF;

    iget v1, p0, Lcom/google/googlenav/ui/android/x;->f:F

    iget v2, p0, Lcom/google/googlenav/ui/android/x;->p:F

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    iget v0, p0, Lcom/google/googlenav/ui/android/x;->p:F

    iget-object v1, p0, Lcom/google/googlenav/ui/android/x;->m:Landroid/graphics/PointF;

    iget v2, p0, Lcom/google/googlenav/ui/android/x;->p:F

    iput v2, p0, Lcom/google/googlenav/ui/android/x;->f:F

    :goto_0
    iget-object v2, p0, Lcom/google/googlenav/ui/android/x;->o:Landroid/graphics/PointF;

    invoke-virtual {v2, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget v2, p0, Lcom/google/googlenav/ui/android/x;->k:F

    div-float/2addr v2, v0

    invoke-static {p1, v2, v1}, Lcom/google/googlenav/ui/android/x;->a(Landroid/graphics/PointF;FLandroid/graphics/PointF;)V

    iget-object v2, p0, Lcom/google/googlenav/ui/android/x;->n:Landroid/graphics/PointF;

    invoke-virtual {v2, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iput v0, p0, Lcom/google/googlenav/ui/android/x;->p:F

    return-void

    :cond_0
    move v4, v1

    move-object v1, v0

    move v0, v4

    goto :goto_0
.end method

.method private static a(Landroid/graphics/PointF;FLandroid/graphics/PointF;)V
    .locals 3

    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/graphics/PointF;->y:F

    iget v2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    mul-float v2, v0, p1

    sub-float v0, v2, v0

    mul-float v2, v1, p1

    sub-float v1, v2, v1

    iget v2, p2, Landroid/graphics/PointF;->x:F

    sub-float v0, v2, v0

    iput v0, p2, Landroid/graphics/PointF;->x:F

    iget v0, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method private b(J)V
    .locals 5

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/x;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/x;->m:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/x;->n:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/google/googlenav/ui/android/x;->m:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/x;->n:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    iget v0, p0, Lcom/google/googlenav/ui/android/x;->k:F

    iput v0, p0, Lcom/google/googlenav/ui/android/x;->p:F

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/google/googlenav/ui/android/x;->l:J

    const-wide/16 v2, 0x14a

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/x;->i:Z

    iget-object v0, p0, Lcom/google/googlenav/ui/android/x;->m:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/x;->n:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/google/googlenav/ui/android/x;->m:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/x;->n:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    iget v0, p0, Lcom/google/googlenav/ui/android/x;->k:F

    iput v0, p0, Lcom/google/googlenav/ui/android/x;->p:F

    iget v0, p0, Lcom/google/googlenav/ui/android/x;->k:F

    iput v0, p0, Lcom/google/googlenav/ui/android/x;->f:F

    iget-object v0, p0, Lcom/google/googlenav/ui/android/x;->h:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/x;->n:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/google/googlenav/ui/android/x;->l:J

    sub-long v0, p1, v0

    long-to-float v0, v0

    const/high16 v1, 0x43a5

    div-float/2addr v0, v1

    iget v1, p0, Lcom/google/googlenav/ui/android/x;->f:F

    iget v2, p0, Lcom/google/googlenav/ui/android/x;->k:F

    iget v3, p0, Lcom/google/googlenav/ui/android/x;->f:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/google/googlenav/ui/android/x;->p:F

    iget-object v1, p0, Lcom/google/googlenav/ui/android/x;->m:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/x;->o:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/google/googlenav/ui/android/x;->n:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/google/googlenav/ui/android/x;->o:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/google/googlenav/ui/android/x;->m:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/x;->o:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/google/googlenav/ui/android/x;->n:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/google/googlenav/ui/android/x;->o:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/PointF;->y:F

    goto :goto_0
.end method

.method private c(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/x;->a:Lf/v;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/x;->a:Lf/v;

    invoke-virtual {v1}, Lf/v;->d()Lf/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/v;->e(Lf/h;)I

    move-result v0

    if-le p1, v0, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/x;->a:Lf/v;

    invoke-static {v0}, Lf/l;->b(I)Lf/l;

    move-result-object v0

    invoke-virtual {v1, v0}, Lf/v;->a(Lf/l;)V

    :cond_0
    return-void
.end method

.method private static d(I)F
    .locals 3

    const/4 v2, 0x1

    if-ltz p0, :cond_0

    shl-int v0, v2, p0

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    neg-int v1, p0

    shl-int v1, v2, v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/x;->a:Lf/v;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/x;->a:Lf/v;

    invoke-virtual {v1}, Lf/v;->d()Lf/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/v;->d(Lf/h;)V

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/googlenav/ui/android/x;->u:J

    iget-object v0, p0, Lcom/google/googlenav/ui/android/x;->w:Lcom/google/googlenav/ui/bo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/x;->w:Lcom/google/googlenav/ui/bo;

    invoke-interface {v0}, Lcom/google/googlenav/ui/bo;->b()V

    :cond_0
    return-void
.end method

.method private m()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/x;->v:Lcom/google/googlenav/ui/android/ar;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ui/android/x;->v:Lcom/google/googlenav/ui/android/ar;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/ar;->f()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method private n()V
    .locals 4

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/x;->q()I

    move-result v0

    new-instance v1, Landroid/graphics/PointF;

    iget v2, p0, Lcom/google/googlenav/ui/android/x;->x:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/google/googlenav/ui/android/x;->y:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/android/x;->a(ILandroid/graphics/PointF;)V

    return-void
.end method

.method private o()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/x;->q:Z

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/x;->s:Z

    iget-object v0, p0, Lcom/google/googlenav/ui/android/x;->r:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private p()V
    .locals 3

    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/android/x;->e:I

    iput v1, p0, Lcom/google/googlenav/ui/android/x;->f:F

    iget-object v0, p0, Lcom/google/googlenav/ui/android/x;->h:Landroid/graphics/PointF;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/x;->i:Z

    iput v1, p0, Lcom/google/googlenav/ui/android/x;->k:F

    iput v1, p0, Lcom/google/googlenav/ui/android/x;->p:F

    return-void
.end method

.method private q()I
    .locals 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    iget v0, p0, Lcom/google/googlenav/ui/android/x;->f:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    move v0, v4

    :goto_0
    if-eqz v0, :cond_1

    iget v1, p0, Lcom/google/googlenav/ui/android/x;->f:F

    div-float v1, v2, v1

    :goto_1
    float-to-int v2, v1

    move v7, v3

    move v3, v2

    move v2, v7

    :goto_2
    if-le v3, v4, :cond_2

    shr-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/google/googlenav/ui/android/x;->f:F

    goto :goto_1

    :cond_2
    const-wide/high16 v3, 0x3ff0

    float-to-double v5, v1

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x3fd0

    cmpl-double v1, v3, v5

    if-lez v1, :cond_4

    add-int/lit8 v1, v2, 0x1

    :goto_3
    iget v2, p0, Lcom/google/googlenav/ui/android/x;->e:I

    if-eqz v0, :cond_3

    neg-int v0, v1

    :goto_4
    add-int/2addr v0, v2

    return v0

    :cond_3
    move v0, v1

    goto :goto_4

    :cond_4
    move v1, v2

    goto :goto_3
.end method


# virtual methods
.method public a(I)I
    .locals 2

    iget v0, p0, Lcom/google/googlenav/ui/android/x;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/x;->i:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/googlenav/ui/android/x;->p:F

    :goto_0
    iget v1, p0, Lcom/google/googlenav/ui/android/x;->e:I

    invoke-static {v1}, Lf/l;->b(I)Lf/l;

    move-result-object v1

    invoke-virtual {v1, p1}, Lf/l;->a(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    :goto_1
    return v0

    :cond_0
    iget v0, p0, Lcom/google/googlenav/ui/android/x;->f:F

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ui/android/x;->a:Lf/v;

    invoke-virtual {v0}, Lf/v;->c()Lf/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf/l;->a(I)I

    move-result v0

    goto :goto_1
.end method

.method protected a(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/google/googlenav/ui/bV;->a(II)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/x;->r:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/x;->p()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/x;->o()V

    return-void
.end method

.method public a(ILandroid/graphics/PointF;)V
    .locals 3

    iget v0, p0, Lcom/google/googlenav/ui/android/x;->e:I

    sub-int v0, p1, v0

    invoke-static {v0}, Lcom/google/googlenav/ui/android/x;->d(I)F

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/google/googlenav/ui/android/x;->a(Landroid/graphics/PointF;F)V

    iget-boolean v1, p0, Lcom/google/googlenav/ui/android/x;->q:Z

    iget v2, p0, Lcom/google/googlenav/ui/android/x;->e:I

    if-eq p1, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    or-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/google/googlenav/ui/android/x;->q:Z

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/ui/android/x;->a(ILandroid/graphics/PointF;F)V

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public a(LaF/a;)V
    .locals 5

    iget-object v0, p0, Lcom/google/googlenav/ui/android/x;->h:Landroid/graphics/PointF;

    iget v1, p0, Lcom/google/googlenav/ui/android/x;->f:F

    iget-boolean v2, p0, Lcom/google/googlenav/ui/android/x;->i:Z

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/x;->m:Landroid/graphics/PointF;

    iget v1, p0, Lcom/google/googlenav/ui/android/x;->p:F

    move v4, v1

    move-object v1, v0

    move v0, v4

    :goto_0
    iget v2, p1, LaF/a;->a:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    iget v3, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/x;->j()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, LaF/a;->a:I

    iget v2, p1, LaF/a;->b:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/x;->k()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, LaF/a;->b:I

    return-void

    :cond_0
    move v4, v1

    move-object v1, v0

    move v0, v4

    goto :goto_0
.end method

.method public a(Lax/b;Z)V
    .locals 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/x;->i:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/x;->s:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/google/googlenav/ui/android/x;->s:Z

    iget-object v0, p0, Lcom/google/googlenav/ui/android/x;->r:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/x;->q:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lax/b;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/x;->h:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/x;->h:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/x;->j()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/google/googlenav/ui/android/x;->h:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/x;->k()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/x;->m:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/x;->m:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/x;->j()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/google/googlenav/ui/android/x;->m:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/x;->k()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    :cond_2
    if-eqz p2, :cond_3

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/x;->d:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/googlenav/ui/android/x;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/x;->n()V

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/google/googlenav/ui/bV;->a(Lax/b;Z)V

    goto :goto_0
.end method

.method public a(Lcom/google/googlenav/ui/bo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/android/x;->w:Lcom/google/googlenav/ui/bo;

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/x;)V
    .locals 13

    const/high16 v11, 0x4000

    const/4 v10, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/ui/x;->b()Lk/m;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/googlenav/ui/x;->e()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/android/x;->x:I

    invoke-virtual {p1}, Lcom/google/googlenav/ui/x;->f()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/android/x;->y:I

    iget v0, p0, Lcom/google/googlenav/ui/android/x;->f:F

    iget-object v2, p0, Lcom/google/googlenav/ui/android/x;->h:Landroid/graphics/PointF;

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v3

    invoke-virtual {v3}, Lac/m;->p()Lac/p;

    move-result-object v3

    invoke-interface {v3}, Lac/p;->a()J

    move-result-wide v3

    iget-boolean v5, p0, Lcom/google/googlenav/ui/android/x;->s:Z

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lcom/google/googlenav/ui/android/x;->q:Z

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/google/googlenav/ui/android/x;->d:Z

    if-nez v5, :cond_5

    move v5, v10

    :goto_0
    if-eqz v5, :cond_6

    iget-boolean v6, p0, Lcom/google/googlenav/ui/android/x;->i:Z

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/google/googlenav/ui/android/x;->a:Lf/v;

    iget-object v8, p0, Lcom/google/googlenav/ui/android/x;->a:Lf/v;

    invoke-virtual {v8}, Lf/v;->d()Lf/h;

    move-result-object v8

    invoke-virtual {v6, v8, v10}, Lf/v;->a(Lf/h;Z)Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v10

    :goto_1
    if-nez v6, :cond_0

    if-eqz v5, :cond_1

    iget-wide v5, p0, Lcom/google/googlenav/ui/android/x;->l:J

    sub-long v5, v3, v5

    const-wide/16 v8, 0x3a98

    cmp-long v5, v5, v8

    if-lez v5, :cond_1

    :cond_0
    iput-boolean v10, p0, Lcom/google/googlenav/ui/android/x;->s:Z

    iput-wide v3, p0, Lcom/google/googlenav/ui/android/x;->t:J

    :cond_1
    iget-boolean v5, p0, Lcom/google/googlenav/ui/android/x;->s:Z

    if-eqz v5, :cond_2

    invoke-direct {p0, v3, v4}, Lcom/google/googlenav/ui/android/x;->a(J)V

    :cond_2
    iget-boolean v5, p0, Lcom/google/googlenav/ui/android/x;->i:Z

    if-eqz v5, :cond_7

    iget-boolean v5, p0, Lcom/google/googlenav/ui/android/x;->d:Z

    if-nez v5, :cond_7

    invoke-direct {p0, v3, v4}, Lcom/google/googlenav/ui/android/x;->b(J)V

    iget v0, p0, Lcom/google/googlenav/ui/android/x;->p:F

    iget-object v2, p0, Lcom/google/googlenav/ui/android/x;->m:Landroid/graphics/PointF;

    move-object v12, v2

    move v2, v0

    move-object v0, v12

    :goto_2
    iget-wide v5, p0, Lcom/google/googlenav/ui/android/x;->u:J

    cmp-long v3, v5, v3

    if-gez v3, :cond_3

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/x;->l()V

    :cond_3
    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcom/google/googlenav/ui/android/x;->x:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    div-float/2addr v4, v11

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/x;->j()I

    move-result v4

    add-int/2addr v3, v4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/google/googlenav/ui/android/x;->y:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    div-float/2addr v4, v11

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/x;->k()I

    move-result v4

    add-int/2addr v4, v0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/x;->b:Lk/l;

    invoke-interface {v0}, Lk/l;->e()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iget-object v5, p0, Lcom/google/googlenav/ui/android/x;->b:Lk/l;

    invoke-interface {v5}, Lk/l;->f()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    check-cast v1, LaB/h;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/x;->b:Lk/l;

    float-to-int v5, v5

    float-to-int v6, v0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/x;->b:Lk/l;

    invoke-interface {v0}, Lk/l;->f()I

    move-result v9

    iget-object v0, p0, Lcom/google/googlenav/ui/android/x;->b:Lk/l;

    invoke-interface {v0}, Lk/l;->e()I

    move-result v10

    move-object v0, p0

    move v8, v7

    invoke-virtual/range {v0 .. v10}, Lcom/google/googlenav/ui/android/x;->a(LaB/h;Lk/l;IIIIIIII)Z

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/x;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/x;->m()V

    :cond_4
    return-void

    :cond_5
    move v5, v7

    goto/16 :goto_0

    :cond_6
    move v6, v7

    goto/16 :goto_1

    :cond_7
    move-object v12, v2

    move v2, v0

    move-object v0, v12

    goto :goto_2
.end method

.method protected a(Lf/l;II)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/high16 v0, 0x3f80

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/android/x;->a(F)V

    invoke-virtual {p1}, Lf/l;->a()I

    move-result v0

    new-instance v1, Landroid/graphics/PointF;

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/android/x;->a(ILandroid/graphics/PointF;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    invoke-super {p0}, Lcom/google/googlenav/ui/bV;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/x;->i:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/x;->s:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/x;->q:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(LaB/h;Lk/l;IIIIIIII)Z
    .locals 5

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    check-cast p2, LaB/f;

    invoke-virtual {p2}, LaB/f;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/google/googlenav/ui/android/x;->z:Landroid/graphics/Rect;

    add-int v2, p7, p9

    add-int v3, p8, p10

    invoke-virtual {v1, p7, p8, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v1, Lcom/google/googlenav/ui/android/x;->A:Landroid/graphics/Rect;

    add-int v2, p3, p5

    add-int v3, p4, p6

    invoke-virtual {v1, p3, p4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1}, LaB/h;->a()Landroid/graphics/Canvas;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/android/x;->z:Landroid/graphics/Rect;

    sget-object v3, Lcom/google/googlenav/ui/android/x;->A:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/google/googlenav/ui/android/x;->r:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Lcom/google/googlenav/gesture/a;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v2, -0x1

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/google/googlenav/gesture/a;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/googlenav/ui/android/x;->e:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/google/googlenav/ui/android/x;->e:I

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/x;->q()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/x;->p()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/x;->o()V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/x;->a:Lf/v;

    invoke-virtual {v0}, Lf/v;->c()Lf/l;

    move-result-object v0

    invoke-virtual {v0}, Lf/l;->a()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-static {v0}, Lf/l;->b(I)Lf/l;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/x;->a:Lf/v;

    invoke-virtual {v1}, Lf/v;->t()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/google/googlenav/ui/android/x;->a:Lf/v;

    invoke-virtual {v2}, Lf/v;->s()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlenav/ui/android/x;->a(Lf/l;II)V

    move v0, v4

    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/x;->i:Z

    if-eqz v0, :cond_2

    move v0, v5

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/googlenav/gesture/a;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/googlenav/gesture/a;->e()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/android/x;->a(F)V

    move v0, v4

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/googlenav/gesture/a;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/x;->d:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/google/googlenav/ui/android/x;->e:I

    if-eq v0, v2, :cond_5

    invoke-virtual {p1}, Lcom/google/googlenav/gesture/a;->e()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fefae147ae147aeL

    cmpl-double v0, v0, v2

    if-lez v0, :cond_4

    invoke-virtual {p1}, Lcom/google/googlenav/gesture/a;->e()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3ff003afb7e90ff9L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_4

    move v0, v5

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/googlenav/ui/android/x;->j:Landroid/graphics/PointF;

    invoke-virtual {p1}, Lcom/google/googlenav/gesture/a;->a()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/googlenav/gesture/a;->b()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    iget v0, p0, Lcom/google/googlenav/ui/android/x;->f:F

    invoke-virtual {p1}, Lcom/google/googlenav/gesture/a;->e()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/googlenav/ui/android/x;->f:F

    iget-object v0, p0, Lcom/google/googlenav/ui/android/x;->j:Landroid/graphics/PointF;

    invoke-virtual {p1}, Lcom/google/googlenav/gesture/a;->e()F

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/ui/android/x;->h:Landroid/graphics/PointF;

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/android/x;->a(Landroid/graphics/PointF;FLandroid/graphics/PointF;)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/x;->q()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/android/x;->g:I

    move v0, v4

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/googlenav/gesture/a;->h()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/x;->d:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/google/googlenav/ui/android/x;->e:I

    if-eq v0, v2, :cond_6

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/x;->n()V

    move v0, v4

    goto :goto_0

    :cond_6
    move v0, v5

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/x;->i:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/x;->s:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/x;->s:Z

    return v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/x;->r:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

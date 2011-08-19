.class public Lcom/google/googlenav/gesture/i;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/google/googlenav/gesture/r;

.field private c:Z

.field private d:Landroid/view/MotionEvent;

.field private e:Landroid/view/MotionEvent;

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:J

.field private t:F

.field private u:F

.field private v:F

.field private w:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/googlenav/gesture/r;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object p1, p0, Lcom/google/googlenav/gesture/i;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/googlenav/gesture/i;->b:Lcom/google/googlenav/gesture/r;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/googlenav/gesture/i;->t:F

    return-void
.end method

.method private static a(Landroid/view/MotionEvent;I)F
    .locals 2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method private static b(Landroid/view/MotionEvent;I)F
    .locals 2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 12

    const/high16 v1, -0x4080

    const/high16 v11, 0x3f00

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/google/googlenav/gesture/i;->e:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/gesture/i;->e:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/gesture/i;->e:Landroid/view/MotionEvent;

    iput v1, p0, Lcom/google/googlenav/gesture/i;->n:F

    iput v1, p0, Lcom/google/googlenav/gesture/i;->o:F

    iput v1, p0, Lcom/google/googlenav/gesture/i;->p:F

    iget-object v0, p0, Lcom/google/googlenav/gesture/i;->d:Landroid/view/MotionEvent;

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    sub-float/2addr v3, v1

    sub-float/2addr v4, v2

    sub-float/2addr v7, v5

    sub-float/2addr v8, v6

    iput v3, p0, Lcom/google/googlenav/gesture/i;->j:F

    iput v4, p0, Lcom/google/googlenav/gesture/i;->k:F

    iput v7, p0, Lcom/google/googlenav/gesture/i;->l:F

    iput v8, p0, Lcom/google/googlenav/gesture/i;->m:F

    mul-float/2addr v7, v11

    add-float/2addr v5, v7

    iput v5, p0, Lcom/google/googlenav/gesture/i;->f:F

    mul-float v5, v8, v11

    add-float/2addr v5, v6

    iput v5, p0, Lcom/google/googlenav/gesture/i;->g:F

    mul-float/2addr v3, v11

    add-float/2addr v1, v3

    iput v1, p0, Lcom/google/googlenav/gesture/i;->h:F

    mul-float v1, v4, v11

    add-float/2addr v1, v2

    iput v1, p0, Lcom/google/googlenav/gesture/i;->i:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/googlenav/gesture/i;->s:J

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/google/googlenav/gesture/i;->q:F

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v0

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/googlenav/gesture/i;->r:F

    return-void
.end method

.method private h()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlenav/gesture/i;->d:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/gesture/i;->d:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    iput-object v2, p0, Lcom/google/googlenav/gesture/i;->d:Landroid/view/MotionEvent;

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/gesture/i;->e:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/gesture/i;->e:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    iput-object v2, p0, Lcom/google/googlenav/gesture/i;->e:Landroid/view/MotionEvent;

    :cond_1
    iput-boolean v1, p0, Lcom/google/googlenav/gesture/i;->w:Z

    iput-boolean v1, p0, Lcom/google/googlenav/gesture/i;->c:Z

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Lcom/google/googlenav/gesture/i;->f:F

    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 11

    const v3, 0xff00

    const/4 v2, 0x2

    const/high16 v10, -0x4080

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/googlenav/gesture/i;->c:Z

    if-nez v1, :cond_14

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/16 v1, 0x105

    if-ne v0, v1, :cond_9

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-lt v1, v2, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/gesture/i;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/googlenav/gesture/i;->t:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/google/googlenav/gesture/i;->u:F

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/googlenav/gesture/i;->t:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/google/googlenav/gesture/i;->v:F

    invoke-direct {p0}, Lcom/google/googlenav/gesture/i;->h()V

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/gesture/i;->d:Landroid/view/MotionEvent;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlenav/gesture/i;->s:J

    invoke-direct {p0, p1}, Lcom/google/googlenav/gesture/i;->b(Landroid/view/MotionEvent;)V

    iget v0, p0, Lcom/google/googlenav/gesture/i;->t:F

    iget v1, p0, Lcom/google/googlenav/gesture/i;->u:F

    iget v2, p0, Lcom/google/googlenav/gesture/i;->v:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-static {p1, v9}, Lcom/google/googlenav/gesture/i;->a(Landroid/view/MotionEvent;I)F

    move-result v5

    invoke-static {p1, v9}, Lcom/google/googlenav/gesture/i;->b(Landroid/view/MotionEvent;I)F

    move-result v6

    cmpg-float v7, v3, v0

    if-ltz v7, :cond_1

    cmpg-float v7, v4, v0

    if-ltz v7, :cond_1

    cmpl-float v3, v3, v1

    if-gtz v3, :cond_1

    cmpl-float v3, v4, v2

    if-lez v3, :cond_4

    :cond_1
    move v3, v9

    :goto_0
    cmpg-float v4, v5, v0

    if-ltz v4, :cond_2

    cmpg-float v0, v6, v0

    if-ltz v0, :cond_2

    cmpl-float v0, v5, v1

    if-gtz v0, :cond_2

    cmpl-float v0, v6, v2

    if-lez v0, :cond_5

    :cond_2
    move v0, v9

    :goto_1
    if-eqz v3, :cond_6

    if-eqz v0, :cond_6

    iput v10, p0, Lcom/google/googlenav/gesture/i;->f:F

    iput v10, p0, Lcom/google/googlenav/gesture/i;->g:F

    iput-boolean v9, p0, Lcom/google/googlenav/gesture/i;->w:Z

    :cond_3
    :goto_2
    return v9

    :cond_4
    move v3, v8

    goto :goto_0

    :cond_5
    move v0, v8

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/google/googlenav/gesture/i;->f:F

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/google/googlenav/gesture/i;->g:F

    iput-boolean v9, p0, Lcom/google/googlenav/gesture/i;->w:Z

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/google/googlenav/gesture/i;->f:F

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/google/googlenav/gesture/i;->g:F

    iput-boolean v9, p0, Lcom/google/googlenav/gesture/i;->w:Z

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/google/googlenav/gesture/i;->b:Lcom/google/googlenav/gesture/r;

    invoke-interface {v0, p0, v8, v8}, Lcom/google/googlenav/gesture/r;->b(Lcom/google/googlenav/gesture/i;ZZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/gesture/i;->c:Z

    goto :goto_2

    :cond_9
    if-ne v0, v2, :cond_11

    iget-boolean v1, p0, Lcom/google/googlenav/gesture/i;->w:Z

    if-eqz v1, :cond_11

    iget v0, p0, Lcom/google/googlenav/gesture/i;->t:F

    iget v1, p0, Lcom/google/googlenav/gesture/i;->u:F

    iget v2, p0, Lcom/google/googlenav/gesture/i;->v:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-static {p1, v9}, Lcom/google/googlenav/gesture/i;->a(Landroid/view/MotionEvent;I)F

    move-result v5

    invoke-static {p1, v9}, Lcom/google/googlenav/gesture/i;->b(Landroid/view/MotionEvent;I)F

    move-result v6

    cmpg-float v7, v3, v0

    if-ltz v7, :cond_a

    cmpg-float v7, v4, v0

    if-ltz v7, :cond_a

    cmpl-float v3, v3, v1

    if-gtz v3, :cond_a

    cmpl-float v3, v4, v2

    if-lez v3, :cond_c

    :cond_a
    move v3, v9

    :goto_3
    cmpg-float v4, v5, v0

    if-ltz v4, :cond_b

    cmpg-float v0, v6, v0

    if-ltz v0, :cond_b

    cmpl-float v0, v5, v1

    if-gtz v0, :cond_b

    cmpl-float v0, v6, v2

    if-lez v0, :cond_d

    :cond_b
    move v0, v9

    :goto_4
    if-eqz v3, :cond_e

    if-eqz v0, :cond_e

    iput v10, p0, Lcom/google/googlenav/gesture/i;->f:F

    iput v10, p0, Lcom/google/googlenav/gesture/i;->g:F

    goto :goto_2

    :cond_c
    move v3, v8

    goto :goto_3

    :cond_d
    move v0, v8

    goto :goto_4

    :cond_e
    if-eqz v3, :cond_f

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/google/googlenav/gesture/i;->f:F

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/google/googlenav/gesture/i;->g:F

    goto/16 :goto_2

    :cond_f
    if-eqz v0, :cond_10

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/google/googlenav/gesture/i;->f:F

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/google/googlenav/gesture/i;->g:F

    goto/16 :goto_2

    :cond_10
    iput-boolean v8, p0, Lcom/google/googlenav/gesture/i;->w:Z

    iget-object v0, p0, Lcom/google/googlenav/gesture/i;->b:Lcom/google/googlenav/gesture/r;

    invoke-interface {v0, p0, v8, v8}, Lcom/google/googlenav/gesture/r;->b(Lcom/google/googlenav/gesture/i;ZZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/gesture/i;->c:Z

    goto/16 :goto_2

    :cond_11
    const/4 v1, 0x6

    if-eq v0, v1, :cond_12

    const/16 v1, 0x106

    if-ne v0, v1, :cond_3

    :cond_12
    iget-boolean v1, p0, Lcom/google/googlenav/gesture/i;->w:Z

    if-eqz v1, :cond_3

    and-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_13

    move v0, v9

    :goto_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/google/googlenav/gesture/i;->f:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/google/googlenav/gesture/i;->g:F

    goto/16 :goto_2

    :cond_13
    move v0, v8

    goto :goto_5

    :cond_14
    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    invoke-direct {p0, p1}, Lcom/google/googlenav/gesture/i;->b(Landroid/view/MotionEvent;)V

    iget v0, p0, Lcom/google/googlenav/gesture/i;->q:F

    iget v1, p0, Lcom/google/googlenav/gesture/i;->r:F

    div-float/2addr v0, v1

    const v1, 0x3f2b851f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/google/googlenav/gesture/i;->b:Lcom/google/googlenav/gesture/r;

    invoke-interface {v0, p0, v8, v8}, Lcom/google/googlenav/gesture/r;->a(Lcom/google/googlenav/gesture/i;ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/googlenav/gesture/i;->d:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/gesture/i;->d:Landroid/view/MotionEvent;

    goto/16 :goto_2

    :sswitch_1
    invoke-direct {p0, p1}, Lcom/google/googlenav/gesture/i;->b(Landroid/view/MotionEvent;)V

    and-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_16

    move v0, v9

    :goto_6
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/google/googlenav/gesture/i;->f:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/google/googlenav/gesture/i;->g:F

    iget-boolean v0, p0, Lcom/google/googlenav/gesture/i;->w:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/google/googlenav/gesture/i;->b:Lcom/google/googlenav/gesture/r;

    invoke-interface {v0, p0, v8, v8}, Lcom/google/googlenav/gesture/r;->c(Lcom/google/googlenav/gesture/i;ZZ)V

    :cond_15
    invoke-direct {p0}, Lcom/google/googlenav/gesture/i;->h()V

    goto/16 :goto_2

    :cond_16
    move v0, v8

    goto :goto_6

    :sswitch_2
    iget-boolean v0, p0, Lcom/google/googlenav/gesture/i;->w:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/google/googlenav/gesture/i;->b:Lcom/google/googlenav/gesture/r;

    invoke-interface {v0, p0, v8, v8}, Lcom/google/googlenav/gesture/r;->c(Lcom/google/googlenav/gesture/i;ZZ)V

    :cond_17
    invoke-direct {p0}, Lcom/google/googlenav/gesture/i;->h()V

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x6 -> :sswitch_1
        0x106 -> :sswitch_1
    .end sparse-switch
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lcom/google/googlenav/gesture/i;->g:F

    return v0
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lcom/google/googlenav/gesture/i;->h:F

    return v0
.end method

.method public d()F
    .locals 1

    iget v0, p0, Lcom/google/googlenav/gesture/i;->i:F

    return v0
.end method

.method public e()F
    .locals 2

    iget v0, p0, Lcom/google/googlenav/gesture/i;->n:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/googlenav/gesture/i;->l:F

    iget v1, p0, Lcom/google/googlenav/gesture/i;->m:F

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/google/googlenav/gesture/i;->n:F

    :cond_0
    iget v0, p0, Lcom/google/googlenav/gesture/i;->n:F

    return v0
.end method

.method public f()F
    .locals 2

    iget v0, p0, Lcom/google/googlenav/gesture/i;->o:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/googlenav/gesture/i;->j:F

    iget v1, p0, Lcom/google/googlenav/gesture/i;->k:F

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/google/googlenav/gesture/i;->o:F

    :cond_0
    iget v0, p0, Lcom/google/googlenav/gesture/i;->o:F

    return v0
.end method

.method public g()F
    .locals 2

    iget v0, p0, Lcom/google/googlenav/gesture/i;->p:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/gesture/i;->e()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/googlenav/gesture/i;->f()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/googlenav/gesture/i;->p:F

    :cond_0
    iget v0, p0, Lcom/google/googlenav/gesture/i;->p:F

    return v0
.end method

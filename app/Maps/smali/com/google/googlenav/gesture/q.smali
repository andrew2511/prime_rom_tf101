.class Lcom/google/googlenav/gesture/q;
.super Ljava/lang/Object;


# static fields
.field private static final g:I

.field private static final h:I

.field private static final i:I


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private final j:Landroid/os/Handler;

.field private final k:Lcom/google/googlenav/gesture/t;

.field private l:Lcom/google/googlenav/gesture/z;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Landroid/view/MotionEvent;

.field private r:Landroid/view/MotionEvent;

.field private s:Z

.field private t:F

.field private u:F

.field private v:Z

.field private w:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcom/google/googlenav/gesture/q;->g:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lcom/google/googlenav/gesture/q;->h:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Lcom/google/googlenav/gesture/q;->i:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/googlenav/gesture/t;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/gesture/q;-><init>(Landroid/content/Context;Lcom/google/googlenav/gesture/t;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/googlenav/gesture/t;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x190

    iput v0, p0, Lcom/google/googlenav/gesture/q;->a:I

    if-eqz p3, :cond_1

    new-instance v0, Lcom/google/googlenav/gesture/f;

    invoke-direct {v0, p0, p3}, Lcom/google/googlenav/gesture/f;-><init>(Lcom/google/googlenav/gesture/q;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/googlenav/gesture/q;->j:Landroid/os/Handler;

    :goto_0
    iput-object p2, p0, Lcom/google/googlenav/gesture/q;->k:Lcom/google/googlenav/gesture/t;

    instance-of v0, p2, Lcom/google/googlenav/gesture/z;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/google/googlenav/gesture/z;

    invoke-virtual {p0, p2}, Lcom/google/googlenav/gesture/q;->a(Lcom/google/googlenav/gesture/z;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/googlenav/gesture/q;->a(Landroid/content/Context;)V

    return-void

    :cond_1
    new-instance v0, Lcom/google/googlenav/gesture/f;

    invoke-direct {v0, p0}, Lcom/google/googlenav/gesture/f;-><init>(Lcom/google/googlenav/gesture/q;)V

    iput-object v0, p0, Lcom/google/googlenav/gesture/q;->j:Landroid/os/Handler;

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/googlenav/gesture/q;)Landroid/view/MotionEvent;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/gesture/q;->q:Landroid/view/MotionEvent;

    return-object v0
.end method

.method private a()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/gesture/q;->j:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/googlenav/gesture/q;->j:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/googlenav/gesture/q;->j:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/googlenav/gesture/q;->w:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/gesture/q;->w:Landroid/view/VelocityTracker;

    iput-boolean v2, p0, Lcom/google/googlenav/gesture/q;->s:Z

    iput-boolean v2, p0, Lcom/google/googlenav/gesture/q;->m:Z

    iget-boolean v0, p0, Lcom/google/googlenav/gesture/q;->n:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/google/googlenav/gesture/q;->n:Z

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    iget-object v0, p0, Lcom/google/googlenav/gesture/q;->k:Lcom/google/googlenav/gesture/t;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "OnGestureListener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/gesture/q;->v:Z

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/google/googlenav/gesture/q;->e:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/gesture/q;->f:I

    mul-int v0, v1, v1

    iput v0, p0, Lcom/google/googlenav/gesture/q;->b:I

    div-int/lit8 v0, v1, 0x4

    div-int/lit8 v1, v1, 0x4

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlenav/gesture/q;->c:I

    mul-int v0, v2, v2

    iput v0, p0, Lcom/google/googlenav/gesture/q;->d:I

    return-void
.end method

.method private a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/google/googlenav/gesture/q;->p:Z

    if-nez v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget v2, Lcom/google/googlenav/gesture/q;->i:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    mul-int/2addr v0, v0

    mul-int/2addr v1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/googlenav/gesture/q;->d:I

    if-ge v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/googlenav/gesture/q;)Lcom/google/googlenav/gesture/t;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/gesture/q;->k:Lcom/google/googlenav/gesture/t;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/gesture/q;->j:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/gesture/q;->n:Z

    iget-object v0, p0, Lcom/google/googlenav/gesture/q;->k:Lcom/google/googlenav/gesture/t;

    iget-object v1, p0, Lcom/google/googlenav/gesture/q;->q:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Lcom/google/googlenav/gesture/t;->h(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/gesture/q;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/gesture/q;->b()V

    return-void
.end method

.method static synthetic d(Lcom/google/googlenav/gesture/q;)Lcom/google/googlenav/gesture/z;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/gesture/q;->l:Lcom/google/googlenav/gesture/z;

    return-object v0
.end method

.method static synthetic e(Lcom/google/googlenav/gesture/q;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/gesture/q;->m:Z

    return v0
.end method


# virtual methods
.method public a(Lcom/google/googlenav/gesture/z;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/gesture/q;->l:Lcom/google/googlenav/gesture/z;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/googlenav/gesture/q;->v:Z

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 11

    const/high16 v5, 0x3f80

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/google/googlenav/gesture/q;->w:Landroid/view/VelocityTracker;

    if-nez v3, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlenav/gesture/q;->w:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v3, p0, Lcom/google/googlenav/gesture/q;->w:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    and-int/lit16 v3, v0, 0xff

    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    move v0, v8

    :cond_2
    :goto_1
    return v0

    :pswitch_1
    invoke-direct {p0}, Lcom/google/googlenav/gesture/q;->a()V

    move v0, v8

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ne v1, v9, :cond_1

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_3

    move v0, v7

    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/google/googlenav/gesture/q;->u:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/google/googlenav/gesture/q;->t:F

    iget-object v0, p0, Lcom/google/googlenav/gesture/q;->w:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/gesture/q;->w:Landroid/view/VelocityTracker;

    move v0, v8

    goto :goto_1

    :cond_3
    move v0, v8

    goto :goto_2

    :pswitch_3
    iget-object v0, p0, Lcom/google/googlenav/gesture/q;->l:Lcom/google/googlenav/gesture/z;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/googlenav/gesture/q;->j:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/google/googlenav/gesture/q;->j:Landroid/os/Handler;

    invoke-virtual {v3, v10}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    iget-object v3, p0, Lcom/google/googlenav/gesture/q;->q:Landroid/view/MotionEvent;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/google/googlenav/gesture/q;->r:Landroid/view/MotionEvent;

    if-eqz v3, :cond_6

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/googlenav/gesture/q;->q:Landroid/view/MotionEvent;

    iget-object v3, p0, Lcom/google/googlenav/gesture/q;->r:Landroid/view/MotionEvent;

    invoke-direct {p0, v0, v3, p1}, Lcom/google/googlenav/gesture/q;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v7, p0, Lcom/google/googlenav/gesture/q;->s:Z

    iget-object v0, p0, Lcom/google/googlenav/gesture/q;->l:Lcom/google/googlenav/gesture/z;

    iget-object v3, p0, Lcom/google/googlenav/gesture/q;->q:Landroid/view/MotionEvent;

    invoke-interface {v0, v3}, Lcom/google/googlenav/gesture/z;->c(Landroid/view/MotionEvent;)Z

    move-result v0

    or-int/2addr v0, v8

    iget-object v3, p0, Lcom/google/googlenav/gesture/q;->l:Lcom/google/googlenav/gesture/z;

    invoke-interface {v3, p1}, Lcom/google/googlenav/gesture/z;->d(Landroid/view/MotionEvent;)Z

    move-result v3

    or-int/2addr v0, v3

    :goto_3
    iput v2, p0, Lcom/google/googlenav/gesture/q;->u:F

    iput v1, p0, Lcom/google/googlenav/gesture/q;->t:F

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/gesture/q;->q:Landroid/view/MotionEvent;

    iput-boolean v7, p0, Lcom/google/googlenav/gesture/q;->o:Z

    iput-boolean v7, p0, Lcom/google/googlenav/gesture/q;->p:Z

    iput-boolean v7, p0, Lcom/google/googlenav/gesture/q;->m:Z

    iput-boolean v8, p0, Lcom/google/googlenav/gesture/q;->n:Z

    iget-boolean v1, p0, Lcom/google/googlenav/gesture/q;->v:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/googlenav/gesture/q;->j:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/google/googlenav/gesture/q;->j:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/googlenav/gesture/q;->q:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    sget v4, Lcom/google/googlenav/gesture/q;->h:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    sget v4, Lcom/google/googlenav/gesture/q;->g:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v9, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    :cond_5
    iget-object v1, p0, Lcom/google/googlenav/gesture/q;->j:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/googlenav/gesture/q;->q:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    sget v4, Lcom/google/googlenav/gesture/q;->h:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v7, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    iget-object v1, p0, Lcom/google/googlenav/gesture/q;->k:Lcom/google/googlenav/gesture/t;

    invoke-interface {v1, p1}, Lcom/google/googlenav/gesture/t;->e(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/google/googlenav/gesture/q;->j:Landroid/os/Handler;

    sget v3, Lcom/google/googlenav/gesture/q;->i:I

    int-to-long v3, v3

    invoke-virtual {v0, v10, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_7
    move v0, v8

    goto :goto_3

    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v7, :cond_8

    move v0, v8

    goto/16 :goto_1

    :cond_8
    iget v0, p0, Lcom/google/googlenav/gesture/q;->u:F

    sub-float/2addr v0, v2

    iget v3, p0, Lcom/google/googlenav/gesture/q;->t:F

    sub-float/2addr v3, v1

    iget-boolean v4, p0, Lcom/google/googlenav/gesture/q;->s:Z

    if-eqz v4, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/gesture/q;->l:Lcom/google/googlenav/gesture/z;

    invoke-interface {v0, p1}, Lcom/google/googlenav/gesture/z;->d(Landroid/view/MotionEvent;)Z

    move-result v0

    or-int/2addr v0, v8

    goto/16 :goto_1

    :cond_9
    iget-boolean v4, p0, Lcom/google/googlenav/gesture/q;->o:Z

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/google/googlenav/gesture/q;->q:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float v4, v2, v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/google/googlenav/gesture/q;->q:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float v5, v1, v5

    float-to-int v5, v5

    mul-int/2addr v4, v4

    mul-int/2addr v5, v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/google/googlenav/gesture/q;->c:I

    if-le v4, v5, :cond_12

    iget-object v5, p0, Lcom/google/googlenav/gesture/q;->k:Lcom/google/googlenav/gesture/t;

    iget-object v6, p0, Lcom/google/googlenav/gesture/q;->q:Landroid/view/MotionEvent;

    invoke-interface {v5, v6, p1, v0, v3}, Lcom/google/googlenav/gesture/t;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    iput v2, p0, Lcom/google/googlenav/gesture/q;->u:F

    iput v1, p0, Lcom/google/googlenav/gesture/q;->t:F

    :goto_4
    iget v1, p0, Lcom/google/googlenav/gesture/q;->b:I

    if-le v4, v1, :cond_a

    iput-boolean v8, p0, Lcom/google/googlenav/gesture/q;->o:Z

    iget-object v1, p0, Lcom/google/googlenav/gesture/q;->j:Landroid/os/Handler;

    invoke-virtual {v1, v10}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/google/googlenav/gesture/q;->j:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/google/googlenav/gesture/q;->j:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeMessages(I)V

    :cond_a
    iget v1, p0, Lcom/google/googlenav/gesture/q;->a:I

    if-le v4, v1, :cond_2

    iput-boolean v8, p0, Lcom/google/googlenav/gesture/q;->p:Z

    goto/16 :goto_1

    :cond_b
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v5

    if-gez v4, :cond_c

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    :cond_c
    iget-object v4, p0, Lcom/google/googlenav/gesture/q;->k:Lcom/google/googlenav/gesture/t;

    iget-object v5, p0, Lcom/google/googlenav/gesture/q;->q:Landroid/view/MotionEvent;

    invoke-interface {v4, v5, p1, v0, v3}, Lcom/google/googlenav/gesture/t;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    iput v2, p0, Lcom/google/googlenav/gesture/q;->u:F

    iput v1, p0, Lcom/google/googlenav/gesture/q;->t:F

    goto/16 :goto_1

    :pswitch_5
    iput-boolean v8, p0, Lcom/google/googlenav/gesture/q;->m:Z

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/googlenav/gesture/q;->s:Z

    if-eqz v1, :cond_d

    iget-object v0, p0, Lcom/google/googlenav/gesture/q;->l:Lcom/google/googlenav/gesture/z;

    invoke-interface {v0, p1}, Lcom/google/googlenav/gesture/z;->d(Landroid/view/MotionEvent;)Z

    move-result v0

    or-int/2addr v0, v8

    :goto_5
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/gesture/q;->r:Landroid/view/MotionEvent;

    iget-object v1, p0, Lcom/google/googlenav/gesture/q;->w:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/googlenav/gesture/q;->w:Landroid/view/VelocityTracker;

    iput-boolean v8, p0, Lcom/google/googlenav/gesture/q;->s:Z

    iget-object v1, p0, Lcom/google/googlenav/gesture/q;->j:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/google/googlenav/gesture/q;->j:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_1

    :cond_d
    iget-boolean v1, p0, Lcom/google/googlenav/gesture/q;->n:Z

    if-eqz v1, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/gesture/q;->j:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v8, p0, Lcom/google/googlenav/gesture/q;->n:Z

    move v0, v8

    goto :goto_5

    :cond_e
    iget-boolean v1, p0, Lcom/google/googlenav/gesture/q;->o:Z

    if-eqz v1, :cond_f

    iget-object v0, p0, Lcom/google/googlenav/gesture/q;->k:Lcom/google/googlenav/gesture/t;

    invoke-interface {v0, p1}, Lcom/google/googlenav/gesture/t;->g(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_5

    :cond_f
    iget-object v1, p0, Lcom/google/googlenav/gesture/q;->w:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v3, p0, Lcom/google/googlenav/gesture/q;->f:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/google/googlenav/gesture/q;->e:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_10

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/google/googlenav/gesture/q;->e:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_11

    :cond_10
    iget-object v3, p0, Lcom/google/googlenav/gesture/q;->k:Lcom/google/googlenav/gesture/t;

    iget-object v4, p0, Lcom/google/googlenav/gesture/q;->q:Landroid/view/MotionEvent;

    invoke-interface {v3, v4, v0, v1, v2}, Lcom/google/googlenav/gesture/t;->b(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_5

    :pswitch_6
    invoke-direct {p0}, Lcom/google/googlenav/gesture/q;->a()V

    goto/16 :goto_0

    :cond_11
    move v0, v8

    goto :goto_5

    :cond_12
    move v0, v8

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

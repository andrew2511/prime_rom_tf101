.class public Lcom/google/googlenav/gesture/o;
.super Lcom/google/googlenav/gesture/l;


# instance fields
.field private a:Landroid/view/MotionEvent;


# direct methods
.method public constructor <init>(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/gesture/l;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/gesture/o;->a:Landroid/view/MotionEvent;

    return-void
.end method

.method private g()V
    .locals 0

    return-void
.end method


# virtual methods
.method public a(I)F
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/gesture/o;->g()V

    iget-object v0, p0, Lcom/google/googlenav/gesture/o;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    return v0
.end method

.method public b(I)F
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/gesture/o;->g()V

    iget-object v0, p0, Lcom/google/googlenav/gesture/o;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    return v0
.end method

.method public c()J
    .locals 2

    invoke-direct {p0}, Lcom/google/googlenav/gesture/o;->g()V

    iget-object v0, p0, Lcom/google/googlenav/gesture/o;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public d()F
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/gesture/o;->g()V

    invoke-static {}, Lz/b;->y()Lac/m;

    move-result-object p0

    check-cast p0, Lz/b;

    invoke-virtual {p0}, Lz/b;->n()F

    move-result v0

    return v0
.end method

.method public e()F
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/gesture/o;->g()V

    invoke-static {}, Lz/b;->y()Lac/m;

    move-result-object p0

    check-cast p0, Lz/b;

    invoke-virtual {p0}, Lz/b;->o()F

    move-result v0

    return v0
.end method

.method public f()V
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/gesture/o;->g()V

    iget-object v0, p0, Lcom/google/googlenav/gesture/o;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/gesture/o;->a:Landroid/view/MotionEvent;

    return-void
.end method

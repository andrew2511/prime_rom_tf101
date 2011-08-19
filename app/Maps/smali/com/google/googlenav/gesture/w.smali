.class public Lcom/google/googlenav/gesture/w;
.super Lcom/google/googlenav/gesture/i;


# instance fields
.field private A:F

.field private B:F

.field private C:J

.field private D:F

.field private E:F

.field private F:F

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Z

.field private a:Landroid/content/Context;

.field private b:Landroid/view/MotionEvent;

.field private c:Landroid/view/MotionEvent;

.field private final d:Ljava/util/List;

.field private final e:Ljava/util/List;

.field private final f:Lcom/google/googlenav/gesture/c;

.field private final g:Lcom/google/googlenav/gesture/c;

.field private final h:Lcom/google/googlenav/gesture/c;

.field private final i:Lcom/google/googlenav/gesture/c;

.field private final j:Ljava/util/LinkedList;

.field private k:J

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:F

.field private w:F

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/googlenav/gesture/h;)V
    .locals 4

    const/16 v3, 0x4e

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/gesture/i;-><init>(Landroid/content/Context;Lcom/google/googlenav/gesture/r;)V

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/gesture/w;->d:Ljava/util/List;

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/gesture/w;->e:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/gesture/w;->j:Ljava/util/LinkedList;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object p1, p0, Lcom/google/googlenav/gesture/w;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/googlenav/gesture/w;->D:F

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->v()Z

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/gesture/w;->d:Ljava/util/List;

    new-instance v2, Lcom/google/googlenav/gesture/m;

    invoke-direct {v2, p2}, Lcom/google/googlenav/gesture/m;-><init>(Lcom/google/googlenav/gesture/h;)V

    iput-object v2, p0, Lcom/google/googlenav/gesture/w;->g:Lcom/google/googlenav/gesture/c;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/gesture/w;->d:Ljava/util/List;

    new-instance v2, Lcom/google/googlenav/gesture/y;

    invoke-direct {v2, p2}, Lcom/google/googlenav/gesture/y;-><init>(Lcom/google/googlenav/gesture/h;)V

    iput-object v2, p0, Lcom/google/googlenav/gesture/w;->h:Lcom/google/googlenav/gesture/c;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "MD"

    const-string v2, "T"

    invoke-static {v3, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :goto_0
    iget-object v1, p0, Lcom/google/googlenav/gesture/w;->d:Ljava/util/List;

    new-instance v2, Lcom/google/googlenav/gesture/s;

    invoke-direct {v2, p2, v0}, Lcom/google/googlenav/gesture/s;-><init>(Lcom/google/googlenav/gesture/h;Z)V

    iput-object v2, p0, Lcom/google/googlenav/gesture/w;->f:Lcom/google/googlenav/gesture/c;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/googlenav/gesture/w;->d:Ljava/util/List;

    new-instance v1, Lcom/google/googlenav/gesture/x;

    invoke-direct {v1, p2}, Lcom/google/googlenav/gesture/x;-><init>(Lcom/google/googlenav/gesture/h;)V

    iput-object v1, p0, Lcom/google/googlenav/gesture/w;->i:Lcom/google/googlenav/gesture/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/googlenav/gesture/w;->d:Ljava/util/List;

    new-instance v2, Lcom/google/googlenav/gesture/u;

    invoke-direct {v2, p2}, Lcom/google/googlenav/gesture/u;-><init>(Lcom/google/googlenav/gesture/h;)V

    iput-object v2, p0, Lcom/google/googlenav/gesture/w;->h:Lcom/google/googlenav/gesture/c;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "MD"

    const-string v2, "F"

    invoke-static {v3, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
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

.method private a(Lcom/google/googlenav/gesture/c;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/googlenav/gesture/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    iget-object v0, p0, Lcom/google/googlenav/gesture/w;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/googlenav/gesture/w;->k:J

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/gesture/w;->j:Ljava/util/LinkedList;

    new-instance v2, Lcom/google/googlenav/gesture/o;

    invoke-direct {v2, p1}, Lcom/google/googlenav/gesture/o;-><init>(Landroid/view/MotionEvent;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/googlenav/gesture/w;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v2, 0x14

    if-le v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/gesture/w;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/gesture/l;

    invoke-virtual {v0}, Lcom/google/googlenav/gesture/l;->f()V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/googlenav/gesture/w;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/gesture/w;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/gesture/w;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/gesture/l;

    invoke-virtual {v0}, Lcom/google/googlenav/gesture/l;->f()V

    goto :goto_0

    :cond_2
    sparse-switch v1, :sswitch_data_0

    :goto_1
    move v4, v8

    :goto_2
    iget-boolean v0, p0, Lcom/google/googlenav/gesture/w;->J:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/googlenav/gesture/w;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_3
    :pswitch_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/gesture/c;

    invoke-virtual {v0}, Lcom/google/googlenav/gesture/c;->a()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v7, Lcom/google/googlenav/gesture/d;->a:[I

    iget-wide v1, p0, Lcom/google/googlenav/gesture/w;->k:J

    iget-object v3, p0, Lcom/google/googlenav/gesture/w;->j:Ljava/util/LinkedList;

    iget-object v5, p0, Lcom/google/googlenav/gesture/w;->e:Ljava/util/List;

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/gesture/c;->a(JLjava/util/LinkedList;ZLjava/util/List;)Lcom/google/googlenav/gesture/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/gesture/e;->ordinal()I

    move-result v1

    aget v1, v7, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_3

    :cond_4
    :pswitch_1
    if-eqz v4, :cond_5

    invoke-direct {p0}, Lcom/google/googlenav/gesture/w;->l()V

    iput-boolean v8, p0, Lcom/google/googlenav/gesture/w;->J:Z

    :cond_5
    return-void

    :sswitch_0
    const/4 v0, 0x1

    move v4, v0

    goto :goto_2

    :sswitch_1
    iput-boolean v8, p0, Lcom/google/googlenav/gesture/w;->J:Z

    goto :goto_1

    :pswitch_2
    invoke-virtual {v0, p0}, Lcom/google/googlenav/gesture/c;->a(Lcom/google/googlenav/gesture/w;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/googlenav/gesture/w;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x6 -> :sswitch_0
        0x106 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 12

    const/high16 v1, -0x4080

    const/high16 v11, 0x3f00

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/gesture/w;->c:Landroid/view/MotionEvent;

    iput v1, p0, Lcom/google/googlenav/gesture/w;->t:F

    iput v1, p0, Lcom/google/googlenav/gesture/w;->u:F

    iput v1, p0, Lcom/google/googlenav/gesture/w;->x:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/gesture/w;->y:F

    iput-boolean v9, p0, Lcom/google/googlenav/gesture/w;->H:Z

    iput-boolean v9, p0, Lcom/google/googlenav/gesture/w;->I:Z

    iget-object v0, p0, Lcom/google/googlenav/gesture/w;->b:Landroid/view/MotionEvent;

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

    iput v3, p0, Lcom/google/googlenav/gesture/w;->p:F

    iput v4, p0, Lcom/google/googlenav/gesture/w;->q:F

    iput v7, p0, Lcom/google/googlenav/gesture/w;->r:F

    iput v8, p0, Lcom/google/googlenav/gesture/w;->s:F

    iput v2, p0, Lcom/google/googlenav/gesture/w;->v:F

    iput v6, p0, Lcom/google/googlenav/gesture/w;->w:F

    mul-float/2addr v7, v11

    add-float/2addr v5, v7

    iput v5, p0, Lcom/google/googlenav/gesture/w;->l:F

    mul-float v5, v8, v11

    add-float/2addr v5, v6

    iput v5, p0, Lcom/google/googlenav/gesture/w;->m:F

    mul-float/2addr v3, v11

    add-float/2addr v1, v3

    iput v1, p0, Lcom/google/googlenav/gesture/w;->n:F

    mul-float v1, v4, v11

    add-float/2addr v1, v2

    iput v1, p0, Lcom/google/googlenav/gesture/w;->o:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/googlenav/gesture/w;->C:J

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/google/googlenav/gesture/w;->A:F

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v0

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/googlenav/gesture/w;->B:F

    return-void
.end method

.method private j()Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/gesture/w;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/gesture/w;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/gesture/c;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/gesture/c;->e(Lcom/google/googlenav/gesture/w;)Z

    move-result v0

    or-int/2addr v0, v2

    move v2, v0

    goto :goto_0

    :cond_0
    return v2
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/gesture/w;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/gesture/c;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/gesture/c;->c(Lcom/google/googlenav/gesture/w;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private m()Z
    .locals 4

    iget-object v0, p0, Lcom/google/googlenav/gesture/w;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/gesture/l;

    invoke-virtual {v0}, Lcom/google/googlenav/gesture/l;->c()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/googlenav/gesture/w;->j:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/gesture/l;

    invoke-virtual {p0}, Lcom/google/googlenav/gesture/l;->c()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private n()V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v1, p0, Lcom/google/googlenav/gesture/w;->b:Landroid/view/MotionEvent;

    iput-object v1, p0, Lcom/google/googlenav/gesture/w;->c:Landroid/view/MotionEvent;

    iput-boolean v0, p0, Lcom/google/googlenav/gesture/w;->G:Z

    iput-boolean v0, p0, Lcom/google/googlenav/gesture/w;->J:Z

    iget-object v0, p0, Lcom/google/googlenav/gesture/w;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/google/googlenav/gesture/w;->o()V

    iget-object v0, p0, Lcom/google/googlenav/gesture/w;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/gesture/c;

    invoke-virtual {v0}, Lcom/google/googlenav/gesture/c;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p0}, Lcom/google/googlenav/gesture/c;->c(Lcom/google/googlenav/gesture/w;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private o()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/gesture/w;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/gesture/l;

    invoke-virtual {v0}, Lcom/google/googlenav/gesture/l;->f()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/gesture/w;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Lcom/google/googlenav/gesture/w;->l:F

    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 11

    const v3, 0xff00

    const/4 v2, 0x2

    const/high16 v10, -0x4080

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/googlenav/gesture/w;->J:Z

    if-nez v1, :cond_14

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/16 v1, 0x105

    if-ne v0, v1, :cond_9

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-lt v1, v2, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/gesture/w;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/googlenav/gesture/w;->D:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/google/googlenav/gesture/w;->E:F

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/googlenav/gesture/w;->D:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/google/googlenav/gesture/w;->F:F

    invoke-direct {p0}, Lcom/google/googlenav/gesture/w;->n()V

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/gesture/w;->b:Landroid/view/MotionEvent;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlenav/gesture/w;->C:J

    invoke-direct {p0, p1}, Lcom/google/googlenav/gesture/w;->c(Landroid/view/MotionEvent;)V

    iget v0, p0, Lcom/google/googlenav/gesture/w;->D:F

    iget v1, p0, Lcom/google/googlenav/gesture/w;->E:F

    iget v2, p0, Lcom/google/googlenav/gesture/w;->F:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-static {p1, v8}, Lcom/google/googlenav/gesture/w;->a(Landroid/view/MotionEvent;I)F

    move-result v5

    invoke-static {p1, v8}, Lcom/google/googlenav/gesture/w;->b(Landroid/view/MotionEvent;I)F

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
    move v3, v8

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
    move v0, v8

    :goto_1
    if-eqz v3, :cond_6

    if-eqz v0, :cond_6

    iput v10, p0, Lcom/google/googlenav/gesture/w;->l:F

    iput v10, p0, Lcom/google/googlenav/gesture/w;->m:F

    iput-boolean v8, p0, Lcom/google/googlenav/gesture/w;->G:Z

    :cond_3
    :goto_2
    return v8

    :cond_4
    move v3, v9

    goto :goto_0

    :cond_5
    move v0, v9

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/google/googlenav/gesture/w;->l:F

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/google/googlenav/gesture/w;->m:F

    iput-boolean v8, p0, Lcom/google/googlenav/gesture/w;->G:Z

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/google/googlenav/gesture/w;->l:F

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/google/googlenav/gesture/w;->m:F

    iput-boolean v8, p0, Lcom/google/googlenav/gesture/w;->G:Z

    goto :goto_2

    :cond_8
    iput-boolean v8, p0, Lcom/google/googlenav/gesture/w;->J:Z

    goto :goto_2

    :cond_9
    if-ne v0, v2, :cond_11

    iget-boolean v1, p0, Lcom/google/googlenav/gesture/w;->G:Z

    if-eqz v1, :cond_11

    iget v0, p0, Lcom/google/googlenav/gesture/w;->D:F

    iget v1, p0, Lcom/google/googlenav/gesture/w;->E:F

    iget v2, p0, Lcom/google/googlenav/gesture/w;->F:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-static {p1, v8}, Lcom/google/googlenav/gesture/w;->a(Landroid/view/MotionEvent;I)F

    move-result v5

    invoke-static {p1, v8}, Lcom/google/googlenav/gesture/w;->b(Landroid/view/MotionEvent;I)F

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
    move v3, v8

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
    move v0, v8

    :goto_4
    if-eqz v3, :cond_e

    if-eqz v0, :cond_e

    iput v10, p0, Lcom/google/googlenav/gesture/w;->l:F

    iput v10, p0, Lcom/google/googlenav/gesture/w;->m:F

    goto :goto_2

    :cond_c
    move v3, v9

    goto :goto_3

    :cond_d
    move v0, v9

    goto :goto_4

    :cond_e
    if-eqz v3, :cond_f

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/google/googlenav/gesture/w;->l:F

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/google/googlenav/gesture/w;->m:F

    goto/16 :goto_2

    :cond_f
    if-eqz v0, :cond_10

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/google/googlenav/gesture/w;->l:F

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/google/googlenav/gesture/w;->m:F

    goto/16 :goto_2

    :cond_10
    iput-boolean v9, p0, Lcom/google/googlenav/gesture/w;->G:Z

    iput-boolean v8, p0, Lcom/google/googlenav/gesture/w;->J:Z

    goto/16 :goto_2

    :cond_11
    const/4 v1, 0x6

    if-eq v0, v1, :cond_12

    const/16 v1, 0x106

    if-ne v0, v1, :cond_3

    :cond_12
    iget-boolean v1, p0, Lcom/google/googlenav/gesture/w;->G:Z

    if-eqz v1, :cond_3

    and-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_13

    move v0, v8

    :goto_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/google/googlenav/gesture/w;->l:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/google/googlenav/gesture/w;->m:F

    goto/16 :goto_2

    :cond_13
    move v0, v9

    goto :goto_5

    :cond_14
    invoke-direct {p0}, Lcom/google/googlenav/gesture/w;->j()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/gesture/w;->b(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    :cond_15
    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    invoke-direct {p0, p1}, Lcom/google/googlenav/gesture/w;->c(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/google/googlenav/gesture/w;->c:Landroid/view/MotionEvent;

    invoke-direct {p0, v0}, Lcom/google/googlenav/gesture/w;->b(Landroid/view/MotionEvent;)V

    iget v0, p0, Lcom/google/googlenav/gesture/w;->A:F

    iget v1, p0, Lcom/google/googlenav/gesture/w;->B:F

    div-float/2addr v0, v1

    const v1, 0x3f2b851f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    invoke-direct {p0}, Lcom/google/googlenav/gesture/w;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/gesture/w;->b:Landroid/view/MotionEvent;

    goto/16 :goto_2

    :sswitch_1
    invoke-direct {p0, p1}, Lcom/google/googlenav/gesture/w;->c(Landroid/view/MotionEvent;)V

    and-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_17

    move v0, v8

    :goto_6
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/google/googlenav/gesture/w;->l:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/google/googlenav/gesture/w;->m:F

    iget-boolean v0, p0, Lcom/google/googlenav/gesture/w;->G:Z

    if-nez v0, :cond_16

    invoke-direct {p0}, Lcom/google/googlenav/gesture/w;->l()V

    :cond_16
    invoke-direct {p0}, Lcom/google/googlenav/gesture/w;->n()V

    goto/16 :goto_2

    :cond_17
    move v0, v9

    goto :goto_6

    :sswitch_2
    iget-boolean v0, p0, Lcom/google/googlenav/gesture/w;->G:Z

    if-nez v0, :cond_18

    invoke-direct {p0}, Lcom/google/googlenav/gesture/w;->l()V

    :cond_18
    invoke-direct {p0}, Lcom/google/googlenav/gesture/w;->n()V

    goto/16 :goto_2

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

    iget v0, p0, Lcom/google/googlenav/gesture/w;->m:F

    return v0
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lcom/google/googlenav/gesture/w;->n:F

    return v0
.end method

.method public d()F
    .locals 1

    iget v0, p0, Lcom/google/googlenav/gesture/w;->o:F

    return v0
.end method

.method public e()F
    .locals 2

    iget v0, p0, Lcom/google/googlenav/gesture/w;->t:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/googlenav/gesture/w;->r:F

    iget v1, p0, Lcom/google/googlenav/gesture/w;->s:F

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/google/googlenav/gesture/w;->t:F

    :cond_0
    iget v0, p0, Lcom/google/googlenav/gesture/w;->t:F

    return v0
.end method

.method public f()F
    .locals 2

    iget v0, p0, Lcom/google/googlenav/gesture/w;->u:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/googlenav/gesture/w;->p:F

    iget v1, p0, Lcom/google/googlenav/gesture/w;->q:F

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/google/googlenav/gesture/w;->u:F

    :cond_0
    iget v0, p0, Lcom/google/googlenav/gesture/w;->u:F

    return v0
.end method

.method public g()F
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/gesture/w;->f:Lcom/google/googlenav/gesture/c;

    invoke-direct {p0, v0}, Lcom/google/googlenav/gesture/w;->a(Lcom/google/googlenav/gesture/c;)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/googlenav/gesture/w;->x:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/googlenav/gesture/w;->e()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/googlenav/gesture/w;->f()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/googlenav/gesture/w;->x:F

    :cond_1
    iget v0, p0, Lcom/google/googlenav/gesture/w;->x:F

    goto :goto_0
.end method

.method public h()F
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/gesture/w;->g:Lcom/google/googlenav/gesture/c;

    invoke-direct {p0, v0}, Lcom/google/googlenav/gesture/w;->a(Lcom/google/googlenav/gesture/c;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/googlenav/gesture/w;->H:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/googlenav/gesture/w;->w:F

    iget v1, p0, Lcom/google/googlenav/gesture/w;->v:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x3e80

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/googlenav/gesture/w;->y:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/gesture/w;->H:Z

    :cond_1
    iget v0, p0, Lcom/google/googlenav/gesture/w;->y:F

    goto :goto_0
.end method

.method public i()F
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/google/googlenav/gesture/w;->h:Lcom/google/googlenav/gesture/c;

    invoke-direct {p0, v0}, Lcom/google/googlenav/gesture/w;->a(Lcom/google/googlenav/gesture/c;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/googlenav/gesture/w;->I:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/gesture/w;->c:Landroid/view/MotionEvent;

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/gesture/w;->c:Landroid/view/MotionEvent;

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/gesture/w;->c:Landroid/view/MotionEvent;

    invoke-virtual {v2, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iget-object v3, p0, Lcom/google/googlenav/gesture/w;->c:Landroid/view/MotionEvent;

    invoke-virtual {v3, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/googlenav/gesture/l;->a(FFFF)F

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/gesture/w;->b:Landroid/view/MotionEvent;

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/gesture/w;->b:Landroid/view/MotionEvent;

    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget-object v3, p0, Lcom/google/googlenav/gesture/w;->b:Landroid/view/MotionEvent;

    invoke-virtual {v3, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget-object v4, p0, Lcom/google/googlenav/gesture/w;->b:Landroid/view/MotionEvent;

    invoke-virtual {v4, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/google/googlenav/gesture/l;->a(FFFF)F

    move-result v1

    invoke-static {v1, v0}, Lcom/google/googlenav/gesture/c;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/google/googlenav/gesture/w;->z:F

    iput-boolean v5, p0, Lcom/google/googlenav/gesture/w;->I:Z

    :cond_1
    iget v0, p0, Lcom/google/googlenav/gesture/w;->z:F

    goto :goto_0
.end method

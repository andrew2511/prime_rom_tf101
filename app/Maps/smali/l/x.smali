.class public Ll/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;
.implements Ll/w;


# instance fields
.field volatile a:J

.field final b:Ljava/lang/Runnable;

.field private final c:LB/c;

.field private final d:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final e:Lac/p;

.field private final f:LK/e;

.field private final g:LK/e;

.field private final h:Ll/J;

.field private i:J

.field private j:Ll/c;

.field private volatile k:Z

.field private l:Ll/c;

.field private m:Ll/c;

.field private n:Ll/c;

.field private o:Ll/s;


# direct methods
.method public constructor <init>(LB/c;Ll/k;Lac/p;LK/e;LK/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ll/N;

    invoke-direct {v0, p0}, Ll/N;-><init>(Ll/x;)V

    iput-object v0, p0, Ll/x;->b:Ljava/lang/Runnable;

    iput-object p3, p0, Ll/x;->e:Lac/p;

    iput-object p1, p0, Ll/x;->c:LB/c;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ll/x;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p4, p0, Ll/x;->f:LK/e;

    iput-object p5, p0, Ll/x;->g:LK/e;

    new-instance v0, Ll/J;

    invoke-direct {v0, p1, p3}, Ll/J;-><init>(LB/c;Lac/p;)V

    iput-object v0, p0, Ll/x;->h:Ll/J;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Ll/k;->a(Landroid/location/LocationListener;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Ll/x;)Lac/p;
    .locals 1

    iget-object v0, p0, Ll/x;->e:Lac/p;

    return-object v0
.end method

.method private a(Ll/c;)V
    .locals 2

    iput-object p1, p0, Ll/x;->l:Ll/c;

    iget-object v0, p0, Ll/x;->f:LK/e;

    new-instance v1, Ll/M;

    invoke-direct {v1, p0, p1}, Ll/M;-><init>(Ll/x;Ll/c;)V

    invoke-interface {v0, v1}, LK/e;->b(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Ll/g;)V
    .locals 6

    const/4 v4, 0x1

    invoke-virtual {p1}, Ll/g;->a()Ll/s;

    move-result-object v0

    invoke-static {v0}, Ll/i;->a(Ll/s;)Ll/i;

    move-result-object v1

    iget-object v0, p0, Ll/x;->h:Ll/J;

    invoke-virtual {v0, p1}, Ll/J;->a(Ll/g;)Ll/I;

    move-result-object v0

    iget-object v2, v0, Ll/I;->a:Ll/Q;

    sget-object v3, Ll/Q;->a:Ll/Q;

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Ll/x;->b()Ll/z;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ll/x;->a(Ll/i;Ll/z;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, v0, Ll/I;->a:Ll/Q;

    sget-object v3, Ll/Q;->b:Ll/Q;

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Ll/I;->b:LB/b;

    sget-object v1, Ll/i;->c:Ll/i;

    new-instance v3, LB/g;

    invoke-direct {v3, v2, v2}, LB/g;-><init>(LB/b;LB/b;)V

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ll/x;->a(Ll/i;LB/b;LB/g;ZZ)V

    goto :goto_0

    :cond_1
    iget-object v2, v0, Ll/I;->b:LB/b;

    new-instance v3, LB/g;

    invoke-direct {v3, v2, v2}, LB/g;-><init>(LB/b;LB/b;)V

    move-object v0, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Ll/x;->a(Ll/i;LB/b;LB/g;ZZ)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Ll/x;->o:Ll/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ll/x;->o:Ll/s;

    invoke-virtual {v0}, Ll/s;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Ll/x;)Ll/c;
    .locals 1

    iget-object v0, p0, Ll/x;->n:Ll/c;

    return-object v0
.end method

.method static c()J
    .locals 2

    invoke-static {}, LK/m;->a()LK/l;

    move-result-object v0

    iget v0, v0, LK/l;->s:I

    int-to-long v0, v0

    return-wide v0
.end method

.method static synthetic c(Ll/x;)V
    .locals 0

    invoke-direct {p0}, Ll/x;->i()V

    return-void
.end method

.method static d()J
    .locals 2

    invoke-static {}, LK/m;->a()LK/l;

    move-result-object v0

    iget v0, v0, LK/l;->t:I

    int-to-long v0, v0

    return-wide v0
.end method

.method static synthetic d(Ll/x;)Z
    .locals 1

    invoke-direct {p0}, Ll/x;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic e(Ll/x;)LK/e;
    .locals 1

    iget-object v0, p0, Ll/x;->g:LK/e;

    return-object v0
.end method

.method private e()Z
    .locals 14

    iget-object v0, p0, Ll/x;->j:Ll/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ll/x;->j:Ll/c;

    iget-object v0, v0, Ll/c;->d:LB/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ll/x;->n:Ll/c;

    iget-wide v0, v0, Ll/c;->a:J

    iget-object v2, p0, Ll/x;->j:Ll/c;

    iget-wide v2, v2, Ll/c;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    iget-object v0, p0, Ll/x;->n:Ll/c;

    :goto_0
    iget-object v1, v0, Ll/c;->d:LB/b;

    iget-object v2, p0, Ll/x;->c:LB/c;

    iget-object v3, v1, LB/b;->a:LB/l;

    invoke-virtual {v2, v3}, LB/c;->e(LB/l;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_1
    iget-object v0, p0, Ll/x;->j:Ll/c;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Ll/x;->e:Lac/p;

    invoke-interface {v2}, Lac/p;->a()J

    move-result-wide v2

    iget-object v4, p0, Ll/x;->c:LB/c;

    iget-object v5, v1, LB/b;->a:LB/l;

    invoke-virtual {v4, v5}, LB/c;->a(LB/l;)LB/u;

    move-result-object v4

    invoke-virtual {v4}, LB/u;->m()I

    move-result v5

    int-to-long v5, v5

    const-wide/16 v7, 0x3e8

    invoke-virtual {v4}, LB/u;->y()I

    move-result v4

    int-to-long v9, v4

    sub-long/2addr v9, v5

    mul-long/2addr v7, v9

    iget v4, v1, LB/b;->b:F

    const/4 v9, 0x0

    cmpl-float v4, v4, v9

    if-nez v4, :cond_3

    iget-wide v9, p0, Ll/x;->i:J

    sub-long v9, v2, v9

    const-wide/16 v11, 0x3e8

    mul-long v4, v5, v11

    cmp-long v4, v9, v4

    if-gez v4, :cond_3

    const/4 v0, 0x0

    :goto_2
    iget v2, v1, LB/b;->b:F

    add-float/2addr v0, v2

    const/high16 v2, 0x3f80

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_7

    iget-object v0, p0, Ll/x;->c:LB/c;

    iget-object v2, v1, LB/b;->a:LB/l;

    invoke-virtual {v0, v2}, LB/c;->e(LB/l;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/high16 v0, 0x3f80

    iget-object v1, v1, LB/b;->a:LB/l;

    move-object v13, v1

    move v1, v0

    move-object v0, v13

    :goto_3
    new-instance v2, LB/b;

    invoke-direct {v2, v0, v1}, LB/b;-><init>(LB/l;F)V

    new-instance v3, LB/g;

    iget-object v0, p0, Ll/x;->n:Ll/c;

    iget-object v0, v0, Ll/c;->d:LB/b;

    invoke-direct {v3, v0, v2}, LB/g;-><init>(LB/b;LB/b;)V

    sget-object v1, Ll/i;->e:Ll/i;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ll/x;->a(Ll/i;LB/b;LB/g;ZZ)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    long-to-float v4, v7

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    iget-wide v4, v0, Ll/c;->a:J

    sub-long/2addr v2, v4

    long-to-float v0, v2

    long-to-float v2, v7

    div-float/2addr v0, v2

    goto :goto_2

    :cond_4
    const/high16 v0, 0x3f80

    goto :goto_2

    :cond_5
    iget-object v0, p0, Ll/x;->c:LB/c;

    iget-object v2, v1, LB/b;->a:LB/l;

    invoke-virtual {v0, v2}, LB/c;->g(LB/l;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_6
    const/4 v0, 0x0

    new-instance v2, LB/r;

    iget-object v3, p0, Ll/x;->c:LB/c;

    invoke-direct {v2, v3}, LB/r;-><init>(LB/c;)V

    iget-object v1, v1, LB/b;->a:LB/l;

    invoke-virtual {v2, v1}, LB/r;->a(LB/l;)LB/r;

    move-result-object v1

    invoke-virtual {v1}, LB/r;->a()LB/l;

    move-result-object v1

    move-object v13, v1

    move v1, v0

    move-object v0, v13

    goto :goto_3

    :cond_7
    iget-object v1, v1, LB/b;->a:LB/l;

    move-object v13, v1

    move v1, v0

    move-object v0, v13

    goto :goto_3
.end method

.method static synthetic f(Ll/x;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    iget-object v0, p0, Ll/x;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method private f()V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Ll/x;->m:Ll/c;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Ll/x;->m:Ll/c;

    iget-object v0, v0, Ll/c;->d:LB/b;

    iget-object v1, p0, Ll/x;->c:LB/c;

    iget-object v2, v0, LB/b;->a:LB/l;

    invoke-virtual {v1, v2}, LB/c;->e(LB/l;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v2, LB/b;

    iget-object v0, v0, LB/b;->a:LB/l;

    const v1, 0x3c23d70a

    invoke-direct {v2, v0, v1}, LB/b;-><init>(LB/l;F)V

    iget-object v0, p0, Ll/x;->m:Ll/c;

    iget-object v0, v0, Ll/c;->e:LB/g;

    iget-object v0, v0, LB/g;->b:LB/b;

    invoke-virtual {v0, v2}, LB/b;->a(LB/b;)I

    move-result v0

    if-gez v0, :cond_2

    new-instance v0, LB/g;

    iget-object v1, p0, Ll/x;->m:Ll/c;

    iget-object v1, v1, Ll/c;->e:LB/g;

    iget-object v1, v1, LB/g;->a:LB/b;

    invoke-direct {v0, v1, v2}, LB/g;-><init>(LB/b;LB/b;)V

    move-object v3, v0

    :goto_1
    sget-object v1, Ll/i;->e:Ll/i;

    move-object v0, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Ll/x;->a(Ll/i;LB/b;LB/g;ZZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ll/x;->m:Ll/c;

    iget-object v0, v0, Ll/c;->e:LB/g;

    move-object v3, v0

    goto :goto_1
.end method

.method private g()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Ll/x;->n:Ll/c;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ll/x;->l:Ll/c;

    iget-object v0, v0, Ll/c;->c:Ll/C;

    sget-object v1, Ll/C;->b:Ll/C;

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ll/x;->c:LB/c;

    iget-object v1, p0, Ll/x;->n:Ll/c;

    iget-object v1, v1, Ll/c;->d:LB/b;

    iget-object v1, v1, LB/b;->a:LB/l;

    iget v1, v1, LB/l;->a:I

    invoke-virtual {v0, v1}, LB/c;->a(I)LB/k;

    move-result-object v0

    invoke-virtual {v0}, LB/k;->b()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ll/x;->c:LB/c;

    iget-object v1, p0, Ll/x;->n:Ll/c;

    iget-object v1, v1, Ll/c;->d:LB/b;

    iget-object v1, v1, LB/b;->a:LB/l;

    invoke-virtual {v0, v1}, LB/c;->a(LB/l;)LB/u;

    move-result-object v0

    sget-object v1, Ll/O;->a:[I

    invoke-virtual {v0}, LB/u;->p()LB/h;

    move-result-object v0

    invoke-virtual {v0}, LB/h;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    move v0, v2

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Ll/x;->n:Ll/c;

    iget-object v0, v0, Ll/c;->d:LB/b;

    iget v0, v0, LB/b;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :pswitch_1
    move v0, v3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private h()V
    .locals 2

    invoke-direct {p0}, Ll/x;->i()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ll/x;->k:Z

    iget-object v0, p0, Ll/x;->e:Lac/p;

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    iput-wide v0, p0, Ll/x;->a:J

    iget-object v0, p0, Ll/x;->g:LK/e;

    iget-object v1, p0, Ll/x;->b:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, LK/e;->b(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Ll/x;->g:LK/e;

    iget-object v1, p0, Ll/x;->b:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, LK/e;->a(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ll/x;->k:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ll/x;->a:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-direct {p0}, Ll/x;->i()V

    return-void
.end method

.method public a(LB/b;)V
    .locals 6

    const/4 v4, 0x1

    iget v0, p1, LB/b;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Ll/x;->e:Lac/p;

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    iput-wide v0, p0, Ll/x;->i:J

    :cond_0
    sget-object v1, Ll/i;->f:Ll/i;

    new-instance v3, LB/g;

    invoke-direct {v3, p1, p1}, LB/g;-><init>(LB/b;LB/b;)V

    move-object v0, p0

    move-object v2, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Ll/x;->a(Ll/i;LB/b;LB/g;ZZ)V

    return-void
.end method

.method a(Ll/i;)V
    .locals 2

    iget-object v0, p0, Ll/x;->e:Lac/p;

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Ll/c;->a(JLl/i;)Ll/c;

    move-result-object v0

    invoke-direct {p0, v0}, Ll/x;->a(Ll/c;)V

    return-void
.end method

.method a(Ll/i;LB/b;LB/g;ZZ)V
    .locals 6

    invoke-virtual {p1}, Ll/i;->a()Ll/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Ll/x;->o:Ll/s;

    :cond_0
    iget-object v0, p0, Ll/x;->e:Lac/p;

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    iget-object v2, p0, Ll/x;->m:Ll/c;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ll/x;->m:Ll/c;

    iget-object v2, v2, Ll/c;->d:LB/b;

    iget-object v2, v2, LB/b;->a:LB/l;

    iget-object v3, p2, LB/b;->a:LB/l;

    invoke-virtual {v2, v3}, LB/l;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iput-wide v0, p0, Ll/x;->i:J

    :cond_2
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    invoke-static/range {v0 .. v5}, Ll/c;->a(JLl/i;LB/b;LB/g;Z)Ll/c;

    move-result-object v0

    iput-object v0, p0, Ll/x;->m:Ll/c;

    if-eqz p4, :cond_3

    iget-object v0, p0, Ll/x;->m:Ll/c;

    iput-object v0, p0, Ll/x;->n:Ll/c;

    :cond_3
    sget-object v0, Ll/i;->e:Ll/i;

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Ll/x;->m:Ll/c;

    iput-object v0, p0, Ll/x;->j:Ll/c;

    :cond_4
    iget-object v0, p0, Ll/x;->m:Ll/c;

    invoke-direct {p0, v0}, Ll/x;->a(Ll/c;)V

    return-void
.end method

.method a(Ll/i;Ll/z;)V
    .locals 2

    iget-object v0, p0, Ll/x;->e:Lac/p;

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Ll/c;->a(JLl/i;Ll/z;)Ll/c;

    move-result-object v0

    invoke-direct {p0, v0}, Ll/x;->a(Ll/c;)V

    return-void
.end method

.method public a(Ll/v;)V
    .locals 1

    iget-object v0, p0, Ll/x;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method b()Ll/z;
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Ll/x;->n:Ll/c;

    if-nez v0, :cond_0

    sget-object v0, Ll/z;->c:Ll/z;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ll/x;->n:Ll/c;

    iget-object v0, v0, Ll/c;->d:LB/b;

    iget-object v0, v0, LB/b;->a:LB/l;

    iget-object v1, p0, Ll/x;->c:LB/c;

    invoke-virtual {v1, v0}, LB/c;->a(LB/l;)LB/u;

    move-result-object v1

    iget-object v2, p0, Ll/x;->e:Lac/p;

    invoke-interface {v2}, Lac/p;->a()J

    move-result-wide v2

    iget-object v4, p0, Ll/x;->n:Ll/c;

    iget-wide v4, v4, Ll/c;->a:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1}, LB/u;->y()I

    move-result v4

    invoke-virtual {v1}, LB/u;->F()I

    move-result v5

    invoke-virtual {v1}, LB/u;->x()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    :cond_1
    sget-object v0, Ll/z;->c:Ll/z;

    goto :goto_0

    :cond_2
    int-to-float v4, v4

    iget-object v6, p0, Ll/x;->n:Ll/c;

    iget-object v6, v6, Ll/c;->d:LB/b;

    iget v6, v6, LB/b;->b:F

    mul-float/2addr v4, v6

    float-to-int v4, v4

    sub-int v4, v5, v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    sget-object v0, Ll/z;->c:Ll/z;

    goto :goto_0

    :cond_3
    sget-object v2, Ll/O;->a:[I

    invoke-virtual {v1}, LB/u;->p()LB/h;

    move-result-object v1

    invoke-virtual {v1}, LB/h;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    sget-object v0, Ll/z;->a:Ll/z;

    goto :goto_0

    :pswitch_0
    sget-object v0, Ll/z;->b:Ll/z;

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Ll/x;->c:LB/c;

    invoke-virtual {v1, v0}, LB/c;->d(LB/l;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, v7

    :goto_1
    if-eqz v0, :cond_6

    sget-object v0, Ll/z;->b:Ll/z;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Ll/x;->c:LB/c;

    iget v0, v0, LB/l;->a:I

    sub-int/2addr v0, v7

    invoke-virtual {v1, v0}, LB/c;->a(I)LB/k;

    move-result-object v0

    invoke-virtual {v0, v8}, LB/k;->a(I)LB/u;

    move-result-object v0

    invoke-virtual {v0}, LB/u;->p()LB/h;

    move-result-object v0

    sget-object v1, LB/h;->a:LB/h;

    if-ne v0, v1, :cond_5

    move v0, v7

    goto :goto_1

    :cond_5
    move v0, v8

    goto :goto_1

    :cond_6
    sget-object v0, Ll/z;->a:Ll/z;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b(Ll/v;)V
    .locals 1

    iget-object v0, p0, Ll/x;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    invoke-direct {p0}, Ll/x;->i()V

    instance-of v0, p1, Ll/g;

    if-eqz v0, :cond_1

    check-cast p1, Ll/g;

    invoke-virtual {p1}, Ll/g;->a()Ll/s;

    move-result-object v0

    sget-object v1, Ll/s;->a:Ll/s;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Ll/g;->a()Ll/s;

    move-result-object v0

    sget-object v1, Ll/s;->b:Ll/s;

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Ll/x;->a(Ll/g;)V

    :cond_1
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    const-string v0, "integrated_location_provider"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ll/x;->h()V

    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    if-ne p2, v1, :cond_1

    invoke-direct {p0, p1}, Ll/x;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Ll/x;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Ll/x;->h()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Ll/x;->o:Ll/s;

    invoke-static {v0}, Ll/i;->a(Ll/s;)Ll/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Ll/x;->a(Ll/i;)V

    goto :goto_0

    :cond_3
    const-string v0, "wifi_provider"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "cell_provider"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_4
    if-ne p2, v1, :cond_1

    invoke-direct {p0, p1}, Ll/x;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Ll/x;->f()V

    invoke-direct {p0}, Ll/x;->h()V

    goto :goto_0
.end method

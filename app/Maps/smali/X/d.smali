.class public LX/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:LX/e;

.field private c:J

.field private d:LX/a;

.field private e:LX/b;

.field private final f:Lao/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/google/googlenav/wallpaper/b;Lf/v;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX/d;->a:Landroid/content/Context;

    new-instance v0, LX/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LX/a;-><init>(LX/d;LX/f;)V

    iput-object v0, p0, LX/d;->d:LX/a;

    new-instance v0, Lao/d;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lao/d;-><init>(Landroid/content/Context;IILcom/google/googlenav/wallpaper/b;Lf/v;)V

    iput-object v0, p0, LX/d;->f:Lao/d;

    return-void
.end method

.method static synthetic a(LX/d;J)J
    .locals 0

    iput-wide p1, p0, LX/d;->c:J

    return-wide p1
.end method

.method static synthetic a(LX/d;LX/e;)LX/e;
    .locals 0

    iput-object p1, p0, LX/d;->b:LX/e;

    return-object p1
.end method

.method static synthetic a(LX/d;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, LX/d;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a()Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->c()J

    move-result-wide v0

    iget-wide v2, p0, LX/d;->c:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    move v0, v5

    :goto_0
    iget-object v1, p0, LX/d;->d:LX/a;

    invoke-virtual {v1}, LX/a;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_2

    move v1, v5

    :goto_1
    iget-object v2, p0, LX/d;->d:LX/a;

    invoke-virtual {v2}, LX/a;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v2, v3, :cond_0

    new-instance v2, LX/a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, LX/a;-><init>(LX/d;LX/f;)V

    iput-object v2, p0, LX/d;->d:LX/a;

    :cond_0
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    move v0, v5

    :goto_2
    return v0

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_1

    :cond_3
    move v0, v4

    goto :goto_2
.end method

.method static synthetic a(LX/d;LX/b;)Z
    .locals 1

    invoke-direct {p0, p1}, LX/d;->b(LX/b;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(LX/d;)LX/b;
    .locals 1

    iget-object v0, p0, LX/d;->e:LX/b;

    return-object v0
.end method

.method private b(LX/b;)Z
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, LX/b;->a:LX/b;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(LX/d;)Lao/d;
    .locals 1

    iget-object v0, p0, LX/d;->f:Lao/d;

    return-object v0
.end method


# virtual methods
.method public a(F)V
    .locals 1

    iget-object v0, p0, LX/d;->f:Lao/d;

    invoke-virtual {v0, p1}, Lao/d;->a(F)V

    return-void
.end method

.method public a(II)V
    .locals 1

    iget-object v0, p0, LX/d;->f:Lao/d;

    invoke-virtual {v0, p1, p2}, Lao/d;->a(II)V

    return-void
.end method

.method public a(LX/b;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, LX/d;->e:LX/b;

    invoke-direct {p0, p1}, LX/d;->b(LX/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LX/d;->f:Lao/d;

    new-instance v1, LX/e;

    invoke-direct {v1, p1, v2, v2}, LX/e;-><init>(LX/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lao/d;->a(LX/e;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, LX/d;->b:LX/e;

    if-nez v0, :cond_1

    iget-object v0, p0, LX/d;->f:Lao/d;

    invoke-virtual {v0, v2}, Lao/d;->a(LX/e;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, LX/d;->f:Lao/d;

    iget-object v1, p0, LX/d;->b:LX/e;

    invoke-virtual {v0, v1}, Lao/d;->a(LX/e;)V

    goto :goto_0
.end method

.method public a(Landroid/graphics/Canvas;IIZ)V
    .locals 2

    invoke-direct {p0}, LX/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, LX/d;->d:LX/a;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, LX/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    iget-object v0, p0, LX/d;->b:LX/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, LX/d;->b:LX/e;

    iget-object v0, v0, LX/e;->a:LX/b;

    if-eqz v0, :cond_1

    sget-object v0, LX/b;->a:LX/b;

    iget-object v1, p0, LX/d;->b:LX/e;

    iget-object v1, v1, LX/e;->a:LX/b;

    if-ne v0, v1, :cond_3

    :cond_1
    iget-object v0, p0, LX/d;->e:LX/b;

    if-eqz v0, :cond_2

    sget-object v0, LX/b;->a:LX/b;

    iget-object v1, p0, LX/d;->e:LX/b;

    if-ne v0, v1, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, LX/d;->f:Lao/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lao/d;->a(Landroid/graphics/Canvas;IIZ)V

    goto :goto_0
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, LX/d;->f:Lao/d;

    invoke-virtual {v0, p1}, Lao/d;->a(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, LX/d;->f:Lao/d;

    invoke-virtual {v0, p1}, Lao/d;->a(Z)V

    return-void
.end method

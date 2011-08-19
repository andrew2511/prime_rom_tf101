.class public Lv/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lf/h;

.field private e:J

.field private f:I

.field private g:I

.field private h:Ljava/lang/Boolean;

.field private i:Ljava/lang/Boolean;

.field private j:Ljava/lang/Boolean;

.field private k:J


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lv/d;->a:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lv/d;->e:J

    iput v2, p0, Lv/d;->f:I

    iput v2, p0, Lv/d;->g:I

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lv/d;->k:J

    return-void
.end method

.method public constructor <init>(Law/e;)V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lv/d;->a:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lv/d;->e:J

    iput v2, p0, Lv/d;->f:I

    iput v2, p0, Lv/d;->g:I

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lv/d;->k:J

    invoke-virtual {p1}, Law/e;->c()Law/f;

    move-result-object v0

    sget-object v1, Ls/i;->a:Law/f;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lv/d;->a(Law/e;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lv/d;->b(Law/e;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Law/e;Z)V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lv/d;->a:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lv/d;->e:J

    iput v2, p0, Lv/d;->f:I

    iput v2, p0, Lv/d;->g:I

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lv/d;->k:J

    iput-object p1, p0, Lv/d;->a:Ljava/lang/String;

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lv/d;->h:Ljava/lang/Boolean;

    iput-object p2, p0, Lv/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lv/d;->c:Ljava/lang/String;

    invoke-static {p4}, Lf/I;->c(Law/e;)Lf/h;

    move-result-object v0

    iput-object v0, p0, Lv/d;->d:Lf/h;

    return-void
.end method

.method private static a(Law/e;I)Ljava/lang/Boolean;
    .locals 1

    invoke-virtual {p0, p1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Law/e;->b(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Law/e;)V
    .locals 2

    const/4 v1, 0x5

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lv/d;->a:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lv/d;->a(Law/e;I)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lv/d;->h:Ljava/lang/Boolean;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lv/d;->b:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lv/d;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-static {v0}, Lf/I;->c(Law/e;)Lf/h;

    move-result-object v0

    iput-object v0, p0, Lv/d;->d:Lf/h;

    :cond_0
    return-void
.end method

.method private static a(Law/e;ILjava/lang/Boolean;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Law/e;->b(IZ)V

    :cond_0
    return-void
.end method

.method private b(Law/e;)V
    .locals 4

    const/4 v1, 0x3

    const/4 v3, -0x1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lv/d;->a:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lv/d;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-static {v0}, Lf/I;->c(Law/e;)Lf/h;

    move-result-object v0

    iput-object v0, p0, Lv/d;->d:Lf/h;

    :cond_0
    const/4 v0, 0x4

    const-wide/16 v1, -0x1

    invoke-static {p1, v0, v1, v2}, Law/b;->a(Law/e;IJ)J

    move-result-wide v0

    iput-wide v0, p0, Lv/d;->e:J

    const/4 v0, 0x5

    invoke-static {p1, v0, v3}, Law/b;->c(Law/e;II)I

    move-result v0

    iput v0, p0, Lv/d;->f:I

    const/4 v0, 0x6

    invoke-static {p1, v0}, Lv/d;->a(Law/e;I)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lv/d;->h:Ljava/lang/Boolean;

    const/4 v0, 0x7

    invoke-static {p1, v0}, Lv/d;->a(Law/e;I)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lv/d;->i:Ljava/lang/Boolean;

    const/16 v0, 0x8

    invoke-static {p1, v0, v3}, Law/b;->c(Law/e;II)I

    move-result v0

    iput v0, p0, Lv/d;->g:I

    const/16 v0, 0x9

    invoke-static {p1, v0}, Lv/d;->a(Law/e;I)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lv/d;->j:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lv/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lv/d;->f:I

    return-void
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lv/d;->e:J

    return-void
.end method

.method public a(Lf/h;)V
    .locals 0

    iput-object p1, p0, Lv/d;->d:Lf/h;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lv/d;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lv/d;->h:Ljava/lang/Boolean;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lv/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(J)V
    .locals 0

    iput-wide p1, p0, Lv/d;->k:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lv/d;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lv/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lf/h;
    .locals 1

    iget-object v0, p0, Lv/d;->d:Lf/h;

    return-object v0
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Lv/d;->e:J

    return-wide v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lv/d;->f:I

    return v0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lv/d;->h:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv/d;->h:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Law/e;
    .locals 3

    new-instance v0, Law/e;

    sget-object v1, Ls/i;->a:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lv/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lv/d;->h:Ljava/lang/Boolean;

    invoke-static {v0, v1, v2}, Lv/d;->a(Law/e;ILjava/lang/Boolean;)V

    iget-object v1, p0, Lv/d;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    iget-object v2, p0, Lv/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lv/d;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    iget-object v2, p0, Lv/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lv/d;->d:Lf/h;

    if-eqz v1, :cond_2

    const/4 v1, 0x5

    iget-object v2, p0, Lv/d;->d:Lf/h;

    invoke-static {v2}, Lf/I;->d(Lf/h;)Law/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILaw/e;)V

    :cond_2
    return-object v0
.end method

.method public i()Law/e;
    .locals 6

    const/4 v5, -0x1

    new-instance v0, Law/e;

    sget-object v1, Ls/u;->a:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lv/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    iget-object v1, p0, Lv/d;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    iget-object v2, p0, Lv/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lv/d;->d:Lf/h;

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    iget-object v2, p0, Lv/d;->d:Lf/h;

    invoke-static {v2}, Lf/I;->d(Lf/h;)Law/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILaw/e;)V

    :cond_1
    iget-wide v1, p0, Lv/d;->e:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    iget-wide v2, p0, Lv/d;->e:J

    invoke-virtual {v0, v1, v2, v3}, Law/e;->b(IJ)V

    :cond_2
    iget v1, p0, Lv/d;->f:I

    if-eq v1, v5, :cond_3

    const/4 v1, 0x5

    iget v2, p0, Lv/d;->f:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    :cond_3
    const/4 v1, 0x6

    iget-object v2, p0, Lv/d;->h:Ljava/lang/Boolean;

    invoke-static {v0, v1, v2}, Lv/d;->a(Law/e;ILjava/lang/Boolean;)V

    const/4 v1, 0x7

    iget-object v2, p0, Lv/d;->i:Ljava/lang/Boolean;

    invoke-static {v0, v1, v2}, Lv/d;->a(Law/e;ILjava/lang/Boolean;)V

    iget v1, p0, Lv/d;->g:I

    if-eq v1, v5, :cond_4

    const/16 v1, 0x8

    iget v2, p0, Lv/d;->g:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    :cond_4
    const/16 v1, 0x9

    iget-object v2, p0, Lv/d;->j:Ljava/lang/Boolean;

    invoke-static {v0, v1, v2}, Lv/d;->a(Law/e;ILjava/lang/Boolean;)V

    return-object v0
.end method

.method public j()J
    .locals 2

    iget-wide v0, p0, Lv/d;->k:J

    return-wide v0
.end method

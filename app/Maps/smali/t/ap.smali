.class public Lt/ap;
.super Ljava/lang/Object;


# instance fields
.field private final a:LG/i;

.field private final b:LG/Q;

.field private final c:LG/Q;

.field private final d:LG/S;

.field private final e:F

.field private final f:Z

.field private final g:Z

.field private final h:I

.field private final i:Ljava/util/ArrayList;

.field private j:Ljava/lang/Object;


# direct methods
.method constructor <init>(LG/i;LG/Q;LG/Q;ZZI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/ap;->a:LG/i;

    iput-object p2, p0, Lt/ap;->b:LG/Q;

    iput-object p3, p0, Lt/ap;->c:LG/Q;

    iput-boolean p4, p0, Lt/ap;->f:Z

    iput-boolean p5, p0, Lt/ap;->g:Z

    iput p6, p0, Lt/ap;->h:I

    invoke-static {p2, p3}, LG/S;->a(LG/Q;LG/Q;)LG/S;

    move-result-object v0

    iget v1, p0, Lt/ap;->h:I

    invoke-virtual {v0, v1}, LG/S;->b(I)LG/S;

    move-result-object v0

    iput-object v0, p0, Lt/ap;->d:LG/S;

    iget-object v0, p0, Lt/ap;->b:LG/Q;

    iget-object v1, p0, Lt/ap;->c:LG/Q;

    invoke-static {v0, v1}, LG/H;->b(LG/Q;LG/Q;)F

    move-result v0

    iput v0, p0, Lt/ap;->e:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lt/ap;->i:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lt/ap;)LG/Q;
    .locals 1

    iget-object v0, p0, Lt/ap;->c:LG/Q;

    return-object v0
.end method

.method static a(Lt/ap;Lt/ap;)Z
    .locals 8

    const/16 v7, 0x80

    const/16 v6, 0x50

    const/4 v5, 0x4

    const/4 v4, 0x0

    iget v0, p0, Lt/ap;->e:F

    iget v1, p1, Lt/ap;->e:F

    invoke-static {v0, v1}, LG/H;->a(FF)F

    move-result v0

    const/high16 v1, 0x4307

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lt/ap;->a:LG/i;

    invoke-virtual {v0}, LG/i;->e()I

    move-result v0

    iget-object v1, p1, Lt/ap;->a:LG/i;

    invoke-virtual {v1}, LG/i;->e()I

    move-result v1

    iget-object v2, p0, Lt/ap;->a:LG/i;

    invoke-virtual {v2, v5}, LG/i;->d(I)Z

    move-result v2

    iget-object v3, p1, Lt/ap;->a:LG/i;

    invoke-virtual {v3, v5}, LG/i;->d(I)Z

    move-result v3

    if-lt v0, v7, :cond_1

    if-gt v1, v6, :cond_1

    if-nez v3, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    if-lt v1, v7, :cond_2

    if-gt v0, v6, :cond_2

    if-nez v2, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    if-nez v3, :cond_3

    iget-boolean v0, p0, Lt/ap;->g:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lt/ap;->f:Z

    if-nez v0, :cond_3

    move v0, v4

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    if-nez v2, :cond_4

    iget-boolean v0, p1, Lt/ap;->g:Z

    if-nez v0, :cond_4

    iget-boolean v0, p1, Lt/ap;->f:Z

    if-nez v0, :cond_4

    move v0, v4

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lt/ap;)LG/Q;
    .locals 1

    iget-object v0, p0, Lt/ap;->b:LG/Q;

    return-object v0
.end method

.method static synthetic c(Lt/ap;)LG/i;
    .locals 1

    iget-object v0, p0, Lt/ap;->a:LG/i;

    return-object v0
.end method

.method static synthetic d(Lt/ap;)F
    .locals 1

    iget v0, p0, Lt/ap;->e:F

    return v0
.end method

.method static synthetic e(Lt/ap;)LG/S;
    .locals 1

    iget-object v0, p0, Lt/ap;->d:LG/S;

    return-object v0
.end method

.method static synthetic f(Lt/ap;)Z
    .locals 1

    iget-boolean v0, p0, Lt/ap;->g:Z

    return v0
.end method

.method static synthetic g(Lt/ap;)Z
    .locals 1

    iget-boolean v0, p0, Lt/ap;->f:Z

    return v0
.end method

.method static synthetic h(Lt/ap;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lt/ap;->i:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lt/ap;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lt/ap;->j:Ljava/lang/Object;

    return-void
.end method

.method public b()LG/i;
    .locals 1

    iget-object v0, p0, Lt/ap;->a:LG/i;

    return-object v0
.end method

.method public c()LG/Q;
    .locals 1

    iget-object v0, p0, Lt/ap;->b:LG/Q;

    return-object v0
.end method

.method public d()LG/Q;
    .locals 1

    iget-object v0, p0, Lt/ap;->c:LG/Q;

    return-object v0
.end method

.method public e()F
    .locals 1

    iget v0, p0, Lt/ap;->e:F

    return v0
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lt/ap;->j:Ljava/lang/Object;

    return-object v0
.end method

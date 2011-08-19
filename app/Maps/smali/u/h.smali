.class public Lu/h;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field private static final b:Lu/h;


# instance fields
.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Lf/h;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Lcom/google/googlenav/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lu/h;->b(Lf/h;)Lu/h;

    move-result-object v0

    sput-object v0, Lu/h;->b:Lu/h;

    const/4 v0, 0x1

    sput-boolean v0, Lu/h;->a:Z

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Lf/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lu/h;->c:I

    iput-object p2, p0, Lu/h;->d:Ljava/lang/String;

    iput-object p3, p0, Lu/h;->e:Lf/h;

    iput-object p4, p0, Lu/h;->f:Ljava/lang/String;

    iput-object p5, p0, Lu/h;->g:Ljava/lang/String;

    iput-object p6, p0, Lu/h;->h:Ljava/lang/String;

    iput-object p7, p0, Lu/h;->i:Lcom/google/googlenav/c;

    return-void
.end method

.method public static a(Lu/h;)Law/e;
    .locals 3

    new-instance v0, Law/e;

    sget-object v1, Ls/v;->d:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lu/h;->f()Lf/h;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {p0}, Lu/h;->f()Lf/h;

    move-result-object v2

    invoke-static {v2}, Lf/I;->d(Lf/h;)Law/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILaw/e;)V

    :cond_2
    invoke-virtual {p0}, Lu/h;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    invoke-virtual {p0}, Lu/h;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lu/h;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    invoke-virtual {p0}, Lu/h;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static a()Lu/h;
    .locals 1

    sget-object v0, Lu/h;->b:Lu/h;

    return-object v0
.end method

.method private static a(ILcom/google/googlenav/c;)Lu/h;
    .locals 8

    new-instance v0, Lu/h;

    invoke-virtual {p1}, Lcom/google/googlenav/c;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/googlenav/c;->h()Lf/h;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/googlenav/c;->K()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/googlenav/c;->ba()Ljava/lang/String;

    move-result-object v6

    move v1, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lu/h;-><init>(ILjava/lang/String;Lf/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/c;)V

    return-object v0
.end method

.method public static a(Law/e;Law/e;)Lu/h;
    .locals 8

    const/4 v5, 0x0

    const/4 v7, 0x7

    const/4 v1, 0x3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-static {v0}, Lf/I;->c(Law/e;)Lf/h;

    move-result-object v3

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v7}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v7}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/c;->a(Law/e;)Lcom/google/googlenav/c;

    move-result-object v0

    move-object v7, v0

    :goto_0
    new-instance v0, Lu/h;

    invoke-direct/range {v0 .. v7}, Lu/h;-><init>(ILjava/lang/String;Lf/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/c;)V

    return-object v0

    :cond_0
    move-object v7, v5

    goto :goto_0
.end method

.method public static a(Lcom/google/googlenav/c;)Lu/h;
    .locals 1

    const/4 v0, 0x7

    invoke-static {v0, p0}, Lu/h;->a(ILcom/google/googlenav/c;)Lu/h;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lf/h;)Lu/h;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lu/h;->a(Lf/h;Ljava/lang/String;)Lu/h;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lf/h;Ljava/lang/String;)Lu/h;
    .locals 8

    const/4 v2, 0x0

    new-instance v0, Lu/h;

    const/4 v1, 0x1

    move-object v3, p0

    move-object v4, v2

    move-object v5, p1

    move-object v6, v2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lu/h;-><init>(ILjava/lang/String;Lf/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/c;)V

    return-object v0
.end method

.method public static a(Lf/h;Ljava/lang/String;Ljava/lang/String;)Lu/h;
    .locals 8

    const/4 v4, 0x0

    new-instance v0, Lu/h;

    const/4 v1, 0x1

    move-object v2, p2

    move-object v3, p0

    move-object v5, p1

    move-object v6, v4

    move-object v7, v4

    invoke-direct/range {v0 .. v7}, Lu/h;-><init>(ILjava/lang/String;Lf/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/c;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lu/h;
    .locals 8

    const/4 v3, 0x0

    new-instance v0, Lu/h;

    const/4 v1, 0x0

    move-object v2, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lu/h;-><init>(ILjava/lang/String;Lf/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/c;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lf/h;)Lu/h;
    .locals 8

    const/4 v4, 0x0

    new-instance v0, Lu/h;

    const/4 v1, 0x5

    move-object v2, p0

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-direct/range {v0 .. v7}, Lu/h;-><init>(ILjava/lang/String;Lf/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/c;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lf/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lu/h;
    .locals 8

    new-instance v0, Lu/h;

    const/4 v1, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lu/h;-><init>(ILjava/lang/String;Lf/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/c;)V

    return-object v0
.end method

.method public static a(Lo/U;)Lu/h;
    .locals 8

    const/4 v2, 0x0

    new-instance v0, Lu/h;

    const/4 v1, 0x6

    invoke-virtual {p0}, Lo/U;->d()Lf/h;

    move-result-object v3

    invoke-virtual {p0}, Lo/U;->e()Ljava/lang/String;

    move-result-object v5

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lu/h;-><init>(ILjava/lang/String;Lf/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/c;)V

    return-object v0
.end method

.method public static a(Lu/h;Ljava/lang/String;Ljava/lang/String;)Lu/h;
    .locals 8

    new-instance v0, Lu/h;

    iget v1, p0, Lu/h;->c:I

    iget-object v2, p0, Lu/h;->d:Ljava/lang/String;

    iget-object v3, p0, Lu/h;->e:Lf/h;

    iget-object v4, p0, Lu/h;->f:Ljava/lang/String;

    iget-object v7, p0, Lu/h;->i:Lcom/google/googlenav/c;

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lu/h;-><init>(ILjava/lang/String;Lf/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/c;)V

    return-object v0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-nez p0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static b(Law/e;Law/e;)Lu/h;
    .locals 9

    const/4 v6, 0x0

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x3

    invoke-virtual {p0, v4}, Law/e;->d(I)I

    move-result v1

    invoke-virtual {p0, v8}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/googlenav/c;

    invoke-virtual {p0, v3}, Law/e;->f(I)Law/e;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/googlenav/c;-><init>(Law/e;)V

    move-object v7, v0

    :goto_0
    invoke-virtual {p1, v4}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v8}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-static {v0}, Lf/I;->c(Law/e;)Lf/h;

    move-result-object v3

    new-instance v0, Lu/h;

    invoke-direct/range {v0 .. v7}, Lu/h;-><init>(ILjava/lang/String;Lf/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/c;)V

    return-object v0

    :cond_0
    move-object v7, v6

    goto :goto_0
.end method

.method public static b(Lcom/google/googlenav/c;)Lu/h;
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0, p0}, Lu/h;->a(ILcom/google/googlenav/c;)Lu/h;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lf/h;)Lu/h;
    .locals 8

    const/4 v2, 0x0

    new-instance v0, Lu/h;

    const/4 v1, 0x2

    move-object v3, p0

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lu/h;-><init>(ILjava/lang/String;Lf/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/c;)V

    return-object v0
.end method

.method public static c(Lcom/google/googlenav/c;)Lu/h;
    .locals 1

    const/4 v0, 0x4

    invoke-static {v0, p0}, Lu/h;->a(ILcom/google/googlenav/c;)Lu/h;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-ne p0, p1, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lu/h;

    if-nez v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    check-cast p1, Lu/h;

    iget-object v0, p0, Lu/h;->e:Lf/h;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lu/h;->e:Lf/h;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lu/h;->e:Lf/h;

    iget-object v1, p1, Lu/h;->e:Lf/h;

    invoke-virtual {v0, v1}, Lf/h;->a(Lf/h;)J

    move-result-wide v0

    const-wide/16 v2, 0x19

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    move v0, v5

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lu/h;->d:Ljava/lang/String;

    iget-object v1, p1, Lu/h;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lu/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public b()Law/e;
    .locals 3

    new-instance v0, Law/e;

    sget-object v1, Ls/T;->c:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x1

    iget v2, p0, Lu/h;->c:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    iget-object v1, p0, Lu/h;->g:Ljava/lang/String;

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    iget-object v2, p0, Lu/h;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lu/h;->i:Lcom/google/googlenav/c;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lu/h;->i:Lcom/google/googlenav/c;

    invoke-virtual {v1}, Lcom/google/googlenav/c;->bw()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    iget-object v2, p0, Lu/h;->i:Lcom/google/googlenav/c;

    invoke-virtual {v2}, Lcom/google/googlenav/c;->f()Law/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILaw/e;)V

    :cond_1
    return-object v0
.end method

.method public c(Lf/h;)Lu/h;
    .locals 8

    new-instance v0, Lu/h;

    iget v1, p0, Lu/h;->c:I

    iget-object v2, p0, Lu/h;->d:Ljava/lang/String;

    iget-object v4, p0, Lu/h;->f:Ljava/lang/String;

    iget-object v5, p0, Lu/h;->g:Ljava/lang/String;

    iget-object v6, p0, Lu/h;->h:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lu/h;-><init>(ILjava/lang/String;Lf/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/c;)V

    return-object v0
.end method

.method public c()Z
    .locals 1

    invoke-virtual {p0}, Lu/h;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lu/h;->m()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lu/h;->q()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lu/h;->n()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lu/h;->c:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lu/h;->d:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lu/h;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    check-cast p1, Lu/h;

    iget v0, p0, Lu/h;->c:I

    iget v1, p1, Lu/h;->c:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lu/h;->d:Ljava/lang/String;

    iget-object v1, p1, Lu/h;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lu/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lu/h;->e:Lf/h;

    iget-object v1, p1, Lu/h;->e:Lf/h;

    invoke-static {v0, v1}, Lu/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lu/h;->f:Ljava/lang/String;

    iget-object v1, p1, Lu/h;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lu/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lu/h;->g:Ljava/lang/String;

    iget-object v1, p1, Lu/h;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lu/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lu/h;->h:Ljava/lang/String;

    iget-object v1, p1, Lu/h;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lu/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lu/h;->i:Lcom/google/googlenav/c;

    iget-object v1, p1, Lu/h;->i:Lcom/google/googlenav/c;

    invoke-static {v0, v1}, Lu/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public f()Lf/h;
    .locals 1

    iget-object v0, p0, Lu/h;->e:Lf/h;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lu/h;->f:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lu/h;->g:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    mul-int/lit8 v0, v0, 0x1f

    iget v0, p0, Lu/h;->c:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lu/h;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lu/h;->e:Lf/h;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lu/h;->f:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lu/h;->g:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lu/h;->h:Ljava/lang/String;

    if-nez v1, :cond_4

    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lu/h;->i:Lcom/google/googlenav/c;

    if-nez v1, :cond_5

    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v1, p0, Lu/h;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lu/h;->e:Lf/h;

    invoke-virtual {v1}, Lf/h;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lu/h;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lu/h;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lu/h;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lu/h;->i:Lcom/google/googlenav/c;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_5
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lu/h;->h:Ljava/lang/String;

    return-object v0
.end method

.method public j()Lcom/google/googlenav/c;
    .locals 1

    iget-object v0, p0, Lu/h;->i:Lcom/google/googlenav/c;

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget v0, p0, Lu/h;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lu/h;->c:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Z
    .locals 2

    iget v0, p0, Lu/h;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()Z
    .locals 2

    iget v0, p0, Lu/h;->c:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()Z
    .locals 2

    iget v0, p0, Lu/h;->c:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()Z
    .locals 2

    iget v0, p0, Lu/h;->c:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()Z
    .locals 2

    iget v0, p0, Lu/h;->c:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Waypoint {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "source="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lu/h;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu/h;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", query=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lu/h;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lu/h;->e:Lf/h;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", coordinates="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lu/h;->e:Lf/h;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lu/h;->f:Ljava/lang/String;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", fingerprint=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lu/h;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lu/h;->g:Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lu/h;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lu/h;->h:Ljava/lang/String;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", streetViewPanoramaId=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lu/h;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Lu/h;->i:Lcom/google/googlenav/c;

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", placemark=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lu/h;->i:Lcom/google/googlenav/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

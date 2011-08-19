.class public Lv/y;
.super Ljava/lang/Object;

# interfaces
.implements Lv/j;
.implements Lv/u;


# static fields
.field private static final i:LA/i;

.field private static final j:LA/i;


# instance fields
.field private final a:I

.field private final b:Law/f;

.field private final c:I

.field private final d:Lv/C;

.field private final e:Ljava/util/List;

.field private f:Lv/B;

.field private final g:Z

.field private h:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv/q;

    invoke-direct {v0}, Lv/q;-><init>()V

    sput-object v0, Lv/y;->i:LA/i;

    new-instance v0, Lv/p;

    invoke-direct {v0}, Lv/p;-><init>()V

    sput-object v0, Lv/y;->j:LA/i;

    return-void
.end method

.method constructor <init>(Lv/C;Lv/B;ILaw/f;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/y;->d:Lv/C;

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lv/y;->e:Ljava/util/List;

    invoke-interface {p1, p0}, Lv/C;->a(Lv/u;)V

    iput-object p2, p0, Lv/y;->f:Lv/B;

    iput p3, p0, Lv/y;->a:I

    iput-object p4, p0, Lv/y;->b:Law/f;

    sget-object v0, Ls/i;->a:Law/f;

    if-ne p4, v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lv/y;->c:I

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lv/y;->h:Ljava/util/List;

    :goto_0
    iput-boolean p5, p0, Lv/y;->g:Z

    return-void

    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lv/y;->c:I

    goto :goto_0
.end method

.method private a(Law/e;Law/e;)V
    .locals 6

    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v1}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Law/e;->b(ILjava/lang/String;)V

    :cond_0
    invoke-virtual {p2, v2}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, v2}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Law/e;->b(ILaw/e;)V

    :cond_1
    invoke-virtual {p2, v3}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, v3}, Law/e;->e(I)J

    move-result-wide v0

    invoke-virtual {p1, v3, v0, v1}, Law/e;->b(IJ)V

    :cond_2
    invoke-virtual {p2, v4}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2, v4}, Law/e;->d(I)I

    move-result v0

    invoke-virtual {p1, v4, v0}, Law/e;->h(II)V

    :cond_3
    invoke-virtual {p2, v5}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2, v5}, Law/e;->b(I)Z

    move-result v0

    invoke-virtual {p1, v5, v0}, Law/e;->b(IZ)V

    :cond_4
    const/4 v0, 0x7

    invoke-virtual {p2, v0}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x7

    const/4 v1, 0x7

    invoke-virtual {p2, v1}, Law/e;->b(I)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Law/e;->b(IZ)V

    :cond_5
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x8

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Law/e;->d(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Law/e;->h(II)V

    :cond_6
    const/16 v0, 0x9

    invoke-virtual {p2, v0}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    const/16 v1, 0x9

    invoke-virtual {p2, v1}, Law/e;->b(I)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Law/e;->b(IZ)V

    :cond_7
    return-void
.end method

.method private a(Ljava/lang/String;Lv/v;)V
    .locals 3

    invoke-static {p1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lv/v;->d()Law/e;

    move-result-object v0

    invoke-static {v0}, Law/b;->a(Law/e;)Law/e;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Law/e;->b(ILjava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {p2}, Lv/v;->c()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(IZ)V

    iget-object v1, p0, Lv/y;->f:Lv/B;

    invoke-virtual {v1, p1, v0}, Lv/B;->a(Ljava/lang/String;Law/e;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b(Law/e;Law/e;)V
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v1}, Law/e;->b(I)Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Law/e;->b(IZ)V

    :cond_0
    invoke-virtual {p2, v2}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, v2}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Law/e;->b(ILjava/lang/String;)V

    :cond_1
    invoke-virtual {p2, v3}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, v3}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Law/e;->b(ILjava/lang/String;)V

    :cond_2
    invoke-virtual {p2, v4}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2, v4}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Law/e;->b(ILaw/e;)V

    :cond_3
    return-void
.end method

.method private g(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lv/y;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv/h;

    invoke-interface {p0, p1}, Lv/h;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 5

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lv/y;->d:Lv/C;

    iget v2, p0, Lv/y;->a:I

    invoke-interface {v0, v2}, Lv/C;->a(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Law/e;

    new-instance v3, Lv/d;

    iget v4, p0, Lv/y;->c:I

    invoke-virtual {v0, v4}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-direct {v3, v0}, Lv/d;-><init>(Law/e;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public a(Lf/h;)Ljava/util/List;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lv/y;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lv/d;

    move v2, v5

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv/d;

    invoke-virtual {p0}, Lv/d;->d()Lf/h;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Lf/h;->a(Lf/h;)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lv/d;->b(J)V

    :cond_0
    aput-object p0, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lv/y;->i:LA/i;

    invoke-static {v1, v0}, LA/r;->a([Ljava/lang/Object;LA/i;)V

    array-length v0, v1

    invoke-static {v0}, Lj/X;->b(I)Ljava/util/ArrayList;

    move-result-object v0

    array-length v2, v1

    move v3, v5

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lv/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public a(Ljava/lang/String;)Lv/d;
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lv/y;->d:Lv/C;

    iget v1, p0, Lv/y;->a:I

    invoke-interface {v0, v1, p1}, Lv/C;->a(ILjava/lang/String;)Law/e;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lv/d;

    iget v2, p0, Lv/y;->c:I

    invoke-virtual {v0, v2}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-direct {v1, v0}, Lv/d;-><init>(Law/e;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method

.method public a(Law/e;)V
    .locals 5

    const/4 v4, 0x3

    iget-object v0, p0, Lv/y;->b:Law/f;

    sget-object v1, Ls/i;->a:Law/f;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v4}, Law/e;->i(I)I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v4, v0}, Law/e;->e(II)Law/e;

    move-result-object v1

    iget-object v2, p0, Lv/y;->h:Ljava/util/List;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lv/h;)V
    .locals 1

    iget-object v0, p0, Lv/y;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lv/v;)V
    .locals 1

    invoke-virtual {p1}, Lv/v;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lv/y;->a(Ljava/lang/String;Lv/v;)V

    invoke-direct {p0, v0}, Lv/y;->g(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lv/d;)Z
    .locals 7

    const/4 v6, 0x2

    iget-object v0, p0, Lv/y;->b:Law/f;

    sget-object v1, Ls/i;->a:Law/f;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lv/d;->h()Law/e;

    move-result-object v0

    :goto_0
    new-instance v1, Law/e;

    sget-object v2, Ls/s;->a:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    iget v2, p0, Lv/y;->c:I

    invoke-virtual {v1, v2, v0}, Law/e;->b(ILaw/e;)V

    invoke-virtual {p1}, Lv/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Law/e;->b(ILjava/lang/String;)V

    new-instance v2, Law/e;

    sget-object v3, Ls/s;->d:Law/f;

    invoke-direct {v2, v3}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v2, v6, v1}, Law/e;->b(ILaw/e;)V

    iget-object v1, p0, Lv/y;->d:Lv/C;

    iget v3, p0, Lv/y;->a:I

    invoke-virtual {p1}, Lv/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lv/C;->a(ILjava/lang/String;)Law/e;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Law/b;->a(Law/e;)Law/e;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    iget v3, p0, Lv/y;->c:I

    invoke-virtual {v1, v3}, Law/e;->f(I)Law/e;

    move-result-object v3

    iget-object v4, p0, Lv/y;->b:Law/f;

    sget-object v5, Ls/i;->a:Law/f;

    if-ne v4, v5, :cond_2

    invoke-direct {p0, v3, v0}, Lv/y;->b(Law/e;Law/e;)V

    :goto_1
    invoke-virtual {v2, v6, v1}, Law/e;->b(ILaw/e;)V

    :cond_0
    iget-boolean v0, p0, Lv/y;->g:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lv/y;->d:Lv/C;

    iget v1, p0, Lv/y;->a:I

    invoke-interface {v0, v1, v2}, Lv/C;->a(ILaw/e;)Z

    move-result v0

    :goto_2
    return v0

    :cond_1
    invoke-virtual {p1}, Lv/d;->i()Law/e;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    invoke-direct {p0, v3, v0}, Lv/y;->a(Law/e;Law/e;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lv/y;->d:Lv/C;

    iget v1, p0, Lv/y;->a:I

    invoke-interface {v0, v1, v2}, Lv/C;->b(ILaw/e;)Z

    move-result v0

    goto :goto_2
.end method

.method public b(Ljava/lang/String;)Lv/v;
    .locals 2

    const/4 v1, 0x0

    invoke-static {p1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lv/y;->f:Lv/B;

    invoke-virtual {v0, p1}, Lv/B;->a(Ljava/lang/String;)Law/e;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lv/v;

    invoke-direct {v1, v0}, Lv/v;-><init>(Law/e;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public b(Law/e;)V
    .locals 4

    iget-object v0, p0, Lv/y;->b:Law/f;

    sget-object v1, Ls/i;->a:Law/f;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lv/y;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lv/y;->a(Ljava/lang/String;)Lv/d;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lv/d;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Law/e;

    sget-object v3, LaX/a;->e:Law/f;

    invoke-direct {v2, v3}, Law/e;-><init>(Law/f;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Law/e;->b(ILjava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Law/e;->a(ILaw/e;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Lv/h;)V
    .locals 1

    iget-object v0, p0, Lv/y;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Z
    .locals 4

    iget-object v0, p0, Lv/y;->d:Lv/C;

    iget v1, p0, Lv/y;->a:I

    invoke-interface {v0, v1}, Lv/C;->a(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Law/e;

    iget v2, p0, Lv/y;->c:I

    invoke-virtual {v0, v2}, Law/e;->f(I)Law/e;

    move-result-object v0

    iget-object v2, p0, Lv/y;->b:Law/f;

    sget-object v3, Ls/i;->a:Law/f;

    if-ne v2, v3, :cond_1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Law/e;->b(I)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Law/e;->b(I)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public c()Ljava/util/List;
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p0}, Lv/y;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lv/y;->h:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lv/y;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Lj/X;->b(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lj/aH;->a()Ljava/util/HashSet;

    move-result-object v2

    iget-object v3, p0, Lv/y;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v6

    :goto_0
    if-ltz v3, :cond_0

    iget-object v4, p0, Lv/y;->h:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lv/y;->h:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv/d;

    invoke-virtual {p0}, Lv/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_2
    return-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lv/d;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    sget-object v2, Lv/y;->j:LA/i;

    invoke-static {v1, v2}, LA/r;->a([Ljava/lang/Object;LA/i;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Lj/X;->b(I)Ljava/util/ArrayList;

    move-result-object v2

    array-length v3, v1

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_4

    aget-object v5, v1, v4

    invoke-virtual {v5}, Lv/d;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lj/X;->b(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lv/y;->h:Ljava/util/List;

    array-length v0, v1

    sub-int/2addr v0, v6

    :goto_4
    if-ltz v0, :cond_5

    iget-object v3, p0, Lv/y;->h:Ljava/util/List;

    aget-object v4, v1, v0

    invoke-virtual {v4}, Lv/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_5
    move-object v0, v2

    goto :goto_2
.end method

.method public c(ILjava/lang/String;)V
    .locals 3

    iget v0, p0, Lv/y;->a:I

    if-eq p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p2}, Lv/y;->a(Ljava/lang/String;)Lv/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lv/y;->b:Law/f;

    sget-object v2, Ls/i;->a:Law/f;

    if-eq v1, v2, :cond_2

    const/4 v1, 0x0

    iput-object v1, p0, Lv/y;->h:Ljava/util/List;

    invoke-virtual {v0}, Lv/d;->f()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lv/y;->d:Lv/C;

    iget v1, p0, Lv/y;->a:I

    invoke-interface {v0, v1, p2}, Lv/C;->b(ILjava/lang/String;)V

    :cond_2
    invoke-direct {p0, p2}, Lv/y;->g(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lv/y;->f:Lv/B;

    invoke-virtual {v0, p1}, Lv/B;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lv/y;->d:Lv/C;

    iget v1, p0, Lv/y;->a:I

    invoke-interface {v0, v1}, Lv/C;->d(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lv/y;->g(Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lv/y;->f:Lv/B;

    invoke-virtual {v0, p1}, Lv/B;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lv/y;->a(Ljava/lang/String;)Lv/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lv/d;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lv/y;->b:Law/f;

    sget-object v1, Ls/i;->a:Law/f;

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lv/y;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lv/y;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

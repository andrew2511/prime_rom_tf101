.class public Lcom/google/googlenav/aR;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/j;
.implements Lv/h;


# instance fields
.field private final a:Lv/t;

.field private final b:Li/ai;

.field private c:I

.field private d:B

.field private final e:Ljava/util/List;

.field private f:Lcom/google/googlenav/c;

.field private g:Z


# direct methods
.method public constructor <init>(Lv/t;Li/ai;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aR;->e:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/aR;->g:Z

    iput-object p1, p0, Lcom/google/googlenav/aR;->a:Lv/t;

    iput-object p2, p0, Lcom/google/googlenav/aR;->b:Li/ai;

    invoke-interface {p1}, Lv/t;->i()Lv/j;

    move-result-object v0

    invoke-interface {v0, p0}, Lv/j;->a(Lv/h;)V

    return-void
.end method

.method private a(Lv/d;)Lcom/google/googlenav/c;
    .locals 1

    new-instance v0, Lcom/google/googlenav/m;

    invoke-direct {v0, p1}, Lcom/google/googlenav/m;-><init>(Lv/d;)V

    return-object v0
.end method

.method private b(Lv/d;)Lcom/google/googlenav/c;
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/aR;->a:Lv/t;

    invoke-interface {v0}, Lv/t;->i()Lv/j;

    move-result-object v0

    invoke-virtual {p1}, Lv/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lv/j;->b(Ljava/lang/String;)Lv/v;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lv/v;->b()Law/e;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/m;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-static {v0}, Law/b;->a(Law/e;)Law/e;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/google/googlenav/m;-><init>(Lv/d;Law/e;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/googlenav/aR;->a(Lv/d;)Lcom/google/googlenav/c;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Lcom/google/googlenav/c;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/aR;->a:Lv/t;

    invoke-interface {v0}, Lv/t;->i()Lv/j;

    move-result-object v0

    invoke-interface {v0, p1}, Lv/j;->a(Ljava/lang/String;)Lv/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/google/googlenav/aR;->b(Lv/d;)Lcom/google/googlenav/c;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)I
    .locals 3

    const/4 v2, -0x1

    invoke-static {p1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/google/googlenav/aR;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/aR;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private g()V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/aR;->a:Lv/t;

    invoke-interface {v0}, Lv/t;->i()Lv/j;

    move-result-object v0

    invoke-interface {v0}, Lv/j;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/d;

    invoke-virtual {v0}, Lv/d;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/googlenav/aR;->e:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/googlenav/aR;->a(Lv/d;)Lcom/google/googlenav/c;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private h()V
    .locals 2

    iget-byte v0, p0, Lcom/google/googlenav/aR;->d:B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/aR;->f:Lcom/google/googlenav/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/aR;->f:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/aR;->d(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/aR;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/googlenav/aR;->f:Lcom/google/googlenav/c;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/aR;->b(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/aR;->b(I)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/aR;->a:Lv/t;

    invoke-interface {v0}, Lv/t;->i()Lv/j;

    move-result-object v0

    invoke-interface {v0, p0}, Lv/j;->b(Lv/h;)V

    return-void
.end method

.method public a(B)V
    .locals 0

    iput-byte p1, p0, Lcom/google/googlenav/aR;->d:B

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/aR;->g:Z

    return-void
.end method

.method public b(Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/googlenav/aR;->d(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public b()Lcom/google/googlenav/bf;
    .locals 1

    iget-byte v0, p0, Lcom/google/googlenav/aR;->d:B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/aR;->f:Lcom/google/googlenav/c;

    goto :goto_0
.end method

.method public b(I)V
    .locals 3

    iput p1, p0, Lcom/google/googlenav/aR;->c:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/google/googlenav/aR;->d:B

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/googlenav/aR;->c(I)Lcom/google/googlenav/bf;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/c;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/googlenav/aR;->f:Lcom/google/googlenav/c;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/googlenav/aR;->f:Lcom/google/googlenav/c;

    invoke-virtual {v1}, Lcom/google/googlenav/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    invoke-virtual {v0}, Lcom/google/googlenav/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/aR;->c(Ljava/lang/String;)Lcom/google/googlenav/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aR;->f:Lcom/google/googlenav/c;

    :cond_3
    iget-byte v0, p0, Lcom/google/googlenav/aR;->d:B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/aR;->f:Lcom/google/googlenav/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/google/googlenav/aR;->d:B

    goto :goto_0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/aR;->c:I

    return v0
.end method

.method public c(I)Lcom/google/googlenav/bf;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/aR;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/aR;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/bf;

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c_()I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/aR;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public d(I)I
    .locals 0

    return p1
.end method

.method public d_()B
    .locals 1

    iget-byte v0, p0, Lcom/google/googlenav/aR;->d:B

    return v0
.end method

.method public f()Z
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/googlenav/aR;->g:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/aR;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/google/googlenav/aR;->g()V

    iput-boolean v1, p0, Lcom/google/googlenav/aR;->g:Z

    invoke-direct {p0}, Lcom/google/googlenav/aR;->h()V

    iget-object v0, p0, Lcom/google/googlenav/aR;->b:Li/ai;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/aR;->b:Li/ai;

    invoke-interface {v1, v0}, Li/ai;->a(Li/x;)V

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

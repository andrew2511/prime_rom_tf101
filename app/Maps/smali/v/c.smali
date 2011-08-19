.class public Lv/c;
.super Ljava/lang/Object;

# interfaces
.implements Lv/m;
.implements Lv/w;


# instance fields
.field private a:Lv/l;

.field private b:Lv/e;

.field private c:Ljava/util/Vector;

.field private d:Lv/z;

.field private e:Law/e;


# direct methods
.method constructor <init>(Lv/l;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lv/c;->c:Ljava/util/Vector;

    iput-object p1, p0, Lv/c;->a:Lv/l;

    return-void
.end method

.method static synthetic a(Lv/c;)V
    .locals 0

    invoke-direct {p0}, Lv/c;->c()V

    return-void
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lv/c;->e:Law/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv/c;->e:Law/e;

    invoke-direct {p0, v0}, Lv/c;->c(Law/e;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lv/c;->e:Law/e;

    :cond_0
    return-void
.end method

.method private c(Law/e;)V
    .locals 3

    iget-object v0, p0, Lv/c;->b:Lv/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv/c;->b:Lv/e;

    invoke-virtual {v0}, Lv/e;->X_()V

    :cond_0
    new-instance v0, Lv/e;

    invoke-direct {v0, p1}, Lv/e;-><init>(Law/e;)V

    iput-object v0, p0, Lv/c;->b:Lv/e;

    iget-object v0, p0, Lv/c;->b:Lv/e;

    invoke-virtual {v0, p0}, Lv/e;->a(Lv/w;)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    iget-object v1, p0, Lv/c;->b:Lv/e;

    invoke-virtual {v0, v1}, Lak/h;->c(Lak/d;)V

    iget-object v0, p0, Lv/c;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/z;

    iget-object v2, p0, Lv/c;->b:Lv/e;

    invoke-interface {v0, v2}, Lv/z;->a(Lv/e;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lv/c;->d:Lv/z;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lv/c;->d:Lv/z;

    iget-object v1, p0, Lv/c;->b:Lv/e;

    invoke-interface {v0, v1}, Lv/z;->a(Lv/e;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Law/e;)V
    .locals 2

    iget-object v0, p0, Lv/c;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/z;

    invoke-interface {v0, p1}, Lv/z;->a(Law/e;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lv/c;->d:Lv/z;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lv/c;->d:Lv/z;

    invoke-interface {v0, p1}, Lv/z;->a(Law/e;)V

    :cond_1
    iget-object v0, p0, Lv/c;->a:Lv/l;

    invoke-interface {v0, p1}, Lv/l;->a(Law/e;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lv/c;->b:Lv/e;

    iget-object v0, p0, Lv/c;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/z;

    invoke-interface {v0}, Lv/z;->d()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lv/c;->d:Lv/z;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lv/c;->d:Lv/z;

    invoke-interface {v0}, Lv/z;->d()V

    :cond_3
    return-void
.end method

.method public a(Lv/z;)V
    .locals 1

    iget-object v0, p0, Lv/c;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lv/c;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method a()Z
    .locals 1

    iget-object v0, p0, Lv/c;->b:Lv/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv/c;->b:Lv/e;

    invoke-virtual {v0}, Lv/e;->j()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lv/c;->b:Lv/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv/c;->b:Lv/e;

    invoke-virtual {v0}, Lv/e;->X_()V

    const/4 v0, 0x0

    iput-object v0, p0, Lv/c;->b:Lv/e;

    :cond_0
    return-void
.end method

.method public b(Law/e;)V
    .locals 2

    sget-object v0, Lcom/google/googlenav/G;->a:Lcom/google/googlenav/G;

    invoke-static {v0}, Lcom/google/googlenav/aw;->c(Lcom/google/googlenav/G;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lv/c;->e:Law/e;

    sget-object v0, Lcom/google/googlenav/G;->a:Lcom/google/googlenav/G;

    new-instance v1, Lv/k;

    invoke-direct {v1, p0}, Lv/k;-><init>(Lv/c;)V

    invoke-static {v0, v1}, Lcom/google/googlenav/aw;->a(Lcom/google/googlenav/G;Lcom/google/googlenav/Q;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lv/c;->c(Law/e;)V

    goto :goto_0
.end method

.method public b(Lv/z;)V
    .locals 1

    iget-object v0, p0, Lv/c;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    return-void
.end method

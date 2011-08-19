.class public Lcom/google/googlenav/android/af;
.super Ljava/lang/Object;

# interfaces
.implements LQ/i;
.implements Lf/a;


# static fields
.field public static final a:Lcom/google/googlenav/android/af;


# instance fields
.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Lcom/google/googlenav/android/l;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/googlenav/android/af;

    invoke-direct {v0}, Lcom/google/googlenav/android/af;-><init>()V

    sput-object v0, Lcom/google/googlenav/android/af;->a:Lcom/google/googlenav/android/af;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/android/af;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/android/af;->e:Lcom/google/googlenav/android/l;

    invoke-interface {v0}, Lcom/google/googlenav/android/l;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/android/af;->d:Z

    invoke-virtual {p0}, Lcom/google/googlenav/android/af;->h()V

    return-void
.end method

.method public a(FF)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/android/af;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/googlenav/android/af;->c:Z

    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/android/af;->a(FZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/android/af;->c:Z

    :cond_0
    return-void
.end method

.method a(FZ)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/android/af;->e:Lcom/google/googlenav/android/l;

    iget-boolean v1, p0, Lcom/google/googlenav/android/af;->b:Z

    invoke-interface {v0, p1, v1, p2}, Lcom/google/googlenav/android/l;->a(FZZ)V

    return-void
.end method

.method public a(Lcom/google/googlenav/android/l;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/android/af;->e:Lcom/google/googlenav/android/l;

    return-void
.end method

.method public a(Lcom/google/googlenav/android/n;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/android/af;->e:Lcom/google/googlenav/android/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/android/af;->e:Lcom/google/googlenav/android/l;

    invoke-interface {v0, p1}, Lcom/google/googlenav/android/l;->a(Lcom/google/googlenav/android/n;)V

    :cond_0
    return-void
.end method

.method public a(ZZZ)V
    .locals 1

    iput-boolean p3, p0, Lcom/google/googlenav/android/af;->d:Z

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/google/googlenav/android/af;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/android/af;->j()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/android/af;->b:Z

    invoke-virtual {p0}, Lcom/google/googlenav/android/af;->h()V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/android/af;->b:Z

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/android/af;->f:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->D()Z

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
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/android/af;->f:Z

    invoke-static {}, LQ/g;->j()LQ/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, LQ/g;->a(LQ/i;)V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/android/af;->e:Lcom/google/googlenav/android/l;

    invoke-interface {v0, p0}, Lcom/google/googlenav/android/l;->a(Lf/a;)V

    return-void
.end method

.method public e(I)V
    .locals 0

    return-void
.end method

.method e()Z
    .locals 1

    sget-object v0, Lcom/google/googlenav/android/af;->a:Lcom/google/googlenav/android/af;

    invoke-virtual {v0}, Lcom/google/googlenav/android/af;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/googlenav/android/af;->b:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/googlenav/android/af;->l()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/google/googlenav/android/af;->b:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/google/googlenav/android/af;->b:Z

    iput-boolean v1, p0, Lcom/google/googlenav/android/af;->c:Z

    invoke-virtual {p0}, Lcom/google/googlenav/android/af;->g()V

    :goto_0
    invoke-virtual {p0}, Lcom/google/googlenav/android/af;->h()V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/android/af;->b:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/android/af;->a(FZ)V

    goto :goto_0
.end method

.method g()V
    .locals 3

    const/16 v0, 0x62

    const-string v1, "a"

    invoke-static {}, LQ/g;->j()LQ/g;

    move-result-object v2

    invoke-virtual {v2}, LQ/g;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public h()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/googlenav/android/af;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/android/af;->e:Lcom/google/googlenav/android/l;

    iget-boolean v1, p0, Lcom/google/googlenav/android/af;->b:Z

    invoke-interface {v0, v1}, Lcom/google/googlenav/android/l;->a(Z)V

    invoke-static {}, Lx/h;->a()Lx/h;

    move-result-object v0

    invoke-virtual {v0}, Lx/h;->g()V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/android/af;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/googlenav/android/af;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/android/af;->b:Z

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/android/af;->h()V

    return-void
.end method

.method j()Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/android/af;->e:Lcom/google/googlenav/android/l;

    invoke-interface {v0}, Lcom/google/googlenav/android/l;->b()Z

    move-result v0

    return v0
.end method

.method public k()I
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/android/af;->e:Lcom/google/googlenav/android/l;

    iget-boolean v1, p0, Lcom/google/googlenav/android/af;->b:Z

    invoke-interface {v0, v1}, Lcom/google/googlenav/android/l;->b(Z)I

    move-result v0

    return v0
.end method

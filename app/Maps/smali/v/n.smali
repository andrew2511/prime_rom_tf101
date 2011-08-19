.class public Lv/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/bh;
.implements Lv/h;


# instance fields
.field private final a:Lv/t;

.field private final b:Lv/t;

.field private final c:Lak/h;

.field private final d:Lcom/google/googlenav/ui/bu;

.field private final e:Lv/B;

.field private f:Ljava/util/Set;

.field private g:Z

.field private h:Z

.field private i:Ljava/util/Set;

.field private j:Z


# direct methods
.method public constructor <init>(Lv/t;Lv/t;Lak/h;Lcom/google/googlenav/ui/bu;Lv/B;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lj/aH;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lv/n;->f:Ljava/util/Set;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lv/n;->h:Z

    invoke-static {}, Lj/aH;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lv/n;->i:Ljava/util/Set;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lv/n;->j:Z

    iput-object p2, p0, Lv/n;->b:Lv/t;

    iput-object p1, p0, Lv/n;->a:Lv/t;

    iput-object p3, p0, Lv/n;->c:Lak/h;

    iput-object p4, p0, Lv/n;->d:Lcom/google/googlenav/ui/bu;

    iput-object p5, p0, Lv/n;->e:Lv/B;

    return-void
.end method

.method private a(Lv/j;Ljava/util/List;)V
    .locals 5

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Lv/j;->a(Ljava/lang/String;)Lv/d;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lv/n;->f:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lv/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lv/j;->d(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lv/n;->f:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v3, p0, Lv/n;->i:Ljava/util/Set;

    invoke-virtual {v2}, Lv/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/googlenav/ad;

    invoke-direct {v2, p0, v0}, Lcom/google/googlenav/ad;-><init>(Lcom/google/googlenav/bh;Ljava/lang/String;)V

    iget-object v3, p0, Lv/n;->c:Lak/h;

    invoke-virtual {v3, v2}, Lak/h;->c(Lak/d;)V

    iget-object v2, p0, Lv/n;->f:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(Lv/t;Ljava/lang/String;Law/e;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-interface {p1}, Lv/t;->i()Lv/j;

    move-result-object v0

    invoke-interface {v0, p2}, Lv/j;->a(Ljava/lang/String;)Lv/d;

    move-result-object v1

    if-nez v1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1, p2, p3}, Lv/t;->b(Ljava/lang/String;Law/e;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lv/n;->i:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x4e

    const-string v2, "BPDF2"

    invoke-static {v1, v2, p2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-interface {v0, p2}, Lv/j;->b(Ljava/lang/String;)Lv/v;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Lv/v;

    invoke-virtual {v1}, Lv/v;->d()Law/e;

    move-result-object v1

    invoke-direct {v2, v1}, Lv/v;-><init>(Law/e;)V

    invoke-virtual {v2, v3}, Lv/v;->a(Z)V

    invoke-interface {v0, v2}, Lv/j;->a(Lv/v;)V

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lv/n;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lv/n;->g:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v4, p0, Lv/n;->g:Z

    iget-object v0, p0, Lv/n;->d:Lcom/google/googlenav/ui/bu;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lv/n;->d:Lcom/google/googlenav/ui/bu;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bu;->n()Lf/h;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lv/n;->a:Lv/t;

    invoke-interface {v0}, Lv/t;->i()Lv/j;

    move-result-object v0

    iget-object v1, p0, Lv/n;->d:Lcom/google/googlenav/ui/bu;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bu;->n()Lf/h;

    move-result-object v1

    invoke-interface {v0, v1}, Lv/j;->a(Lf/h;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lv/n;->a:Lv/t;

    invoke-interface {v0}, Lv/t;->i()Lv/j;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0}, Lv/j;->a(Ljava/lang/String;)Lv/d;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lv/d;->g()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lv/n;->a:Lv/t;

    invoke-interface {v0}, Lv/t;->i()Lv/j;

    move-result-object v0

    invoke-interface {v0}, Lv/j;->c()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lv/n;->a:Lv/t;

    invoke-interface {v0}, Lv/t;->i()Lv/j;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lv/n;->a(Lv/j;Ljava/util/List;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v4

    iget-object v1, p0, Lv/n;->b:Lv/t;

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lv/n;->h:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lv/n;->b:Lv/t;

    invoke-interface {v1}, Lv/t;->i()Lv/j;

    move-result-object v1

    invoke-interface {v1}, Lv/j;->c()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lv/n;->b:Lv/t;

    invoke-interface {v2}, Lv/t;->i()Lv/j;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lv/n;->a(Lv/j;Ljava/util/List;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-boolean v1, p0, Lv/n;->j:Z

    if-eqz v1, :cond_0

    iput-boolean v4, p0, Lv/n;->j:Z

    const/16 v1, 0x4e

    const-string v2, "BPDF1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lv/n;->e:Lv/B;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv/n;->a:Lv/t;

    invoke-interface {v0}, Lv/t;->i()Lv/j;

    move-result-object v0

    invoke-interface {v0, p1}, Lv/j;->a(Ljava/lang/String;)Lv/d;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lv/n;->b:Lv/t;

    invoke-interface {v0}, Lv/t;->i()Lv/j;

    move-result-object v0

    invoke-interface {v0, p1}, Lv/j;->a(Ljava/lang/String;)Lv/d;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lv/n;->e:Lv/B;

    invoke-virtual {v0, p1}, Lv/B;->d(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lv/n;->a:Lv/t;

    invoke-interface {v0}, Lv/t;->i()Lv/j;

    move-result-object v0

    invoke-interface {v0, p1}, Lv/j;->d(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lv/n;->b:Lv/t;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lv/n;->b:Lv/t;

    invoke-interface {v0}, Lv/t;->i()Lv/j;

    move-result-object v0

    invoke-interface {v0, p1}, Lv/j;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_3
    invoke-virtual {p0}, Lv/n;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;Law/e;)V
    .locals 1

    iget-object v0, p0, Lv/n;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lv/n;->a:Lv/t;

    invoke-direct {p0, v0, p1, p2}, Lv/n;->a(Lv/t;Ljava/lang/String;Law/e;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lv/n;->b:Lv/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv/n;->b:Lv/t;

    invoke-direct {p0, v0, p1, p2}, Lv/n;->a(Lv/t;Ljava/lang/String;Law/e;)Z

    :cond_0
    invoke-virtual {p0}, Lv/n;->b()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lv/n;->h:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lv/n;->b()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lv/n;->g:Z

    return-void
.end method

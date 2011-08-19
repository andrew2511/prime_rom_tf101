.class public LW/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:LW/m;

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, LW/a;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, LW/a;->a:LW/m;

    return-void
.end method

.method public static a(LW/a;)Law/e;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LW/a;->b()LW/m;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, LW/a;->b()LW/m;

    move-result-object v0

    invoke-virtual {v0}, LW/m;->i()Law/e;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(LW/m;J)Law/e;
    .locals 4

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LW/m;->h()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Law/e;

    sget-object v0, Lbd/a;->S:Law/f;

    invoke-direct {v1, v0}, Law/e;-><init>(Law/f;)V

    const/4 v0, 0x2

    invoke-virtual {p0}, LW/m;->f()J

    move-result-wide v2

    add-long/2addr v2, p1

    invoke-virtual {v1, v0, v2, v3}, Law/e;->b(IJ)V

    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, LW/m;->a(J)Law/e;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Law/e;->b(ILaw/e;)V

    invoke-virtual {p0}, LW/m;->g()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LW/q;

    const/4 v3, 0x3

    invoke-virtual {v0, p0}, LW/q;->a(LW/m;)Law/e;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Law/e;->a(ILaw/e;)V

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()LW/a;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, LW/a;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LW/a;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, LW/a;->a:LW/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, LW/a;->a:LW/m;

    invoke-virtual {v0, p1}, LW/m;->a(I)V

    :cond_0
    return-void
.end method

.method public a(LW/m;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, LW/a;->a:LW/m;

    if-eqz v0, :cond_2

    iget-object v0, p0, LW/a;->a:LW/m;

    invoke-virtual {v0}, LW/m;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LW/a;->a:LW/m;

    invoke-virtual {v0, p1}, LW/m;->a(LW/m;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, LW/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    iget-object v0, p0, LW/a;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, LW/a;->b:Ljava/util/List;

    iget-object v1, p0, LW/a;->a:LW/m;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iput-object p1, p0, LW/a;->a:LW/m;

    goto :goto_0
.end method

.method public a(Law/e;J)V
    .locals 7

    iget-object v0, p0, LW/a;->a:LW/m;

    invoke-static {v0, p2, p3}, LW/a;->a(LW/m;J)Law/e;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x5

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Law/e;->h(II)V

    iget-object v0, p0, LW/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LW/m;

    iget-object v3, p0, LW/a;->a:LW/m;

    invoke-virtual {v3}, LW/m;->f()J

    move-result-wide v3

    invoke-virtual {v0}, LW/m;->f()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, LW/m;->a(J)Law/e;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v0}, Law/e;->a(ILaw/e;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v1}, Law/e;->b(ILaw/e;)V

    :cond_1
    return-void
.end method

.method public b()LW/m;
    .locals 1

    iget-object v0, p0, LW/a;->a:LW/m;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1

    iget-object v0, p0, LW/a;->b:Ljava/util/List;

    return-object v0
.end method

.method protected clone()Ljava/lang/Object;
    .locals 3

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LW/a;

    iget-object v1, p0, LW/a;->a:LW/m;

    if-eqz v1, :cond_0

    iget-object v1, p0, LW/a;->a:LW/m;

    invoke-virtual {v1}, LW/m;->a()LW/m;

    move-result-object v1

    iput-object v1, v0, LW/a;->a:LW/m;

    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, LW/a;->b:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, LW/a;->b:Ljava/util/List;

    return-object v0
.end method

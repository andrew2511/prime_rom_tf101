.class public Lx/T;
.super Ljava/lang/Object;


# instance fields
.field private a:Lx/s;

.field private b:Ljava/util/Vector;

.field private c:Ljava/util/Vector;

.field private d:Ljava/util/Vector;

.field private e:Lcom/google/googlenav/bG;

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lx/s;

    invoke-direct {v0}, Lx/s;-><init>()V

    iput-object v0, p0, Lx/T;->a:Lx/s;

    return-void
.end method

.method private j()V
    .locals 1

    iget-object v0, p0, Lx/T;->e:Lcom/google/googlenav/bG;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lx/T;->e:Lcom/google/googlenav/bG;

    invoke-virtual {v0}, Lcom/google/googlenav/bG;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lx/T;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/googlenav/bG;
    .locals 1

    iget-object v0, p0, Lx/T;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/bG;

    return-object p0
.end method

.method public a(J)Lcom/google/googlenav/by;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lx/T;->f()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lx/T;->b(I)Lcom/google/googlenav/by;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/by;->b()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    invoke-virtual {p0, v1}, Lx/T;->b(I)Lcom/google/googlenav/by;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public a(Lcom/google/googlenav/bG;)V
    .locals 2

    iget-object v0, p0, Lx/T;->b:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lx/T;->e:Lcom/google/googlenav/bG;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lx/T;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_0

    iget-object v0, p0, Lx/T;->b:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bG;

    invoke-virtual {v0}, Lcom/google/googlenav/bG;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-object v0, p0, Lx/T;->e:Lcom/google/googlenav/bG;

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method

.method public a(Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 3

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lx/T;->f:J

    iput-object p1, p0, Lx/T;->b:Ljava/util/Vector;

    iput-object p2, p0, Lx/T;->d:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    iget-object v1, p0, Lx/T;->d:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lx/T;->c:Ljava/util/Vector;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lx/T;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lx/T;->c:Ljava/util/Vector;

    iget-object v0, p0, Lx/T;->d:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/by;

    invoke-virtual {v0}, Lcom/google/googlenav/by;->a()LaD/j;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lx/T;->j()V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lx/T;->b:Ljava/util/Vector;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)Lcom/google/googlenav/by;
    .locals 1

    iget-object v0, p0, Lx/T;->d:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/by;

    return-object p0
.end method

.method public b()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lx/T;->b:Ljava/util/Vector;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lx/T;->b:Ljava/util/Vector;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v0, v3

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lx/T;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    move v2, v3

    :goto_1
    if-ge v2, v1, :cond_3

    iget-object v0, p0, Lx/T;->b:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bG;

    invoke-virtual {v0}, Lcom/google/googlenav/bG;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_0
.end method

.method public c()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lx/T;->c:Ljava/util/Vector;

    return-object v0
.end method

.method public c(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lx/T;->a(I)Lcom/google/googlenav/bG;

    move-result-object v0

    iput-object v0, p0, Lx/T;->e:Lcom/google/googlenav/bG;

    return-void
.end method

.method public d()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lx/T;->d:Ljava/util/Vector;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lx/T;->b:Ljava/util/Vector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lx/T;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lx/T;->d:Ljava/util/Vector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lx/T;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0
.end method

.method public g()Lcom/google/googlenav/bG;
    .locals 1

    iget-object v0, p0, Lx/T;->e:Lcom/google/googlenav/bG;

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lx/T;->e:Lcom/google/googlenav/bG;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()I
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lx/T;->b:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lx/T;->e:Lcom/google/googlenav/bG;

    if-nez v0, :cond_1

    :cond_0
    move v0, v3

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lx/T;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lx/T;->e:Lcom/google/googlenav/bG;

    invoke-virtual {v0}, Lcom/google/googlenav/bG;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lx/T;->b:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bG;

    invoke-virtual {v0}, Lcom/google/googlenav/bG;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_0
.end method

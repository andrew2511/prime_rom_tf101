.class public Lo/aH;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/Vector;

.field private b:Lac/s;

.field private c:Lac/s;

.field private d:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/j;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lo/aH;->d:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-interface {p1}, Lcom/google/googlenav/j;->c_()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lo/aH;->a:Ljava/util/Vector;

    invoke-interface {p1}, Lcom/google/googlenav/j;->c_()I

    move-result v1

    move v2, v5

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {p1, v2}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/c;

    new-instance v3, Lo/U;

    if-nez v2, :cond_0

    const/4 v4, 0x1

    :goto_1
    invoke-direct {v3, p0, v4, v0}, Lo/U;-><init>(Lo/aH;ZLcom/google/googlenav/c;)V

    iget-object v0, p0, Lo/aH;->a:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v4, v5

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lo/aH;->a()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lo/aH;->d:Ljava/util/Hashtable;

    iput-object p1, p0, Lo/aH;->a:Ljava/util/Vector;

    invoke-virtual {p0}, Lo/aH;->a()V

    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lo/aH;->b()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lo/aH;->a(I)Lo/U;

    move-result-object v2

    invoke-virtual {v2}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public a(I)Lo/U;
    .locals 1

    invoke-virtual {p0}, Lo/aH;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/aH;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/U;

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/Long;)Lo/U;
    .locals 1

    iget-object v0, p0, Lo/aH;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/U;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lo/U;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lo/aH;->b()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lo/aH;->a(I)Lo/U;

    move-result-object v2

    invoke-virtual {v2}, Lo/U;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a()V
    .locals 5

    iget-object v0, p0, Lo/aH;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lo/aH;->a:Ljava/util/Vector;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lo/aH;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v0, p0, Lo/aH;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/U;

    iget-object v3, p0, Lo/aH;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lo/aH;->a:Ljava/util/Vector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lo/aH;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    invoke-virtual {p0}, Lo/aH;->b()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Lo/U;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/aH;->a(I)Lo/U;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/util/Vector;
    .locals 5

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0}, Lo/aH;->b()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lo/aH;->a(I)Lo/U;

    move-result-object v3

    invoke-virtual {v3}, Lo/U;->k()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public f()Z
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lo/aH;->b()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lo/aH;->b()I

    move-result v0

    move v1, v4

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lo/aH;->a(I)Lo/U;

    move-result-object v2

    invoke-virtual {v2}, Lo/U;->l()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lo/U;->J()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v4

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public g()I
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lo/aH;->b()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lo/aH;->a(I)Lo/U;

    move-result-object v3

    invoke-virtual {v3}, Lo/U;->z()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lo/aH;->b:Lac/s;

    iput-object v0, p0, Lo/aH;->c:Lac/s;

    return-void
.end method

.method public i()Lac/s;
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lo/aH;->b:Lac/s;

    if-nez v0, :cond_3

    new-instance v0, Lac/s;

    invoke-virtual {p0}, Lo/aH;->b()I

    move-result v1

    invoke-direct {v0, v1}, Lac/s;-><init>(I)V

    iput-object v0, p0, Lo/aH;->b:Lac/s;

    invoke-virtual {p0}, Lo/aH;->b()I

    move-result v0

    move v1, v5

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lo/aH;->a(I)Lo/U;

    move-result-object v2

    invoke-virtual {v2}, Lo/U;->z()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lo/aH;->b:Lac/s;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lac/s;->a(J)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lo/aH;->b:Lac/s;

    invoke-virtual {v0}, Lac/s;->a()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lo/aH;->b:Lac/s;

    invoke-virtual {v0, v5}, Lac/s;->a(I)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lo/aH;->a(I)Lo/U;

    move-result-object v0

    invoke-virtual {v0}, Lo/U;->d()Lf/h;

    move-result-object v0

    new-instance v1, Lac/s;

    invoke-direct {v1}, Lac/s;-><init>()V

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lac/s;->a(J)V

    const/4 v2, 0x1

    iget-object v3, p0, Lo/aH;->b:Lac/s;

    invoke-virtual {v3}, Lac/s;->b()I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_2

    iget-object v4, p0, Lo/aH;->b:Lac/s;

    invoke-virtual {v4, v2}, Lac/s;->a(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {p0, v4}, Lo/aH;->a(I)Lo/U;

    move-result-object v4

    invoke-virtual {v4}, Lo/U;->d()Lf/h;

    move-result-object v4

    invoke-virtual {v4, v0}, Lf/h;->b(Lf/h;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lac/s;->a(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lo/aH;->b:Lac/s;

    invoke-static {v0, v1}, LA/j;->a(Lac/s;Lac/s;)V

    :cond_3
    iget-object v0, p0, Lo/aH;->b:Lac/s;

    return-object v0
.end method

.method public j()Lac/s;
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lo/aH;->c:Lac/s;

    if-nez v0, :cond_3

    new-instance v0, Lac/s;

    invoke-virtual {p0}, Lo/aH;->b()I

    move-result v1

    invoke-direct {v0, v1}, Lac/s;-><init>(I)V

    iput-object v0, p0, Lo/aH;->c:Lac/s;

    invoke-virtual {p0}, Lo/aH;->b()I

    move-result v0

    move v1, v5

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lo/aH;->a(I)Lo/U;

    move-result-object v2

    invoke-virtual {v2}, Lo/U;->z()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lo/aH;->c:Lac/s;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lac/s;->a(J)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lo/aH;->c:Lac/s;

    invoke-virtual {v0}, Lac/s;->a()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lac/s;

    invoke-direct {v0}, Lac/s;-><init>()V

    iget-object v1, p0, Lo/aH;->c:Lac/s;

    invoke-virtual {v1}, Lac/s;->b()I

    move-result v1

    move v2, v5

    :goto_1
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lo/aH;->c:Lac/s;

    invoke-virtual {v3, v2}, Lac/s;->a(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {p0, v3}, Lo/aH;->a(I)Lo/U;

    move-result-object v3

    invoke-virtual {v3}, Lo/U;->d()Lf/h;

    move-result-object v3

    invoke-virtual {v3}, Lf/h;->b()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Lac/s;->a(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lo/aH;->c:Lac/s;

    invoke-static {v1, v0}, LA/j;->b(Lac/s;Lac/s;)V

    :cond_3
    iget-object v0, p0, Lo/aH;->c:Lac/s;

    return-object v0
.end method

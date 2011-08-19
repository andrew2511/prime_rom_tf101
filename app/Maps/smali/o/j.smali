.class Lo/j;
.super Lo/br;


# instance fields
.field private final c:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lo/br;-><init>(Ljava/util/List;Lo/R;Z)V

    iput-object p2, p0, Lo/j;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public i_()V
    .locals 3

    iget-object v0, p0, Lo/j;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/s;

    iget-object v2, p0, Lo/j;->a:Law/e;

    invoke-interface {v0, v2}, Lo/s;->b(Law/e;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lo/j;->b:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lo/j;->a:Law/e;

    :goto_1
    invoke-interface {v0, v2}, Lo/s;->a(Law/e;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    invoke-super {p0}, Lo/br;->i_()V

    return-void
.end method

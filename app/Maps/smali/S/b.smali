.class public LS/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Z


# instance fields
.field private b:Lt/y;

.field private c:Lt/F;

.field private d:LG/S;

.field private e:LG/w;

.field private f:LG/w;


# direct methods
.method public constructor <init>(Lt/y;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LS/b;->b:Lt/y;

    new-instance v0, Lt/F;

    const/16 v1, 0x24

    invoke-direct {v0, v1}, Lt/F;-><init>(I)V

    iput-object v0, p0, LS/b;->c:Lt/F;

    sput-boolean p2, LS/b;->a:Z

    return-void
.end method

.method private a(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/w;

    iget-object v4, p0, LS/b;->c:Lt/F;

    invoke-virtual {v4, v0}, Lt/F;->c(LG/w;)LG/u;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, p0, LS/b;->b:Lt/y;

    const/4 v5, 0x1

    invoke-interface {v4, v0, v5}, Lt/y;->a(LG/w;Z)LG/u;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v5, p0, LS/b;->c:Lt/F;

    invoke-virtual {v5, v0, v4}, Lt/F;->a(LG/w;LG/u;)V

    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v3, -0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    const-string v4, "RoadGraph"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GetTiles: couldn\'t load tile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Las/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    goto :goto_1

    :cond_2
    if-nez p2, :cond_5

    new-instance v2, Lt/K;

    invoke-direct {v2, v3}, Lt/K;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/w;

    if-eqz v0, :cond_3

    iget-object v4, p0, LS/b;->b:Lt/y;

    invoke-interface {v4, v0, v2}, Lt/y;->a(LG/w;Lt/A;)V

    goto :goto_2

    :cond_4
    const-wide/16 v3, 0x4e20

    :try_start_0
    invoke-virtual {v2, v3, v4}, Lt/K;->a(J)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    invoke-virtual {v2}, Lt/K;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/u;

    iget-object v3, p0, LS/b;->c:Lt/F;

    invoke-interface {v0}, LG/u;->a()LG/w;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lt/F;->a(LG/w;LG/u;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_5
    return-object v1
.end method


# virtual methods
.method public a(LS/c;)LS/c;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x2

    const/4 v4, 0x2

    invoke-virtual {p1}, LS/c;->e()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p1, v0}, LS/c;->c(I)LG/Q;

    move-result-object v0

    invoke-virtual {p1}, LS/c;->d()LG/Q;

    move-result-object v1

    invoke-virtual {v1}, LG/Q;->f()I

    move-result v2

    invoke-virtual {v0}, LG/Q;->f()I

    move-result v3

    if-le v2, v3, :cond_2

    move v2, v4

    :goto_0
    invoke-virtual {v1}, LG/Q;->g()I

    move-result v3

    invoke-virtual {v0}, LG/Q;->g()I

    move-result v0

    if-le v3, v0, :cond_3

    move v0, v4

    :goto_1
    new-instance v3, LG/Q;

    invoke-direct {v3, v2, v0}, LG/Q;-><init>(II)V

    invoke-virtual {v1, v3}, LG/Q;->e(LG/Q;)LG/Q;

    move-result-object v0

    invoke-static {v1, v0}, LG/S;->a(LG/Q;LG/Q;)LG/S;

    move-result-object v0

    invoke-static {v0}, LG/R;->a(LG/S;)LG/R;

    move-result-object v0

    const/16 v1, 0xe

    invoke-static {v0, v1}, LG/w;->a(LG/R;I)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, LS/b;->a(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/u;

    invoke-interface {v0}, LG/u;->a()LG/w;

    move-result-object v3

    iget-object v4, p0, LS/b;->f:LG/w;

    if-eqz v4, :cond_4

    iget-object v4, p0, LS/b;->e:LG/w;

    if-eqz v4, :cond_4

    invoke-virtual {v3}, LG/w;->c()I

    move-result v4

    iget-object v5, p0, LS/b;->f:LG/w;

    invoke-virtual {v5}, LG/w;->c()I

    move-result v5

    if-gt v4, v5, :cond_1

    invoke-virtual {v3}, LG/w;->c()I

    move-result v4

    iget-object v5, p0, LS/b;->e:LG/w;

    invoke-virtual {v5}, LG/w;->c()I

    move-result v5

    if-lt v4, v5, :cond_1

    invoke-virtual {v3}, LG/w;->d()I

    move-result v4

    iget-object v5, p0, LS/b;->f:LG/w;

    invoke-virtual {v5}, LG/w;->d()I

    move-result v5

    if-gt v4, v5, :cond_1

    invoke-virtual {v3}, LG/w;->d()I

    move-result v3

    iget-object v4, p0, LS/b;->e:LG/w;

    invoke-virtual {v4}, LG/w;->d()I

    move-result v4

    if-ge v3, v4, :cond_4

    :cond_1
    move-object v0, v6

    :goto_2
    return-object v0

    :cond_2
    move v2, v5

    goto :goto_0

    :cond_3
    move v0, v5

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    check-cast v0, LS/e;

    invoke-virtual {v0, p1}, LS/e;->a(LS/c;)LS/c;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v0, v6

    goto :goto_2
.end method

.method public a(LG/Q;D)Ljava/util/Iterator;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    double-to-int v1, p2

    invoke-static {p1, v1}, LG/S;->a(LG/Q;I)LG/S;

    move-result-object v1

    iget-object v2, p0, LS/b;->d:LG/S;

    if-eqz v2, :cond_0

    iget-object v2, p0, LS/b;->d:LG/S;

    invoke-virtual {v1, v2}, LG/S;->b(LG/S;)LG/S;

    move-result-object v1

    :cond_0
    invoke-static {v1}, LG/R;->a(LG/S;)LG/R;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v1, v2}, LG/w;->a(LG/R;I)Ljava/util/ArrayList;

    move-result-object v1

    sget-boolean v2, LS/b;->a:Z

    invoke-direct {p0, v1, v2}, LS/b;->a(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LG/u;

    check-cast p0, LS/e;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v1, LS/d;

    invoke-direct {v1, v0}, LS/d;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public a(LG/S;)V
    .locals 3

    const/4 v1, 0x0

    const/16 v2, 0xe

    iput-object p1, p0, LS/b;->d:LG/S;

    iget-object v0, p0, LS/b;->d:LG/S;

    if-nez v0, :cond_0

    iput-object v1, p0, LS/b;->f:LG/w;

    iput-object v1, p0, LS/b;->e:LG/w;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, LG/S;->d()LG/Q;

    move-result-object v0

    invoke-virtual {v0}, LG/Q;->f()I

    move-result v0

    invoke-virtual {p1}, LG/S;->e()LG/Q;

    move-result-object v1

    invoke-virtual {v1}, LG/Q;->g()I

    move-result v1

    invoke-static {v2, v0, v1}, LG/w;->b(III)LG/w;

    move-result-object v0

    iput-object v0, p0, LS/b;->e:LG/w;

    invoke-virtual {p1}, LG/S;->e()LG/Q;

    move-result-object v0

    invoke-virtual {v0}, LG/Q;->f()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, LG/S;->d()LG/Q;

    move-result-object v1

    invoke-virtual {v1}, LG/Q;->g()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v2, v0, v1}, LG/w;->b(III)LG/w;

    move-result-object v0

    iput-object v0, p0, LS/b;->f:LG/w;

    goto :goto_0
.end method

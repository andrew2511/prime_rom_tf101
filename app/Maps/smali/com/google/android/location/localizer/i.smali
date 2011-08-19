.class public Lcom/google/android/location/localizer/i;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/location/localizer/h;

.field private final b:Lal/a;

.field private final c:Lw/l;


# direct methods
.method public constructor <init>(Lal/a;Lw/l;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/location/localizer/h;

    invoke-direct {v0}, Lcom/google/android/location/localizer/h;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/localizer/i;->a:Lcom/google/android/location/localizer/h;

    iput-object p1, p0, Lcom/google/android/location/localizer/i;->b:Lal/a;

    iput-object p2, p0, Lcom/google/android/location/localizer/i;->c:Lw/l;

    return-void
.end method

.method private a(LW/m;Ljava/util/Map;)Lal/h;
    .locals 4

    invoke-virtual {p1}, LW/m;->d()I

    move-result v0

    invoke-virtual {p1}, LW/m;->e()I

    move-result v1

    invoke-virtual {p1}, LW/m;->c()I

    move-result v2

    invoke-virtual {p1}, LW/m;->b()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lal/b;->a(IIII)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/localizer/i;->b:Lal/a;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lal/a;->a(Ljava/lang/Object;Z)Lal/h;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lal/h;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lal/h;->e()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(LW/a;)LW/l;
    .locals 11

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/location/localizer/i;->c:Lw/l;

    invoke-interface {v0}, Lw/l;->b()J

    move-result-wide v2

    if-eqz p1, :cond_7

    invoke-virtual {p1}, LW/a;->b()LW/m;

    move-result-object v0

    invoke-virtual {p1}, LW/a;->c()Ljava/util/List;

    move-result-object v4

    :goto_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LW/m;->h()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    new-instance v0, LW/l;

    sget-object v2, LW/n;->b:LW/n;

    iget-object v3, p0, Lcom/google/android/location/localizer/i;->c:Lw/l;

    invoke-interface {v3}, Lw/l;->b()J

    move-result-wide v3

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, LW/l;-><init>(LW/o;LW/n;JLW/a;Ljava/util/Map;)V

    :goto_1
    return-object v0

    :cond_1
    iget-object v5, p0, Lcom/google/android/location/localizer/i;->a:Lcom/google/android/location/localizer/h;

    invoke-virtual {v5}, Lcom/google/android/location/localizer/h;->a()V

    invoke-direct {p0, v0, v6}, Lcom/google/android/location/localizer/i;->a(LW/m;Ljava/util/Map;)Lal/h;

    move-result-object v5

    if-nez v5, :cond_2

    new-instance v0, LW/l;

    sget-object v2, LW/n;->c:LW/n;

    iget-object v3, p0, Lcom/google/android/location/localizer/i;->c:Lw/l;

    invoke-interface {v3}, Lw/l;->b()J

    move-result-wide v3

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, LW/l;-><init>(LW/o;LW/n;JLW/a;Ljava/util/Map;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Lal/h;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LW/o;

    invoke-virtual {v0}, LW/o;->a()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, LW/l;

    sget-object v2, LW/n;->b:LW/n;

    iget-object v3, p0, Lcom/google/android/location/localizer/i;->c:Lw/l;

    invoke-interface {v3}, Lw/l;->b()J

    move-result-wide v3

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, LW/l;-><init>(LW/o;LW/n;JLW/a;Ljava/util/Map;)V

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/google/android/location/localizer/i;->a:Lcom/google/android/location/localizer/h;

    invoke-virtual {v5}, Lal/h;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LW/o;

    invoke-virtual {v7, v0}, Lcom/google/android/location/localizer/h;->a(LW/o;)V

    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LW/m;

    invoke-virtual {v0}, LW/m;->f()J

    move-result-wide v7

    sub-long v7, v2, v7

    const-wide/16 v9, 0x7530

    cmp-long v5, v7, v9

    if-gez v5, :cond_4

    invoke-direct {p0, v0, v6}, Lcom/google/android/location/localizer/i;->a(LW/m;Ljava/util/Map;)Lal/h;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lal/h;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LW/o;

    invoke-virtual {v0}, LW/o;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v7, p0, Lcom/google/android/location/localizer/i;->a:Lcom/google/android/location/localizer/h;

    invoke-virtual {v5}, Lal/h;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LW/o;

    invoke-virtual {v7, v0}, Lcom/google/android/location/localizer/h;->a(LW/o;)V

    goto :goto_2

    :cond_5
    new-instance v5, LW/o;

    iget-object v0, p0, Lcom/google/android/location/localizer/i;->a:Lcom/google/android/location/localizer/h;

    invoke-virtual {v0}, Lcom/google/android/location/localizer/h;->b()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/location/localizer/k;->b(D)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/location/localizer/i;->a:Lcom/google/android/location/localizer/h;

    invoke-virtual {v2}, Lcom/google/android/location/localizer/h;->c()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/location/localizer/k;->b(D)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/location/localizer/i;->a:Lcom/google/android/location/localizer/h;

    invoke-virtual {v3}, Lcom/google/android/location/localizer/h;->e()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/location/localizer/k;->c(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/location/localizer/i;->a:Lcom/google/android/location/localizer/h;

    invoke-virtual {v4}, Lcom/google/android/location/localizer/h;->d()I

    move-result v4

    invoke-direct {v5, v0, v2, v3, v4}, LW/o;-><init>(IIII)V

    invoke-static {v5}, Lcom/google/android/location/localizer/k;->c(LW/o;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, LW/l;

    sget-object v2, LW/n;->a:LW/n;

    iget-object v1, p0, Lcom/google/android/location/localizer/i;->c:Lw/l;

    invoke-interface {v1}, Lw/l;->b()J

    move-result-wide v3

    move-object v1, v5

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, LW/l;-><init>(LW/o;LW/n;JLW/a;Ljava/util/Map;)V

    goto/16 :goto_1

    :cond_6
    const-string v0, "CellLocator"

    const-string v2, "Cell location had non-sane values"

    invoke-static {v0, v2}, Lw/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, LW/l;

    sget-object v2, LW/n;->b:LW/n;

    iget-object v3, p0, Lcom/google/android/location/localizer/i;->c:Lw/l;

    invoke-interface {v3}, Lw/l;->b()J

    move-result-wide v3

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, LW/l;-><init>(LW/o;LW/n;JLW/a;Ljava/util/Map;)V

    goto/16 :goto_1

    :cond_7
    move-object v4, v1

    move-object v0, v1

    goto/16 :goto_0
.end method

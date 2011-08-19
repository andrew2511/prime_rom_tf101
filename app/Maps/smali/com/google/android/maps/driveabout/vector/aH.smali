.class public Lcom/google/android/maps/driveabout/vector/aH;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/ArrayList;

.field private final b:LG/w;

.field private final c:[Ljava/lang/String;


# direct methods
.method public constructor <init>(LG/w;[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->a:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/aH;->b:LG/w;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/aH;->c:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(LG/d;)V
    .locals 3

    instance-of v0, p1, LG/V;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/maps/driveabout/vector/cj;

    check-cast p1, LG/V;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aH;->c:[Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lcom/google/android/maps/driveabout/vector/cj;-><init>(LG/V;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(LG/j;)V
    .locals 4

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    invoke-virtual {p1}, LG/j;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LG/j;->b()LG/d;

    move-result-object v0

    instance-of v2, v0, LG/V;

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    check-cast v0, LG/V;

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/cj;->a(Lcom/google/android/maps/driveabout/vector/cj;)LG/m;

    move-result-object v2

    invoke-virtual {v0}, LG/V;->c()LG/m;

    move-result-object v3

    invoke-virtual {v2, v3}, LG/m;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/cj;->a(LG/V;)V

    move-object v0, v1

    :goto_1
    invoke-virtual {p1}, LG/j;->a()LG/d;

    move-object v1, v0

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/google/android/maps/driveabout/vector/cj;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aH;->c:[Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/google/android/maps/driveabout/vector/cj;-><init>(LG/V;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_1
.end method

.method public a()[Lcom/google/android/maps/driveabout/vector/cE;
    .locals 15

    const/4 v13, 0x1

    const/4 v6, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aH;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/google/android/maps/driveabout/vector/bW;

    invoke-direct {v2}, Lcom/google/android/maps/driveabout/vector/bW;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move-object v10, v3

    move-object v11, v2

    move-object v12, v1

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cj;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/vector/cj;->d()I

    move-result v1

    if-le v1, v13, :cond_0

    new-instance v3, Lcom/google/android/maps/driveabout/vector/bW;

    invoke-direct {v3}, Lcom/google/android/maps/driveabout/vector/bW;-><init>()V

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/vector/cj;->a()LG/m;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/google/android/maps/driveabout/vector/cE;->a(LG/m;Lcom/google/android/maps/driveabout/vector/bW;)Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/android/maps/driveabout/vector/cE;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aH;->b:LG/w;

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/vector/cj;->b()Ljava/util/Set;

    move-result-object v5

    invoke-direct/range {v1 .. v6}, Lcom/google/android/maps/driveabout/vector/cE;-><init>(LG/w;Lcom/google/android/maps/driveabout/vector/bW;Ljava/util/ArrayList;Ljava/util/Set;Lcom/google/android/maps/driveabout/vector/W;)V

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v10

    move-object v2, v11

    move-object v3, v12

    :goto_1
    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/vector/cj;->a()LG/m;

    move-result-object v1

    invoke-static {v1, v11}, Lcom/google/android/maps/driveabout/vector/cE;->a(LG/m;Lcom/google/android/maps/driveabout/vector/bW;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Lcom/google/android/maps/driveabout/vector/cE;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aH;->b:LG/w;

    move-object v3, v11

    move-object v4, v12

    move-object v5, v10

    invoke-direct/range {v1 .. v6}, Lcom/google/android/maps/driveabout/vector/cE;-><init>(LG/w;Lcom/google/android/maps/driveabout/vector/bW;Ljava/util/ArrayList;Ljava/util/Set;Lcom/google/android/maps/driveabout/vector/W;)V

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/google/android/maps/driveabout/vector/bW;

    invoke-direct {v2}, Lcom/google/android/maps/driveabout/vector/bW;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move-object v14, v3

    move-object v3, v1

    move-object v1, v14

    :goto_2
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/vector/cj;->b()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/android/maps/driveabout/vector/cE;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aH;->b:LG/w;

    move-object v3, v11

    move-object v4, v12

    move-object v5, v10

    invoke-direct/range {v1 .. v6}, Lcom/google/android/maps/driveabout/vector/cE;-><init>(LG/w;Lcom/google/android/maps/driveabout/vector/bW;Ljava/util/ArrayList;Ljava/util/Set;Lcom/google/android/maps/driveabout/vector/W;)V

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, v6

    :goto_3
    return-object v1

    :cond_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/maps/driveabout/vector/cE;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/google/android/maps/driveabout/vector/cE;

    move-object v1, p0

    goto :goto_3

    :cond_4
    move-object v1, v10

    move-object v2, v11

    move-object v3, v12

    goto :goto_2
.end method

.class public Lcom/google/android/maps/driveabout/vector/y;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LG/s;[B)Ljava/util/List;
    .locals 6

    invoke-static {}, Lj/u;->a()Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, LG/s;->a()I

    move-result v2

    if-ge v1, v2, :cond_3

    new-instance v2, LG/Q;

    invoke-direct {v2}, LG/Q;-><init>()V

    new-instance v3, LG/Q;

    invoke-direct {v3}, LG/Q;-><init>()V

    new-instance v4, LG/Q;

    invoke-direct {v4}, LG/Q;-><init>()V

    invoke-virtual {p0, v1, v2, v3, v4}, LG/s;->a(ILG/Q;LG/Q;LG/Q;)V

    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    invoke-static {v0, v2, v3}, Lcom/google/android/maps/driveabout/vector/y;->a(Ljava/util/Map;LG/Q;LG/Q;)V

    :cond_0
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    invoke-static {v0, v3, v4}, Lcom/google/android/maps/driveabout/vector/y;->a(Ljava/util/Map;LG/Q;LG/Q;)V

    :cond_1
    aget-byte v3, p1, v1

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    invoke-static {v0, v4, v2}, Lcom/google/android/maps/driveabout/vector/y;->a(Ljava/util/Map;LG/Q;LG/Q;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lj/aH;->a(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Lj/X;->b(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/maps/driveabout/vector/ch;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/ch;->c()LG/m;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object v1
.end method

.method private static a(Ljava/util/Map;LG/Q;LG/Q;)V
    .locals 4

    new-instance v2, Lcom/google/android/maps/driveabout/vector/ch;

    invoke-direct {v2, p1, p2}, Lcom/google/android/maps/driveabout/vector/ch;-><init>(LG/Q;LG/Q;)V

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ch;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/ch;

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Lcom/google/android/maps/driveabout/vector/ch;->a(Lcom/google/android/maps/driveabout/vector/ch;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ch;->a()LG/Q;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ch;->b()LG/Q;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v1, :cond_1

    if-eq v1, v0, :cond_1

    invoke-virtual {v2, v1}, Lcom/google/android/maps/driveabout/vector/ch;->a(Lcom/google/android/maps/driveabout/vector/ch;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/ch;->a()LG/Q;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/ch;->b()LG/Q;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/ch;->a()LG/Q;

    move-result-object v0

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/ch;->b()LG/Q;

    move-result-object v0

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

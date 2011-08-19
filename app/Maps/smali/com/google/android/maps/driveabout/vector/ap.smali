.class public Lcom/google/android/maps/driveabout/vector/ap;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/cb;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/vector/cb;

.field private final b:Lau/c;

.field private final c:Lt/am;

.field private volatile d:Z

.field private e:Ljava/util/List;

.field private f:Ljava/util/List;

.field private g:Ljava/util/Set;

.field private final h:Lad/g;

.field private final i:Lau/e;


# direct methods
.method protected constructor <init>(Lcom/google/android/maps/driveabout/vector/cb;Lau/c;Lt/am;ILau/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ap;->d:Z

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/ap;->a:Lcom/google/android/maps/driveabout/vector/cb;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/ap;->b:Lau/c;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/vector/ap;->c:Lt/am;

    new-instance v0, Lad/g;

    invoke-direct {v0, p4}, Lad/g;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ap;->h:Lad/g;

    iput-object p5, p0, Lcom/google/android/maps/driveabout/vector/ap;->i:Lau/e;

    return-void
.end method

.method private c(Lcom/google/android/maps/driveabout/vector/bF;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ap;->a:Lcom/google/android/maps/driveabout/vector/cb;

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/vector/cb;->a(Lcom/google/android/maps/driveabout/vector/bF;)Ljava/util/List;

    move-result-object v2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ap;->d:Z

    if-nez v0, :cond_0

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ap;->e:Ljava/util/List;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ap;->d:Z

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {}, Lj/aH;->a()Ljava/util/HashSet;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/w;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ap;->h:Lad/g;

    invoke-virtual {v1, v0}, Lad/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ap;->b:Lau/c;

    invoke-interface {v1, v0}, Lau/c;->a(LG/w;)Ljava/util/List;

    move-result-object v1

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/ap;->h:Lad/g;

    invoke-virtual {v6, v0, v1}, Lad/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    invoke-interface {v4, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LG/A;

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/ap;->i:Lau/e;

    invoke-virtual {v7, v1}, Lau/e;->a(LG/A;)LG/Z;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, LG/Z;->a()LG/A;

    move-result-object v1

    invoke-virtual {v1}, LG/A;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LG/w;->a(Ljava/lang/String;)LG/w;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/ap;->e:Ljava/util/List;

    iput-object v3, p0, Lcom/google/android/maps/driveabout/vector/ap;->f:Ljava/util/List;

    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/ap;->g:Ljava/util/Set;

    goto :goto_0
.end method


# virtual methods
.method public a(LG/Q;)LG/A;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ap;->b:Lau/c;

    invoke-interface {v0, p1}, Lau/c;->a(LG/Q;)LG/A;

    move-result-object v0

    return-object v0
.end method

.method public a(LG/w;LG/Q;)LG/w;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ap;->a:Lcom/google/android/maps/driveabout/vector/cb;

    invoke-interface {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/cb;->a(LG/w;LG/Q;)LG/w;

    move-result-object v0

    return-object v0
.end method

.method public a(ILG/Q;)Ljava/util/List;
    .locals 1

    invoke-static {}, Lj/v;->a()Lj/v;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bF;)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/ap;->c(Lcom/google/android/maps/driveabout/vector/bF;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ap;->f:Ljava/util/List;

    return-object v0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ap;->d:Z

    return-void
.end method

.method public b(LG/Q;)F
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ap;->a:Lcom/google/android/maps/driveabout/vector/cb;

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/vector/cb;->b(LG/Q;)F

    move-result v0

    return v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/bF;)Ljava/util/Set;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/ap;->c(Lcom/google/android/maps/driveabout/vector/bF;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ap;->g:Ljava/util/Set;

    return-object v0
.end method

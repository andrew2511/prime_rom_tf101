.class Lcom/google/android/maps/driveabout/vector/ch;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>(LG/Q;LG/Q;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ch;->a:Ljava/util/LinkedList;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ch;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ch;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a()LG/Q;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ch;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LG/Q;

    return-object p0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/ch;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/ch;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/Q;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ch;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, LG/Q;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ch;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ch;->a:Ljava/util/LinkedList;

    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/ch;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedList;->addAll(ILjava/util/Collection;)Z

    move v0, v3

    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/ch;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/Q;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ch;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, LG/Q;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ch;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ch;->a:Ljava/util/LinkedList;

    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/ch;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public b()LG/Q;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ch;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LG/Q;

    return-object p0
.end method

.method public c()LG/m;
    .locals 3

    new-instance v0, LG/b;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ch;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-direct {v0, v1}, LG/b;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ch;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LG/Q;

    invoke-virtual {v0, p0}, LG/b;->a(LG/Q;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LG/b;->d()LG/m;

    move-result-object v0

    return-object v0
.end method

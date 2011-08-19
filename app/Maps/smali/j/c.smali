.class Lj/c;
.super Lj/s;

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field final synthetic a:Lj/q;


# direct methods
.method constructor <init>(Lj/q;)V
    .locals 0

    iput-object p1, p0, Lj/c;->a:Lj/q;

    invoke-direct {p0, p1}, Lj/s;-><init>(Lj/y;)V

    return-void
.end method

.method public constructor <init>(Lj/q;I)V
    .locals 1

    iput-object p1, p0, Lj/c;->a:Lj/q;

    invoke-virtual {p1}, Lj/q;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lj/s;-><init>(Lj/y;Ljava/util/Iterator;)V

    return-void
.end method

.method private c()Ljava/util/ListIterator;
    .locals 0

    invoke-virtual {p0}, Lj/c;->b()Ljava/util/Iterator;

    move-result-object p0

    check-cast p0, Ljava/util/ListIterator;

    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lj/c;->a:Lj/q;

    invoke-virtual {v0}, Lj/q;->isEmpty()Z

    move-result v0

    invoke-direct {p0}, Lj/c;->c()Ljava/util/ListIterator;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    iget-object v1, p0, Lj/c;->a:Lj/q;

    iget-object v1, v1, Lj/q;->a:Lj/f;

    invoke-static {v1}, Lj/f;->c(Lj/f;)I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj/c;->a:Lj/q;

    invoke-virtual {v0}, Lj/q;->e()V

    :cond_0
    return-void
.end method

.method public hasPrevious()Z
    .locals 1

    invoke-direct {p0}, Lj/c;->c()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public nextIndex()I
    .locals 1

    invoke-direct {p0}, Lj/c;->c()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lj/c;->c()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    invoke-direct {p0}, Lj/c;->c()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Lj/c;->c()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method

.class Lj/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final b:Ljava/util/Iterator;

.field final c:Ljava/util/Collection;

.field final synthetic d:Lj/y;


# direct methods
.method constructor <init>(Lj/y;)V
    .locals 2

    iput-object p1, p0, Lj/s;->d:Lj/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lj/s;->d:Lj/y;

    iget-object v0, v0, Lj/y;->d:Ljava/util/Collection;

    iput-object v0, p0, Lj/s;->c:Ljava/util/Collection;

    iget-object v0, p1, Lj/y;->g:Lj/f;

    iget-object v1, p1, Lj/y;->d:Ljava/util/Collection;

    invoke-static {v0, v1}, Lj/f;->a(Lj/f;Ljava/util/Collection;)Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lj/s;->b:Ljava/util/Iterator;

    return-void
.end method

.method constructor <init>(Lj/y;Ljava/util/Iterator;)V
    .locals 1

    iput-object p1, p0, Lj/s;->d:Lj/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lj/s;->d:Lj/y;

    iget-object v0, v0, Lj/y;->d:Ljava/util/Collection;

    iput-object v0, p0, Lj/s;->c:Ljava/util/Collection;

    iput-object p2, p0, Lj/s;->b:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    iget-object v0, p0, Lj/s;->d:Lj/y;

    invoke-virtual {v0}, Lj/y;->b()V

    iget-object v0, p0, Lj/s;->d:Lj/y;

    iget-object v0, v0, Lj/y;->d:Ljava/util/Collection;

    iget-object v1, p0, Lj/s;->c:Ljava/util/Collection;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method b()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lj/s;->a()V

    iget-object v0, p0, Lj/s;->b:Ljava/util/Iterator;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    invoke-virtual {p0}, Lj/s;->a()V

    iget-object v0, p0, Lj/s;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lj/s;->a()V

    iget-object v0, p0, Lj/s;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lj/s;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v0, p0, Lj/s;->d:Lj/y;

    iget-object v0, v0, Lj/y;->g:Lj/f;

    invoke-static {v0}, Lj/f;->b(Lj/f;)I

    iget-object v0, p0, Lj/s;->d:Lj/y;

    invoke-virtual {v0}, Lj/y;->c()V

    return-void
.end method

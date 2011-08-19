.class public Lj/e;
.super Lj/ap;


# instance fields
.field final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lj/ap;-><init>()V

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lj/e;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()Lj/O;
    .locals 1

    iget-object v0, p0, Lj/e;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Lj/O;->a(Ljava/util/Collection;)Lj/O;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lj/e;
    .locals 2

    iget-object v0, p0, Lj/e;->a:Ljava/util/ArrayList;

    invoke-static {p1}, Lae/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs a([Ljava/lang/Object;)Lj/e;
    .locals 3

    iget-object v0, p0, Lj/e;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lj/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    invoke-super {p0, p1}, Lj/ap;->b([Ljava/lang/Object;)Lj/ap;

    return-object p0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Lj/ap;
    .locals 1

    invoke-virtual {p0, p1}, Lj/e;->a(Ljava/lang/Object;)Lj/e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b([Ljava/lang/Object;)Lj/ap;
    .locals 1

    invoke-virtual {p0, p1}, Lj/e;->a([Ljava/lang/Object;)Lj/e;

    move-result-object v0

    return-object v0
.end method

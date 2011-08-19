.class abstract Lj/az;
.super Lj/O;


# instance fields
.field final transient b:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lj/O;-><init>()V

    iput-object p1, p0, Lj/az;->b:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b()Lj/ad;
    .locals 1

    iget-object v0, p0, Lj/az;->b:[Ljava/lang/Object;

    invoke-static {v0}, Lj/l;->a([Ljava/lang/Object;)Lj/ad;

    move-result-object v0

    return-object v0
.end method

.method c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-ne p1, p0, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lj/az;

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lj/O;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p0}, Lj/az;->size()I

    move-result v1

    if-le v0, v1, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    check-cast p1, Lj/az;

    iget-object v0, p1, Lj/az;->b:[Ljava/lang/Object;

    array-length v1, v0

    move v2, v4

    :goto_1
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Lj/az;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v4

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v0, v5

    goto :goto_0
.end method

.method f()Lj/v;
    .locals 2

    new-instance v0, Lj/p;

    iget-object v1, p0, Lj/az;->b:[Ljava/lang/Object;

    invoke-direct {v0, v1, p0}, Lj/p;-><init>([Ljava/lang/Object;Lj/Z;)V

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lj/az;->b()Lj/ad;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lj/az;->b:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lj/az;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lj/az;->b:[Ljava/lang/Object;

    invoke-virtual {p0}, Lj/az;->size()I

    move-result v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lj/az;->size()I

    move-result v0

    array-length v1, p1

    if-ge v1, v0, :cond_0

    invoke-static {p1, v0}, Lj/R;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lj/az;->b:[Ljava/lang/Object;

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_0
    array-length v1, p1

    if-le v1, v0, :cond_1

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_1
    move-object v1, p1

    goto :goto_0
.end method

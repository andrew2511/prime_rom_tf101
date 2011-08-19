.class public final LG/t;
.super LG/z;


# instance fields
.field private a:[LG/Q;

.field private volatile b:LG/S;


# direct methods
.method public constructor <init>([LG/Q;)V
    .locals 0

    invoke-direct {p0}, LG/z;-><init>()V

    iput-object p1, p0, LG/t;->a:[LG/Q;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, LG/t;->a:[LG/Q;

    array-length v0, v0

    return v0
.end method

.method public a(I)LG/Q;
    .locals 1

    iget-object v0, p0, LG/t;->a:[LG/Q;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a(LG/Q;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, LG/t;->b()LG/S;

    move-result-object v0

    invoke-virtual {v0, p1}, LG/S;->a(LG/Q;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, LG/t;->a:[LG/Q;

    array-length v0, v0

    iget-object v1, p0, LG/t;->a:[LG/Q;

    sub-int v2, v0, v6

    aget-object v1, v1, v2

    move-object v2, v1

    move v3, v5

    move v1, v5

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v4, p0, LG/t;->a:[LG/Q;

    aget-object v4, v4, v1

    invoke-static {v2, v4, p1}, LG/H;->b(LG/Q;LG/Q;LG/Q;)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v2, v3, 0x1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    move-object v2, v4

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v3, 0x1

    if-ne v0, v6, :cond_2

    move v0, v6

    goto :goto_0

    :cond_2
    move v0, v5

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_2
.end method

.method public b()LG/S;
    .locals 1

    iget-object v0, p0, LG/t;->b:LG/S;

    if-nez v0, :cond_0

    iget-object v0, p0, LG/t;->a:[LG/Q;

    invoke-static {v0}, LG/S;->a([LG/Q;)LG/S;

    move-result-object v0

    iput-object v0, p0, LG/t;->b:LG/S;

    :cond_0
    iget-object v0, p0, LG/t;->b:LG/S;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, LG/t;

    if-eqz v0, :cond_1

    check-cast p1, LG/t;

    iget-object v0, p0, LG/t;->a:[LG/Q;

    iget-object v1, p1, LG/t;->a:[LG/Q;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LG/t;->a:[LG/Q;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.class public final LG/v;
.super LG/z;


# instance fields
.field private a:[LG/Q;

.field private b:LG/S;


# direct methods
.method protected constructor <init>([LG/Q;)V
    .locals 1

    invoke-direct {p0}, LG/z;-><init>()V

    iput-object p1, p0, LG/v;->a:[LG/Q;

    invoke-static {p1}, LG/S;->a([LG/Q;)LG/S;

    move-result-object v0

    iput-object v0, p0, LG/v;->b:LG/S;

    return-void
.end method

.method public static a(LG/Q;LG/Q;LG/Q;LG/Q;)LG/v;
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [LG/Q;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    new-instance v1, LG/v;

    invoke-direct {v1, v0}, LG/v;-><init>([LG/Q;)V

    return-object v1
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public a(I)LG/Q;
    .locals 1

    iget-object v0, p0, LG/v;->a:[LG/Q;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a(LG/Q;)Z
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, LG/v;->a:[LG/Q;

    aget-object v0, v0, v3

    iget-object v1, p0, LG/v;->a:[LG/Q;

    aget-object v1, v1, v4

    invoke-static {v0, v1, p1}, LG/H;->b(LG/Q;LG/Q;LG/Q;)Z

    move-result v0

    if-eqz v0, :cond_4

    add-int/lit8 v0, v3, 0x1

    :goto_0
    iget-object v1, p0, LG/v;->a:[LG/Q;

    aget-object v1, v1, v4

    iget-object v2, p0, LG/v;->a:[LG/Q;

    aget-object v2, v2, v5

    invoke-static {v1, v2, p1}, LG/H;->b(LG/Q;LG/Q;LG/Q;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    iget-object v1, p0, LG/v;->a:[LG/Q;

    aget-object v1, v1, v5

    iget-object v2, p0, LG/v;->a:[LG/Q;

    aget-object v2, v2, v6

    invoke-static {v1, v2, p1}, LG/H;->b(LG/Q;LG/Q;LG/Q;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object v1, p0, LG/v;->a:[LG/Q;

    aget-object v1, v1, v6

    iget-object v2, p0, LG/v;->a:[LG/Q;

    aget-object v2, v2, v3

    invoke-static {v1, v2, p1}, LG/H;->b(LG/Q;LG/Q;LG/Q;)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    if-ne v0, v4, :cond_3

    move v0, v4

    :goto_1
    return v0

    :cond_3
    move v0, v3

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_0
.end method

.method public a(LG/z;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, LG/v;->b()LG/S;

    move-result-object v0

    invoke-virtual {p1}, LG/z;->b()LG/S;

    move-result-object v1

    invoke-virtual {v0, v1}, LG/S;->b(LG/z;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v0, v2

    :goto_1
    invoke-virtual {p1}, LG/z;->a()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, LG/z;->a(I)LG/Q;

    move-result-object v1

    invoke-virtual {p0, v1}, LG/v;->a(LG/Q;)Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()LG/S;
    .locals 1

    iget-object v0, p0, LG/v;->b:LG/S;

    return-object v0
.end method

.method public c()LG/Q;
    .locals 2

    iget-object v0, p0, LG/v;->a:[LG/Q;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public d()LG/Q;
    .locals 2

    iget-object v0, p0, LG/v;->a:[LG/Q;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public e()LG/Q;
    .locals 2

    iget-object v0, p0, LG/v;->a:[LG/Q;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, LG/v;

    if-eqz v0, :cond_1

    check-cast p1, LG/v;

    iget-object v0, p0, LG/v;->a:[LG/Q;

    iget-object v1, p1, LG/v;->a:[LG/Q;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()LG/Q;
    .locals 2

    iget-object v0, p0, LG/v;->a:[LG/Q;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public g()LG/Q;
    .locals 2

    iget-object v0, p0, LG/v;->a:[LG/Q;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LG/v;->a:[LG/Q;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LG/v;->a:[LG/Q;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LG/v;->a:[LG/Q;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LG/v;->a:[LG/Q;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LG/v;->a:[LG/Q;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

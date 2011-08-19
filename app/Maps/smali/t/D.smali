.class public Lt/D;
.super LG/w;


# instance fields
.field private final d:LG/T;


# direct methods
.method public constructor <init>(IIILG/T;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, LG/w;-><init>(III)V

    iput-object p4, p0, Lt/D;->d:LG/T;

    return-void
.end method

.method public constructor <init>(LG/w;LG/T;)V
    .locals 3

    invoke-virtual {p1}, LG/w;->b()I

    move-result v0

    invoke-virtual {p1}, LG/w;->c()I

    move-result v1

    invoke-virtual {p1}, LG/w;->d()I

    move-result v2

    invoke-direct {p0, v0, v1, v2, p2}, Lt/D;-><init>(IIILG/T;)V

    return-void
.end method


# virtual methods
.method public a()LG/T;
    .locals 1

    iget-object v0, p0, Lt/D;->d:LG/T;

    return-object v0
.end method

.method public a(Lt/D;)Z
    .locals 2

    iget-object v0, p0, Lt/D;->d:LG/T;

    iget-object v1, p1, Lt/D;->d:LG/T;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v1, 0x1

    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lt/D;

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, LG/w;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Lt/D;

    invoke-virtual {p0, p1}, Lt/D;->a(Lt/D;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, LG/w;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lt/D;->d:LG/T;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[layer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lt/D;->d:LG/T;

    invoke-virtual {v1}, LG/T;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " params: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lt/D;->d:LG/T;

    invoke-virtual {v1}, LG/T;->d()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    const-string v1, " coords: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, LG/w;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lm/m;
.super Lm/R;


# instance fields
.field private final a:[Lm/R;


# direct methods
.method public constructor <init>([Lm/R;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lm/R;-><init>(Lm/A;)V

    iput-object p1, p0, Lm/m;->a:[Lm/R;

    return-void
.end method


# virtual methods
.method public a()[Lm/R;
    .locals 1

    iget-object v0, p0, Lm/m;->a:[Lm/R;

    return-object v0
.end method

.method public b()Z
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lm/m;->a:[Lm/R;

    array-length v1, v0

    move v2, v4

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lm/R;->b()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v4

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lm/m;->a:[Lm/R;

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lm/m;

    if-eqz v0, :cond_0

    check-cast p1, Lm/m;

    iget-object v0, p1, Lm/m;->a:[Lm/R;

    iget-object v1, p0, Lm/m;->a:[Lm/R;

    invoke-static {v0, v1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lm/m;->a:[Lm/R;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lm/m;->a:[Lm/R;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lm/m;->a:[Lm/R;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

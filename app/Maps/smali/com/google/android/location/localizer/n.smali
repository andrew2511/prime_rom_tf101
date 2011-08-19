.class Lcom/google/android/location/localizer/n;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a([D)D
    .locals 8

    const-wide/16 v0, 0x0

    array-length v2, p1

    const/4 v3, 0x0

    move v7, v3

    move-wide v3, v0

    move v0, v7

    :goto_0
    if-ge v0, v2, :cond_0

    aget-wide v5, p1, v0

    add-double/2addr v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide v3
.end method


# virtual methods
.method public a(Ljava/util/List;[D)LW/u;
    .locals 11

    const-wide/16 v3, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    array-length v1, p2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required List<Position>.size() == weights.length. Input was List<Position>=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and weights.length=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/location/localizer/n;->a([D)D

    move-result-wide v0

    cmpl-double v2, v0, v3

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v2, 0x0

    move-wide v5, v3

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LW/u;

    aget-wide v7, p2, v2

    iget v9, p0, LW/u;->a:I

    int-to-double v9, v9

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    aget-wide v7, p2, v2

    iget v9, p0, LW/u;->b:I

    int-to-double v9, v9

    mul-double/2addr v7, v9

    add-double/2addr v3, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    div-double/2addr v5, v0

    double-to-int v2, v5

    div-double v0, v3, v0

    double-to-int v0, v0

    new-instance v1, LW/u;

    invoke-direct {v1, v2, v0}, LW/u;-><init>(II)V

    move-object v0, v1

    goto :goto_0
.end method

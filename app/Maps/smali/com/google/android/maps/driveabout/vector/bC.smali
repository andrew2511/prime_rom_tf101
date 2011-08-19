.class Lcom/google/android/maps/driveabout/vector/bC;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/HashMap;

.field private b:[Lcom/google/android/maps/driveabout/vector/bC;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(III)I
    .locals 2

    shr-int v0, p1, p3

    and-int/lit8 v0, v0, 0x1

    shr-int v1, p2, p3

    and-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public a(I)Lcom/google/android/maps/driveabout/vector/bC;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bC;->b:[Lcom/google/android/maps/driveabout/vector/bC;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bC;->b:[Lcom/google/android/maps/driveabout/vector/bC;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public a(B)Lcom/google/android/maps/driveabout/vector/l;
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bC;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bC;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/maps/driveabout/vector/l;

    move-object v0, p0

    goto :goto_0
.end method

.method public a(IIIBLcom/google/android/maps/driveabout/vector/l;)V
    .locals 6

    if-gtz p3, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bC;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bC;->a:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bC;->a:Ljava/util/HashMap;

    invoke-static {p4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    add-int/lit8 v3, p3, -0x1

    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/maps/driveabout/vector/bC;->a(III)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bC;->b:[Lcom/google/android/maps/driveabout/vector/bC;

    if-nez v1, :cond_2

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/google/android/maps/driveabout/vector/bC;

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/bC;->b:[Lcom/google/android/maps/driveabout/vector/bC;

    :cond_2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bC;->b:[Lcom/google/android/maps/driveabout/vector/bC;

    aget-object v1, v1, v0

    if-nez v1, :cond_3

    new-instance v1, Lcom/google/android/maps/driveabout/vector/bC;

    invoke-direct {v1}, Lcom/google/android/maps/driveabout/vector/bC;-><init>()V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bC;->b:[Lcom/google/android/maps/driveabout/vector/bC;

    aput-object v1, v2, v0

    move-object v0, v1

    :goto_1
    move v1, p1

    move v2, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bC;->a(IIIBLcom/google/android/maps/driveabout/vector/l;)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

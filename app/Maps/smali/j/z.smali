.class abstract Lj/z;
.super Lj/O;


# instance fields
.field final a:[Ljava/lang/Object;

.field final b:I


# direct methods
.method constructor <init>([Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Lj/O;-><init>()V

    iput-object p1, p0, Lj/z;->a:[Ljava/lang/Object;

    iput p2, p0, Lj/z;->b:I

    return-void
.end method


# virtual methods
.method abstract a(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()Lj/ad;
    .locals 2

    new-instance v0, Lj/V;

    iget-object v1, p0, Lj/z;->a:[Ljava/lang/Object;

    array-length v1, v1

    invoke-direct {v0, p0, v1}, Lj/V;-><init>(Lj/z;I)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lj/z;->b:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lj/z;->b()Lj/ad;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lj/z;->a:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lj/z;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lj/z;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lj/z;->size()I

    move-result v0

    array-length v1, p1

    if-ge v1, v0, :cond_0

    invoke-static {p1, v0}, Lj/R;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lj/z;->a:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lj/z;->a:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lj/z;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    array-length v1, p1

    if-le v1, v0, :cond_1

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_1
    move-object v0, p1

    goto :goto_0

    :cond_2
    return-object v0
.end method

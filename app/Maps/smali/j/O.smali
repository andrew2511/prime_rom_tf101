.class public abstract Lj/O;
.super Lj/Z;

# interfaces
.implements Ljava/util/Set;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lj/Z;-><init>()V

    return-void
.end method

.method static a(I)I
    .locals 3

    const/high16 v2, 0x4000

    const/high16 v0, 0x2000

    if-ge p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    :goto_0
    return v0

    :cond_0
    if-ge p0, v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    const-string v1, "collection too large"

    invoke-static {v0, v1}, Lae/k;->a(ZLjava/lang/Object;)V

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Ljava/util/Collection;)Lj/O;
    .locals 3

    instance-of v1, p0, Lj/O;

    if-eqz v1, :cond_0

    instance-of v1, p0, Lj/i;

    if-nez v1, :cond_0

    move-object v0, p0

    check-cast v0, Lj/O;

    move-object v1, v0

    invoke-virtual {v1}, Lj/O;->c()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0}, Lj/O;->b(Ljava/util/Collection;)Lj/O;

    move-result-object v1

    goto :goto_0
.end method

.method private static varargs a([Ljava/lang/Object;)Lj/O;
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    array-length v0, p0

    invoke-static {v0}, Lj/O;->a(I)I

    move-result v0

    new-array v1, v0, [Ljava/lang/Object;

    sub-int v2, v0, v12

    const/4 v3, 0x0

    move v4, v11

    move-object v5, v3

    move v3, v11

    :goto_0
    array-length v6, p0

    if-ge v3, v6, :cond_4

    aget-object v6, p0, v3

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Lj/t;->a(I)I

    move-result v8

    :goto_1
    and-int v9, v8, v2

    aget-object v10, v1, v9

    if-nez v10, :cond_2

    if-eqz v5, :cond_0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    aput-object v6, v1, v9

    add-int/2addr v4, v7

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    if-nez v5, :cond_1

    new-instance v5, Ljava/util/ArrayList;

    array-length v6, p0

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move v6, v11

    :goto_2
    if-ge v6, v3, :cond_1

    aget-object v7, p0, v6

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    if-nez v5, :cond_5

    move-object v3, p0

    :goto_3
    array-length v5, v3

    if-ne v5, v12, :cond_6

    aget-object v0, v3, v11

    new-instance v1, Lj/aJ;

    invoke-direct {v1, v0, v4}, Lj/aJ;-><init>(Ljava/lang/Object;I)V

    move-object v0, v1

    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    goto :goto_3

    :cond_6
    array-length v5, v3

    invoke-static {v5}, Lj/O;->a(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    if-le v0, v5, :cond_7

    invoke-static {v3}, Lj/O;->a([Ljava/lang/Object;)Lj/O;

    move-result-object v0

    goto :goto_4

    :cond_7
    new-instance v0, Lj/a;

    invoke-direct {v0, v3, v4, v1, v2}, Lj/a;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;I)V

    goto :goto_4
.end method

.method private static b(Ljava/util/Collection;)Lj/O;
    .locals 2

    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    packed-switch v1, :pswitch_data_0

    invoke-static {v0}, Lj/O;->a([Ljava/lang/Object;)Lj/O;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {}, Lj/O;->d()Lj/O;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lj/O;->e(Ljava/lang/Object;)Lj/O;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static d()Lj/O;
    .locals 1

    sget-object v0, Lj/b;->a:Lj/b;

    return-object v0
.end method

.method public static e(Ljava/lang/Object;)Lj/O;
    .locals 1

    new-instance v0, Lj/aJ;

    invoke-direct {v0, p0}, Lj/aJ;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract b()Lj/ad;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    instance-of v1, p1, Lj/O;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lj/O;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Lj/O;

    move-object v1, v0

    invoke-virtual {v1}, Lj/O;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lj/O;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lj/aH;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lj/aH;->a(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lj/O;->b()Lj/ad;

    move-result-object v0

    return-object v0
.end method

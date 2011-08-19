.class public abstract Lj/v;
.super Lj/Z;

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lj/Z;-><init>()V

    return-void
.end method

.method public static a()Lj/v;
    .locals 1

    sget-object v0, Lj/ag;->a:Lj/ag;

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lj/v;
    .locals 1

    new-instance v0, Lj/m;

    invoke-direct {v0, p0}, Lj/m;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Lj/v;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lj/v;->b([Ljava/lang/Object;)Lj/v;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Collection;)Lj/v;
    .locals 2

    instance-of v0, p0, Lj/Z;

    if-eqz v0, :cond_1

    check-cast p0, Lj/Z;

    invoke-virtual {p0}, Lj/Z;->e()Lj/v;

    move-result-object v0

    invoke-virtual {v0}, Lj/v;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lj/v;->b(Ljava/util/Collection;)Lj/v;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lj/v;->b(Ljava/util/Collection;)Lj/v;

    move-result-object v0

    goto :goto_0
.end method

.method public static a([Ljava/lang/Object;)Lj/v;
    .locals 2

    array-length v0, p0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Lj/v;->b([Ljava/lang/Object;)Lj/v;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {}, Lj/v;->a()Lj/v;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v0, Lj/m;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, Lj/m;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object p0
.end method

.method private static b(Ljava/util/Collection;)Lj/v;
    .locals 3

    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    packed-switch v1, :pswitch_data_0

    invoke-static {v0}, Lj/v;->b([Ljava/lang/Object;)Lj/v;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {}, Lj/v;->a()Lj/v;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v1, Lj/m;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-direct {v1, v0}, Lj/m;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static varargs b([Ljava/lang/Object;)Lj/v;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-object v1, p0, v0

    invoke-static {v1, v0}, Lj/v;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lj/aI;

    invoke-direct {v0, p0}, Lj/aI;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(I)Lj/ai;
.end method

.method public abstract a(II)Lj/v;
.end method

.method public final add(ILjava/lang/Object;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public b()Lj/ad;
    .locals 1

    invoke-virtual {p0}, Lj/v;->d()Lj/ai;

    move-result-object v0

    return-object v0
.end method

.method public d()Lj/ai;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lj/v;->a(I)Lj/ai;

    move-result-object v0

    return-object v0
.end method

.method public e()Lj/v;
    .locals 0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Lj/X;->a(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lj/X;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lj/v;->b()Lj/ad;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    invoke-virtual {p0}, Lj/v;->d()Lj/ai;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1

    invoke-virtual {p0, p1}, Lj/v;->a(I)Lj/ai;

    move-result-object v0

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lj/v;->a(II)Lj/v;

    move-result-object v0

    return-object v0
.end method

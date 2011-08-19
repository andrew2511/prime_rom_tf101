.class final Lj/ag;
.super Lj/v;


# static fields
.field static final a:Lj/ag;

.field static final b:Lj/ai;

.field private static final d:[Ljava/lang/Object;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj/ag;

    invoke-direct {v0}, Lj/ag;-><init>()V

    sput-object v0, Lj/ag;->a:Lj/ag;

    new-instance v0, Lj/au;

    invoke-direct {v0}, Lj/au;-><init>()V

    sput-object v0, Lj/ag;->b:Lj/ai;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lj/ag;->d:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lj/v;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lj/ai;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lae/k;->b(II)I

    sget-object v0, Lj/ag;->b:Lj/ai;

    return-object v0
.end method

.method public a(II)Lj/v;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lae/k;->a(III)V

    return-object p0
.end method

.method public b()Lj/ad;
    .locals 1

    invoke-static {}, Lj/l;->a()Lj/ad;

    move-result-object v0

    return-object v0
.end method

.method c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public d()Lj/ai;
    .locals 1

    sget-object v0, Lj/ag;->b:Lj/ai;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lae/k;->a(II)I

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "unreachable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lj/ag;->b()Lj/ad;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public bridge synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    invoke-virtual {p0}, Lj/ag;->d()Lj/ai;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1

    invoke-virtual {p0, p1}, Lj/ag;->a(I)Lj/ai;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lj/ag;->a(II)Lj/v;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    sget-object v0, Lj/ag;->d:[Ljava/lang/Object;

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[]"

    return-object v0
.end method

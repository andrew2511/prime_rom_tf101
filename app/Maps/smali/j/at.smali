.class final Lj/at;
.super Lj/ao;


# static fields
.field static final a:Lj/at;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj/at;

    invoke-direct {v0}, Lj/at;-><init>()V

    sput-object v0, Lj/at;->a:Lj/at;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lj/ao;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lj/O;
    .locals 1

    invoke-static {}, Lj/O;->d()Lj/O;

    move-result-object v0

    return-object v0
.end method

.method public b()Lj/O;
    .locals 1

    invoke-static {}, Lj/O;->d()Lj/O;

    move-result-object v0

    return-object v0
.end method

.method public c()Lj/Z;
    .locals 1

    sget-object v0, Lj/Z;->c:Lj/Z;

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lj/at;->a()Lj/O;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lj/at;->b()Lj/O;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "{}"

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lj/at;->c()Lj/Z;

    move-result-object v0

    return-object v0
.end method

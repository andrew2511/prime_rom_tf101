.class Lj/ar;
.super Lj/z;


# instance fields
.field final d:Lj/av;


# direct methods
.method constructor <init>(Lj/av;)V
    .locals 2

    invoke-static {p1}, Lj/av;->a(Lj/av;)[Lj/af;

    move-result-object v0

    invoke-static {p1}, Lj/av;->b(Lj/av;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lj/z;-><init>([Ljava/lang/Object;I)V

    iput-object p1, p0, Lj/ar;->d:Lj/av;

    return-void
.end method


# virtual methods
.method bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lj/ar;->a(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lj/ar;->d:Lj/av;

    invoke-virtual {v0, p1}, Lj/av;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

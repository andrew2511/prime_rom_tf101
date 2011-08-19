.class Lj/ae;
.super Lj/Z;


# instance fields
.field final a:Lj/av;


# direct methods
.method constructor <init>(Lj/av;)V
    .locals 0

    invoke-direct {p0}, Lj/Z;-><init>()V

    iput-object p1, p0, Lj/ae;->a:Lj/av;

    return-void
.end method


# virtual methods
.method public b()Lj/ad;
    .locals 2

    new-instance v0, Lj/W;

    iget-object v1, p0, Lj/ae;->a:Lj/av;

    invoke-static {v1}, Lj/av;->a(Lj/av;)[Lj/af;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, p0, v1}, Lj/W;-><init>(Lj/ae;I)V

    return-object v0
.end method

.method c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lj/ae;->a:Lj/av;

    invoke-virtual {v0, p1}, Lj/av;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lj/ae;->b()Lj/ad;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lj/ae;->a:Lj/av;

    invoke-static {v0}, Lj/av;->a(Lj/av;)[Lj/af;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

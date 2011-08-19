.class Lj/aG;
.super Lj/Z;


# instance fields
.field final a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lj/Z;-><init>()V

    iput-object p1, p0, Lj/aG;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b()Lj/ad;
    .locals 1

    iget-object v0, p0, Lj/aG;->a:Ljava/lang/Object;

    invoke-static {v0}, Lj/l;->a(Ljava/lang/Object;)Lj/ad;

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

    iget-object v0, p0, Lj/aG;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lj/aG;->b()Lj/ad;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

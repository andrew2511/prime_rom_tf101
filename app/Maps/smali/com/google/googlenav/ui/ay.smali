.class Lcom/google/googlenav/ui/ay;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/bw;

.field private final b:Lcom/google/googlenav/ui/aG;

.field private final c:Lcom/google/googlenav/ui/aS;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/bw;Lcom/google/googlenav/ui/aG;Lcom/google/googlenav/ui/aS;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/ay;->a:Lcom/google/googlenav/ui/bw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/googlenav/ui/ay;->b:Lcom/google/googlenav/ui/aG;

    iput-object p3, p0, Lcom/google/googlenav/ui/ay;->c:Lcom/google/googlenav/ui/aS;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/googlenav/ui/aG;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/ay;->b:Lcom/google/googlenav/ui/aG;

    return-object v0
.end method

.method public b()Lk/l;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/ay;->b:Lcom/google/googlenav/ui/aG;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aG;->a()LaD/p;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/ay;->c:Lcom/google/googlenav/ui/aS;

    invoke-virtual {v0, v1}, LaD/p;->c(Lcom/google/googlenav/ui/aS;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/ay;->b:Lcom/google/googlenav/ui/aG;

    iget-object v1, p0, Lcom/google/googlenav/ui/ay;->c:Lcom/google/googlenav/ui/aS;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aG;->a(Lcom/google/googlenav/ui/aH;)Lk/l;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/ay;->a:Lcom/google/googlenav/ui/bw;

    invoke-static {v0}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/bw;)Lk/l;

    move-result-object v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x0

    instance-of v0, p1, Lcom/google/googlenav/ui/ay;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lcom/google/googlenav/ui/ay;

    iget-object v0, p0, Lcom/google/googlenav/ui/ay;->b:Lcom/google/googlenav/ui/aG;

    iget-object v1, p1, Lcom/google/googlenav/ui/ay;->b:Lcom/google/googlenav/ui/aG;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/ay;->c:Lcom/google/googlenav/ui/aS;

    iget-object v1, p1, Lcom/google/googlenav/ui/ay;->c:Lcom/google/googlenav/ui/aS;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aS;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/ay;->b:Lcom/google/googlenav/ui/aG;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/ay;->c:Lcom/google/googlenav/ui/aS;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aS;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

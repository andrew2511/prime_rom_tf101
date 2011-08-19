.class public Lcom/google/googlenav/ui/aA;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lax/c;Z)I
    .locals 2

    invoke-virtual {p1}, Lax/c;->e()C

    move-result v0

    const/16 v1, 0x33

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lax/c;->e()C

    move-result v0

    const/16 v1, 0x31

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_3

    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Lax/c;)V
    .locals 4

    const/16 v3, 0x10

    invoke-virtual {p1}, Lax/c;->e()C

    move-result v0

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lac/g;->a(ILjava/lang/String;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const-string v0, "s"

    invoke-static {v3, v0}, Lac/g;->a(ILjava/lang/String;)Z

    goto :goto_0
.end method

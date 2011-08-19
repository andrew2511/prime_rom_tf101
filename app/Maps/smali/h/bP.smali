.class Lh/bP;
.super Ljava/lang/Object;

# interfaces
.implements Lx/U;


# instance fields
.field final synthetic a:Lh/eM;


# direct methods
.method constructor <init>(Lh/eM;)V
    .locals 0

    iput-object p1, p0, Lh/bP;->a:Lh/eM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lx/Q;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    instance-of v0, p1, Lx/a;

    if-nez v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lx/a;

    iget-object v0, p1, Lx/a;->b:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    :goto_1
    const-string v2, "accept"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lh/bP;->a:Lh/eM;

    invoke-static {v1}, Lh/eM;->a(Lh/eM;)Lh/dx;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Lh/dx;->a(I)V

    iget-object v0, p0, Lh/bP;->a:Lh/eM;

    iput v3, v0, Lh/eM;->k:I

    move v0, v3

    goto :goto_0

    :cond_1
    const-string v0, "decline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lh/bP;->a:Lh/eM;

    invoke-static {v0}, Lh/eM;->a(Lh/eM;)Lh/dx;

    move-result-object v0

    invoke-interface {v0}, Lh/dx;->a()V

    iget-object v0, p0, Lh/bP;->a:Lh/eM;

    iput v3, v0, Lh/eM;->k:I

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_0

    :cond_3
    move-object v0, v5

    move-object v1, v5

    goto :goto_1
.end method

.method public b(Lx/Q;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

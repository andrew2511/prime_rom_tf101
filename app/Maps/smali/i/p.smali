.class public Li/p;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/googlenav/c;ILcom/google/googlenav/ui/av;Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;
    .locals 2

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v0, p3}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Z)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0x2c4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    if-eqz p2, :cond_0

    const/16 v1, 0x15

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->c(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    :cond_0
    return-object v0
.end method

.method public static a(Lcom/google/googlenav/c;Lk/l;Lx/U;)Lcom/google/googlenav/ui/bx;
    .locals 3

    invoke-static {p0}, Li/p;->a(Lcom/google/googlenav/c;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    sget-object v2, Lcom/google/googlenav/ui/av;->c:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/16 v0, 0x15

    sget-object v2, Lcom/google/googlenav/ui/av;->af:Lcom/google/googlenav/ui/av;

    invoke-static {p0, v0, v2, v1}, Li/p;->a(Lcom/google/googlenav/c;ILcom/google/googlenav/ui/av;Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/aQ;->a(Lk/l;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/aQ;->a(Lx/U;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Z)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/c;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x3da

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->by()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/c;Ljava/util/Vector;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->bx()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Li/p;->b(Lcom/google/googlenav/c;)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private static b(Lcom/google/googlenav/c;)Lcom/google/googlenav/ui/bx;
    .locals 3

    invoke-static {p0}, Li/p;->a(Lcom/google/googlenav/c;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    sget-object v2, Lcom/google/googlenav/ui/av;->aN:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v0, 0x4

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1}, Li/p;->a(Lcom/google/googlenav/c;ILcom/google/googlenav/ui/av;Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0
.end method

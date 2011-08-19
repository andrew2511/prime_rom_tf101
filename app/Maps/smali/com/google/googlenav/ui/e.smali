.class public Lcom/google/googlenav/ui/e;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;I)Lcom/google/googlenav/ui/bx;
    .locals 2

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    sget-object v1, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    invoke-static {p0, v1}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;ILk/l;)Lcom/google/googlenav/ui/bx;
    .locals 2

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    sget-object v1, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    invoke-static {p0, v1}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/aQ;->a(Lk/l;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;IZ)Lcom/google/googlenav/ui/bx;
    .locals 2

    if-nez p2, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/google/googlenav/ui/e;->a(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    sget-object v1, Lcom/google/googlenav/ui/av;->aN:Lcom/google/googlenav/ui/av;

    invoke-static {p0, v1}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/google/googlenav/ui/av;I)Lcom/google/googlenav/ui/bx;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/googlenav/ui/aI;

    const/4 v1, 0x0

    invoke-static {p0, p1}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->a([Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ILk/l;)Lcom/google/googlenav/ui/bx;
    .locals 6

    sget-object v2, Lcom/google/googlenav/ui/av;->aN:Lcom/google/googlenav/ui/av;

    sget-object v3, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/googlenav/ui/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ui/av;Lcom/google/googlenav/ui/av;ILk/l;)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/googlenav/ui/bx;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/googlenav/ui/aI;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    invoke-static {p0, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    if-eqz p3, :cond_1

    const/16 v1, 0x8

    :cond_0
    :goto_0
    invoke-static {p2}, Lcom/google/googlenav/ui/aV;->f(I)C

    move-result v2

    invoke-static {v0, p1, p2, v2, v1}, Lcom/google/googlenav/ui/e;->a([Lcom/google/googlenav/ui/aI;Ljava/lang/String;ICI)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v2, 0x5

    if-ne p2, v2, :cond_0

    const/16 v1, 0xb

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ui/av;Lcom/google/googlenav/ui/av;ILk/l;)Lcom/google/googlenav/ui/bx;
    .locals 2

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-static {p0, p2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-static {p1, p3}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/google/googlenav/ui/aQ;->a(Lk/l;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Vector;ILcom/google/googlenav/ui/az;Z)Lcom/google/googlenav/ui/bx;
    .locals 3

    invoke-virtual {p2, p3}, Lcom/google/googlenav/ui/az;->a(Z)V

    new-instance v0, Lcom/google/googlenav/ui/aB;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aB;-><init>()V

    invoke-static {p2, v0}, Lcom/google/googlenav/ui/bi;->a(Lcom/google/googlenav/ui/aH;Lcom/google/googlenav/ui/aj;)Lcom/google/googlenav/ui/bi;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v1, p0}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->b(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0
.end method

.method public static a([Lcom/google/googlenav/ui/aI;Ljava/lang/String;ICI)Lcom/google/googlenav/ui/bx;
    .locals 3

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/aQ;->a([Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/aQ;->a(Ljava/lang/String;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aV;->x()Lk/j;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bi;->a(Ljava/lang/String;Lk/j;)Lcom/google/googlenav/ui/bi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Vector;Ljava/lang/String;)Lx/n;
    .locals 6

    const/4 v5, 0x0

    invoke-static {p1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    sget-object v1, Lcom/google/googlenav/ui/av;->r:Lcom/google/googlenav/ui/av;

    invoke-static {p1, v1}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0x1f5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    :goto_0
    new-instance v1, Lx/n;

    new-instance v2, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v2}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v3, 0x5d

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/googlenav/ui/av;->r:Lcom/google/googlenav/ui/av;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v2

    const/16 v3, 0x1f6

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v2

    invoke-direct {v1, v0, v2, v5, v5}, Lx/n;-><init>(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;)V

    return-object v1

    :cond_0
    move-object v0, v5

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;I)Lcom/google/googlenav/ui/bx;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/googlenav/ui/e;->a(Ljava/lang/String;IZ)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0
.end method

.class public Lx/c;
.super Lx/z;


# instance fields
.field public final a:Lx/B;

.field public b:Ljava/util/Date;

.field public c:I

.field public final d:Lcom/google/googlenav/ui/bx;

.field public final e:Lcom/google/googlenav/ui/bx;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/Vector;Ljava/util/Date;I)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2, v1}, Lx/z;-><init>(IILjava/lang/String;[Lax/e;)V

    new-instance v0, Lx/B;

    invoke-direct {v0, v1, v1, p3, v1}, Lx/B;-><init>(Ljava/lang/String;Lx/G;Ljava/util/Vector;[Lax/e;)V

    iput-object v0, p0, Lx/c;->a:Lx/B;

    iput-object p4, p0, Lx/c;->b:Ljava/util/Date;

    iput p5, p0, Lx/c;->c:I

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v1, 0x445

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->r:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0x1f7

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    iput-object v0, p0, Lx/c;->d:Lcom/google/googlenav/ui/bx;

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v1, 0x5d

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->r:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    iput-object v0, p0, Lx/c;->e:Lcom/google/googlenav/ui/bx;

    return-void
.end method


# virtual methods
.method public a()Lu/s;
    .locals 2

    iget-object v0, p0, Lx/c;->b:Ljava/util/Date;

    iget v1, p0, Lx/c;->c:I

    invoke-static {v0, v1}, Lu/s;->a(Ljava/util/Date;I)Lu/s;

    move-result-object v0

    return-object v0
.end method

.method public a(Lu/s;)V
    .locals 1

    invoke-virtual {p1}, Lu/s;->c()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lx/c;->b:Ljava/util/Date;

    invoke-virtual {p1}, Lu/s;->d()I

    move-result v0

    iput v0, p0, Lx/c;->c:I

    return-void
.end method

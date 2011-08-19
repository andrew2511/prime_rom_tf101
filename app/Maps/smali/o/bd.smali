.class public Lo/bd;
.super Ljava/lang/Object;


# static fields
.field public static final a:I

.field public static final b:I


# instance fields
.field private final c:Lc/o;

.field private final d:Lc/p;

.field private final e:Lcom/google/googlenav/ui/aG;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lac/m;->c(I)I

    move-result v0

    sput v0, Lo/bd;->a:I

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lac/m;->c(I)I

    move-result v0

    sput v0, Lo/bd;->b:I

    return-void
.end method

.method public constructor <init>(Lo/bn;LaD/r;LaD/p;Lc/o;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lo/bd;->c:Lc/o;

    new-instance v0, Lc/p;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lo/bn;->B()Lo/aH;

    move-result-object v1

    :goto_0
    sget v2, Lcom/google/googlenav/ui/aV;->bF:I

    invoke-direct {v0, p2, v1, v2}, Lc/p;-><init>(LaD/r;Lo/aH;I)V

    iput-object v0, p0, Lo/bd;->d:Lc/p;

    new-instance v0, Lcom/google/googlenav/ui/aG;

    invoke-direct {v0, p3}, Lcom/google/googlenav/ui/aG;-><init>(LaD/p;)V

    iput-object v0, p0, Lo/bd;->e:Lcom/google/googlenav/ui/aG;

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private a(Lc/o;)Lcom/google/googlenav/ui/aI;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lc/o;->b()Law/e;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lc/o;->b()Law/e;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const/16 v0, 0x1b6

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    sget-object v1, Lcom/google/googlenav/ui/av;->aC:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/ui/aI;Z)Lcom/google/googlenav/ui/aQ;
    .locals 3

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-static {p0, p1}, Lo/bd;->b(Lcom/google/googlenav/ui/aI;Z)[Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a([Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    if-eqz p1, :cond_0

    const/16 v1, 0x101

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->r:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->c(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    :cond_0
    const/16 v1, 0x19b

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    return-object v0
.end method

.method public static a()Lcom/google/googlenav/ui/bx;
    .locals 3

    const/16 v0, 0x51

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lo/H;->j()Lo/H;

    move-result-object v1

    invoke-virtual {v1}, Lo/H;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v0, 0x43

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    sget-object v2, Lcom/google/googlenav/ui/av;->Z:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0
.end method

.method public static a(Z)Lcom/google/googlenav/ui/bx;
    .locals 3

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    if-eqz p0, :cond_0

    const/16 v1, 0x108

    :goto_0
    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->r:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    if-eqz p0, :cond_1

    const/16 v1, 0x193

    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v1, 0x107

    goto :goto_0

    :cond_1
    const/16 v1, 0x192

    goto :goto_1
.end method

.method private a(Lcom/google/googlenav/bG;Lcom/google/googlenav/by;)Ljava/util/Vector;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    invoke-direct {p0, v0, p1}, Lo/bd;->a(Ljava/util/Vector;Lcom/google/googlenav/ba;)V

    invoke-virtual {p1}, Lcom/google/googlenav/bG;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->r:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/googlenav/by;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->b:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2, v5, v6, v7}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;ZZLx/q;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lcom/google/googlenav/bG;->c()Law/e;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/googlenav/bG;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/googlenav/bG;->d()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->L:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2, v5, v6, v7}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;ZZLx/q;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/googlenav/bG;->b()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/google/googlenav/bB;->a(J)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->b:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2, v6, v5, v7}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;ZZLx/q;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object v0
.end method

.method private a(Lcom/google/googlenav/ba;Lcom/google/googlenav/by;ZZ)Ljava/util/Vector;
    .locals 6

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    if-eqz p4, :cond_0

    invoke-direct {p0, v0, p1}, Lo/bd;->a(Ljava/util/Vector;Lcom/google/googlenav/ba;)V

    :cond_0
    invoke-interface {p1}, Lcom/google/googlenav/ba;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_3

    sget-object v2, Lcom/google/googlenav/ui/av;->r:Lcom/google/googlenav/ui/av;

    :goto_0
    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/google/googlenav/by;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Lcom/google/googlenav/by;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p4, :cond_2

    invoke-interface {p1}, Lcom/google/googlenav/ba;->c()Law/e;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/googlenav/ba;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/googlenav/ba;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/google/googlenav/ba;->b()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/google/googlenav/bB;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->b:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object v0

    :cond_3
    sget-object v2, Lcom/google/googlenav/ui/av;->N:Lcom/google/googlenav/ui/av;

    goto :goto_0
.end method

.method private a(ILx/T;)Lx/A;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2, p1}, Lx/T;->a(I)Lcom/google/googlenav/bG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bG;->f()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lx/T;->a(J)Lcom/google/googlenav/by;

    move-result-object v1

    invoke-direct {p0, v0, v1, v6, v7}, Lo/bd;->a(Lcom/google/googlenav/ba;Lcom/google/googlenav/by;ZZ)Ljava/util/Vector;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v2}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    const/16 v2, 0x190

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/googlenav/ui/aQ;->j(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/google/googlenav/ui/aQ;->a(Z)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    new-instance v2, Lc/a;

    invoke-virtual {v0}, Lcom/google/googlenav/bG;->f()J

    move-result-wide v3

    sget v5, Lcom/google/googlenav/ui/aV;->bF:I

    invoke-direct {v2, v3, v4, v5}, Lc/a;-><init>(JI)V

    iget-object v3, p0, Lo/bd;->d:Lc/p;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/bi;->a(Lcom/google/googlenav/ui/aH;Lcom/google/googlenav/ui/aj;)Lcom/google/googlenav/ui/bi;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;

    invoke-virtual {v0}, Lcom/google/googlenav/bG;->m()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/google/googlenav/ui/aS;

    invoke-virtual {v0}, Lcom/google/googlenav/bG;->l()Lcom/google/googlenav/bt;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/bt;->a()Ljava/lang/String;

    move-result-object v3

    sget v4, Lo/bd;->a:I

    invoke-direct {v2, v3, v4}, Lcom/google/googlenav/ui/aS;-><init>(Ljava/lang/String;I)V

    iget-object v3, p0, Lo/bd;->e:Lcom/google/googlenav/ui/aG;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/bi;->a(Lcom/google/googlenav/ui/aH;Lcom/google/googlenav/ui/aj;)Lcom/google/googlenav/ui/bi;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->b(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;

    :cond_0
    invoke-virtual {v0}, Lcom/google/googlenav/bG;->e()Lcom/google/googlenav/by;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v7}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->a(Ljava/lang/Object;)Lcom/google/googlenav/ui/aQ;

    :cond_1
    invoke-virtual {v0}, Lcom/google/googlenav/bG;->i()I

    move-result v2

    if-le v2, v7, :cond_2

    invoke-virtual {v0}, Lcom/google/googlenav/bG;->i()I

    move-result v2

    sub-int/2addr v2, v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->av:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->c(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    :cond_2
    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/google/googlenav/bG;->i()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {v0}, Lcom/google/googlenav/bG;->j()Lcom/google/googlenav/bo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bo;->f()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lx/T;->a(J)Lcom/google/googlenav/by;

    move-result-object v2

    invoke-direct {p0, v0, v2, v6, v6}, Lo/bd;->a(Lcom/google/googlenav/ba;Lcom/google/googlenav/by;ZZ)Ljava/util/Vector;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v3}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v3, v2}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/googlenav/ui/aQ;->a(Z)Lcom/google/googlenav/ui/aQ;

    move-result-object v2

    new-instance v3, Lc/a;

    invoke-virtual {v0}, Lcom/google/googlenav/bo;->f()J

    move-result-wide v4

    sget v0, Lcom/google/googlenav/ui/aV;->bF:I

    invoke-direct {v3, v4, v5, v0}, Lc/a;-><init>(JI)V

    iget-object v0, p0, Lo/bd;->d:Lc/p;

    invoke-static {v3, v0}, Lcom/google/googlenav/ui/bi;->a(Lcom/google/googlenav/ui/aH;Lcom/google/googlenav/ui/aj;)Lcom/google/googlenav/ui/bi;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    :goto_0
    new-instance v2, Lx/A;

    invoke-direct {v2, v1, v0}, Lx/A;-><init>(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;)V

    return-object v2

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method private a(Ljava/util/Vector;Lcom/google/googlenav/ba;)V
    .locals 2

    invoke-interface {p2}, Lcom/google/googlenav/ba;->e()Lcom/google/googlenav/by;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0x52

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/googlenav/ba;->e()Lcom/google/googlenav/by;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/by;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/av;->b:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private b(ILx/T;)Lcom/google/googlenav/ui/bx;
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p2}, Lx/T;->g()Lcom/google/googlenav/bG;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/bG;->a(I)Lcom/google/googlenav/bo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bo;->f()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lx/T;->a(J)Lcom/google/googlenav/by;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3, v3}, Lo/bd;->a(Lcom/google/googlenav/ba;Lcom/google/googlenav/by;ZZ)Ljava/util/Vector;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v2}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/googlenav/ui/aQ;->a(Z)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    new-instance v2, Lc/a;

    invoke-virtual {v0}, Lcom/google/googlenav/bo;->f()J

    move-result-wide v3

    sget v0, Lcom/google/googlenav/ui/aV;->bF:I

    invoke-direct {v2, v3, v4, v0}, Lc/a;-><init>(JI)V

    iget-object v0, p0, Lo/bd;->d:Lc/p;

    invoke-static {v2, v0}, Lcom/google/googlenav/ui/bi;->a(Lcom/google/googlenav/ui/aH;Lcom/google/googlenav/ui/aj;)Lcom/google/googlenav/ui/bi;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/google/googlenav/ui/aI;Z)[Lcom/google/googlenav/ui/aI;
    .locals 6

    iget-object v0, p0, Lcom/google/googlenav/ui/aI;->a:Ljava/lang/String;

    const/16 v0, 0x50

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/aI;->a:Ljava/lang/String;

    invoke-static {v0, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-static {v0, v1}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Lcom/google/googlenav/ui/aI;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/google/googlenav/ui/aI;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/googlenav/ui/aI;->b:Lcom/google/googlenav/ui/av;

    :goto_1
    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;Z)Lcom/google/googlenav/ui/aI;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/google/googlenav/ui/av;->Z:Lcom/google/googlenav/ui/av;

    goto :goto_1

    :cond_1
    return-object v1
.end method


# virtual methods
.method public a(ZLx/T;Ljava/lang/String;Lax/d;)Lx/B;
    .locals 21

    invoke-virtual/range {p2 .. p2}, Lx/T;->g()Lcom/google/googlenav/bG;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/googlenav/bG;->f()J

    move-result-wide v7

    move-object/from16 v0, p2

    move-wide v1, v7

    invoke-virtual {v0, v1, v2}, Lx/T;->a(J)Lcom/google/googlenav/by;

    move-result-object v5

    invoke-virtual {v6}, Lcom/google/googlenav/bG;->o()Z

    move-result v7

    if-eqz v7, :cond_2

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lo/bd;->a(Lcom/google/googlenav/bG;Lcom/google/googlenav/by;)Ljava/util/Vector;

    move-result-object v5

    :goto_0
    new-instance v7, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v7}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v7, v5}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v7

    invoke-virtual {v6}, Lcom/google/googlenav/bG;->o()Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x11

    invoke-virtual {v7, v5}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    const/16 v5, 0xa

    invoke-virtual {v7, v5}, Lcom/google/googlenav/ui/aQ;->j(I)Lcom/google/googlenav/ui/aQ;

    invoke-virtual {v6}, Lcom/google/googlenav/bG;->p()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/googlenav/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/google/googlenav/ui/aQ;->a(Ljava/lang/String;)Lcom/google/googlenav/ui/aQ;

    :cond_0
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    sget-object v5, Lcom/google/googlenav/ui/w;->r:Lax/e;

    invoke-virtual {v8, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/google/googlenav/bG;->f()J

    move-result-wide v9

    invoke-static {}, Lo/H;->j()Lo/H;

    move-result-object v5

    invoke-virtual {v5}, Lo/H;->o()J

    move-result-wide v11

    cmp-long v5, v9, v11

    if-nez v5, :cond_1

    sget-object v5, Lcom/google/googlenav/ui/w;->p:Lax/e;

    invoke-virtual {v8, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v15, v5, [Lax/e;

    const/4 v5, 0x0

    move v9, v5

    :goto_1
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v9, v5, :cond_3

    invoke-virtual {v8, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lax/e;

    aput-object v5, v15, v9

    add-int/lit8 v5, v9, 0x1

    move v9, v5

    goto :goto_1

    :cond_2
    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v5

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lo/bd;->a(Lcom/google/googlenav/ba;Lcom/google/googlenav/by;ZZ)Ljava/util/Vector;

    move-result-object v5

    goto :goto_0

    :cond_3
    new-instance v5, Lc/a;

    invoke-virtual {v6}, Lcom/google/googlenav/bG;->f()J

    move-result-wide v8

    sget v10, Lcom/google/googlenav/ui/aV;->bF:I

    invoke-direct {v5, v8, v9, v10}, Lc/a;-><init>(JI)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lo/bd;->d:Lc/p;

    move-object v8, v0

    invoke-static {v5, v8}, Lcom/google/googlenav/ui/bi;->a(Lcom/google/googlenav/ui/aH;Lcom/google/googlenav/ui/aj;)Lcom/google/googlenav/ui/bi;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;

    invoke-virtual {v6}, Lcom/google/googlenav/bG;->m()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    invoke-virtual {v6}, Lcom/google/googlenav/bG;->l()Lcom/google/googlenav/bt;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/googlenav/bt;->b()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-static {v8}, LR/a;->b(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    new-instance v5, Lx/q;

    const/4 v9, 0x5

    const/4 v10, -0x1

    invoke-direct {v5, v9, v10, v8}, Lx/q;-><init>(IILjava/lang/Object;)V

    :cond_4
    new-instance v8, Lcom/google/googlenav/ui/aS;

    invoke-virtual {v6}, Lcom/google/googlenav/bG;->l()Lcom/google/googlenav/bt;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/googlenav/bt;->a()Ljava/lang/String;

    move-result-object v9

    sget v10, Lo/bd;->b:I

    invoke-direct {v8, v9, v10}, Lcom/google/googlenav/ui/aS;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lo/bd;->e:Lcom/google/googlenav/ui/aG;

    move-object v9, v0

    invoke-static {v8, v9, v5}, Lcom/google/googlenav/ui/bi;->a(Lcom/google/googlenav/ui/aH;Lcom/google/googlenav/ui/aj;Lx/Q;)Lcom/google/googlenav/ui/bi;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/google/googlenav/ui/aQ;->b(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;

    :cond_5
    invoke-virtual {v6}, Lcom/google/googlenav/bG;->e()Lcom/google/googlenav/by;

    move-result-object v5

    if-eqz v5, :cond_6

    new-instance v5, Ljava/lang/Boolean;

    const/4 v8, 0x1

    invoke-direct {v5, v8}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v7, v5}, Lcom/google/googlenav/ui/aQ;->a(Ljava/lang/Object;)Lcom/google/googlenav/ui/aQ;

    :cond_6
    new-instance v16, Lx/G;

    invoke-virtual {v7}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v5

    const/4 v7, 0x0

    move-object/from16 v0, v16

    move-object v1, v5

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lx/G;-><init>(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;)V

    new-instance v17, Ljava/util/Vector;

    invoke-virtual {v6}, Lcom/google/googlenav/bG;->i()I

    move-result v5

    move-object/from16 v0, v17

    move v1, v5

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    const/4 v5, 0x0

    invoke-virtual {v6}, Lcom/google/googlenav/bG;->i()I

    move-result v6

    :goto_2
    if-ge v5, v6, :cond_7

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lo/bd;->b(ILx/T;)Lcom/google/googlenav/ui/bx;

    move-result-object v7

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    const/4 v5, 0x0

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/googlenav/login/j;->w()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/googlenav/d;->s()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/googlenav/d;->t()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {v6}, LR/a;->b(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    const/16 v5, 0x42

    invoke-static {v5}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v18, v5

    :goto_3
    new-instance v19, Lx/d;

    const/16 v20, 0x9

    move-object/from16 v0, p0

    iget-object v0, v0, Lo/bd;->c:Lc/o;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lo/bd;->c:Lc/o;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lo/bd;->a(Lc/o;)Lcom/google/googlenav/ui/aI;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move/from16 v10, p1

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    invoke-virtual/range {v5 .. v14}, Lo/bd;->a(Lx/T;Lc/o;Lcom/google/googlenav/ui/aI;IZZLjava/lang/String;Ljava/lang/String;Lax/d;)Lx/g;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v5, v19

    move/from16 v6, v20

    move-object/from16 v7, v18

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    move-object v10, v15

    invoke-direct/range {v5 .. v13}, Lx/d;-><init>(ILjava/lang/String;Lx/G;Ljava/util/Vector;[Lax/e;Lx/g;Ljava/lang/String;Ljava/lang/String;)V

    return-object v19

    :cond_8
    move-object/from16 v18, v5

    goto :goto_3
.end method

.method public a(ZLx/T;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lax/d;)Lx/B;
    .locals 21

    const/16 v3, 0x20a

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v13

    const/4 v3, 0x0

    invoke-virtual/range {p2 .. p2}, Lx/T;->a()Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v3, Ljava/util/Vector;

    invoke-virtual/range {p2 .. p2}, Lx/T;->e()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/Vector;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual/range {p2 .. p2}, Lx/T;->e()I

    move-result v5

    :goto_0
    if-ge v4, v5, :cond_0

    move-object/from16 v0, p0

    move v1, v4

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lo/bd;->a(ILx/T;)Lx/A;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move-object v14, v3

    :goto_1
    const/4 v3, 0x1

    new-array v15, v3, [Lax/e;

    const/4 v3, 0x0

    sget-object v4, Lcom/google/googlenav/ui/w;->u:Lax/e;

    aput-object v4, v15, v3

    const/4 v3, 0x0

    invoke-static/range {p4 .. p4}, LR/a;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x104

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    :goto_2
    new-instance v18, Lx/d;

    if-eqz p1, :cond_2

    const/16 v3, 0x8

    move/from16 v19, v3

    :goto_3
    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lo/bd;->c:Lc/o;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lo/bd;->c:Lc/o;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lo/bd;->a(Lc/o;)Lcom/google/googlenav/ui/aI;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move/from16 v8, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-virtual/range {v3 .. v12}, Lo/bd;->a(Lx/T;Lc/o;Lcom/google/googlenav/ui/aI;IZZLjava/lang/String;Ljava/lang/String;Lax/d;)Lx/g;

    move-result-object v9

    move-object/from16 v3, v18

    move/from16 v4, v19

    move-object v5, v13

    move-object/from16 v6, v20

    move-object v7, v14

    move-object v8, v15

    move-object/from16 v10, v17

    move-object/from16 v11, v16

    invoke-direct/range {v3 .. v11}, Lx/d;-><init>(ILjava/lang/String;Lx/G;Ljava/util/Vector;[Lax/e;Lx/g;Ljava/lang/String;Ljava/lang/String;)V

    return-object v18

    :cond_1
    const/16 v3, 0x49

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p4

    invoke-static {v0, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x47

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v16, v4

    move-object/from16 v17, v3

    goto :goto_2

    :cond_2
    const/16 v3, 0xa

    move/from16 v19, v3

    goto :goto_3

    :cond_3
    move-object v14, v3

    goto :goto_1
.end method

.method public a(Lx/T;Lc/o;Lcom/google/googlenav/ui/aI;IZZLjava/lang/String;Ljava/lang/String;Lax/d;)Lx/g;
    .locals 15

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/d;->q()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    if-nez p6, :cond_1

    invoke-virtual/range {p2 .. p2}, Lc/o;->a()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p7, :cond_3

    :cond_1
    const/4 v2, 0x1

    move v11, v2

    :goto_1
    if-eqz p6, :cond_4

    const/16 v2, 0x10c

    :goto_2
    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v3}, Lcom/google/googlenav/ui/aQ;-><init>()V

    sget-object v4, Lcom/google/googlenav/ui/av;->u:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v4}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v2

    const/16 v3, 0x197

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/aQ;->a(Z)Lcom/google/googlenav/ui/aQ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v4

    if-nez p8, :cond_5

    const-string v2, ""

    :goto_3
    if-eqz p9, :cond_2

    move-object/from16 v0, p9

    move-object v1, v2

    invoke-interface {v0, v1}, Lax/d;->a(Ljava/lang/String;)V

    :cond_2
    new-instance v3, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v3}, Lcom/google/googlenav/ui/aQ;-><init>()V

    sget-object v5, Lcom/google/googlenav/ui/av;->r:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v5}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v2

    const/16 v3, 0x197

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/aQ;->a(Z)Lcom/google/googlenav/ui/aQ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v5

    new-instance v2, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v2}, Lcom/google/googlenav/ui/aQ;-><init>()V

    new-instance v3, Lc/a;

    invoke-static {}, Lo/H;->j()Lo/H;

    move-result-object v6

    invoke-virtual {v6}, Lo/H;->o()J

    move-result-wide v6

    sget v8, Lcom/google/googlenav/ui/aV;->bF:I

    invoke-direct {v3, v6, v7, v8}, Lc/a;-><init>(JI)V

    iget-object v6, p0, Lo/bd;->d:Lc/p;

    invoke-static {v3, v6}, Lcom/google/googlenav/ui/bi;->a(Lcom/google/googlenav/ui/aH;Lcom/google/googlenav/ui/aj;)Lcom/google/googlenav/ui/bi;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v3

    move-object/from16 v0, p3

    move/from16 v1, p5

    invoke-static {v0, v1}, Lo/bd;->a(Lcom/google/googlenav/ui/aI;Z)Lcom/google/googlenav/ui/aQ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v6

    const/4 v2, 0x0

    if-nez p6, :cond_9

    if-nez p7, :cond_6

    const/16 v2, 0x100

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    :goto_4
    new-instance v7, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v7}, Lcom/google/googlenav/ui/aQ;-><init>()V

    new-instance v8, Ljava/lang/Boolean;

    if-eqz p7, :cond_8

    const/4 v9, 0x1

    :goto_5
    invoke-direct {v8, v9}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v7, v8}, Lcom/google/googlenav/ui/aQ;->a(Ljava/lang/Object;)Lcom/google/googlenav/ui/aQ;

    move-result-object v7

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/googlenav/ui/aV;->x()Lk/j;

    move-result-object v8

    sget-char v9, Lcom/google/googlenav/ui/aV;->X:C

    invoke-interface {v8, v9}, Lk/j;->e(C)Lk/l;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/googlenav/ui/aQ;->a(Lk/l;)Lcom/google/googlenav/ui/aQ;

    move-result-object v7

    sget-object v8, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v8}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v2

    const/16 v7, 0x194

    invoke-virtual {v2, v7}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v2

    move-object v7, v2

    :goto_6
    invoke-static/range {p6 .. p6}, Lo/bd;->a(Z)Lcom/google/googlenav/ui/bx;

    move-result-object v8

    new-instance v2, Lx/g;

    const-string v12, ""

    invoke-static {}, Lo/bd;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v14

    move-object/from16 v9, p9

    move/from16 v10, p4

    move/from16 v13, p5

    invoke-direct/range {v2 .. v14}, Lx/g;-><init>(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lax/d;IZLjava/lang/String;ZLcom/google/googlenav/ui/bx;)V

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x0

    move v11, v2

    goto/16 :goto_1

    :cond_4
    const/16 v2, 0x446

    goto/16 :goto_2

    :cond_5
    move-object/from16 v2, p8

    goto/16 :goto_3

    :cond_6
    invoke-static/range {p7 .. p7}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v2, p7

    goto :goto_4

    :cond_7
    const/16 v2, 0x102

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_8
    const/4 v9, 0x0

    goto :goto_5

    :cond_9
    move-object v7, v2

    goto :goto_6
.end method

.class public Lo/bt;
.super Ljava/lang/Object;


# static fields
.field public static final a:I


# instance fields
.field private final b:Li/C;

.field private c:Lx/B;

.field private d:Lac/c;

.field private e:Lx/B;

.field private f:I

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lo/bt;->a:I

    return-void
.end method

.method public constructor <init>(Li/C;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lac/c;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lac/c;-><init>(I)V

    iput-object v0, p0, Lo/bt;->d:Lac/c;

    const/4 v0, 0x0

    iput v0, p0, Lo/bt;->f:I

    iput-object p1, p0, Lo/bt;->b:Li/C;

    return-void
.end method

.method public static a(Ljava/util/Vector;Lc/k;Lc/p;ILcom/google/googlenav/ui/ax;)I
    .locals 6

    const/4 v4, 0x0

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0x40f

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->Q:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p1}, Lc/k;->a()Lo/i;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lo/bt;->b(Ljava/util/Vector;)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1}, Lo/i;->b()I

    move-result v2

    sget v3, Lo/bt;->a:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0, p3}, Lo/bt;->b(Ljava/util/Vector;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v3, v0

    move v0, v4

    :goto_1
    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, Lo/i;->a(I)Lo/o;

    move-result-object v4

    const/16 v5, 0x21

    invoke-static {v0, v5, v4, p2, p4}, Lo/bt;->a(IILo/o;Lc/p;Lx/U;)Lcom/google/googlenav/ui/aQ;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method public static a(IILo/o;Lc/p;Lx/U;)Lcom/google/googlenav/ui/aQ;
    .locals 7

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p2}, Lo/o;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->S:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lo/o;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->K:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/aQ;->j(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Z)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v6

    new-instance v0, Lc/a;

    invoke-virtual {p2}, Lo/o;->a()Ljava/lang/Long;

    move-result-object v1

    sget v2, Lcom/google/googlenav/ui/aV;->bF:I

    invoke-direct {v0, v1, v2}, Lc/a;-><init>(Ljava/lang/Long;I)V

    invoke-static {v0, p3}, Lcom/google/googlenav/ui/bi;->a(Lcom/google/googlenav/ui/aH;Lcom/google/googlenav/ui/aj;)Lcom/google/googlenav/ui/bi;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;

    invoke-virtual {v6, p2}, Lcom/google/googlenav/ui/aQ;->a(Ljava/lang/Object;)Lcom/google/googlenav/ui/aQ;

    invoke-virtual {v6, p4}, Lcom/google/googlenav/ui/aQ;->a(Lx/U;)Lcom/google/googlenav/ui/aQ;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sget-char v1, Lcom/google/googlenav/ui/aV;->K:C

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aV;->W()Lk/j;

    move-result-object v2

    const/16 v3, 0x14c

    move-object v4, p4

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lo/bt;->a(Ljava/util/Vector;CLk/j;ILx/U;Lo/o;)V

    sget-char v1, Lcom/google/googlenav/ui/aV;->L:C

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aV;->X()Lk/j;

    move-result-object v2

    const/16 v3, 0x14d

    move-object v4, p4

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lo/bt;->a(Ljava/util/Vector;CLk/j;ILx/U;Lo/o;)V

    invoke-virtual {v6, v0}, Lcom/google/googlenav/ui/aQ;->c(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    return-object v6
.end method

.method private static a(IIZLjava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/ui/bx;
    .locals 3

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->v()Lk/j;

    move-result-object v0

    :goto_0
    sget-char v1, Lcom/google/googlenav/ui/aV;->as:C

    sparse-switch p0, :sswitch_data_0

    :goto_1
    new-instance v2, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v2}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/bi;->a(Ljava/lang/String;Lk/j;)Lcom/google/googlenav/ui/bi;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/googlenav/ui/aQ;->b(Ljava/lang/String;)Lcom/google/googlenav/ui/aQ;

    invoke-static {p4}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_3

    sget-object v1, Lcom/google/googlenav/ui/av;->s:Lcom/google/googlenav/ui/av;

    :goto_2
    invoke-static {p4, v1}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/aQ;->j(I)Lcom/google/googlenav/ui/aQ;

    :cond_1
    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->w()Lk/j;

    move-result-object v0

    goto :goto_0

    :sswitch_0
    sget-char v1, Lcom/google/googlenav/ui/aV;->ba:C

    goto :goto_1

    :sswitch_1
    sget-char v1, Lcom/google/googlenav/ui/aV;->aW:C

    goto :goto_1

    :sswitch_2
    sget-char v1, Lcom/google/googlenav/ui/aV;->aZ:C

    goto :goto_1

    :sswitch_3
    sget-char v1, Lcom/google/googlenav/ui/aV;->aY:C

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/google/googlenav/ui/av;->t:Lcom/google/googlenav/ui/av;

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0xf -> :sswitch_1
        0x150 -> :sswitch_0
        0x258 -> :sswitch_3
        0x25b -> :sswitch_1
    .end sparse-switch
.end method

.method static a(Lf/h;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/16 v0, 0x141

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x13d

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public static a(Lo/U;JZ)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lo/U;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lo/ce;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lo/U;->d()Lf/h;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v4

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lo/U;->r()J

    move-result-wide v0

    add-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    move-object v0, v4

    goto :goto_0

    :cond_2
    invoke-static {v0, v1, p3}, Lcom/google/googlenav/bB;->a(JZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lo/U;Z)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Lo/bt;->c(Lo/U;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/16 v1, 0x177

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz p2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v2, Lcom/google/googlenav/ui/aV;->bw:C

    invoke-static {v2}, Lcom/google/googlenav/ui/aV;->a(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    const/16 v1, 0x178

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Lo/U;ZZZ)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0, p2, p3}, Lo/U;->a(ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lo/U;->I()Lf/h;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lo/U;->G()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v3, Lcom/google/googlenav/ui/aV;->bt:C

    invoke-static {v3}, Lcom/google/googlenav/ui/aV;->a(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v1, v0}, Lo/bt;->a(Lf/h;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Lo/U;ZZZZ)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {p0, p2, p3, p4}, Lo/bt;->a(Lo/U;ZZZ)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lo/U;->d()Lf/h;

    move-result-object v0

    invoke-virtual {p0, p4}, Lo/U;->g(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/bt;->a(Lf/h;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lo/U;Lc/p;)Lx/G;
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->U()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lo/bt;->d(Lo/U;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->M:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lac/d;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lo/U;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v2, Lcom/google/googlenav/ui/aV;->bw:C

    invoke-static {v2}, Lcom/google/googlenav/ui/aV;->a(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x172

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->T:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p1}, Lo/U;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lo/U;->u()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->K:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p1}, Lo/U;->l()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1, v3, v3, v3, v4}, Lo/bt;->a(Lo/U;ZZZZ)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->K:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p1}, Lo/U;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lo/U;->b()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lo/U;->J()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_4
    iget-object v1, p0, Lo/bt;->b:Li/C;

    invoke-virtual {v1}, Li/C;->S()J

    move-result-wide v1

    invoke-static {p1, v1, v2, v3}, Lo/bt;->a(Lo/U;JZ)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    sget-object v2, Lcom/google/googlenav/ui/av;->T:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_5
    move v1, v3

    :goto_0
    invoke-virtual {p1}, Lo/U;->b()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/d;->ap()Z

    move-result v2

    if-nez v2, :cond_8

    :cond_6
    move v2, v4

    :goto_1
    new-instance v3, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v3}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v3, v0}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    new-instance v3, Lc/a;

    invoke-virtual {p1}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, v2}, Lc/a;-><init>(Ljava/lang/Long;IZ)V

    invoke-static {v3, p2}, Lcom/google/googlenav/ui/bi;->a(Lcom/google/googlenav/ui/aH;Lcom/google/googlenav/ui/aj;)Lcom/google/googlenav/ui/bi;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/aQ;->b(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/aQ;->a(Ljava/lang/Object;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lo/U;->d()Lf/h;

    move-result-object v1

    invoke-virtual {p1}, Lo/U;->K()I

    move-result v2

    invoke-static {v0, v1, v2}, LQ/h;->a(Lcom/google/googlenav/ui/aQ;Lf/h;I)V

    :cond_7
    new-instance v1, Lx/G;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lx/G;-><init>(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;)V

    return-object v1

    :cond_8
    move v2, v3

    goto :goto_1

    :cond_9
    move v1, v4

    goto :goto_0
.end method

.method private a(ILo/U;Lc/p;Ljava/util/Vector;)V
    .locals 8

    const/4 v2, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lo/bt;->b:Li/C;

    invoke-virtual {v0}, Li/C;->S()J

    move-result-wide v0

    invoke-static {p2, v0, v1, v7}, Lo/bt;->a(Lo/U;JZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v2, v2, v2, v7}, Lo/bt;->a(Lo/U;ZZZZ)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/Vector;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/Vector;-><init>(I)V

    invoke-static {p2}, Lo/bt;->d(Lo/U;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/googlenav/ui/av;->S:Lcom/google/googlenav/ui/av;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v3, Lcom/google/googlenav/ui/av;->K:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lo/U;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lo/U;->x()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    :cond_0
    :goto_0
    invoke-static {}, Lac/d;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lo/U;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v2, p2}, Lo/bt;->a(Ljava/util/Vector;Lo/U;)V

    :cond_1
    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    const/16 v2, 0x12e

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/googlenav/ui/aQ;->j(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/google/googlenav/ui/aQ;->a(Z)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    if-eqz v0, :cond_2

    sget-object v2, Lcom/google/googlenav/ui/av;->T:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->c(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {p2}, Lo/U;->K()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    :cond_2
    invoke-virtual {p2}, Lo/U;->b()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lo/U;->d()Lf/h;

    move-result-object v0

    invoke-virtual {p2}, Lo/U;->K()I

    move-result v2

    invoke-static {v1, v0, v2}, LQ/h;->a(Lcom/google/googlenav/ui/aQ;Lf/h;I)V

    :cond_3
    invoke-virtual {p2}, Lo/U;->K()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    new-instance v0, Lc/a;

    invoke-virtual {p2}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v2

    sget v3, Lcom/google/googlenav/ui/aV;->bF:I

    invoke-direct {v0, v2, v3}, Lc/a;-><init>(Ljava/lang/Long;I)V

    invoke-static {v0, p3}, Lcom/google/googlenav/ui/bi;->a(Lcom/google/googlenav/ui/aH;Lcom/google/googlenav/ui/aj;)Lcom/google/googlenav/ui/bi;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;

    invoke-virtual {v1, p2}, Lcom/google/googlenav/ui/aQ;->a(Ljava/lang/Object;)Lcom/google/googlenav/ui/aQ;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    :cond_4
    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    iget-object v1, p0, Lo/bt;->b:Li/C;

    invoke-virtual {v1}, Li/C;->L()Lo/g;

    move-result-object v1

    invoke-virtual {p2}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lo/g;->b(Ljava/lang/Long;)Lo/aI;

    move-result-object v3

    invoke-virtual {v3}, Lo/aI;->a()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lo/g;->a(J)V

    invoke-static {v3, v4}, Lo/A;->c(J)V

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x16a

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/av;->F:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public static a(Ljava/util/Vector;)V
    .locals 3

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/16 v1, 0x83

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->aN:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aV;->J()Lk/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lk/l;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0x834

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private static a(Ljava/util/Vector;CLk/j;ILx/U;Lo/o;)V
    .locals 4

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lx/q;

    const/4 v3, -0x1

    invoke-direct {v2, p3, v3, p5}, Lx/q;-><init>(IILjava/lang/Object;)V

    invoke-static {v1, p2, v2}, Lcom/google/googlenav/ui/bi;->a(Ljava/lang/String;Lk/j;Lx/Q;)Lcom/google/googlenav/ui/bi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;

    invoke-virtual {v0, p3}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    invoke-virtual {v0, p4}, Lcom/google/googlenav/ui/aQ;->a(Lx/U;)Lcom/google/googlenav/ui/aQ;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lo/U;Lcom/google/googlenav/bG;Ljava/util/Vector;)V
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x1

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v2

    invoke-virtual {v2}, Lac/m;->p()Lac/p;

    move-result-object v2

    invoke-interface {v2}, Lac/p;->a()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/google/googlenav/bG;->b()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const/16 v4, 0x9c

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v1, v6, v6, v6}, Lo/bt;->a(Lo/U;ZZZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/google/googlenav/ui/av;->aN:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v4}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/16 v1, 0x9b

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3}, Lcom/google/googlenav/bB;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aV;->J()Lk/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lk/l;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/aQ;->a(Ljava/lang/Object;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0x83b

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    iget-object v1, p0, Lo/bt;->b:Li/C;

    invoke-virtual {v1}, Li/C;->bH()Lcom/google/googlenav/ui/ax;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lx/U;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lo/U;Ljava/util/Vector;)V
    .locals 6

    const/16 v3, 0x156

    invoke-virtual {p1}, Lo/U;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x150

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aV;->J()Lk/l;

    move-result-object v2

    invoke-static {v0, v1, v3, v2}, Lcom/google/googlenav/ui/e;->a(Ljava/lang/String;Ljava/lang/String;ILk/l;)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x157

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->aM:Lcom/google/googlenav/ui/av;

    sget-object v3, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    const/4 v4, -0x1

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/ui/aV;->J()Lk/l;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/google/googlenav/ui/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ui/av;Lcom/google/googlenav/ui/av;ILk/l;)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static b(Ljava/util/Vector;)V
    .locals 3

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0x22b

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->D:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private static b(Ljava/util/Vector;I)V
    .locals 3

    const/16 v0, 0x27e

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/16 v0, 0x5f

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->D:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private b(Ljava/util/Vector;Lo/U;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/googlenav/ui/aI;

    const/16 v1, 0x174

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->aN:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x1

    invoke-direct {p0, p2, v3}, Lo/bt;->a(Lo/U;Z)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->a([Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0x12d

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aV;->I()Lk/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lk/l;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private b(Lo/U;Ljava/util/Vector;)V
    .locals 7

    const/16 v6, 0x898

    const/16 v5, 0x165

    invoke-virtual {p1}, Lo/U;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x167

    invoke-virtual {p0, p2, v0}, Lo/bt;->a(Ljava/util/Vector;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lo/U;->y()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x169

    invoke-virtual {p0, p2, v0}, Lo/bt;->a(Ljava/util/Vector;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lo/U;->J()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x168

    invoke-virtual {p0, p2, v0}, Lo/bt;->a(Ljava/util/Vector;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lo/U;->x()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_3

    invoke-static {v5}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x166

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aV;->R()Lk/l;

    move-result-object v2

    invoke-static {v0, v1, v6, v2}, Lcom/google/googlenav/ui/e;->a(Ljava/lang/String;Ljava/lang/String;ILk/l;)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-wide/16 v3, -0x1

    cmp-long v0, v1, v3

    if-nez v0, :cond_4

    iget-object v0, p0, Lo/bt;->b:Li/C;

    invoke-virtual {v0}, Li/C;->L()Lo/g;

    move-result-object v0

    invoke-virtual {p1}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/g;->b(Ljava/lang/Long;)Lo/aI;

    move-result-object v1

    invoke-virtual {v1}, Lo/aI;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/g;->a(J)V

    invoke-static {v1, v2}, Lo/A;->c(J)V

    invoke-static {v5}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aV;->R()Lk/l;

    move-result-object v1

    invoke-static {v0, v6, v1}, Lcom/google/googlenav/ui/e;->a(Ljava/lang/String;ILk/l;)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const/16 v0, 0x180

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x16a

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->aN:Lcom/google/googlenav/ui/av;

    sget-object v3, Lcom/google/googlenav/ui/av;->F:Lcom/google/googlenav/ui/av;

    const/16 v4, 0x89c

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/ui/aV;->R()Lk/l;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/google/googlenav/ui/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ui/av;Lcom/google/googlenav/ui/av;ILk/l;)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private static c(Ljava/util/Vector;)V
    .locals 4

    const/4 v3, 0x4

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v1, 0x3d5

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->aN:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aV;->Q()Lk/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lk/l;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private static d(Lo/U;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lo/U;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lo/U;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Lo/U;->E()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private d(Ljava/util/Vector;)V
    .locals 3

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v1, 0x11f

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->aN:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0x155

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aV;->P()Lk/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lk/l;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private e(Lo/U;)[Lax/e;
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lo/U;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lo/U;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Lax/e;

    sget-object v1, Lcom/google/googlenav/ui/w;->r:Lax/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/googlenav/ui/w;->y:Lax/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/googlenav/ui/w;->A:Lax/e;

    aput-object v1, v0, v4

    :goto_0
    return-object v0

    :cond_0
    new-array v0, v4, [Lax/e;

    sget-object v1, Lcom/google/googlenav/ui/w;->y:Lax/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/googlenav/ui/w;->A:Lax/e;

    aput-object v1, v0, v3

    goto :goto_0
.end method

.method private f(Lo/U;)Lx/n;
    .locals 11

    const/16 v10, 0x1a4

    const/16 v9, 0xd3

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x1

    invoke-virtual {p1}, Lo/U;->a()Lcom/google/googlenav/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/c;->g()Lf/N;

    move-result-object v0

    invoke-virtual {p1}, Lo/U;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->ap()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move v1, v6

    :goto_0
    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :goto_1
    if-eqz v0, :cond_4

    iget-object v2, p0, Lo/bt;->b:Li/C;

    invoke-virtual {v2}, Li/C;->aV()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v6

    :goto_2
    const/16 v3, 0x3b8

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3b9

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v7, v2, v3, v4}, Lo/bt;->a(IIZLjava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/ui/bx;

    move-result-object v2

    iget-object v3, p0, Lo/bt;->b:Li/C;

    invoke-virtual {v3, v0}, Li/C;->a(Lf/N;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lo/bt;->b:Li/C;

    invoke-virtual {v3, v0}, Li/C;->b(Lf/N;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_1
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/d;->C()Z

    move-result v3

    if-nez v3, :cond_6

    const/16 v3, 0xf

    const/4 v4, 0x4

    invoke-virtual {p1}, Lo/U;->b()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lo/bt;->b:Li/C;

    invoke-virtual {v5, v0}, Li/C;->c(Lf/N;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v6

    :goto_3
    invoke-static {v10}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v9}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v0, v5, v6}, Lo/bt;->a(IIZLjava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    :goto_4
    const/16 v3, 0x258

    iget-object v4, p0, Lo/bt;->b:Li/C;

    invoke-virtual {p1}, Lo/U;->a()Lcom/google/googlenav/c;

    move-result-object v5

    invoke-virtual {v4, v5}, Li/C;->d(Lcom/google/googlenav/c;)Z

    move-result v4

    const/16 v5, 0x40c

    invoke-static {v5}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x40d

    invoke-static {v6}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v7, v4, v5, v6}, Lo/bt;->a(IIZLjava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/ui/bx;

    move-result-object v3

    new-instance v4, Lx/n;

    invoke-direct {v4, v1, v2, v0, v3}, Lx/n;-><init>(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;)V

    return-object v4

    :cond_2
    move v1, v8

    goto :goto_0

    :cond_3
    const/16 v1, 0x150

    const/16 v2, 0x1ae

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1af

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v7, v6, v2, v3}, Lo/bt;->a(IIZLjava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/ui/bx;

    move-result-object v1

    goto/16 :goto_1

    :cond_4
    move v2, v8

    goto/16 :goto_2

    :cond_5
    move v0, v8

    goto :goto_3

    :cond_6
    const/16 v3, 0x25b

    invoke-virtual {p1}, Lo/U;->b()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lo/bt;->b:Li/C;

    invoke-virtual {v4, v0}, Li/C;->c(Lf/N;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v6

    :goto_5
    invoke-static {v10}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v9}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v7, v0, v4, v5}, Lo/bt;->a(IIZLjava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    goto :goto_4

    :cond_7
    move v0, v8

    goto :goto_5
.end method

.method private g()Lx/n;
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v1, 0x834

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v2, 0x12d

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v2}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v3, 0x13d

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v2

    invoke-static {}, Lo/by;->a()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/aQ;->d(Z)Lcom/google/googlenav/ui/aQ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v2

    new-instance v3, Lx/n;

    invoke-direct {v3, v0, v1, v2, v4}, Lx/n;-><init>(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;)V

    return-object v3

    :cond_0
    move-object v0, v4

    goto :goto_0
.end method

.method private h()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x181

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lo/bt;->f:I

    return v0
.end method

.method public a(Lo/U;)Lx/B;
    .locals 13

    const/4 v3, 0x4

    const/4 v4, 0x0

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p1}, Lo/U;->G()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lo/U;->H()Lcom/google/googlenav/bG;

    move-result-object v0

    invoke-direct {p0, p1, v0, v5}, Lo/bt;->a(Lo/U;Lcom/google/googlenav/bG;Ljava/util/Vector;)V

    :cond_0
    :goto_0
    invoke-direct {p0, v5}, Lo/bt;->d(Ljava/util/Vector;)V

    invoke-virtual {p1}, Lo/U;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v5}, Lo/bt;->c(Ljava/util/Vector;)V

    :cond_1
    invoke-static {}, Lac/d;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v5, p1}, Lo/bt;->b(Ljava/util/Vector;Lo/U;)V

    :cond_2
    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v1, 0x121

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->aN:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0x13b

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aV;->O()Lk/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lk/l;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v1, 0x18a

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->aN:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0x138

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aV;->N()Lk/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lk/l;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lo/bt;->e:Lx/B;

    if-nez v0, :cond_5

    iget-object v0, p0, Lo/bt;->b:Li/C;

    invoke-virtual {v0}, Li/C;->I()Lc/p;

    move-result-object v3

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lo/bt;->d(Lo/U;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_1
    new-instance v0, Lx/B;

    const/4 v1, 0x6

    invoke-direct {p0, p1, v3}, Lo/bt;->a(Lo/U;Lc/p;)Lx/G;

    move-result-object v3

    invoke-direct {p0, p1}, Lo/bt;->f(Lo/U;)Lx/n;

    move-result-object v10

    invoke-direct {p0, p1}, Lo/bt;->e(Lo/U;)[Lax/e;

    move-result-object v11

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    move-object v9, v4

    move-object v12, v4

    invoke-direct/range {v0 .. v12}, Lx/B;-><init>(ILjava/lang/String;Lx/G;[Lcom/google/googlenav/ui/aI;Ljava/util/Vector;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lx/C;Lx/n;Lx/n;[Lax/e;Lx/D;)V

    iput-object v0, p0, Lo/bt;->e:Lx/B;

    :goto_2
    iget-object v0, p0, Lo/bt;->e:Lx/B;

    return-object v0

    :cond_3
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v5}, Lo/bt;->a(Ljava/util/Vector;)V

    goto/16 :goto_0

    :cond_4
    move-object v2, v4

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lo/bt;->e:Lx/B;

    invoke-virtual {v0, v5}, Lx/B;->a(Ljava/util/Vector;)V

    goto :goto_2
.end method

.method public a(Ljava/util/Vector;I)V
    .locals 4

    const/16 v0, 0x165

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    sget-object v3, Lcom/google/googlenav/ui/av;->aM:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v0, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aV;->R()Lk/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lk/l;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method a(Ljava/util/Vector;Lo/U;)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lo/bt;->a(Lo/U;Z)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/av;->K:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lo/bt;->g:Z

    return-void
.end method

.method public b(Lo/U;)Lx/B;
    .locals 14

    const/4 v4, 0x0

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    invoke-static {}, Lac/d;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lo/U;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1}, Lo/U;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lo/U;->G()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lo/U;->H()Lcom/google/googlenav/bG;

    move-result-object v1

    invoke-direct {p0, p1, v1, v5}, Lo/bt;->a(Lo/U;Lcom/google/googlenav/bG;Ljava/util/Vector;)V

    :goto_1
    if-nez v0, :cond_0

    invoke-direct {p0, p1, v5}, Lo/bt;->b(Lo/U;Ljava/util/Vector;)V

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p1}, Lo/U;->m()Z

    move-result v1

    if-nez v1, :cond_5

    const/16 v1, 0x18c

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x136

    move v13, v2

    move-object v2, v1

    move v1, v13

    :goto_2
    const/16 v3, 0x3d8

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/googlenav/ui/aV;->T()Lk/l;

    move-result-object v6

    invoke-static {v3, v2, v1, v6}, Lcom/google/googlenav/ui/e;->a(Ljava/lang/String;Ljava/lang/String;ILk/l;)Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    if-nez v0, :cond_2

    const/16 v0, 0x18f

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x13a

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aV;->S()Lk/l;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/e;->a(Ljava/lang/String;ILk/l;)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lo/bt;->b:Li/C;

    invoke-virtual {v0}, Li/C;->I()Lc/p;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lo/bt;->a(Lo/U;Lc/p;)Lx/G;

    move-result-object v3

    invoke-direct {p0, p1}, Lo/bt;->f(Lo/U;)Lx/n;

    move-result-object v10

    invoke-direct {p0, p1}, Lo/bt;->e(Lo/U;)[Lax/e;

    move-result-object v11

    iget-object v0, p0, Lo/bt;->d:Lac/c;

    invoke-virtual {p1}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lac/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx/B;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p1}, Lo/bt;->d(Lo/U;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_3
    new-instance v0, Lx/B;

    const/4 v1, 0x7

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    move-object v9, v4

    move-object v12, v4

    invoke-direct/range {v0 .. v12}, Lx/B;-><init>(ILjava/lang/String;Lx/G;[Lcom/google/googlenav/ui/aI;Ljava/util/Vector;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lx/C;Lx/n;Lx/n;[Lax/e;Lx/D;)V

    iget-object v1, p0, Lo/bt;->d:Lac/c;

    invoke-virtual {p1}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lac/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0, p1, v5}, Lo/bt;->a(Lo/U;Ljava/util/Vector;)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p1}, Lo/U;->n()Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x189

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x135

    move v13, v2

    move-object v2, v1

    move v1, v13

    goto/16 :goto_2

    :cond_6
    const/16 v1, 0x191

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x134

    move v13, v2

    move-object v2, v1

    move v1, v13

    goto/16 :goto_2

    :cond_7
    move-object v2, v4

    goto :goto_3

    :cond_8
    invoke-virtual {v0, v3}, Lx/B;->a(Lx/G;)V

    invoke-virtual {v0, v5}, Lx/B;->a(Ljava/util/Vector;)V

    invoke-virtual {v0, v10}, Lx/B;->b(Lx/n;)V

    invoke-virtual {v0, v11}, Lx/B;->a([Lax/e;)V

    goto :goto_4
.end method

.method public b()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lo/bt;->c:Lx/B;

    iget-object v0, p0, Lo/bt;->d:Lac/c;

    invoke-virtual {v0}, Lac/c;->b()V

    iput-object v1, p0, Lo/bt;->e:Lx/B;

    return-void
.end method

.method protected c(Lo/U;)I
    .locals 1

    invoke-virtual {p1}, Lo/U;->i()I

    move-result v0

    return v0
.end method

.method public c()Lx/B;
    .locals 25

    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lo/bt;->f:I

    const/4 v5, 0x0

    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    const/4 v6, 0x0

    invoke-static {}, Lo/ce;->a()Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_0
    :goto_0
    const/4 v7, 0x0

    if-eqz v6, :cond_18

    new-instance v7, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v7}, Lcom/google/googlenav/ui/aQ;-><init>()V

    sget-object v8, Lcom/google/googlenav/ui/av;->V:Lcom/google/googlenav/ui/av;

    invoke-static {v6, v8}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v6

    const/16 v7, 0x132

    invoke-virtual {v6, v7}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v6

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/bt;->b:Li/C;

    move-object v7, v0

    invoke-virtual {v7}, Li/C;->B()Lo/aH;

    move-result-object v7

    invoke-virtual {v7}, Lo/aH;->e()Ljava/util/Vector;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_6

    const/16 v7, 0x149

    invoke-static {v7}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v7

    :goto_2
    const/4 v8, 0x0

    if-eqz v7, :cond_16

    new-instance v8, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v8}, Lcom/google/googlenav/ui/aQ;-><init>()V

    sget-object v9, Lcom/google/googlenav/ui/av;->W:Lcom/google/googlenav/ui/av;

    invoke-static {v7, v9}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v7

    const/16 v8, 0x12c

    invoke-virtual {v7, v8}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v7

    :goto_3
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lo/bt;->b:Li/C;

    move-object v9, v0

    invoke-virtual {v9}, Li/C;->J()Lc/s;

    move-result-object v9

    invoke-virtual {v9}, Lc/s;->e()Ljava/lang/Boolean;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {}, LaR/d;->a()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {}, LaR/d;->k()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {}, Li/i;->a()V

    const/16 v8, 0x186

    invoke-static {v8}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v9}, Lcom/google/googlenav/ui/aQ;-><init>()V

    sget-object v11, Lcom/google/googlenav/ui/av;->W:Lcom/google/googlenav/ui/av;

    invoke-static {v8, v11}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v8

    const/16 v9, 0x152

    invoke-virtual {v8, v9}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v8

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/bt;->b:Li/C;

    move-object v9, v0

    invoke-virtual {v9}, Li/C;->r_()Lc/p;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lo/bt;->b:Li/C;

    move-object v11, v0

    invoke-virtual {v11}, Li/C;->J()Lc/s;

    move-result-object v11

    invoke-virtual {v11}, Lc/s;->b()J

    move-result-wide v12

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lo/bt;->f:I

    move v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lo/bt;->b:Li/C;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Li/C;->B()Lo/aH;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lo/aH;->b()I

    move-result v17

    invoke-virtual/range {v16 .. v16}, Lo/aH;->f()Z

    move-result v18

    if-lez v17, :cond_15

    const/16 v19, 0x0

    invoke-virtual/range {v16 .. v16}, Lo/aH;->d()Lo/U;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object v3, v9

    move-object v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Lo/bt;->a(ILo/U;Lc/p;Ljava/util/Vector;)V

    invoke-virtual/range {v16 .. v16}, Lo/aH;->d()Lo/U;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    cmp-long v19, v19, v12

    if-nez v19, :cond_2

    move v14, v15

    :cond_2
    add-int/lit8 v15, v15, 0x1

    move/from16 v24, v15

    move v15, v14

    move/from16 v14, v24

    :goto_4
    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_14

    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lo/aH;->a(I)Lo/U;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lo/U;->J()Z

    move-result v16

    if-nez v16, :cond_13

    new-instance v16, Lcom/google/googlenav/ui/aQ;

    invoke-direct/range {v16 .. v16}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v19, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v16

    const/16 v19, 0xc3

    invoke-static/range {v19 .. v19}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v19

    sget-object v20, Lcom/google/googlenav/ui/av;->Q:Lcom/google/googlenav/ui/av;

    invoke-static/range {v19 .. v20}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v16

    move-object v0, v10

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v5, v5, 0x1

    move/from16 v24, v14

    move v14, v5

    move/from16 v5, v24

    :goto_5
    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    move/from16 v24, v20

    move/from16 v20, v14

    move/from16 v14, v19

    move/from16 v19, v15

    move/from16 v15, v16

    move/from16 v16, v5

    move/from16 v5, v24

    :goto_6
    move v0, v5

    move/from16 v1, v17

    if-ge v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lo/bt;->b:Li/C;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Li/C;->B()Lo/aH;

    move-result-object v21

    move-object/from16 v0, v21

    move v1, v5

    invoke-virtual {v0, v1}, Lo/aH;->a(I)Lo/U;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lo/U;->l()Z

    move-result v22

    if-nez v22, :cond_7

    :cond_3
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_4
    invoke-static {}, Lo/ce;->b()Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v6, 0x13e

    invoke-static {v6}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lo/ce;->c()Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v6, 0x13c

    invoke-static {v6}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v9

    const/4 v11, 0x1

    if-le v9, v11, :cond_17

    const/16 v8, 0x146

    invoke-static {v8}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lo/bt;->g:Z

    move/from16 v22, v0

    if-nez v22, :cond_8

    invoke-virtual/range {v21 .. v21}, Lo/U;->J()Z

    move-result v22

    if-eqz v22, :cond_8

    if-nez v18, :cond_3

    :cond_8
    if-nez v15, :cond_9

    invoke-virtual/range {v21 .. v21}, Lo/U;->J()Z

    move-result v22

    if-eqz v22, :cond_9

    new-instance v15, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v15}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v22, 0x2

    move-object v0, v15

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v15

    const/16 v22, 0x3eb

    invoke-static/range {v22 .. v22}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v22

    sget-object v23, Lcom/google/googlenav/ui/av;->Q:Lcom/google/googlenav/ui/av;

    invoke-static/range {v22 .. v23}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v22

    move-object v0, v15

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v15, v16, 0x1

    add-int/lit8 v16, v20, 0x1

    const/16 v20, 0x1

    move/from16 v24, v20

    move/from16 v20, v16

    move/from16 v16, v15

    move/from16 v15, v24

    :cond_9
    invoke-static {}, Lac/d;->c()Z

    move-result v22

    if-eqz v22, :cond_a

    if-nez v14, :cond_a

    invoke-virtual/range {v21 .. v21}, Lo/U;->j()Z

    move-result v22

    if-eqz v22, :cond_a

    new-instance v14, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v14}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v22, 0x2

    move-object v0, v14

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v14

    const/16 v22, 0x173

    invoke-static/range {v22 .. v22}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v22

    sget-object v23, Lcom/google/googlenav/ui/av;->Q:Lcom/google/googlenav/ui/av;

    invoke-static/range {v22 .. v23}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v22

    move-object v0, v14

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v14, v16, 0x1

    add-int/lit8 v16, v20, 0x1

    const/16 v20, 0x1

    move/from16 v24, v20

    move/from16 v20, v16

    move/from16 v16, v14

    move/from16 v14, v24

    :cond_a
    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, v21

    move-object v3, v9

    move-object v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Lo/bt;->a(ILo/U;Lc/p;Ljava/util/Vector;)V

    invoke-virtual/range {v21 .. v21}, Lo/U;->p()Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    cmp-long v21, v21, v12

    if-nez v21, :cond_b

    move/from16 v19, v16

    :cond_b
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_7

    :cond_c
    move/from16 v5, v16

    move/from16 v14, v19

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/bt;->b:Li/C;

    move-object v15, v0

    invoke-virtual {v15}, Li/C;->D()Lc/k;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lo/bt;->b:Li/C;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Li/C;->B()Lo/aH;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lo/aH;->b()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lo/bt;->b:Li/C;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Li/C;->bH()Lcom/google/googlenav/ui/ax;

    move-result-object v17

    move-object v0, v10

    move-object v1, v15

    move-object v2, v9

    move/from16 v3, v16

    move-object/from16 v4, v17

    invoke-static {v0, v1, v2, v3, v4}, Lo/bt;->a(Ljava/util/Vector;Lc/k;Lc/p;ILcom/google/googlenav/ui/ax;)I

    move-result v9

    add-int/2addr v5, v9

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sget-object v9, Lcom/google/googlenav/ui/w;->v:Lax/e;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/googlenav/d;->k()Z

    move-result v9

    if-eqz v9, :cond_d

    sget-object v9, Lcom/google/googlenav/ui/w;->X:Lax/e;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/googlenav/d;->U()Z

    move-result v9

    if-nez v9, :cond_e

    sget-object v9, Lcom/google/googlenav/ui/w;->r:Lax/e;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    sget-object v9, Lcom/google/googlenav/ui/w;->t:Lax/e;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lo/bt;->e()Lax/e;

    move-result-object v9

    if-eqz v9, :cond_f

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    sget-object v9, Lcom/google/googlenav/ui/w;->y:Lax/e;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Lax/e;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Lax/e;

    invoke-virtual {v11}, Lc/s;->c()I

    move-result v5

    const/4 v9, -0x1

    if-ne v5, v9, :cond_11

    const-wide/16 v17, -0x1

    cmp-long v5, v12, v17

    if-nez v5, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lo/bt;->f:I

    move v5, v0

    invoke-virtual {v11, v5}, Lc/s;->b(I)V

    :cond_10
    :goto_9
    new-instance v14, Lx/n;

    const/4 v5, 0x0

    invoke-direct {v14, v6, v7, v8, v5}, Lx/n;-><init>(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lo/bt;->c:Lx/B;

    move-object v5, v0

    if-eqz v5, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lo/bt;->c:Lx/B;

    move-object v5, v0

    invoke-virtual {v5, v10}, Lx/B;->a(Ljava/util/Vector;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lo/bt;->c:Lx/B;

    move-object v5, v0

    invoke-virtual {v5, v14}, Lx/B;->a(Lx/n;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lo/bt;->c:Lx/B;

    move-object v5, v0

    invoke-direct/range {p0 .. p0}, Lo/bt;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lx/B;->a(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lo/bt;->c:Lx/B;

    move-object v5, v0

    invoke-direct/range {p0 .. p0}, Lo/bt;->g()Lx/n;

    move-result-object v6

    invoke-virtual {v5, v6}, Lx/B;->b(Lx/n;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lo/bt;->c:Lx/B;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lx/B;->a([Lax/e;)V

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/bt;->c:Lx/B;

    move-object v5, v0

    return-object v5

    :cond_11
    const/4 v5, -0x1

    if-eq v14, v5, :cond_10

    invoke-virtual {v11, v14}, Lc/s;->b(I)V

    goto :goto_9

    :cond_12
    new-instance v5, Lx/B;

    const/16 v6, 0xb

    invoke-direct/range {p0 .. p0}, Lo/bt;->h()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {p0 .. p0}, Lo/bt;->g()Lx/n;

    move-result-object v15

    const/16 v17, 0x0

    invoke-direct/range {v5 .. v17}, Lx/B;-><init>(ILjava/lang/String;Lx/G;[Lcom/google/googlenav/ui/aI;Ljava/util/Vector;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lx/C;Lx/n;Lx/n;[Lax/e;Lx/D;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lo/bt;->c:Lx/B;

    move-object/from16 v0, p0

    iget-object v0, v0, Lo/bt;->c:Lx/B;

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lx/B;->w:Z

    goto :goto_a

    :cond_13
    move/from16 v24, v14

    move v14, v5

    move/from16 v5, v24

    goto/16 :goto_5

    :cond_14
    move v5, v14

    move v14, v15

    goto/16 :goto_8

    :cond_15
    move/from16 v24, v15

    move v15, v14

    move/from16 v14, v24

    goto/16 :goto_4

    :cond_16
    move-object v7, v8

    goto/16 :goto_3

    :cond_17
    move-object v7, v8

    goto/16 :goto_2

    :cond_18
    move-object v6, v7

    goto/16 :goto_1
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lo/bt;->g:Z

    return v0
.end method

.method public e()Lax/e;
    .locals 1

    invoke-virtual {p0}, Lo/bt;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lo/bt;->g:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/googlenav/ui/w;->x:Lax/e;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/googlenav/ui/w;->w:Lax/e;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected f()Z
    .locals 1

    iget-object v0, p0, Lo/bt;->b:Li/C;

    invoke-virtual {v0}, Li/C;->B()Lo/aH;

    move-result-object v0

    invoke-virtual {v0}, Lo/aH;->f()Z

    move-result v0

    return v0
.end method

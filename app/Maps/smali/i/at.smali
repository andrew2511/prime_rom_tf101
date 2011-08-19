.class public Li/at;
.super Li/H;

# interfaces
.implements Li/be;


# static fields
.field private static final d:I


# instance fields
.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x5

    invoke-static {v0}, Lcom/google/googlenav/ui/aV;->d(I)I

    move-result v0

    sput v0, Li/at;->d:I

    return-void
.end method

.method public constructor <init>(Li/x;)V
    .locals 1

    invoke-direct {p0, p1}, Li/H;-><init>(Li/x;)V

    const/4 v0, -0x1

    iput v0, p0, Li/at;->c:I

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;
    .locals 3

    const/4 v2, 0x0

    invoke-static {p0, p1}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    sget v1, Li/at;->d:I

    invoke-virtual {v0, v2, v1, v2, v2}, Lcom/google/googlenav/ui/aI;->a(IIII)V

    return-object v0
.end method

.method private a(Lcom/google/googlenav/c;)Lcom/google/googlenav/ui/bx;
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1}, Li/P;->j(Lcom/google/googlenav/c;)Ljava/util/Vector;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0x34

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0x2bc

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/aQ;->j(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    new-instance v1, Li/aX;

    invoke-direct {v1, p0}, Li/aX;-><init>(Li/at;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lx/U;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/aQ;->a(Z)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0x3e7

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->ad:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->b(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Li/at;Lcom/google/googlenav/c;)Lcom/google/googlenav/ui/bx;
    .locals 1

    invoke-direct {p0, p1}, Li/at;->a(Lcom/google/googlenav/c;)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lu/v;I)Lcom/google/googlenav/ui/bx;
    .locals 3

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0}, Lu/v;->j_()Lu/h;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/ui/aZ;->a(Lu/h;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->y:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/ui/i;->a(Lcom/google/googlenav/ui/aI;)Ljava/util/Vector;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/i;->a(Ljava/util/Vector;Ljava/util/Vector;)V

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lu/v;->j_()Lu/h;

    move-result-object v2

    invoke-static {v1, v2}, Li/at;->a(Ljava/lang/String;Lu/h;)Ljava/util/Vector;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/i;->a(Ljava/util/Vector;Ljava/util/Vector;)V

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0x73

    invoke-static {v1}, Lcom/google/googlenav/ui/aV;->a(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aV;->n()Lk/j;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bi;->a(Ljava/lang/String;Lk/j;)Lcom/google/googlenav/ui/bi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/aQ;->b(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0xee

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lu/v;ILjava/util/Vector;)Lcom/google/googlenav/ui/bx;
    .locals 3

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0}, Lu/v;->k_()Lu/h;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/ui/aZ;->a(Lu/h;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->y:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/i;->a(Ljava/util/Vector;Lcom/google/googlenav/ui/aI;)V

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lu/v;->k_()Lu/h;

    move-result-object v2

    invoke-static {v1, v2}, Li/at;->a(Ljava/lang/String;Lu/h;)Ljava/util/Vector;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/i;->a(Ljava/util/Vector;Ljava/util/Vector;)V

    invoke-static {}, Li/v;->V()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0, p2}, Lcom/google/googlenav/ui/i;->a(Ljava/util/Vector;Ljava/util/Vector;)V

    :cond_0
    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0x65

    invoke-static {v1}, Lcom/google/googlenav/ui/aV;->a(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aV;->n()Lk/j;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bi;->a(Ljava/lang/String;Lk/j;)Lcom/google/googlenav/ui/bi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/aQ;->b(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0xef

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Li/at;)Li/v;
    .locals 1

    invoke-direct {p0}, Li/at;->g()Li/v;

    move-result-object v0

    return-object v0
.end method

.method private a(IZZ)Ljava/util/Vector;
    .locals 2

    invoke-direct {p0}, Li/at;->h()Lu/v;

    move-result-object v0

    invoke-virtual {p0}, Li/at;->c()I

    move-result v1

    invoke-static {v0, v1, p1, p2, p3}, Li/bp;->a(Lu/v;IIZZ)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Lu/h;)Ljava/util/Vector;
    .locals 5

    const/4 v1, 0x0

    const/4 v4, -0x1

    if-eqz p1, :cond_0

    invoke-static {}, Li/v;->V()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lu/h;->j()Lcom/google/googlenav/c;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0}, Lcom/google/googlenav/c;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LR/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_3

    sget-object v3, Lcom/google/googlenav/ui/av;->aG:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Li/at;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v0}, Lcom/google/googlenav/c;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_4

    sget-object v2, Lcom/google/googlenav/ui/av;->aG:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v2}, Li/at;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lu/v;Li/v;)Lx/u;
    .locals 17

    invoke-virtual/range {p3 .. p3}, Lu/v;->Y()Lu/k;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual/range {p3 .. p3}, Lu/v;->K()I

    move-result v3

    move v5, v3

    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p3 .. p3}, Lu/v;->m()I

    move-result v3

    if-nez v3, :cond_4

    move-object/from16 v0, p3

    check-cast v0, Lu/p;

    move-object v3, v0

    invoke-virtual {v3}, Lu/p;->l()I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Lu/v;->F()Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v6, 0x22c

    invoke-static {v6}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v6

    :cond_0
    :goto_2
    add-int/2addr v3, v5

    move-object/from16 v16, v7

    move-object v13, v6

    move v12, v3

    :goto_3
    new-instance v3, Lx/u;

    invoke-virtual/range {p3 .. p3}, Lu/v;->aI()I

    move-result v7

    invoke-virtual/range {p3 .. p3}, Lu/v;->m()I

    move-result v8

    if-eqz p4, :cond_5

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Li/v;->d(Lu/v;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    move v9, v5

    :goto_4
    if-eqz p4, :cond_6

    const/16 p4, 0x1

    move/from16 v10, p4

    :goto_5
    if-eqz v4, :cond_7

    invoke-virtual/range {p3 .. p3}, Lu/v;->M()I

    move-result p4

    move/from16 v11, p4

    :goto_6
    invoke-virtual/range {p3 .. p3}, Lu/v;->ao()I

    move-result v14

    invoke-virtual/range {p3 .. p3}, Lu/v;->aA()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v3 .. v16}, Lx/u;-><init>(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;IIZZIILjava/lang/String;ILjava/lang/String;Lcom/google/googlenav/ui/bx;)V

    return-object v3

    :cond_1
    const/4 v3, 0x0

    move v4, v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    move v5, v3

    goto :goto_1

    :cond_3
    const/16 v8, 0x3c

    if-le v3, v8, :cond_0

    const/16 v6, 0x1da

    invoke-static {v6}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_4
    invoke-virtual/range {p3 .. p3}, Lu/v;->m()I

    move-result v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_8

    if-eqz v4, :cond_8

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lu/v;->as()I

    move-result v7

    move-object/from16 v0, p3

    move-object v1, v3

    move v2, v7

    invoke-static {v0, v1, v2}, Lh/q;->a(Lu/v;Lcom/google/googlenav/ui/aV;I)Lcom/google/googlenav/ui/bx;

    move-result-object v3

    move-object/from16 v16, v3

    move-object v13, v6

    move v12, v5

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    move v9, v5

    goto :goto_4

    :cond_6
    const/16 p4, 0x0

    move/from16 v10, p4

    goto :goto_5

    :cond_7
    const/16 p4, 0x0

    move/from16 v11, p4

    goto :goto_6

    :cond_8
    move-object/from16 v16, v7

    move-object v13, v6

    move v12, v5

    goto :goto_3
.end method

.method private a(Ljava/util/Vector;)V
    .locals 1

    invoke-direct {p0}, Li/at;->g()Li/v;

    move-result-object v0

    invoke-virtual {v0}, Li/v;->B()LaO/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Li/at;->j()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static b(Lu/v;I)Lcom/google/googlenav/ui/bx;
    .locals 5

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0}, Lu/v;->Z()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu/w;

    invoke-virtual {p0}, Lu/w;->a()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/googlenav/ui/av;->aH:Lcom/google/googlenav/ui/av;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    goto :goto_1
.end method

.method private b(Ljava/util/Vector;)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Li/v;->V()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v1, 0x3b8

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-direct {p0}, Li/at;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-direct {p0}, Li/at;->i()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    invoke-static {v3}, Lcom/google/googlenav/ui/aV;->f(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aV;->x()Lk/j;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bi;->a(Ljava/lang/String;Lk/j;)Lcom/google/googlenav/ui/bi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;

    :cond_2
    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private c(Lu/v;I)Ljava/util/Vector;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-direct {p0, v0}, Li/at;->b(Ljava/util/Vector;)V

    invoke-direct {p0}, Li/at;->g()Li/v;

    move-result-object v1

    invoke-virtual {v1}, Li/v;->Q_()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x3b1

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->G:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v2}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-static {v1}, Lcom/google/googlenav/ui/i;->a(Lcom/google/googlenav/ui/aI;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    sget-char v2, Lcom/google/googlenav/ui/aV;->D:C

    invoke-static {v2}, Lcom/google/googlenav/ui/aV;->a(C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/aV;->n()Lk/j;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/bi;->a(Ljava/lang/String;Lk/j;)Lcom/google/googlenav/ui/bi;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/googlenav/ui/aQ;->b(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    const/16 v2, 0xca

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v2, 0xd8

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->Q:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0, v4}, Li/at;->a(Z)Ljava/util/Vector;

    move-result-object v1

    move v2, v4

    :goto_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Li/at;->a(Ljava/util/Vector;)V

    return-object v0
.end method

.method private d(Lu/v;I)Ljava/util/Vector;
    .locals 4

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-direct {p0, v0}, Li/at;->b(Ljava/util/Vector;)V

    invoke-direct {p0}, Li/at;->g()Li/v;

    move-result-object v1

    invoke-virtual {v1}, Li/v;->Q_()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x3b1

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->G:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v2}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-static {v1}, Lcom/google/googlenav/ui/i;->a(Lcom/google/googlenav/ui/aI;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    sget-char v2, Lcom/google/googlenav/ui/aV;->D:C

    invoke-static {v2}, Lcom/google/googlenav/ui/aV;->a(C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/aV;->n()Lk/j;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/bi;->a(Ljava/lang/String;Lk/j;)Lcom/google/googlenav/ui/bi;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/googlenav/ui/aQ;->b(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    const/16 v2, 0xca

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Li/at;->f()Lu/d;

    move-result-object v1

    invoke-static {v1}, Li/bp;->a(Lu/d;)Lcom/google/googlenav/ui/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Li/at;->a(Ljava/util/Vector;)V

    return-object v0
.end method

.method private d()Lx/B;
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0}, Li/at;->h()Lu/v;

    move-result-object v0

    invoke-virtual {p0}, Li/at;->c()I

    move-result v1

    invoke-static {v0, v1}, Li/at;->a(Lu/v;I)Lcom/google/googlenav/ui/bx;

    move-result-object v2

    invoke-direct {p0}, Li/at;->e()Ljava/util/Vector;

    move-result-object v3

    invoke-static {v0, v1, v3}, Li/at;->a(Lu/v;ILjava/util/Vector;)Lcom/google/googlenav/ui/bx;

    move-result-object v3

    invoke-static {v0, v1}, Li/at;->b(Lu/v;I)Lcom/google/googlenav/ui/bx;

    move-result-object v4

    invoke-virtual {v0}, Lu/v;->o()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, v0, v1}, Li/at;->d(Lu/v;I)Ljava/util/Vector;

    move-result-object v1

    invoke-direct {p0}, Li/at;->g()Li/v;

    move-result-object v5

    invoke-static {v2, v3, v4, v0, v5}, Li/at;->a(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lu/v;Li/v;)Lx/u;

    move-result-object v0

    iget-object v2, p0, Li/at;->a:Li/x;

    invoke-virtual {v2}, Li/x;->H()[Lax/e;

    move-result-object v2

    invoke-static {v0, v6, v1, v2}, Lx/B;->b(Lx/G;Lx/n;Ljava/util/Vector;[Lax/e;)Lx/B;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->U()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xd8

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lx/B;->o:Ljava/lang/String;

    :cond_0
    return-object v0

    :cond_1
    invoke-direct {p0, v0, v1}, Li/at;->c(Lu/v;I)Ljava/util/Vector;

    move-result-object v1

    invoke-direct {p0}, Li/at;->g()Li/v;

    move-result-object v5

    invoke-static {v2, v3, v4, v0, v5}, Li/at;->a(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lu/v;Li/v;)Lx/u;

    move-result-object v0

    iget-object v2, p0, Li/at;->a:Li/x;

    invoke-virtual {v2}, Li/x;->H()[Lax/e;

    move-result-object v2

    invoke-static {v0, v6, v1, v2}, Lx/B;->a(Lx/G;Lx/n;Ljava/util/Vector;[Lax/e;)Lx/B;

    move-result-object v0

    goto :goto_0
.end method

.method private e()Ljava/util/Vector;
    .locals 4

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-direct {p0}, Li/at;->g()Li/v;

    move-result-object v1

    invoke-virtual {v1}, Li/v;->L()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-char v2, Lcom/google/googlenav/ui/aV;->aG:C

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/google/googlenav/ui/aV;->a(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->aG:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v1}, Li/v;->K()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Li/at;->f()Lu/d;

    move-result-object v2

    invoke-virtual {v2}, Lu/d;->ak()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->aG:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v1}, Li/v;->S()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/google/googlenav/ui/av;->z:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {v1}, Li/v;->K()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-char v2, Lcom/google/googlenav/ui/aV;->aH:C

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Li/v;->O()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-char v2, Lcom/google/googlenav/ui/aV;->aJ:C

    goto :goto_0

    :cond_3
    sget-char v2, Lcom/google/googlenav/ui/aV;->aI:C

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Li/v;->Q()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    sget-object v3, Lcom/google/googlenav/ui/av;->aG:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {v1}, Li/v;->R()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/google/googlenav/ui/av;->aG:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private f()Lu/d;
    .locals 1

    iget-object v0, p0, Li/at;->a:Li/x;

    invoke-virtual {v0}, Li/x;->v_()Lcom/google/googlenav/j;

    move-result-object p0

    check-cast p0, Lu/d;

    return-object p0
.end method

.method private g()Li/v;
    .locals 0

    iget-object p0, p0, Li/at;->a:Li/x;

    check-cast p0, Li/v;

    return-object p0
.end method

.method private h()Lu/v;
    .locals 1

    iget-object v0, p0, Li/at;->a:Li/x;

    invoke-virtual {v0}, Li/x;->v_()Lcom/google/googlenav/j;

    move-result-object p0

    check-cast p0, Lu/v;

    return-object p0
.end method

.method private i()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method

.method private j()Lcom/google/googlenav/ui/bx;
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    new-instance v1, Li/aS;

    invoke-direct {v1, p0}, Li/aS;-><init>(Li/at;)V

    new-instance v2, Li/ab;

    iget-object v3, p0, Li/at;->a:Li/x;

    invoke-virtual {v3}, Li/x;->bk()Lcom/google/googlenav/ui/aT;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/aT;->ad()LaU/a;

    move-result-object v3

    invoke-direct {v2, v3, v1, v4}, Li/ab;-><init>(LaU/a;Li/s;Z)V

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/z;)Lcom/google/googlenav/ui/aQ;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(Z)Ljava/util/Vector;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    move v1, v3

    :goto_0
    invoke-direct {p0}, Li/at;->h()Lu/v;

    move-result-object v2

    invoke-virtual {v2}, Lu/v;->c_()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-direct {p0, v1, v3, p1}, Li/at;->a(IZZ)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public a(I)Lx/J;
    .locals 9

    const/4 v1, 0x2

    const/4 v8, -0x1

    const/4 v3, 0x0

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4, v1}, Ljava/util/Vector;-><init>(I)V

    iget-object v0, p0, Li/at;->a:Li/x;

    invoke-virtual {v0}, Li/x;->v_()Lcom/google/googlenav/j;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object v0

    check-cast v0, Lu/f;

    invoke-virtual {v0}, Lu/f;->l()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v5, 0x40c

    invoke-static {v5}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v5

    :goto_0
    if-eqz v2, :cond_1

    sget-object v6, Lcom/google/googlenav/ui/av;->ar:Lcom/google/googlenav/ui/av;

    :goto_1
    if-eqz v2, :cond_2

    const/16 v2, 0xe5

    :goto_2
    new-instance v7, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v7}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-static {v5, v6}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/googlenav/ui/aQ;->j(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v2, p0, Li/at;->a:Li/x;

    check-cast v2, Li/v;

    invoke-virtual {v2}, Li/v;->K()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Li/at;->a:Li/x;

    invoke-virtual {v0}, Lu/f;->h()Lf/h;

    move-result-object v0

    invoke-virtual {v2, v0}, Li/x;->b(Lf/h;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_4

    sget-object v2, Lcom/google/googlenav/ui/av;->ar:Lcom/google/googlenav/ui/av;

    :goto_4
    if-eqz v0, :cond_5

    const/16 v0, 0x5e6

    :goto_5
    new-instance v5, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v5}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v6, 0x346

    invoke-static {v6}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/aQ;->j(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v0, Lx/B;

    const/16 v2, 0x2d9

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lx/B;-><init>(ILjava/lang/String;Lx/G;Ljava/util/Vector;Lx/n;[Lax/e;)V

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v1

    iget-object v2, p0, Li/at;->a:Li/x;

    invoke-virtual {v1, v0, v2}, Lx/k;->a(Lx/B;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v5, 0x40e

    invoke-static {v5}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :cond_1
    sget-object v6, Lcom/google/googlenav/ui/av;->w:Lcom/google/googlenav/ui/av;

    goto/16 :goto_1

    :cond_2
    move v2, v8

    goto/16 :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    sget-object v2, Lcom/google/googlenav/ui/av;->w:Lcom/google/googlenav/ui/av;

    goto :goto_4

    :cond_5
    move v0, v8

    goto :goto_5
.end method

.method public a()Lx/S;
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Li/at;->a:Li/x;

    invoke-virtual {v0}, Li/x;->v_()Lcom/google/googlenav/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/j;->c()I

    move-result v0

    invoke-static {}, Lx/h;->a()Lx/h;

    move-result-object v2

    invoke-direct {p0}, Li/at;->g()Li/v;

    move-result-object v1

    invoke-virtual {v1}, Li/v;->U()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v1, 0xe3

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Li/bp;->a(Z)Lcom/google/googlenav/ui/av;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    iget-object v1, p0, Li/at;->a:Li/x;

    invoke-virtual {v2, v0, v1, v4}, Lx/h;->a(Lcom/google/googlenav/ui/bx;Lx/U;Z)Lx/S;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v0, v4, v3}, Li/at;->a(IZZ)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne v0, v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bx;

    iget-object v1, p0, Li/at;->a:Li/x;

    invoke-virtual {v2, v0, v1, v4}, Lx/h;->a(Lcom/google/googlenav/ui/bx;Lx/U;Z)Lx/S;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bx;

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/bx;

    iget-object v3, p0, Li/at;->a:Li/x;

    invoke-virtual {v2, v0, v1, v3, v4}, Lx/h;->a(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lx/U;Z)Lx/S;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lx/J;)V
    .locals 3

    invoke-interface {p1}, Lx/J;->g()Lx/z;

    move-result-object v0

    check-cast v0, Lx/B;

    invoke-direct {p0}, Li/at;->h()Lu/v;

    move-result-object v1

    invoke-virtual {v1}, Lu/v;->o()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Li/at;->c()I

    move-result v2

    invoke-direct {p0, v1, v2}, Li/at;->d(Lu/v;I)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/B;->a(Ljava/util/Vector;)V

    :goto_0
    iget-object v1, p0, Li/at;->a:Li/x;

    invoke-virtual {v1}, Li/x;->H()[Lax/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/B;->a([Lax/e;)V

    invoke-interface {p1}, Lx/J;->f()V

    invoke-interface {p1}, Lx/J;->l()V

    check-cast p1, Lx/X;

    iget-object v0, p0, Li/at;->a:Li/x;

    invoke-virtual {v0}, Li/x;->aq()I

    move-result v0

    invoke-interface {p1, v0}, Lx/X;->d(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Li/at;->c()I

    move-result v2

    invoke-direct {p0, v1, v2}, Li/at;->c(Lu/v;I)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/B;->a(Ljava/util/Vector;)V

    goto :goto_0
.end method

.method public al_()Lx/J;
    .locals 3

    const/4 v0, -0x1

    iput v0, p0, Li/at;->c:I

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    invoke-direct {p0}, Li/at;->d()Lx/B;

    move-result-object v1

    iget-object v2, p0, Li/at;->a:Li/x;

    invoke-virtual {v0, v1, v2}, Lx/k;->b(Lx/B;Lcom/google/googlenav/ui/aY;)Lx/M;

    move-result-object v0

    return-object v0
.end method

.method c()I
    .locals 2

    iget v0, p0, Li/at;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Li/at;->h()Lu/v;

    move-result-object v0

    invoke-virtual {v0}, Lu/v;->az()I

    move-result v0

    iput v0, p0, Li/at;->c:I

    :cond_0
    iget v0, p0, Li/at;->c:I

    return v0
.end method

.class public Lx/B;
.super Lx/z;


# instance fields
.field protected A:Z

.field public d:Lx/G;

.field public final e:[Lcom/google/googlenav/ui/aI;

.field public f:Lx/n;

.field public g:Lx/D;

.field public final h:Ljava/util/Vector;

.field public final i:Lcom/google/googlenav/ui/bx;

.field public final j:Lx/C;

.field public r:Lcom/google/googlenav/ui/bx;

.field public s:Lx/n;

.field public t:I

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Lx/G;Ljava/util/Vector;Lx/n;[Lax/e;)V
    .locals 13

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v9, p5

    move-object/from16 v11, p6

    invoke-direct/range {v0 .. v12}, Lx/B;-><init>(ILjava/lang/String;Lx/G;[Lcom/google/googlenav/ui/aI;Ljava/util/Vector;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lx/C;Lx/n;Lx/n;[Lax/e;Lx/D;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lx/G;[Lcom/google/googlenav/ui/aI;Ljava/util/Vector;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lx/C;Lx/n;Lx/n;[Lax/e;Lx/D;)V
    .locals 9

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v5

    move v2, p1

    move-object v3, p2

    move-object/from16 v4, p11

    invoke-direct {v0, v1, v2, v3, v4}, Lx/z;-><init>(IILjava/lang/String;[Lax/e;)V

    const/4 v5, 0x2

    iput v5, p0, Lx/B;->t:I

    const/4 v5, 0x0

    iput-boolean v5, p0, Lx/B;->u:Z

    const/4 v5, 0x1

    iput-boolean v5, p0, Lx/B;->v:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lx/B;->w:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lx/B;->x:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lx/B;->y:Z

    const/4 v5, 0x0

    iput v5, p0, Lx/B;->z:I

    iput-object p3, p0, Lx/B;->d:Lx/G;

    iput-object p4, p0, Lx/B;->e:[Lcom/google/googlenav/ui/aI;

    move-object/from16 v0, p9

    move-object v1, p0

    iput-object v0, v1, Lx/B;->s:Lx/n;

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Ljava/util/Vector;->size()I

    move-result v5

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6, v5}, Ljava/util/Vector;-><init>(I)V

    iput-object v6, p0, Lx/B;->h:Ljava/util/Vector;

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    iget-object v7, p0, Lx/B;->h:Ljava/util/Vector;

    invoke-virtual {p5, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lx/B;->A:Z

    :goto_1
    iput-object p6, p0, Lx/B;->i:Lcom/google/googlenav/ui/bx;

    move-object/from16 v0, p7

    move-object v1, p0

    iput-object v0, v1, Lx/B;->r:Lcom/google/googlenav/ui/bx;

    move-object/from16 v0, p8

    move-object v1, p0

    iput-object v0, v1, Lx/B;->j:Lx/C;

    move-object/from16 v0, p10

    move-object v1, p0

    iput-object v0, v1, Lx/B;->f:Lx/n;

    move-object/from16 v0, p12

    move-object v1, p0

    iput-object v0, v1, Lx/B;->g:Lx/D;

    return-void

    :cond_1
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, p0, Lx/B;->h:Ljava/util/Vector;

    const/4 v5, 0x0

    iput-boolean v5, p0, Lx/B;->A:Z

    goto :goto_1
.end method

.method public constructor <init>(LI/n;ILjava/lang/String;Lx/G;[Lcom/google/googlenav/ui/aI;Ljava/util/Vector;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lx/C;Lx/n;Lx/n;[Lax/e;Lx/D;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p12

    move v3, p2

    invoke-direct {v0, v1, v2, v3}, Lx/z;-><init>(LI/n;[Lax/e;I)V

    const/4 v4, 0x2

    iput v4, p0, Lx/B;->t:I

    const/4 v4, 0x0

    iput-boolean v4, p0, Lx/B;->u:Z

    const/4 v4, 0x1

    iput-boolean v4, p0, Lx/B;->v:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lx/B;->w:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lx/B;->x:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lx/B;->y:Z

    const/4 v4, 0x0

    iput v4, p0, Lx/B;->z:I

    iput-object p3, p0, Lx/B;->o:Ljava/lang/String;

    iput-object p4, p0, Lx/B;->d:Lx/G;

    iput-object p5, p0, Lx/B;->e:[Lcom/google/googlenav/ui/aI;

    move-object/from16 v0, p10

    move-object v1, p0

    iput-object v0, v1, Lx/B;->s:Lx/n;

    if-eqz p6, :cond_1

    invoke-virtual {p6}, Ljava/util/Vector;->size()I

    move-result v4

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5, v4}, Ljava/util/Vector;-><init>(I)V

    iput-object v5, p0, Lx/B;->h:Ljava/util/Vector;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    iget-object v6, p0, Lx/B;->h:Ljava/util/Vector;

    invoke-virtual {p6, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lx/B;->A:Z

    :goto_1
    iput-object p7, p0, Lx/B;->i:Lcom/google/googlenav/ui/bx;

    move-object/from16 v0, p8

    move-object v1, p0

    iput-object v0, v1, Lx/B;->r:Lcom/google/googlenav/ui/bx;

    move-object/from16 v0, p9

    move-object v1, p0

    iput-object v0, v1, Lx/B;->j:Lx/C;

    move-object/from16 v0, p11

    move-object v1, p0

    iput-object v0, v1, Lx/B;->f:Lx/n;

    move-object/from16 v0, p13

    move-object v1, p0

    iput-object v0, v1, Lx/B;->g:Lx/D;

    return-void

    :cond_1
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iput-object v4, p0, Lx/B;->h:Ljava/util/Vector;

    const/4 v4, 0x0

    iput-boolean v4, p0, Lx/B;->A:Z

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Lx/G;Ljava/util/Vector;[Lax/e;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lx/B;-><init>(ILjava/lang/String;Lx/G;Ljava/util/Vector;Lx/n;[Lax/e;)V

    return-void
.end method

.method public static a(Lcom/google/googlenav/ui/g;)Lx/B;
    .locals 13

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd8

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_0
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v5, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v0, Lx/B;

    const/16 v1, 0x16

    move-object v4, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    move-object v10, v3

    move-object v11, v3

    move-object v12, v3

    invoke-direct/range {v0 .. v12}, Lx/B;-><init>(ILjava/lang/String;Lx/G;[Lcom/google/googlenav/ui/aI;Ljava/util/Vector;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lx/C;Lx/n;Lx/n;[Lax/e;Lx/D;)V

    return-object v0

    :cond_0
    move-object v2, v3

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lx/G;Ljava/util/Vector;Lx/n;)Lx/B;
    .locals 13

    new-instance v0, Lx/B;

    const/16 v1, 0xe

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object/from16 v10, p3

    invoke-direct/range {v0 .. v12}, Lx/B;-><init>(ILjava/lang/String;Lx/G;[Lcom/google/googlenav/ui/aI;Ljava/util/Vector;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lx/C;Lx/n;Lx/n;[Lax/e;Lx/D;)V

    return-object v0
.end method

.method public static a(Lx/G;Lx/n;Ljava/util/Vector;[Lax/e;)Lx/B;
    .locals 14

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd8

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_0
    new-instance v0, Lx/B;

    new-instance v1, LI/p;

    invoke-direct {v1}, LI/p;-><init>()V

    const/4 v2, 0x5

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object v4, p0

    move-object/from16 v6, p2

    move-object v11, p1

    move-object/from16 v12, p3

    invoke-direct/range {v0 .. v13}, Lx/B;-><init>(LI/n;ILjava/lang/String;Lx/G;[Lcom/google/googlenav/ui/aI;Ljava/util/Vector;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lx/C;Lx/n;Lx/n;[Lax/e;Lx/D;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_0
.end method

.method public static b(Lx/G;Lx/n;Ljava/util/Vector;[Lax/e;)Lx/B;
    .locals 14

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd8

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_0
    new-instance v0, Lx/B;

    new-instance v1, LI/p;

    invoke-direct {v1}, LI/p;-><init>()V

    const/16 v2, 0x15

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object v4, p0

    move-object/from16 v6, p2

    move-object v11, p1

    move-object/from16 v12, p3

    invoke-direct/range {v0 .. v13}, Lx/B;-><init>(LI/n;ILjava/lang/String;Lx/G;[Lcom/google/googlenav/ui/aI;Ljava/util/Vector;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lx/C;Lx/n;Lx/n;[Lax/e;Lx/D;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lx/B;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public a(I)Lcom/google/googlenav/ui/bx;
    .locals 1

    iget-object v0, p0, Lx/B;->h:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/ui/bx;

    return-object p0
.end method

.method public a(Lcom/google/googlenav/ui/bx;)V
    .locals 2

    iget-object v0, p0, Lx/B;->h:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lx/B;->A:Z

    iget-object v0, p0, Lx/B;->k:Ljava/util/EnumSet;

    sget-object v1, Lx/f;->a:Lx/f;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/util/Vector;)V
    .locals 2

    iget-object v0, p0, Lx/B;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    const/4 v0, 0x0

    iget-object v1, p0, Lx/B;->h:Ljava/util/Vector;

    invoke-static {p1, v0, v1}, LA/r;->a(Ljava/util/Vector;ILjava/util/Vector;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lx/B;->A:Z

    iget-object v0, p0, Lx/B;->k:Ljava/util/EnumSet;

    sget-object v1, Lx/f;->a:Lx/f;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lx/D;)V
    .locals 2

    iput-object p1, p0, Lx/B;->g:Lx/D;

    iget-object v0, p0, Lx/B;->k:Ljava/util/EnumSet;

    sget-object v1, Lx/f;->d:Lx/f;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lx/G;)V
    .locals 2

    iput-object p1, p0, Lx/B;->d:Lx/G;

    iget-object v0, p0, Lx/B;->k:Ljava/util/EnumSet;

    sget-object v1, Lx/f;->c:Lx/f;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lx/n;)V
    .locals 2

    iput-object p1, p0, Lx/B;->s:Lx/n;

    iget-object v0, p0, Lx/B;->k:Ljava/util/EnumSet;

    sget-object v1, Lx/f;->g:Lx/f;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a([Lcom/google/googlenav/ui/aI;)V
    .locals 3

    iget-object v0, p0, Lx/B;->e:[Lcom/google/googlenav/ui/aI;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lx/B;->e:[Lcom/google/googlenav/ui/aI;

    aget-object v2, p1, v0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lx/B;->k:Ljava/util/EnumSet;

    sget-object v1, Lx/f;->i:Lx/f;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public b(I)V
    .locals 2

    iput p1, p0, Lx/B;->z:I

    iget-object v0, p0, Lx/B;->k:Ljava/util/EnumSet;

    sget-object v1, Lx/f;->h:Lx/f;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lx/n;)V
    .locals 2

    iput-object p1, p0, Lx/B;->f:Lx/n;

    iget-object v0, p0, Lx/B;->k:Ljava/util/EnumSet;

    sget-object v1, Lx/f;->f:Lx/f;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lx/B;->A:Z

    return v0
.end method

.method public c()Z
    .locals 1

    iget v0, p0, Lx/B;->m:I

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xb -> :sswitch_0
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Lx/B;->k:Ljava/util/EnumSet;

    sget-object v1, Lx/f;->c:Lx/f;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 2

    iget-object v0, p0, Lx/B;->k:Ljava/util/EnumSet;

    sget-object v1, Lx/f;->d:Lx/f;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 2

    iget-object v0, p0, Lx/B;->k:Ljava/util/EnumSet;

    sget-object v1, Lx/f;->i:Lx/f;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public o()Z
    .locals 2

    iget-object v0, p0, Lx/B;->k:Ljava/util/EnumSet;

    sget-object v1, Lx/f;->g:Lx/f;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public p()Z
    .locals 2

    iget-object v0, p0, Lx/B;->k:Ljava/util/EnumSet;

    sget-object v1, Lx/f;->f:Lx/f;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public q()Z
    .locals 2

    iget-object v0, p0, Lx/B;->k:Ljava/util/EnumSet;

    sget-object v1, Lx/f;->h:Lx/f;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

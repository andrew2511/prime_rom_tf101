.class public Le/B;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:LS/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;LS/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/B;->a:Landroid/content/Context;

    iput-object p2, p0, Le/B;->b:LS/b;

    return-void
.end method

.method static a(LF/M;I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, LF/M;->j()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, LF/M;->a(I)LF/y;

    move-result-object v1

    invoke-virtual {v1}, LF/y;->x()I

    move-result v1

    if-le v1, p1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LF/M;->j()I

    move-result v0

    goto :goto_1
.end method

.method private static a(LF/y;LG/b;)LF/f;
    .locals 18

    invoke-virtual/range {p0 .. p0}, LF/y;->s()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LF/C;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, LG/b;->a()I

    move-result v7

    const/4 v2, 0x2

    sub-int v2, v7, v2

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, LG/b;->a(I)LG/Q;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, LG/b;->b()LG/Q;

    move-result-object v3

    invoke-static {v2, v3}, LG/Q;->a(LG/Q;LG/Q;)D

    move-result-wide v2

    double-to-float v10, v2

    const/4 v14, 0x0

    new-instance v2, LF/f;

    invoke-virtual/range {p1 .. p1}, LG/b;->b()LG/Q;

    move-result-object v3

    const/16 v4, 0x10

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/16 p1, 0x1

    sub-int v7, v7, p1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p0}, LF/y;->n()Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, LF/y;->l()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, LF/y;->t()Ljava/util/List;

    move-result-object v16

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move v11, v10

    invoke-direct/range {v2 .. v17}, LF/f;-><init>(LG/Q;IIIIIIFFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v2
.end method

.method private static a(LF/y;IIII)LF/y;
    .locals 20

    invoke-virtual/range {p0 .. p0}, LF/y;->s()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LF/C;

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, LF/y;->u()Ljava/util/List;

    move-result-object v4

    new-instance v19, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move-object/from16 v0, v19

    move v1, v5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LF/w;

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p0}, LF/y;->j()LF/y;

    move-result-object v4

    if-nez v4, :cond_3

    const/4 v5, 0x0

    move v10, v5

    :goto_2
    if-nez v4, :cond_4

    const/4 v4, 0x0

    move v11, v4

    :goto_3
    new-instance v4, LF/f;

    invoke-virtual/range {p0 .. p0}, LF/y;->a()LG/Q;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, LF/y;->b()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, LF/y;->c()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, LF/y;->d()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, LF/y;->g()F

    move-result v12

    invoke-virtual/range {p0 .. p0}, LF/y;->h()F

    move-result v13

    invoke-virtual/range {p0 .. p0}, LF/y;->n()Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, LF/y;->l()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, LF/y;->m()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, LF/y;->t()Ljava/util/List;

    move-result-object v18

    move/from16 v9, p2

    invoke-direct/range {v4 .. v19}, LF/f;-><init>(LG/Q;IIIIIIFFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object v0, v4

    move/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, LF/y;->a(LF/f;III)LF/y;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {v4}, LF/y;->e()I

    move-result v5

    move v10, v5

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, LF/y;->f()I

    move-result v4

    move v11, v4

    goto :goto_3
.end method

.method static a(ILe/v;)Ljava/util/ArrayList;
    .locals 12

    const/4 v11, 0x0

    const/4 v4, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Le/v;->d()[LS/a;

    move-result-object v8

    array-length v9, v8

    move v10, v11

    :goto_0
    if-ge v10, v9, :cond_2

    aget-object v3, v8, v10

    invoke-virtual {v3}, LS/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, LF/C;

    const/4 v1, 0x3

    invoke-virtual {v3}, LS/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, LS/a;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, LF/C;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_0

    :cond_1
    sget-object v0, LS/c;->a:LS/a;

    if-eq v3, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    move v1, v11

    :goto_2
    new-instance v0, LF/C;

    invoke-virtual {v3}, LS/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, LS/a;->a()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move v6, v11

    invoke-direct/range {v0 .. v6}, LF/C;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x2

    move v1, v0

    goto :goto_2

    :cond_2
    return-object v7

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static a(LS/b;Le/h;)Ljava/util/LinkedList;
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    :goto_0
    iget-object v2, p1, Le/h;->c:[LS/c;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    new-instance v2, Le/v;

    invoke-direct {v2, p0, p1, v0}, Le/v;-><init>(LS/b;Le/h;I)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Le/v;->f()I

    move-result v0

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static a(Le/h;Ljava/util/List;Ljava/util/List;LG/b;)Ljava/util/List;
    .locals 22

    new-instance v18, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v0, v18

    move v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Le/h;->c:[LS/c;

    move-object/from16 v19, v0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v20

    const/16 p0, 0x0

    const/4 v2, 0x0

    move/from16 v21, v2

    move/from16 v7, p0

    :goto_0
    move/from16 v0, v21

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/v;

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Le/u;

    move-object v15, v0

    invoke-virtual/range {p0 .. p0}, Le/v;->e()I

    move-result v2

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Le/v;->a(LG/b;)D

    move-result-wide v3

    double-to-int v8, v3

    if-nez v2, :cond_0

    const/4 v3, 0x0

    :goto_1
    aget-object v2, v19, v2

    invoke-static {v3}, Le/D;->a(LS/c;)F

    move-result v4

    invoke-static {v2}, Le/D;->b(LS/c;)F

    move-result v11

    if-nez v3, :cond_1

    move v10, v11

    :goto_2
    new-instance v2, LF/f;

    invoke-virtual/range {p0 .. p0}, Le/v;->i()LG/Q;

    move-result-object v3

    invoke-virtual {v15}, Le/u;->b()I

    move-result v4

    invoke-virtual {v15}, Le/u;->c()I

    move-result v5

    const/4 v6, -0x1

    invoke-virtual/range {p0 .. p0}, Le/v;->a()I

    move-result v9

    invoke-virtual {v15}, Le/u;->a()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v15}, Le/u;->d()Ljava/util/List;

    move-result-object v15

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    invoke-direct/range {v2 .. v17}, LF/f;-><init>(LG/Q;IIIIIIFFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v0, v18

    move-object v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 p0, 0x0

    invoke-virtual/range {p3 .. p3}, LG/b;->a()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move/from16 v0, p0

    move v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/lit8 v2, v21, 0x1

    move/from16 v21, v2

    move/from16 v7, p0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    sub-int v3, v2, v3

    aget-object v3, v19, v3

    goto :goto_1

    :cond_1
    move v10, v4

    goto :goto_2

    :cond_2
    return-object v18
.end method

.method static a(ILF/M;IILjava/util/ArrayList;LG/b;)Z
    .locals 9

    invoke-static {p1, p0}, Le/B;->a(LF/M;I)I

    move-result v0

    invoke-virtual {p1}, LF/M;->j()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, v0}, LF/M;->a(I)LF/y;

    move-result-object v1

    invoke-virtual {p1}, LF/M;->m()LG/m;

    move-result-object v2

    add-int/lit8 v3, p0, 0x1

    :goto_1
    invoke-virtual {v1}, LF/y;->x()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v2, v3}, LG/m;->a(I)LG/Q;

    move-result-object v4

    invoke-virtual {p5, v4}, LG/b;->a(LG/Q;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_2
    invoke-virtual {p1}, LF/M;->j()I

    move-result v3

    if-ge v1, v3, :cond_5

    invoke-virtual {p1, v1}, LF/M;->a(I)LF/y;

    move-result-object v3

    invoke-virtual {p5}, LG/b;->a()I

    move-result v4

    if-ne v1, v0, :cond_2

    move v5, p3

    move v6, p2

    :goto_3
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v3, v7, v4, v6, v5}, Le/B;->a(LF/y;IIII)LF/y;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, LF/y;->i()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1}, LF/M;->j()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-virtual {p1, v4}, LF/M;->a(I)LF/y;

    move-result-object v4

    invoke-virtual {v4}, LF/y;->x()I

    move-result v4

    :goto_4
    invoke-virtual {v3}, LF/y;->x()I

    move-result v3

    :goto_5
    if-ge v3, v4, :cond_4

    invoke-virtual {v2, v3}, LG/m;->a(I)LG/Q;

    move-result-object v5

    invoke-virtual {p5, v5}, LG/b;->a(LG/Q;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_2
    invoke-virtual {v3}, LF/y;->e()I

    move-result v5

    invoke-virtual {v3}, LF/y;->f()I

    move-result v6

    move v8, v6

    move v6, v5

    move v5, v8

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, LG/m;->b()I

    move-result v4

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Le/h;LF/u;LF/M;)LF/M;
    .locals 11

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x1

    new-instance v5, LG/b;

    invoke-direct {v5}, LG/b;-><init>()V

    iget-object v0, p0, Le/B;->b:LS/b;

    invoke-static {v0, p1}, Le/B;->a(LS/b;Le/h;)Ljava/util/LinkedList;

    move-result-object v0

    new-instance v1, Le/b;

    invoke-direct {v1, p1}, Le/b;-><init>(Le/h;)V

    invoke-virtual {v1, v0}, Le/b;->a(Ljava/util/LinkedList;)V

    invoke-virtual {p0, v0}, Le/B;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v0, v1, v5}, Le/B;->a(Le/h;Ljava/util/List;Ljava/util/List;LG/b;)Ljava/util/List;

    move-result-object v7

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LF/f;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF/f;

    invoke-static {v0, v1, v2, v3}, LF/y;->a(LF/f;III)LF/y;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LF/f;->f()I

    move-result v0

    invoke-virtual {p0}, LF/f;->g()I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    move v3, v2

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, LG/b;->b()LG/Q;

    move-result-object v0

    const-string v1, "Describer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Join point: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, LG/Q;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Las/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, LG/b;->a()I

    move-result v0

    sub-int v9, v0, v10

    iget-object v0, p1, Le/h;->b:Le/A;

    iget v0, v0, Le/A;->e:I

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Le/B;->a(ILF/M;IILjava/util/ArrayList;LG/b;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, LF/M;->j()I

    move-result v0

    sub-int/2addr v0, v10

    invoke-virtual {p3, v0}, LF/M;->a(I)LF/y;

    move-result-object v0

    invoke-static {v0, v5}, Le/B;->a(LF/y;LG/b;)LF/f;

    move-result-object v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v10

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LF/f;

    invoke-virtual {p0}, LF/f;->f()I

    move-result v2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v10

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LF/f;

    invoke-virtual {p0}, LF/f;->g()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, LF/y;->a(LF/f;III)LF/y;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v10, v0, [LF/y;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v0, Le/m;

    invoke-direct {v0, v10}, Le/m;-><init>([LF/y;)V

    new-instance v1, Le/f;

    invoke-direct {v1}, Le/f;-><init>()V

    invoke-virtual {v1, v0}, Le/f;->a(Le/m;)I

    invoke-virtual {p3}, LF/M;->c()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p3}, LF/M;->l()LF/u;

    move-result-object v3

    invoke-virtual {v5}, LG/b;->d()LG/m;

    move-result-object v5

    invoke-virtual {p3}, LF/M;->p()I

    move-result v7

    invoke-virtual {p3}, LF/M;->B()[LF/K;

    move-result-object v8

    move-object v2, p2

    move-object v4, v10

    move-object v10, v6

    invoke-static/range {v0 .. v10}, LF/M;->a(IILF/u;LF/u;[LF/y;LG/m;Ljava/lang/String;I[LF/K;ILjava/util/List;)LF/M;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/util/List;)Ljava/util/List;
    .locals 10

    const/4 v9, 0x1

    const/4 v7, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/v;

    invoke-static {v9, v1}, Le/B;->a(ILe/v;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v5, Le/k;

    iget-object v6, p0, Le/B;->a:Landroid/content/Context;

    invoke-virtual {v1}, Le/v;->g()LS/c;

    move-result-object v1

    invoke-static {v1}, Le/D;->c(LS/c;)I

    move-result v1

    invoke-direct {v5, v6, v2, v1}, Le/k;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v7

    :goto_0
    sub-int v1, v4, v9

    if-ge v5, v1, :cond_0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Le/v;

    move-object v2, v0

    invoke-virtual {v2}, Le/v;->b()I

    move-result v6

    add-int/lit8 v1, v5, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/v;

    invoke-static {v6, v1}, Le/B;->a(ILe/v;)Ljava/util/ArrayList;

    move-result-object v1

    packed-switch v6, :pswitch_data_0

    :goto_1
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    :pswitch_0
    new-instance v7, Le/q;

    iget-object v8, p0, Le/B;->a:Landroid/content/Context;

    invoke-virtual {v2}, Le/v;->c()I

    move-result v2

    invoke-direct {v7, v8, v1, v6, v2}, Le/q;-><init>(Landroid/content/Context;Ljava/util/List;II)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    new-instance v6, Le/s;

    iget-object v7, p0, Le/B;->a:Landroid/content/Context;

    invoke-virtual {v2}, Le/v;->c()I

    move-result v2

    invoke-direct {v6, v7, v1, v2}, Le/s;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_2
    new-instance v6, Le/r;

    iget-object v7, p0, Le/B;->a:Landroid/content/Context;

    invoke-virtual {v2}, Le/v;->c()I

    move-result v2

    invoke-direct {v6, v7, v1, v2}, Le/r;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_3
    new-instance v6, Le/t;

    iget-object v7, p0, Le/B;->a:Landroid/content/Context;

    invoke-virtual {v2}, Le/v;->c()I

    move-result v2

    invoke-direct {v6, v7, v1, v2}, Le/t;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_4
    new-instance v2, Le/w;

    iget-object v6, p0, Le/B;->a:Landroid/content/Context;

    invoke-direct {v2, v6, v1}, Le/w;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_5
    new-instance v6, Le/l;

    iget-object v7, p0, Le/B;->a:Landroid/content/Context;

    invoke-virtual {v2}, Le/v;->c()I

    move-result v2

    invoke-direct {v6, v7, v1, v2}, Le/l;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    return-object v3

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

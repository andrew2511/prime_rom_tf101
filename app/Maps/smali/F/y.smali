.class public LF/y;
.super Ljava/lang/Object;


# instance fields
.field private final a:LG/Q;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:F

.field private final j:F

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Landroid/text/Spanned;

.field private final n:LF/C;

.field private final o:Ljava/util/Map;

.field private final p:Ljava/util/List;

.field private final q:Ljava/util/List;

.field private final r:Ljava/util/List;

.field private final s:Ljava/util/List;

.field private final t:Ljava/util/List;

.field private final u:Ljava/util/List;

.field private v:LF/y;

.field private w:LF/y;


# direct methods
.method protected constructor <init>(IIILG/Q;IILjava/lang/String;IIFFLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LF/y;->b:I

    iput p2, p0, LF/y;->c:I

    iput p3, p0, LF/y;->d:I

    iput-object p4, p0, LF/y;->a:LG/Q;

    iput p5, p0, LF/y;->e:I

    iput p6, p0, LF/y;->f:I

    iput p8, p0, LF/y;->g:I

    iput p9, p0, LF/y;->h:I

    iput p10, p0, LF/y;->i:F

    move/from16 v0, p11

    move-object v1, p0

    iput v0, v1, LF/y;->j:F

    move-object/from16 v0, p12

    move-object v1, p0

    iput-object v0, v1, LF/y;->k:Ljava/lang/String;

    move-object/from16 v0, p13

    move-object v1, p0

    iput-object v0, v1, LF/y;->l:Ljava/lang/String;

    move-object/from16 v0, p15

    move-object v1, p0

    iput-object v0, v1, LF/y;->t:Ljava/util/List;

    move-object/from16 v0, p16

    move-object v1, p0

    iput-object v0, v1, LF/y;->u:Ljava/util/List;

    iget-object v2, p0, LF/y;->u:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LF/w;

    invoke-virtual {p1, p0}, LF/w;->a(LF/y;)V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, LF/y;->p:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, LF/y;->q:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, LF/y;->r:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, LF/y;->s:Ljava/util/List;

    move-object v0, p0

    move-object/from16 v1, p14

    invoke-static {v0, v1}, LF/y;->a(LF/y;Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, LF/y;->o:Ljava/util/Map;

    iget-object v2, p0, LF/y;->o:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object v2, p0, LF/y;->p:Ljava/util/List;

    invoke-static {p1, v2}, LF/y;->a(Ljava/util/List;Ljava/util/List;)V

    iget-object v2, p0, LF/y;->o:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object v2, p0, LF/y;->q:Ljava/util/List;

    invoke-static {p1, v2}, LF/y;->a(Ljava/util/List;Ljava/util/List;)V

    iget-object v2, p0, LF/y;->o:Ljava/util/Map;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object v2, p0, LF/y;->q:Ljava/util/List;

    invoke-static {p1, v2}, LF/y;->a(Ljava/util/List;Ljava/util/List;)V

    iget-object v2, p0, LF/y;->o:Ljava/util/Map;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object v2, p0, LF/y;->r:Ljava/util/List;

    invoke-static {p1, v2}, LF/y;->a(Ljava/util/List;Ljava/util/List;)V

    iget-object v2, p0, LF/y;->o:Ljava/util/Map;

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object v2, p0, LF/y;->s:Ljava/util/List;

    invoke-static {p1, v2}, LF/y;->a(Ljava/util/List;Ljava/util/List;)V

    iget v2, p0, LF/y;->b:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    iget-object v2, p0, LF/y;->o:Ljava/util/Map;

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, LF/y;->p:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v2, p0, LF/y;->o:Ljava/util/Map;

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    const/4 v2, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, LF/y;->q:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, LF/y;->o:Ljava/util/Map;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LF/C;

    iput-object p1, p0, LF/y;->n:LF/C;

    :goto_2
    iget-object v2, p0, LF/y;->o:Ljava/util/Map;

    invoke-static {p7, v2}, LF/y;->a(Ljava/lang/String;Ljava/util/Map;)Landroid/text/Spanned;

    move-result-object v2

    iput-object v2, p0, LF/y;->m:Landroid/text/Spanned;

    return-void

    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, LF/y;->n:LF/C;

    goto :goto_2
.end method

.method static a(Law/e;)I
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Law/e;->d(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    :cond_0
    move v0, v2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public static a(LF/f;III)LF/y;
    .locals 17

    new-instance v0, LF/y;

    invoke-virtual/range {p0 .. p0}, LF/f;->b()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, LF/f;->c()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, LF/f;->d()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, LF/f;->a()LG/Q;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, LF/f;->e()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, LF/f;->j()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, LF/f;->h()F

    move-result v10

    invoke-virtual/range {p0 .. p0}, LF/f;->i()F

    move-result v11

    invoke-virtual/range {p0 .. p0}, LF/f;->k()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, LF/f;->l()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, LF/f;->m()Ljava/util/List;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, LF/f;->n()Ljava/util/List;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, LF/f;->o()Ljava/util/List;

    move-result-object v16

    move/from16 v5, p1

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-direct/range {v0 .. v16}, LF/y;-><init>(IIILG/Q;IILjava/lang/String;IIFFLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public static a(Law/e;LG/Q;IIIFFLF/u;)LF/y;
    .locals 20

    const/16 v4, 0x10

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v15

    const/4 v4, 0x5

    move-object/from16 v0, p0

    move v1, v4

    invoke-static {v0, v1}, Law/b;->e(Law/e;I)I

    move-result v9

    const/16 v4, 0x14

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v16

    const/4 v4, 0x2

    move-object/from16 v0, p0

    move v1, v4

    invoke-static {v0, v1}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    move-object/from16 v0, p0

    move v1, v5

    invoke-static {v0, v1}, Law/b;->e(Law/e;I)I

    move-result v10

    const/4 v5, 0x4

    move-object/from16 v0, p0

    move v1, v5

    invoke-static {v0, v1}, Law/b;->e(Law/e;I)I

    move-result v11

    const/16 v5, 0x13

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x13

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object p0

    invoke-static/range {p0 .. p0}, LF/y;->a(Law/e;)I

    move-result v5

    invoke-static/range {p0 .. p0}, LF/y;->b(Law/e;)I

    move-result v6

    const/16 v7, 0xc

    if-ne v5, v7, :cond_0

    const/4 v7, 0x7

    const/4 v8, -0x1

    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    invoke-static {v0, v1, v2}, Law/b;->c(Law/e;II)I

    move-result v7

    :goto_0
    invoke-static/range {p0 .. p0}, LF/y;->c(Law/e;)Ljava/util/List;

    move-result-object v8

    invoke-static/range {p0 .. p1}, LF/y;->a(Law/e;LG/Q;)Ljava/util/List;

    move-result-object v12

    const/16 v13, 0x10

    if-ne v5, v13, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p7, :cond_3

    move-object/from16 v0, p7

    move-object/from16 v1, p0

    invoke-static {v0, v1}, LF/y;->a(LF/u;Ljava/util/List;)Ljava/lang/String;

    move-result-object p7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_3

    :goto_1
    move-object/from16 v19, v12

    move-object/from16 v18, v8

    move-object/from16 v17, p0

    move-object/from16 v14, p7

    move v8, v7

    move v7, v6

    move v6, v5

    :goto_2
    new-instance v4, LF/f;

    move-object/from16 v5, p1

    move/from16 v12, p5

    move/from16 v13, p6

    invoke-direct/range {v4 .. v19}, LF/f;-><init>(LG/Q;IIIIIIFFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object v0, v4

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, LF/y;->a(LF/f;III)LF/y;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v7, -0x1

    goto :goto_0

    :cond_1
    invoke-static/range {p0 .. p0}, LF/y;->d(Law/e;)Ljava/util/ArrayList;

    move-result-object p0

    move-object/from16 p7, v4

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/util/ArrayList;-><init>()V

    const/16 p7, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v19, v8

    move-object/from16 v18, v7

    move-object/from16 v17, p0

    move-object v14, v4

    move v7, v5

    move v8, v6

    move/from16 v6, p7

    goto :goto_2

    :cond_3
    move-object/from16 p7, v4

    goto :goto_1
.end method

.method protected static a(Ljava/lang/String;Ljava/util/Map;)Landroid/text/Spanned;
    .locals 9

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    new-instance v0, LF/t;

    invoke-direct {v0}, LF/t;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_5

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF/C;

    invoke-virtual {v0}, LF/C;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_2
    const/4 v6, -0x1

    :cond_3
    invoke-virtual {v0}, LF/C;->b()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-ltz v6, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v6

    const-class v8, Ljava/lang/Object;

    invoke-virtual {v1, v6, v7, v8}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_3

    :cond_4
    if-ltz v6, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v6

    const/16 v7, 0x21

    invoke-virtual {v1, v0, v6, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_5
    return-object v1
.end method

.method private static a(LF/u;Ljava/util/List;)Ljava/lang/String;
    .locals 10

    const/4 v6, 0x0

    const/4 v3, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, LF/u;->g()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, LF/C;

    const/4 v1, 0x6

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, LF/C;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, LF/u;->f()LF/s;

    move-result-object v8

    if-eqz v8, :cond_2

    move v9, v6

    :goto_0
    invoke-virtual {v8}, LF/s;->a()I

    move-result v0

    if-ge v9, v0, :cond_2

    new-instance v0, LF/C;

    const/4 v1, 0x7

    invoke-virtual {v8, v9}, LF/s;->a(I)Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, LF/C;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/16 v0, 0xa

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v8, v9}, LF/s;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Law/e;LG/Q;)Ljava/util/List;
    .locals 7

    const/4 v6, 0x6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v6}, Law/e;->i(I)I

    move-result v1

    invoke-virtual {p1}, LG/Q;->e()D

    move-result-wide v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    invoke-virtual {p0, v6, v4}, Law/e;->e(II)Law/e;

    move-result-object v5

    invoke-static {v5, v2, v3}, LF/w;->a(Law/e;D)LF/w;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static a(LF/y;Ljava/util/List;)Ljava/util/Map;
    .locals 5

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF/C;

    invoke-virtual {v0}, LF/C;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {v0, p0}, LF/C;->a(LF/C;LF/y;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private static a(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public static a(I)Z
    .locals 1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(Law/e;)I
    .locals 3

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Law/e;->d(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    :cond_0
    move v0, v2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method static c(Law/e;)Ljava/util/List;
    .locals 5

    const/4 v4, 0x5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v4}, Law/e;->i(I)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v4, v2}, Law/e;->e(II)Law/e;

    move-result-object v3

    invoke-static {v3}, LF/n;->a(Law/e;)LF/n;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static d(Law/e;)Ljava/util/ArrayList;
    .locals 5

    const/4 v4, 0x4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v4}, Law/e;->i(I)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v4, v2}, Law/e;->e(II)Law/e;

    move-result-object v3

    invoke-static {v3}, LF/C;->a(Law/e;)LF/C;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()LG/Q;
    .locals 1

    iget-object v0, p0, LF/y;->a:LG/Q;

    return-object v0
.end method

.method public a(LF/w;)V
    .locals 1

    iget-object v0, p0, LF/y;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, LF/w;->a(LF/y;)V

    return-void
.end method

.method a(LF/y;)V
    .locals 0

    iput-object p1, p0, LF/y;->v:LF/y;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, LF/y;->b:I

    return v0
.end method

.method b(LF/y;)V
    .locals 0

    iput-object p1, p0, LF/y;->w:LF/y;

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, LF/y;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, LF/y;->d:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, LF/y;->g:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, LF/y;->h:I

    return v0
.end method

.method public g()F
    .locals 1

    iget v0, p0, LF/y;->i:F

    return v0
.end method

.method public h()F
    .locals 1

    iget v0, p0, LF/y;->j:F

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, LF/y;->e:I

    return v0
.end method

.method public j()LF/y;
    .locals 1

    iget-object v0, p0, LF/y;->v:LF/y;

    return-object v0
.end method

.method public k()LF/y;
    .locals 1

    iget-object v0, p0, LF/y;->w:LF/y;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LF/y;->k:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LF/y;->l:Ljava/lang/String;

    return-object v0
.end method

.method public n()Landroid/text/Spanned;
    .locals 1

    iget-object v0, p0, LF/y;->m:Landroid/text/Spanned;

    return-object v0
.end method

.method public o()Ljava/util/List;
    .locals 1

    iget-object v0, p0, LF/y;->p:Ljava/util/List;

    return-object v0
.end method

.method public p()Ljava/util/List;
    .locals 1

    iget-object v0, p0, LF/y;->q:Ljava/util/List;

    return-object v0
.end method

.method public q()Ljava/util/List;
    .locals 1

    iget-object v0, p0, LF/y;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LF/y;->p:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, LF/y;->r:Ljava/util/List;

    goto :goto_0
.end method

.method public r()Ljava/util/List;
    .locals 1

    iget-object v0, p0, LF/y;->s:Ljava/util/List;

    return-object v0
.end method

.method public s()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, LF/y;->o:Ljava/util/Map;

    return-object v0
.end method

.method public t()Ljava/util/List;
    .locals 1

    iget-object v0, p0, LF/y;->t:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[idx:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LF/y;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " loc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LF/y;->a:LG/Q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " point:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LF/y;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LF/y;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " side:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LF/y;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " text:\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, LF/y;->n()Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\']"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/util/List;
    .locals 1

    iget-object v0, p0, LF/y;->u:Ljava/util/List;

    return-object v0
.end method

.method public final v()LF/C;
    .locals 2

    invoke-virtual {p0}, LF/y;->q()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LF/C;

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public w()LF/C;
    .locals 1

    iget-object v0, p0, LF/y;->n:LF/C;

    return-object v0
.end method

.method public x()I
    .locals 1

    iget v0, p0, LF/y;->f:I

    return v0
.end method

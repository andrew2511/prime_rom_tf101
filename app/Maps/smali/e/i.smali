.class public Le/i;
.super Ljava/lang/Object;


# instance fields
.field private final a:LS/b;

.field private volatile b:Z


# direct methods
.method public constructor <init>(LS/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/i;->a:LS/b;

    const/4 v0, 0x1

    iput-boolean v0, p0, Le/i;->b:Z

    return-void
.end method

.method private a(Ljava/util/HashMap;Le/A;)Le/h;
    .locals 8

    const/4 v7, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p2, Le/A;->c:LS/c;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/e;

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Le/e;->e:Le/e;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/C;

    iget-object v1, p0, Le/C;->g:Le/A;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [LS/c;

    array-length v3, v2

    new-array v3, v3, [I

    move v5, v4

    :goto_1
    array-length v6, v2

    if-ge v4, v6, :cond_1

    array-length v6, v2

    sub-int/2addr v6, v4

    sub-int/2addr v6, v7

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/e;

    iget-object v6, p0, Le/e;->a:LS/c;

    aput-object v6, v2, v4

    iget v6, p0, Le/e;->b:I

    sub-int v5, v6, v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    move v5, v6

    goto :goto_1

    :cond_1
    new-instance v0, Le/h;

    invoke-direct {v0, v1, p2, v2, v3}, Le/h;-><init>(Le/A;Le/A;[LS/c;[I)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/Collection;Ljava/util/Collection;)Le/h;
    .locals 22

    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Le/i;->b:Z

    new-instance v6, Ljava/util/PriorityQueue;

    const/16 v5, 0x64

    new-instance v7, Le/c;

    invoke-direct {v7}, Le/c;-><init>()V

    invoke-direct {v6, v5, v7}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/A;

    new-instance v8, Le/C;

    move-object/from16 v0, p1

    iget v0, v0, Le/A;->h:I

    move v9, v0

    const/4 v10, 0x0

    move-object v0, v8

    move v1, v9

    move-object v2, v10

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Le/C;-><init>(ILe/e;Le/A;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Le/A;->c:LS/c;

    move-object v9, v0

    invoke-virtual {v7, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v8}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    const v8, 0x7fffffff

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move/from16 v21, v8

    move-object v8, v5

    move/from16 v5, v21

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/A;

    new-instance v10, Le/C;

    const v11, 0x7fffffff

    const/4 v12, 0x0

    move-object v0, v10

    move v1, v11

    move-object v2, v12

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Le/C;-><init>(ILe/e;Le/A;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Le/A;->c:LS/c;

    move-object v11, v0

    invoke-virtual {v7, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    iget v0, v0, Le/A;->h:I

    move v10, v0

    if-ge v10, v5, :cond_1

    move-object/from16 v0, p1

    iget-object v0, v0, Le/A;->b:LG/Q;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Le/A;->h:I

    move v8, v0

    move/from16 v21, v8

    move-object v8, v5

    move/from16 v5, v21

    goto :goto_1

    :cond_2
    if-nez v8, :cond_3

    const/4 v5, 0x0

    :goto_2
    return-object v5

    :cond_3
    invoke-static {}, Lad/b;->a()Lad/t;

    move-result-object v5

    invoke-virtual {v5}, Lad/t;->D()Lad/o;

    move-result-object v5

    invoke-virtual {v5}, Lad/o;->l()I

    move-result v5

    int-to-double v9, v5

    invoke-virtual {v8}, LG/Q;->e()D

    move-result-wide v11

    mul-double/2addr v9, v11

    const/4 v5, 0x0

    const v11, 0x7fffffff

    move-object v12, v5

    :cond_4
    :goto_3
    invoke-virtual {v6}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Le/i;->b:Z

    move v5, v0

    if-nez v5, :cond_5

    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Le/i;->a(Ljava/util/HashMap;Le/A;)Le/h;

    move-result-object v5

    goto :goto_2

    :cond_5
    invoke-virtual {v6}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object p1

    move-object/from16 v0, p1

    check-cast v0, Le/e;

    move-object/from16 p2, v0

    move-object/from16 v0, p2

    iget-boolean v0, v0, Le/e;->f:Z

    move v5, v0

    if-nez v5, :cond_4

    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p2

    iput-boolean v0, v1, Le/e;->f:Z

    if-eqz p2, :cond_a

    move-object/from16 v0, p2

    instance-of v0, v0, Le/C;

    move v5, v0

    if-eqz v5, :cond_a

    move-object/from16 v0, p2

    check-cast v0, Le/C;

    move-object v5, v0

    iget-object v13, v5, Le/C;->g:Le/A;

    iget-boolean v13, v13, Le/A;->a:Z

    if-nez v13, :cond_a

    move-object/from16 v0, p2

    iget v0, v0, Le/e;->b:I

    move v13, v0

    iget-object v14, v5, Le/C;->g:Le/A;

    iget v14, v14, Le/A;->h:I

    add-int/2addr v13, v14

    if-ge v13, v11, :cond_a

    iget-object v5, v5, Le/C;->g:Le/A;

    move-object v11, v5

    move v5, v13

    :goto_5
    move-object/from16 v0, p2

    iget-object v0, v0, Le/e;->a:LS/c;

    move-object v12, v0

    invoke-virtual {v12}, LS/c;->c()I

    move-result v13

    const/4 v14, 0x0

    :goto_6
    if-ge v14, v13, :cond_8

    invoke-virtual {v12, v14}, LS/c;->b(I)LS/f;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Le/i;->a:LS/b;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, LS/f;->a(LS/b;)LS/c;

    move-result-object v16

    if-nez v16, :cond_7

    :cond_6
    :goto_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_7
    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/e;

    if-nez p1, :cond_c

    new-instance v17, Le/e;

    const v18, 0x7fffffff

    invoke-virtual/range {v16 .. v16}, LS/c;->d()LG/Q;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-virtual {v0, v1}, LG/Q;->c(LG/Q;)F

    move-result v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    div-double v19, v19, v9

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Le/e;-><init>(ILS/c;Le/e;I)V

    move-object v0, v7

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v16, v17

    :goto_8
    move-object/from16 v0, p2

    iget v0, v0, Le/e;->b:I

    move/from16 v17, v0

    invoke-virtual {v15}, LS/f;->a()I

    move-result v15

    add-int v15, v15, v17

    move-object/from16 v0, v16

    iget v0, v0, Le/e;->b:I

    move/from16 v17, v0

    move v0, v15

    move/from16 v1, v17

    if-ge v0, v1, :cond_6

    move v0, v15

    move-object/from16 v1, v16

    iput v0, v1, Le/e;->b:I

    move-object/from16 v0, v16

    iget v0, v0, Le/e;->c:I

    move/from16 v17, v0

    add-int v15, v15, v17

    move v0, v15

    move-object/from16 v1, v16

    iput v0, v1, Le/e;->d:I

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    iput-object v0, v1, Le/e;->e:Le/e;

    move-object/from16 v0, v16

    iget v0, v0, Le/e;->b:I

    move v15, v0

    if-gt v15, v5, :cond_6

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_8
    move-object v12, v11

    move v11, v5

    goto/16 :goto_3

    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_a
    move v5, v11

    move-object v11, v12

    goto/16 :goto_5

    :cond_b
    move-object v5, v12

    goto/16 :goto_4

    :cond_c
    move-object/from16 v16, p1

    goto :goto_8
.end method

.method public a()V
    .locals 1

    iget-boolean v0, p0, Le/i;->b:Z

    if-eqz v0, :cond_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Le/i;->b:Z

    return-void
.end method

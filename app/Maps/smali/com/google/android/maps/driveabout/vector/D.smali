.class public Lcom/google/android/maps/driveabout/vector/D;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/cu;


# static fields
.field public static final a:Lad/r;


# instance fields
.field private b:[Lcom/google/android/maps/driveabout/vector/aK;

.field private c:[Lcom/google/android/maps/driveabout/vector/aY;

.field private d:[Lcom/google/android/maps/driveabout/vector/cE;

.field private e:[Lcom/google/android/maps/driveabout/vector/as;

.field private f:[Lcom/google/android/maps/driveabout/vector/aY;

.field private g:[Lcom/google/android/maps/driveabout/vector/cE;

.field private h:[Lcom/google/android/maps/driveabout/vector/c;

.field private i:[Lcom/google/android/maps/driveabout/vector/cC;

.field private j:Ljava/util/ArrayList;

.field private final k:LG/w;

.field private final l:LG/S;

.field private final m:Ljava/util/HashSet;

.field private n:I

.field private o:Lcom/google/android/maps/driveabout/vector/l;

.field private p:I

.field private q:Lcom/google/android/maps/driveabout/vector/bh;

.field private r:Ljava/lang/Boolean;

.field private s:J

.field private t:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lad/r;->a:Lad/r;

    sput-object v0, Lcom/google/android/maps/driveabout/vector/D;->a:Lad/r;

    return-void
.end method

.method private constructor <init>(LG/w;)V
    .locals 3

    const-wide/16 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->q:Lcom/google/android/maps/driveabout/vector/bh;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->r:Ljava/lang/Boolean;

    iput-wide v1, p0, Lcom/google/android/maps/driveabout/vector/D;->s:J

    iput-wide v1, p0, Lcom/google/android/maps/driveabout/vector/D;->t:J

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/D;->k:LG/w;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->k:LG/w;

    invoke-virtual {v0}, LG/w;->i()LG/S;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->l:LG/S;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->m:Ljava/util/HashSet;

    return-void
.end method

.method public static a(LG/u;Lad/r;)Lcom/google/android/maps/driveabout/vector/D;
    .locals 5

    new-instance v0, Lcom/google/android/maps/driveabout/vector/D;

    invoke-interface {p0}, LG/u;->a()LG/w;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/D;-><init>(LG/w;)V

    instance-of v1, p0, LG/P;

    if-eqz v1, :cond_0

    check-cast p0, LG/P;

    invoke-direct {v0, p0, p1}, Lcom/google/android/maps/driveabout/vector/D;->a(LG/P;Lad/r;)V

    invoke-virtual {p0}, LG/P;->j()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    iput-wide v1, v0, Lcom/google/android/maps/driveabout/vector/D;->s:J

    const-wide/32 v3, 0xea60

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/google/android/maps/driveabout/vector/D;->t:J

    :cond_0
    return-object v0
.end method

.method private a(LG/P;Lad/r;)V
    .locals 15

    invoke-virtual/range {p1 .. p1}, LG/P;->f()I

    move-result v2

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/D;->n:I

    invoke-virtual/range {p1 .. p1}, LG/P;->c()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/D;->m:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, LG/P;->k()I

    move-result v2

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/D;->p:I

    invoke-virtual/range {p1 .. p1}, LG/P;->d()[Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/google/android/maps/driveabout/vector/aH;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/D;->k:LG/w;

    invoke-direct {v10, v2, v4}, Lcom/google/android/maps/driveabout/vector/aH;-><init>(LG/w;[Ljava/lang/String;)V

    new-instance v11, Lcom/google/android/maps/driveabout/vector/aH;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/D;->k:LG/w;

    invoke-direct {v11, v2, v4}, Lcom/google/android/maps/driveabout/vector/aH;-><init>(LG/w;[Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, LG/P;->h()LG/j;

    move-result-object v12

    const/4 v2, 0x1

    move v13, v2

    :goto_1
    invoke-virtual {v12}, LG/j;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v12}, LG/j;->b()LG/d;

    move-result-object v2

    invoke-interface {v2}, LG/d;->k()I

    move-result v14

    move-object/from16 v0, p2

    move v1, v14

    invoke-virtual {v0, v1}, Lad/r;->a(I)Z

    move-result v14

    if-nez v14, :cond_1

    invoke-virtual {v12}, LG/j;->a()LG/d;

    goto :goto_1

    :cond_1
    invoke-interface {v2}, LG/d;->k()I

    move-result v14

    packed-switch v14, :pswitch_data_0

    :pswitch_0
    invoke-virtual {v12}, LG/j;->a()LG/d;

    move v2, v13

    :goto_2
    move v13, v2

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/D;->k:LG/w;

    invoke-static {v2, v4, v12}, Lcom/google/android/maps/driveabout/vector/as;->a(LG/w;[Ljava/lang/String;LG/j;)Lcom/google/android/maps/driveabout/vector/as;

    move-result-object v2

    if-eqz v13, :cond_2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/as;->c()Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v13, 0x0

    :cond_2
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v13

    goto :goto_2

    :pswitch_2
    if-eqz v13, :cond_3

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/D;->k:LG/w;

    invoke-static {v2, v4, v12, v10}, Lcom/google/android/maps/driveabout/vector/cz;->a(LG/w;[Ljava/lang/String;LG/j;Lcom/google/android/maps/driveabout/vector/aH;)Lcom/google/android/maps/driveabout/vector/cz;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v13

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/D;->k:LG/w;

    invoke-static {v2, v4, v12, v11}, Lcom/google/android/maps/driveabout/vector/cz;->a(LG/w;[Ljava/lang/String;LG/j;Lcom/google/android/maps/driveabout/vector/aH;)Lcom/google/android/maps/driveabout/vector/cz;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v13

    goto :goto_2

    :pswitch_3
    if-eqz v13, :cond_4

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/D;->k:LG/w;

    invoke-static {v2, v4, v12}, Lcom/google/android/maps/driveabout/vector/Q;->a(LG/w;[Ljava/lang/String;LG/j;)Lcom/google/android/maps/driveabout/vector/Q;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v13

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/D;->k:LG/w;

    invoke-static {v2, v4, v12}, Lcom/google/android/maps/driveabout/vector/Q;->a(LG/w;[Ljava/lang/String;LG/j;)Lcom/google/android/maps/driveabout/vector/Q;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v13

    goto :goto_2

    :pswitch_4
    check-cast v2, LG/V;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/vector/Q;->a(LG/V;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v13, :cond_5

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/D;->k:LG/w;

    invoke-static {v2, v4, v12}, Lcom/google/android/maps/driveabout/vector/Q;->a(LG/w;[Ljava/lang/String;LG/j;)Lcom/google/android/maps/driveabout/vector/Q;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v13

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/D;->k:LG/w;

    invoke-static {v2, v4, v12}, Lcom/google/android/maps/driveabout/vector/Q;->a(LG/w;[Ljava/lang/String;LG/j;)Lcom/google/android/maps/driveabout/vector/Q;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v13

    goto :goto_2

    :cond_6
    if-eqz v13, :cond_7

    invoke-virtual {v10, v12}, Lcom/google/android/maps/driveabout/vector/aH;->a(LG/j;)V

    move v2, v13

    goto :goto_2

    :cond_7
    invoke-virtual {v11, v12}, Lcom/google/android/maps/driveabout/vector/aH;->a(LG/j;)V

    move v2, v13

    goto :goto_2

    :pswitch_5
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/D;->k:LG/w;

    invoke-static {v2, v4, v12}, Lcom/google/android/maps/driveabout/vector/c;->a(LG/w;[Ljava/lang/String;LG/j;)Lcom/google/android/maps/driveabout/vector/c;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v13

    goto :goto_2

    :pswitch_6
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/D;->k:LG/w;

    invoke-static {v2, v4, v12}, Lcom/google/android/maps/driveabout/vector/aK;->a(LG/w;[Ljava/lang/String;LG/j;)Lcom/google/android/maps/driveabout/vector/aK;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v13

    goto/16 :goto_2

    :pswitch_7
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/D;->k:LG/w;

    invoke-static {v2, v4, v12}, Lcom/google/android/maps/driveabout/vector/cC;->a(LG/w;[Ljava/lang/String;LG/j;)Lcom/google/android/maps/driveabout/vector/cC;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v13

    goto/16 :goto_2

    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_9

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/maps/driveabout/vector/aK;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/android/maps/driveabout/vector/aK;

    move-object/from16 v0, p2

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/maps/driveabout/vector/D;->b:[Lcom/google/android/maps/driveabout/vector/aK;

    :cond_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_a

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/maps/driveabout/vector/aY;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/android/maps/driveabout/vector/aY;

    move-object/from16 v0, p2

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/maps/driveabout/vector/D;->c:[Lcom/google/android/maps/driveabout/vector/aY;

    :cond_a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_b

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/maps/driveabout/vector/as;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/android/maps/driveabout/vector/as;

    move-object/from16 v0, p2

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/maps/driveabout/vector/D;->e:[Lcom/google/android/maps/driveabout/vector/as;

    :cond_b
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_c

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/maps/driveabout/vector/aY;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/android/maps/driveabout/vector/aY;

    move-object/from16 v0, p2

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/maps/driveabout/vector/D;->f:[Lcom/google/android/maps/driveabout/vector/aY;

    :cond_c
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_d

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/maps/driveabout/vector/c;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/android/maps/driveabout/vector/c;

    move-object/from16 v0, p2

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/maps/driveabout/vector/D;->h:[Lcom/google/android/maps/driveabout/vector/c;

    :cond_d
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_e

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/maps/driveabout/vector/cC;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/android/maps/driveabout/vector/cC;

    move-object/from16 v0, p2

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/maps/driveabout/vector/D;->i:[Lcom/google/android/maps/driveabout/vector/cC;

    :cond_e
    invoke-virtual {v10}, Lcom/google/android/maps/driveabout/vector/aH;->a()[Lcom/google/android/maps/driveabout/vector/cE;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/D;->d:[Lcom/google/android/maps/driveabout/vector/cE;

    invoke-virtual {v11}, Lcom/google/android/maps/driveabout/vector/aH;->a()[Lcom/google/android/maps/driveabout/vector/cE;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/D;->g:[Lcom/google/android/maps/driveabout/vector/cE;

    invoke-virtual/range {p1 .. p1}, LG/P;->e()I

    move-result v5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/D;->j:Ljava/util/ArrayList;

    const/4 v2, 0x0

    move v6, v2

    :goto_3
    if-ge v6, v5, :cond_11

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, LG/P;->a(I)LG/d;

    move-result-object v2

    invoke-interface {v2}, LG/d;->k()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    :cond_f
    :goto_4
    :pswitch_8
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_3

    :pswitch_9
    invoke-direct {p0, v2}, Lcom/google/android/maps/driveabout/vector/D;->a(LG/d;)V

    move-object v0, v2

    check-cast v0, LG/Y;

    move-object/from16 p2, v0

    move-object v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/D;->a(LG/Y;)V

    invoke-interface {v2}, LG/d;->m()[I

    move-result-object v2

    array-length v3, v2

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v3, :cond_f

    aget v8, v2, v7

    if-ltz v8, :cond_10

    array-length v9, v4

    if-ge v8, v9, :cond_10

    iget-object v9, p0, Lcom/google/android/maps/driveabout/vector/D;->m:Ljava/util/HashSet;

    aget-object v8, v4, v8

    invoke-virtual {v9, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_10
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :pswitch_a
    move-object v0, v2

    check-cast v0, LG/V;

    move-object v3, v0

    invoke-virtual {v3}, LG/V;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_f

    invoke-direct {p0, v2}, Lcom/google/android/maps/driveabout/vector/D;->a(LG/d;)V

    goto :goto_4

    :pswitch_b
    move-object v0, v2

    check-cast v0, LG/i;

    move-object v3, v0

    invoke-virtual {v3}, LG/i;->d()I

    move-result v3

    if-lez v3, :cond_f

    invoke-direct {p0, v2}, Lcom/google/android/maps/driveabout/vector/D;->a(LG/d;)V

    goto :goto_4

    :pswitch_c
    move-object v0, v2

    check-cast v0, LG/c;

    move-object v3, v0

    invoke-virtual {v3}, LG/c;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_f

    invoke-direct {p0, v2}, Lcom/google/android/maps/driveabout/vector/D;->a(LG/d;)V

    goto :goto_4

    :cond_11
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/D;->j:Ljava/util/ArrayList;

    new-instance v3, Lcom/google/android/maps/driveabout/vector/bx;

    invoke-direct {v3, p0}, Lcom/google/android/maps/driveabout/vector/bx;-><init>(Lcom/google/android/maps/driveabout/vector/D;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_b
        :pswitch_c
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private a(LG/d;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->j:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/maps/driveabout/vector/aG;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/maps/driveabout/vector/aG;-><init>(LG/d;Lcom/google/android/maps/driveabout/vector/bh;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/bF;I)I
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    :cond_0
    move v0, v2

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eq p2, v1, :cond_3

    const/4 v0, 0x3

    if-ne p2, v0, :cond_9

    :cond_3
    move v0, v1

    :goto_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->b:[Lcom/google/android/maps/driveabout/vector/aK;

    if-eqz v1, :cond_c

    if-eqz v0, :cond_c

    or-int/lit8 v1, v2, 0x1

    :goto_2
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/D;->c:[Lcom/google/android/maps/driveabout/vector/aY;

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    or-int/lit8 v1, v1, 0x2

    :cond_4
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/D;->d:[Lcom/google/android/maps/driveabout/vector/cE;

    if-eqz v2, :cond_5

    or-int/lit8 v1, v1, 0x4

    :cond_5
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/D;->e:[Lcom/google/android/maps/driveabout/vector/as;

    if-eqz v2, :cond_6

    invoke-static {p1, p2}, Lcom/google/android/maps/driveabout/vector/as;->a(Lcom/google/android/maps/driveabout/vector/bF;I)I

    move-result v2

    or-int/2addr v1, v2

    :cond_6
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/D;->f:[Lcom/google/android/maps/driveabout/vector/aY;

    if-eqz v2, :cond_7

    if-eqz v0, :cond_7

    or-int/lit8 v1, v1, 0x40

    :cond_7
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/D;->g:[Lcom/google/android/maps/driveabout/vector/cE;

    if-eqz v2, :cond_8

    or-int/lit16 v1, v1, 0x80

    :cond_8
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/D;->h:[Lcom/google/android/maps/driveabout/vector/c;

    if-eqz v2, :cond_b

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->j()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_a

    or-int/lit16 v0, v1, 0x100

    :goto_3
    or-int/lit16 v0, v0, 0x200

    :goto_4
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->i:[Lcom/google/android/maps/driveabout/vector/cC;

    if-eqz v1, :cond_1

    or-int/lit16 v0, v0, 0x400

    goto :goto_0

    :cond_9
    move v0, v2

    goto :goto_1

    :cond_a
    move v0, v1

    goto :goto_3

    :cond_b
    move v0, v1

    goto :goto_4

    :cond_c
    move v1, v2

    goto :goto_2
.end method

.method public a(LG/Y;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->o:Lcom/google/android/maps/driveabout/vector/l;

    if-nez v0, :cond_0

    invoke-static {}, Lad/b;->c()Lcom/google/android/maps/driveabout/vector/R;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->l:LG/S;

    invoke-virtual {v1}, LG/S;->f()LG/Q;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/D;->p:I

    int-to-byte v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/R;->a(LG/Q;B)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->o:Lcom/google/android/maps/driveabout/vector/l;

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->o:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {p1}, LG/Y;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/l;->d(I)F

    move-result v0

    cmpg-float v1, v0, v3

    if-gez v1, :cond_1

    invoke-virtual {p1}, LG/Y;->o()I

    move-result v0

    int-to-float v0, v0

    :cond_1
    invoke-virtual {p1, v0}, LG/Y;->a(F)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->o:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {p1}, LG/Y;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/l;->e(I)F

    move-result v0

    cmpg-float v1, v0, v3

    if-gez v1, :cond_2

    const/16 v0, 0x16

    invoke-virtual {p1}, LG/Y;->p()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    :cond_2
    invoke-virtual {p1, v0}, LG/Y;->b(F)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bF;ILjava/util/Collection;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->m:Ljava/util/HashSet;

    invoke-interface {p3, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/D;->a(Lcom/google/android/maps/driveabout/vector/bF;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->b:[Lcom/google/android/maps/driveabout/vector/aK;

    if-eqz v1, :cond_0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->b:[Lcom/google/android/maps/driveabout/vector/aK;

    array-length v2, v1

    move v3, v5

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/aK;->e()Ljava/util/Set;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->c:[Lcom/google/android/maps/driveabout/vector/aY;

    if-eqz v1, :cond_1

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->c:[Lcom/google/android/maps/driveabout/vector/aY;

    array-length v2, v1

    move v3, v5

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/aY;->e()Ljava/util/Set;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->d:[Lcom/google/android/maps/driveabout/vector/cE;

    if-eqz v1, :cond_2

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->d:[Lcom/google/android/maps/driveabout/vector/cE;

    array-length v2, v1

    move v3, v5

    :goto_2
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/cE;->e()Ljava/util/Set;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->e:[Lcom/google/android/maps/driveabout/vector/as;

    if-eqz v1, :cond_3

    and-int/lit8 v1, v0, 0x38

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->e:[Lcom/google/android/maps/driveabout/vector/as;

    array-length v2, v1

    move v3, v5

    :goto_3
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/as;->e()Ljava/util/Set;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->f:[Lcom/google/android/maps/driveabout/vector/aY;

    if-eqz v1, :cond_4

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->f:[Lcom/google/android/maps/driveabout/vector/aY;

    array-length v2, v1

    move v3, v5

    :goto_4
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/aY;->e()Ljava/util/Set;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->g:[Lcom/google/android/maps/driveabout/vector/cE;

    if-eqz v1, :cond_5

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->g:[Lcom/google/android/maps/driveabout/vector/cE;

    array-length v2, v1

    move v3, v5

    :goto_5
    if-ge v3, v2, :cond_5

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/cE;->e()Ljava/util/Set;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->h:[Lcom/google/android/maps/driveabout/vector/c;

    if-eqz v1, :cond_6

    and-int/lit16 v1, v0, 0x300

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->h:[Lcom/google/android/maps/driveabout/vector/c;

    array-length v2, v1

    move v3, v5

    :goto_6
    if-ge v3, v2, :cond_6

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/c;->e()Ljava/util/Set;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_6
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->i:[Lcom/google/android/maps/driveabout/vector/cC;

    if-eqz v1, :cond_7

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->i:[Lcom/google/android/maps/driveabout/vector/cC;

    array-length v1, v0

    move v2, v5

    :goto_7
    if-ge v2, v1, :cond_7

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/cC;->e()Ljava/util/Set;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_7
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bh;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->q:Lcom/google/android/maps/driveabout/vector/bh;

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/vector/bh;->a(Lcom/google/android/maps/driveabout/vector/bh;Lcom/google/android/maps/driveabout/vector/bh;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/D;->q:Lcom/google/android/maps/driveabout/vector/bh;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aG;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aG;->a()LG/d;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/D;->j:Ljava/util/ArrayList;

    new-instance v3, Lcom/google/android/maps/driveabout/vector/aG;

    invoke-direct {v3, v0, p1}, Lcom/google/android/maps/driveabout/vector/aG;-><init>(LG/d;Lcom/google/android/maps/driveabout/vector/bh;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->l:LG/S;

    invoke-virtual {v1}, LG/S;->d()LG/Q;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/D;->l:LG/S;

    invoke-virtual {v2}, LG/S;->g()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, p2, v1, v2}, Lcom/google/android/maps/driveabout/vector/Y;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/bF;LG/Q;F)V

    sparse-switch p4, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->r:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->x()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/google/android/maps/driveabout/vector/bc;->d:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->c:[Lcom/google/android/maps/driveabout/vector/aY;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->e:[Lcom/google/android/maps/driveabout/vector/as;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->d:[Lcom/google/android/maps/driveabout/vector/cE;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->f:[Lcom/google/android/maps/driveabout/vector/aY;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->g:[Lcom/google/android/maps/driveabout/vector/cE;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->h:[Lcom/google/android/maps/driveabout/vector/c;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->i:[Lcom/google/android/maps/driveabout/vector/cC;

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->r:Ljava/lang/Boolean;

    :cond_1
    :goto_2
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->b:[Lcom/google/android/maps/driveabout/vector/aK;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->b:[Lcom/google/android/maps/driveabout/vector/aK;

    array-length v2, v1

    move v3, v5

    :goto_3
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/aK;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :sswitch_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->c:[Lcom/google/android/maps/driveabout/vector/aY;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->c:[Lcom/google/android/maps/driveabout/vector/aY;

    array-length v2, v1

    move v3, v5

    :goto_4
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-interface {v4, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/A;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->e:[Lcom/google/android/maps/driveabout/vector/as;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->e:[Lcom/google/android/maps/driveabout/vector/as;

    array-length v2, v1

    move v3, v5

    :goto_5
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/as;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :sswitch_2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->d:[Lcom/google/android/maps/driveabout/vector/cE;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->d:[Lcom/google/android/maps/driveabout/vector/cE;

    array-length v2, v1

    move v3, v5

    :goto_6
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/cE;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :sswitch_3
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->e:[Lcom/google/android/maps/driveabout/vector/as;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->e:[Lcom/google/android/maps/driveabout/vector/as;

    array-length v2, v1

    move v3, v5

    :goto_7
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/as;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :sswitch_4
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->e:[Lcom/google/android/maps/driveabout/vector/as;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->e:[Lcom/google/android/maps/driveabout/vector/as;

    array-length v2, v1

    move v3, v5

    :goto_8
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/as;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :sswitch_5
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->f:[Lcom/google/android/maps/driveabout/vector/aY;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->f:[Lcom/google/android/maps/driveabout/vector/aY;

    array-length v2, v1

    move v3, v5

    :goto_9
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-interface {v4, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/A;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :sswitch_6
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->g:[Lcom/google/android/maps/driveabout/vector/cE;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->g:[Lcom/google/android/maps/driveabout/vector/cE;

    array-length v2, v1

    move v3, v5

    :goto_a
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/cE;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :sswitch_7
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->h:[Lcom/google/android/maps/driveabout/vector/c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->h:[Lcom/google/android/maps/driveabout/vector/c;

    array-length v2, v1

    move v3, v5

    :goto_b
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/c;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :sswitch_8
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->i:[Lcom/google/android/maps/driveabout/vector/cC;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->i:[Lcom/google/android/maps/driveabout/vector/cC;

    array-length v2, v1

    move v3, v5

    :goto_c
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/cC;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :sswitch_9
    sget-object v1, Lcom/google/android/maps/driveabout/vector/P;->a:Lcom/google/android/maps/driveabout/vector/P;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/P;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V

    goto/16 :goto_0

    :cond_3
    move v0, v5

    goto/16 :goto_1

    :cond_4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->r:Ljava/lang/Boolean;

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_7
        0xa -> :sswitch_8
        0x1f -> :sswitch_9
    .end sparse-switch
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->r:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->r:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lac/p;)Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/D;->s:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-interface {p1}, Lac/p;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/vector/D;->s:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bL;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/vector/bL;->a(Ljava/util/Iterator;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->b:[Lcom/google/android/maps/driveabout/vector/aK;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->b:[Lcom/google/android/maps/driveabout/vector/aK;

    array-length v1, v0

    move v2, v4

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/google/android/maps/driveabout/vector/aK;->a_(Lcom/google/android/maps/driveabout/vector/u;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->c:[Lcom/google/android/maps/driveabout/vector/aY;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->c:[Lcom/google/android/maps/driveabout/vector/aY;

    array-length v1, v0

    move v2, v4

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-interface {v3, p1}, Lcom/google/android/maps/driveabout/vector/A;->a_(Lcom/google/android/maps/driveabout/vector/u;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->d:[Lcom/google/android/maps/driveabout/vector/cE;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->d:[Lcom/google/android/maps/driveabout/vector/cE;

    array-length v1, v0

    move v2, v4

    :goto_2
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/google/android/maps/driveabout/vector/cE;->a_(Lcom/google/android/maps/driveabout/vector/u;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->e:[Lcom/google/android/maps/driveabout/vector/as;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->e:[Lcom/google/android/maps/driveabout/vector/as;

    array-length v1, v0

    move v2, v4

    :goto_3
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/google/android/maps/driveabout/vector/as;->a_(Lcom/google/android/maps/driveabout/vector/u;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->f:[Lcom/google/android/maps/driveabout/vector/aY;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->f:[Lcom/google/android/maps/driveabout/vector/aY;

    array-length v1, v0

    move v2, v4

    :goto_4
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    invoke-interface {v3, p1}, Lcom/google/android/maps/driveabout/vector/A;->a_(Lcom/google/android/maps/driveabout/vector/u;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->g:[Lcom/google/android/maps/driveabout/vector/cE;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->g:[Lcom/google/android/maps/driveabout/vector/cE;

    array-length v1, v0

    move v2, v4

    :goto_5
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/google/android/maps/driveabout/vector/cE;->a_(Lcom/google/android/maps/driveabout/vector/u;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->h:[Lcom/google/android/maps/driveabout/vector/c;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->h:[Lcom/google/android/maps/driveabout/vector/c;

    array-length v1, v0

    move v2, v4

    :goto_6
    if-ge v2, v1, :cond_6

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/google/android/maps/driveabout/vector/c;->a_(Lcom/google/android/maps/driveabout/vector/u;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_6
    return-void
.end method

.method public b()LG/w;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->k:LG/w;

    return-object v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/bF;ILjava/util/Collection;)V
    .locals 0

    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->r:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->b:[Lcom/google/android/maps/driveabout/vector/aK;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->b:[Lcom/google/android/maps/driveabout/vector/aK;

    array-length v1, v0

    move v2, v4

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/google/android/maps/driveabout/vector/aK;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->c:[Lcom/google/android/maps/driveabout/vector/aY;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->c:[Lcom/google/android/maps/driveabout/vector/aY;

    array-length v1, v0

    move v2, v4

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-interface {v3, p1}, Lcom/google/android/maps/driveabout/vector/A;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->d:[Lcom/google/android/maps/driveabout/vector/cE;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->d:[Lcom/google/android/maps/driveabout/vector/cE;

    array-length v1, v0

    move v2, v4

    :goto_2
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/google/android/maps/driveabout/vector/cE;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->e:[Lcom/google/android/maps/driveabout/vector/as;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->e:[Lcom/google/android/maps/driveabout/vector/as;

    array-length v1, v0

    move v2, v4

    :goto_3
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/google/android/maps/driveabout/vector/as;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->f:[Lcom/google/android/maps/driveabout/vector/aY;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->f:[Lcom/google/android/maps/driveabout/vector/aY;

    array-length v1, v0

    move v2, v4

    :goto_4
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    invoke-interface {v3, p1}, Lcom/google/android/maps/driveabout/vector/A;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->g:[Lcom/google/android/maps/driveabout/vector/cE;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->g:[Lcom/google/android/maps/driveabout/vector/cE;

    array-length v1, v0

    move v2, v4

    :goto_5
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/google/android/maps/driveabout/vector/cE;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->h:[Lcom/google/android/maps/driveabout/vector/c;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->h:[Lcom/google/android/maps/driveabout/vector/c;

    array-length v1, v0

    move v2, v4

    :goto_6
    if-ge v2, v1, :cond_6

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/google/android/maps/driveabout/vector/c;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_6
    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V
    .locals 2

    sparse-switch p4, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-static {p1, p3}, Lcom/google/android/maps/driveabout/vector/aK;->a(Lcom/google/android/maps/driveabout/vector/u;I)V

    goto :goto_0

    :sswitch_1
    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/cz;->c(Lcom/google/android/maps/driveabout/vector/u;)V

    goto :goto_0

    :sswitch_2
    invoke-static {p1, p3}, Lcom/google/android/maps/driveabout/vector/cE;->a(Lcom/google/android/maps/driveabout/vector/u;I)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/bF;->k()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->k:LG/w;

    invoke-virtual {v1}, LG/w;->b()I

    move-result v1

    invoke-static {p1, v0, v1, p3}, Lcom/google/android/maps/driveabout/vector/as;->a(Lcom/google/android/maps/driveabout/vector/u;FII)V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/bF;->k()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->k:LG/w;

    invoke-virtual {v1}, LG/w;->b()I

    move-result v1

    invoke-static {p1, v0, v1, p3}, Lcom/google/android/maps/driveabout/vector/as;->b(Lcom/google/android/maps/driveabout/vector/u;FII)V

    goto :goto_0

    :sswitch_5
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/bF;->k()F

    move-result v0

    invoke-static {p1, v0, p3}, Lcom/google/android/maps/driveabout/vector/as;->a(Lcom/google/android/maps/driveabout/vector/u;FI)V

    goto :goto_0

    :sswitch_6
    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/cz;->c(Lcom/google/android/maps/driveabout/vector/u;)V

    goto :goto_0

    :sswitch_7
    invoke-static {p1, p3}, Lcom/google/android/maps/driveabout/vector/cE;->a(Lcom/google/android/maps/driveabout/vector/u;I)V

    goto :goto_0

    :sswitch_8
    invoke-static {p1, p4}, Lcom/google/android/maps/driveabout/vector/c;->a(Lcom/google/android/maps/driveabout/vector/u;I)V

    goto :goto_0

    :sswitch_9
    invoke-static {p1, p4}, Lcom/google/android/maps/driveabout/vector/c;->a(Lcom/google/android/maps/driveabout/vector/u;I)V

    goto :goto_0

    :sswitch_a
    invoke-static {p1, p3}, Lcom/google/android/maps/driveabout/vector/cC;->a(Lcom/google/android/maps/driveabout/vector/u;I)V

    goto :goto_0

    :sswitch_b
    invoke-static {p1, p3}, Lcom/google/android/maps/driveabout/vector/P;->a(Lcom/google/android/maps/driveabout/vector/u;I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_9
        0x9 -> :sswitch_8
        0xa -> :sswitch_a
        0x1f -> :sswitch_b
    .end sparse-switch
.end method

.method public b(Lac/p;)Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/D;->t:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-interface {p1}, Lac/p;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/vector/D;->t:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->b:[Lcom/google/android/maps/driveabout/vector/aK;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->b:[Lcom/google/android/maps/driveabout/vector/aK;

    array-length v1, v0

    move v2, v4

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/aK;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1
.end method

.method public d()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->b:[Lcom/google/android/maps/driveabout/vector/aK;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->b:[Lcom/google/android/maps/driveabout/vector/aK;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/aK;->d()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/D;->n:I

    return v0
.end method

.method public f()I
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->b:[Lcom/google/android/maps/driveabout/vector/aK;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/D;->b:[Lcom/google/android/maps/driveabout/vector/aK;

    array-length v1, v0

    move v2, v5

    move v3, v5

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/aK;->a()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->d:[Lcom/google/android/maps/driveabout/vector/cE;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->d:[Lcom/google/android/maps/driveabout/vector/cE;

    array-length v2, v1

    move v3, v0

    move v0, v5

    :goto_2
    if-ge v0, v2, :cond_1

    aget-object v4, v1, v0

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/cE;->a()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    move v0, v3

    :cond_2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->e:[Lcom/google/android/maps/driveabout/vector/as;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->e:[Lcom/google/android/maps/driveabout/vector/as;

    array-length v2, v1

    move v3, v0

    move v0, v5

    :goto_3
    if-ge v0, v2, :cond_3

    aget-object v4, v1, v0

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/as;->a()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    move v0, v3

    :cond_4
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->g:[Lcom/google/android/maps/driveabout/vector/cE;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->g:[Lcom/google/android/maps/driveabout/vector/cE;

    array-length v2, v1

    move v3, v0

    move v0, v5

    :goto_4
    if-ge v0, v2, :cond_5

    aget-object v4, v1, v0

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/cE;->a()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    move v0, v3

    :cond_6
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->h:[Lcom/google/android/maps/driveabout/vector/c;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->h:[Lcom/google/android/maps/driveabout/vector/c;

    array-length v2, v1

    move v3, v0

    move v0, v5

    :goto_5
    if-ge v0, v2, :cond_7

    aget-object v4, v1, v0

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/c;->a()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    move v0, v3

    :cond_8
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->i:[Lcom/google/android/maps/driveabout/vector/cC;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->i:[Lcom/google/android/maps/driveabout/vector/cC;

    array-length v2, v1

    move v3, v0

    move v0, v5

    :goto_6
    if-ge v0, v2, :cond_9

    aget-object v4, v1, v0

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/cC;->a()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_9
    move v0, v3

    :cond_a
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->c:[Lcom/google/android/maps/driveabout/vector/aY;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->c:[Lcom/google/android/maps/driveabout/vector/aY;

    array-length v2, v1

    move v3, v0

    move v0, v5

    :goto_7
    if-ge v0, v2, :cond_b

    aget-object v4, v1, v0

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/aY;->a()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_b
    move v0, v3

    :cond_c
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->f:[Lcom/google/android/maps/driveabout/vector/aY;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->f:[Lcom/google/android/maps/driveabout/vector/aY;

    array-length v2, v1

    move v3, v0

    move v0, v5

    :goto_8
    if-ge v0, v2, :cond_d

    aget-object v4, v1, v0

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/aY;->a()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_d
    move v0, v3

    :cond_e
    return v0

    :cond_f
    move v0, v5

    goto/16 :goto_1
.end method

.method public g()I
    .locals 6

    const/4 v5, 0x0

    const/16 v0, 0x100

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->b:[Lcom/google/android/maps/driveabout/vector/aK;

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x10

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->b:[Lcom/google/android/maps/driveabout/vector/aK;

    array-length v2, v1

    move v3, v0

    move v0, v5

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v4, v1, v0

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/aK;->b()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v3

    :cond_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->d:[Lcom/google/android/maps/driveabout/vector/cE;

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x10

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->d:[Lcom/google/android/maps/driveabout/vector/cE;

    array-length v2, v1

    move v3, v0

    move v0, v5

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v4, v1, v0

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/cE;->b()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v3

    :cond_3
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->e:[Lcom/google/android/maps/driveabout/vector/as;

    if-eqz v1, :cond_5

    add-int/lit8 v0, v0, 0x10

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->e:[Lcom/google/android/maps/driveabout/vector/as;

    array-length v2, v1

    move v3, v0

    move v0, v5

    :goto_2
    if-ge v0, v2, :cond_4

    aget-object v4, v1, v0

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/as;->b()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v3

    :cond_5
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->g:[Lcom/google/android/maps/driveabout/vector/cE;

    if-eqz v1, :cond_7

    add-int/lit8 v0, v0, 0x10

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->g:[Lcom/google/android/maps/driveabout/vector/cE;

    array-length v2, v1

    move v3, v0

    move v0, v5

    :goto_3
    if-ge v0, v2, :cond_6

    aget-object v4, v1, v0

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/cE;->b()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    move v0, v3

    :cond_7
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->h:[Lcom/google/android/maps/driveabout/vector/c;

    if-eqz v1, :cond_9

    add-int/lit8 v0, v0, 0x10

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->h:[Lcom/google/android/maps/driveabout/vector/c;

    array-length v2, v1

    move v3, v0

    move v0, v5

    :goto_4
    if-ge v0, v2, :cond_8

    aget-object v4, v1, v0

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/c;->b()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    move v0, v3

    :cond_9
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->i:[Lcom/google/android/maps/driveabout/vector/cC;

    if-eqz v1, :cond_b

    add-int/lit8 v0, v0, 0x10

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->i:[Lcom/google/android/maps/driveabout/vector/cC;

    array-length v2, v1

    move v3, v0

    move v0, v5

    :goto_5
    if-ge v0, v2, :cond_a

    aget-object v4, v1, v0

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/cC;->b()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_a
    move v0, v3

    :cond_b
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->c:[Lcom/google/android/maps/driveabout/vector/aY;

    if-eqz v1, :cond_d

    add-int/lit8 v0, v0, 0x10

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->c:[Lcom/google/android/maps/driveabout/vector/aY;

    array-length v2, v1

    move v3, v0

    move v0, v5

    :goto_6
    if-ge v0, v2, :cond_c

    aget-object v4, v1, v0

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/aY;->b()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_c
    move v0, v3

    :cond_d
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->f:[Lcom/google/android/maps/driveabout/vector/aY;

    if-eqz v1, :cond_f

    add-int/lit8 v0, v0, 0x10

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->f:[Lcom/google/android/maps/driveabout/vector/aY;

    array-length v2, v1

    move v3, v0

    move v0, v5

    :goto_7
    if-ge v0, v2, :cond_e

    aget-object v4, v1, v0

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/aY;->b()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_e
    move v0, v3

    :cond_f
    add-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/D;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/maps/driveabout/vector/aG;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/aG;->d()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_8

    :cond_10
    return v0
.end method

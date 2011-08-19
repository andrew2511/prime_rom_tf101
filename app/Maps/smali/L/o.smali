.class public LL/o;
.super Ljava/lang/Object;


# static fields
.field private static final w:LW/a;


# instance fields
.field final a:Lw/l;

.field final b:Lal/b;

.field final c:LL/i;

.field d:J

.field e:J

.field final f:Lcom/google/android/location/localizer/a;

.field g:LW/b;

.field h:Z

.field i:Law/e;

.field j:J

.field k:LW/k;

.field l:Z

.field m:J

.field n:J

.field o:LW/a;

.field p:J

.field q:Z

.field r:Z

.field s:J

.field t:LW/k;

.field u:J

.field v:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LW/a;

    invoke-direct {v0}, LW/a;-><init>()V

    sput-object v0, LL/o;->w:LW/a;

    return-void
.end method

.method public constructor <init>(Lw/l;Lal/b;LL/i;)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x1f3fffffc18L

    iput-wide v0, p0, LL/o;->d:J

    iput-wide v6, p0, LL/o;->e:J

    new-instance v0, LW/b;

    invoke-direct {v0, v5, v5, v5, v5}, LW/b;-><init>(LW/h;LW/d;LW/l;LW/i;)V

    iput-object v0, p0, LL/o;->g:LW/b;

    iput-boolean v4, p0, LL/o;->h:Z

    iput-wide v2, p0, LL/o;->j:J

    iput-boolean v4, p0, LL/o;->l:Z

    iput-wide v2, p0, LL/o;->m:J

    iput-wide v2, p0, LL/o;->n:J

    new-instance v0, LW/a;

    invoke-direct {v0}, LW/a;-><init>()V

    iput-object v0, p0, LL/o;->o:LW/a;

    iput-wide v2, p0, LL/o;->p:J

    iput-boolean v4, p0, LL/o;->q:Z

    iput-boolean v4, p0, LL/o;->r:Z

    iput-wide v2, p0, LL/o;->s:J

    iput-wide v6, p0, LL/o;->u:J

    iput-wide v6, p0, LL/o;->v:J

    iput-object p1, p0, LL/o;->a:Lw/l;

    iput-object p2, p0, LL/o;->b:Lal/b;

    new-instance v0, Lcom/google/android/location/localizer/a;

    iget-object v1, p2, Lal/b;->c:Lal/a;

    iget-object v2, p2, Lal/b;->d:Lal/a;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/location/localizer/a;-><init>(Lal/a;Lal/a;Lw/l;)V

    iput-object v0, p0, LL/o;->f:Lcom/google/android/location/localizer/a;

    iput-object p3, p0, LL/o;->c:LL/i;

    return-void
.end method

.method private a(LW/a;LW/k;)Law/e;
    .locals 4

    const/4 v3, 0x2

    new-instance v0, Law/e;

    sget-object v1, Lbd/a;->b:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    iget-object v1, p0, LL/o;->a:Lw/l;

    invoke-interface {v1}, Lw/l;->d()J

    move-result-wide v1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0, v1, v2}, LW/a;->a(Law/e;J)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2, v1, v2}, LW/k;->a(J)Law/e;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v3}, Law/e;->h(II)V

    invoke-virtual {v0, v3, v1}, Law/e;->b(ILaw/e;)V

    :cond_1
    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    new-instance v1, Law/e;

    sget-object v2, Lbd/a;->Y:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Law/e;->a(ILaw/e;)V

    iget-object v0, p0, LL/o;->c:LL/i;

    iget-object v2, p0, LL/o;->a:Lw/l;

    iget-object v3, p0, LL/o;->b:Lal/b;

    invoke-virtual {v0, v2, v3, v1}, LL/i;->a(Lw/l;Lal/b;Law/e;)V

    return-object v1
.end method

.method private a(J)V
    .locals 4

    iput-wide p1, p0, LL/o;->n:J

    iget-wide v0, p0, LL/o;->m:J

    const-wide/16 v2, 0x1

    sub-long v2, p1, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, LL/o;->m:J

    iget-object v0, p0, LL/o;->a:Lw/l;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lw/l;->c(I)V

    return-void
.end method

.method private a(JLW/k;LW/i;Z)V
    .locals 24

    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, LL/o;->t:LW/k;

    :cond_0
    if-eqz p5, :cond_1

    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, LL/o;->i:Law/e;

    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, LL/o;->v:J

    move-wide v4, v0

    sub-long v4, p1, v4

    const-wide/32 v6, 0x36ee80

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, LL/o;->b:Lal/b;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LL/o;->a:Lw/l;

    move-object v5, v0

    invoke-interface {v5}, Lw/l;->c()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lal/b;->a(J)V

    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, LL/o;->v:J

    :cond_2
    move-object/from16 v0, p0

    iget-wide v0, v0, LL/o;->m:J

    move-wide v4, v0

    sub-long v4, p1, v4

    move-object/from16 v0, p0

    iget-wide v0, v0, LL/o;->d:J

    move-wide v6, v0

    const-wide/32 v8, 0xafc8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v0, v0, LL/o;->t:LW/k;

    move-object v8, v0

    if-nez v8, :cond_25

    const-wide/16 v8, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, LL/o;->o:LW/a;

    move-object v10, v0

    invoke-virtual {v10}, LW/a;->b()LW/m;

    move-result-object v10

    move-object/from16 v0, p0

    iget-wide v0, v0, LL/o;->e:J

    move-wide v11, v0

    cmp-long v11, p1, v11

    if-ltz v11, :cond_26

    const/4 v11, 0x1

    :goto_1
    if-eqz v10, :cond_27

    invoke-virtual {v10}, LW/m;->h()Z

    move-result v12

    if-eqz v12, :cond_27

    invoke-virtual {v10}, LW/m;->f()J

    move-result-wide v12

    sub-long v12, p1, v12

    const-wide/32 v14, 0xafc8

    cmp-long v12, v12, v14

    if-gez v12, :cond_27

    const/4 v12, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, LL/o;->t:LW/k;

    move-object v13, v0

    if-eqz v13, :cond_28

    cmp-long v13, v8, v6

    if-gez v13, :cond_28

    const/4 v13, 0x1

    :goto_3
    if-eqz v12, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, LL/o;->g:LW/b;

    move-object v14, v0

    invoke-virtual {v14}, LW/b;->b()LW/m;

    move-result-object v14

    if-eq v10, v14, :cond_29

    const/4 v14, 0x1

    :goto_4
    if-eqz v13, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, LL/o;->t:LW/k;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LL/o;->g:LW/b;

    move-object v15, v0

    invoke-virtual {v15}, LW/b;->a()LW/k;

    move-result-object v15

    if-eq v13, v15, :cond_2a

    const/4 v13, 0x1

    :goto_5
    if-eqz v11, :cond_2b

    move-object/from16 v0, p0

    iget-boolean v0, v0, LL/o;->q:Z

    move v15, v0

    if-eqz v15, :cond_2b

    const/4 v15, 0x1

    :goto_6
    if-eqz v11, :cond_2c

    move-object/from16 v0, p0

    iget-boolean v0, v0, LL/o;->r:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2c

    if-eqz v13, :cond_3

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xc8

    cmp-long v6, v6, v8

    if-gez v6, :cond_2c

    :cond_3
    const/4 v6, 0x1

    :goto_7
    if-nez v15, :cond_4

    move-object/from16 v0, p0

    iget-wide v0, v0, LL/o;->p:J

    move-wide v7, v0

    const-wide/16 v16, -0x1

    cmp-long v7, v7, v16

    if-eqz v7, :cond_2d

    if-eqz v10, :cond_4

    move-object/from16 v0, p0

    iget-wide v0, v0, LL/o;->p:J

    move-wide v7, v0

    invoke-virtual {v10}, LW/m;->f()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_2d

    :cond_4
    const/4 v7, 0x1

    :goto_8
    if-nez v6, :cond_5

    move-object/from16 v0, p0

    iget-wide v0, v0, LL/o;->s:J

    move-wide v8, v0

    const-wide/16 v16, -0x1

    cmp-long v8, v8, v16

    if-eqz v8, :cond_2e

    move-object/from16 v0, p0

    iget-boolean v0, v0, LL/o;->r:Z

    move v8, v0

    if-eqz v8, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, LL/o;->t:LW/k;

    move-object v8, v0

    if-eqz v8, :cond_5

    move-object/from16 v0, p0

    iget-wide v0, v0, LL/o;->s:J

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LL/o;->t:LW/k;

    move-object v10, v0

    move-object v0, v10

    iget-wide v0, v0, LW/k;->a:J

    move-wide/from16 v16, v0

    cmp-long v8, v8, v16

    if-lez v8, :cond_2e

    :cond_5
    const/4 v8, 0x1

    :goto_9
    if-eqz v7, :cond_2f

    if-nez v15, :cond_6

    move-object/from16 v0, p0

    iget-wide v0, v0, LL/o;->p:J

    move-wide v9, v0

    sub-long v9, p1, v9

    const-wide/16 v16, 0x1388

    cmp-long v9, v9, v16

    if-gez v9, :cond_2f

    :cond_6
    const/4 v9, 0x1

    :goto_a
    if-eqz v8, :cond_30

    if-nez v6, :cond_7

    move-object/from16 v0, p0

    iget-wide v0, v0, LL/o;->s:J

    move-wide/from16 v16, v0

    sub-long v16, p1, v16

    const-wide/16 v18, 0x1388

    cmp-long v10, v16, v18

    if-gez v10, :cond_30

    :cond_7
    const/4 v10, 0x1

    :goto_b
    if-nez v9, :cond_8

    if-eqz v10, :cond_31

    :cond_8
    const/4 v10, 0x1

    :goto_c
    if-nez v14, :cond_9

    if-eqz v13, :cond_a

    :cond_9
    if-eqz v10, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, LL/o;->r:Z

    move v10, v0

    if-nez v10, :cond_32

    if-eqz v12, :cond_32

    if-nez v9, :cond_32

    :cond_b
    const/4 v9, 0x1

    :goto_d
    if-nez p5, :cond_d

    if-nez v11, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, LL/o;->h:Z

    move v10, v0

    if-eqz v10, :cond_33

    :cond_c
    if-eqz v9, :cond_33

    :cond_d
    const/4 v9, 0x1

    :goto_e
    const/4 v10, 0x0

    if-eqz v9, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, LL/o;->f:Lcom/google/android/location/localizer/a;

    move-object v10, v0

    if-eqz v14, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, LL/o;->o:LW/a;

    move-object v12, v0

    invoke-virtual {v12}, LW/a;->a()LW/a;

    move-result-object v12

    :goto_f
    if-eqz v13, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, LL/o;->t:LW/k;

    move-object/from16 v16, v0

    :goto_10
    move-object v0, v10

    move-object v1, v12

    move-object/from16 v2, v16

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/location/localizer/a;->a(LW/a;LW/k;LW/i;)LW/b;

    move-result-object v10

    :cond_e
    if-eqz v10, :cond_36

    iget-object v12, v10, LW/b;->a:LW/h;

    if-eqz v12, :cond_36

    const/4 v12, 0x1

    :goto_11
    if-eqz v10, :cond_37

    move-object v0, v10

    iget-object v0, v0, LW/b;->c:LW/l;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, LW/l;->d:LW/n;

    move-object/from16 v16, v0

    sget-object v17, LW/n;->c:LW/n;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_37

    const/16 v16, 0x1

    :goto_12
    if-eqz v10, :cond_38

    move-object v0, v10

    iget-object v0, v0, LW/b;->b:LW/d;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, LW/d;->d:LW/n;

    move-object/from16 v17, v0

    sget-object v18, LW/n;->c:LW/n;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_38

    const/16 v17, 0x1

    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, LL/o;->i:Law/e;

    move-object/from16 v18, v0

    if-nez v18, :cond_39

    if-nez v11, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, LL/o;->l:Z

    move/from16 v18, v0

    if-eqz v18, :cond_39

    :cond_f
    if-eqz v16, :cond_10

    if-nez v14, :cond_11

    :cond_10
    if-eqz v17, :cond_39

    if-eqz v13, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, LL/o;->t:LW/k;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, LW/k;->a()I

    move-result v16

    if-lez v16, :cond_39

    :cond_11
    const/16 v16, 0x1

    :goto_14
    if-nez v16, :cond_12

    if-eqz v12, :cond_3a

    :cond_12
    const/16 v17, 0x1

    :goto_15
    if-eqz v12, :cond_3b

    if-eqz v16, :cond_13

    iget-object v12, v10, LW/b;->a:LW/h;

    move-object/from16 v0, p0

    move-object v1, v12

    move-wide/from16 v2, p1

    invoke-direct {v0, v1, v2, v3}, LL/o;->a(LW/h;J)Z

    move-result v12

    if-eqz v12, :cond_3b

    :cond_13
    const/4 v12, 0x1

    :goto_16
    invoke-virtual/range {p0 .. p0}, LL/o;->a()Z

    move-result v18

    if-nez v18, :cond_3c

    if-eqz v11, :cond_3c

    const/16 v19, 0x1

    :goto_17
    move-object/from16 v0, p0

    iget-object v0, v0, LL/o;->i:Law/e;

    move-object/from16 v20, v0

    if-eqz v20, :cond_14

    move-object/from16 v0, p0

    iget-wide v0, v0, LL/o;->j:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, LL/o;->m:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-gez v20, :cond_15

    :cond_14
    if-eqz v16, :cond_3d

    :cond_15
    const/16 v20, 0x1

    :goto_18
    if-nez v7, :cond_16

    if-nez v8, :cond_16

    if-eqz v20, :cond_3e

    :cond_16
    const/16 v20, 0x1

    :goto_19
    if-eqz v18, :cond_3f

    if-nez v11, :cond_3f

    const-wide/16 v21, 0x1388

    cmp-long v4, v4, v21

    if-gez v4, :cond_17

    if-nez v20, :cond_3f

    :cond_17
    const/4 v4, 0x1

    :goto_1a
    if-eqz v18, :cond_40

    if-eqz v11, :cond_40

    if-nez v4, :cond_40

    const/4 v5, 0x1

    :goto_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, LL/o;->h:Z

    move/from16 v18, v0

    if-nez v18, :cond_18

    if-eqz v11, :cond_41

    :cond_18
    if-nez v9, :cond_41

    const/4 v9, 0x1

    :goto_1c
    move v0, v9

    move-object/from16 v1, p0

    iput-boolean v0, v1, LL/o;->h:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, LL/o;->l:Z

    move v9, v0

    if-nez v9, :cond_19

    if-eqz v11, :cond_42

    :cond_19
    if-nez v17, :cond_42

    const/4 v9, 0x1

    :goto_1d
    move v0, v9

    move-object/from16 v1, p0

    iput-boolean v0, v1, LL/o;->l:Z

    if-eqz v19, :cond_45

    invoke-direct/range {p0 .. p0}, LL/o;->c()J

    move-result-wide v17

    :goto_1e
    if-eqz v5, :cond_1a

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, LL/o;->m:J

    :cond_1a
    if-eqz v11, :cond_1b

    move-object/from16 v0, p0

    iget-wide v0, v0, LL/o;->d:J

    move-wide/from16 v19, v0

    add-long v19, v19, v17

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, LL/o;->e:J

    :cond_1b
    if-eqz v15, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, LL/o;->a:Lw/l;

    move-object v5, v0

    invoke-interface {v5}, Lw/l;->a()V

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, LL/o;->p:J

    :cond_1c
    if-eqz v6, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, LL/o;->a:Lw/l;

    move-object v5, v0

    invoke-interface {v5}, Lw/l;->f()V

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, LL/o;->s:J

    :cond_1d
    if-eqz v16, :cond_1e

    if-eqz v14, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, LL/o;->o:LW/a;

    move-object v5, v0

    :goto_1f
    if-eqz v13, :cond_44

    move-object/from16 v0, p0

    iget-object v0, v0, LL/o;->t:LW/k;

    move-object v6, v0

    invoke-virtual {v6}, LW/k;->a()I

    move-result v6

    if-lez v6, :cond_44

    move-object/from16 v0, p0

    iget-object v0, v0, LL/o;->t:LW/k;

    move-object v6, v0

    :goto_20
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, LL/o;->a(LW/a;LW/k;)Law/e;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, LL/o;->i:Law/e;

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, LL/o;->j:J

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, LL/o;->k:LW/k;

    move-object/from16 v0, p0

    iget-object v0, v0, LL/o;->a:Lw/l;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LL/o;->i:Law/e;

    move-object v9, v0

    invoke-static {v5}, LW/a;->a(LW/a;)Law/e;

    move-result-object v5

    invoke-interface {v6, v9, v5}, Lw/l;->a(Law/e;Law/e;)V

    :cond_1e
    if-eqz v12, :cond_1f

    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, LL/o;->g:LW/b;

    move-object/from16 v0, p0

    iget-object v0, v0, LL/o;->b:Lal/b;

    move-object v5, v0

    iget-object v6, v10, LW/b;->a:LW/h;

    iput-object v6, v5, Lal/b;->b:LW/h;

    move-object/from16 v0, p0

    iget-object v0, v0, LL/o;->a:Lw/l;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LL/o;->g:LW/b;

    move-object v6, v0

    invoke-interface {v5, v6}, Lw/l;->a(LW/b;)V

    :cond_1f
    move-object/from16 v0, p0

    iget-wide v0, v0, LL/o;->e:J

    move-wide v5, v0

    invoke-virtual/range {p0 .. p0}, LL/o;->a()Z

    move-result v9

    if-eqz v9, :cond_20

    if-nez v4, :cond_20

    move-object/from16 v0, p0

    iget-wide v0, v0, LL/o;->m:J

    move-wide v9, v0

    const-wide/16 v11, 0x1388

    add-long/2addr v9, v11

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :cond_20
    const-wide v9, 0x7fffffffffffffffL

    cmp-long v9, v5, v9

    if-gez v9, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, LL/o;->a:Lw/l;

    move-object v9, v0

    const/4 v10, 0x0

    invoke-interface {v9, v10, v5, v6}, Lw/l;->a(IJ)V

    :cond_21
    move-object/from16 v0, p0

    iget-wide v0, v0, LL/o;->u:J

    move-wide v9, v0

    sub-long v9, v17, v9

    const-wide/32 v11, 0x6ddd00

    cmp-long v11, v9, v11

    if-gtz v11, :cond_22

    const-wide/32 v11, 0x36ee80

    cmp-long v9, v9, v11

    if-lez v9, :cond_23

    sub-long v5, v5, v17

    const-wide/16 v9, 0x2710

    cmp-long v5, v5, v9

    if-lez v5, :cond_23

    if-nez v7, :cond_23

    if-nez v8, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, LL/o;->i:Law/e;

    move-object v5, v0

    if-nez v5, :cond_23

    invoke-virtual/range {p0 .. p0}, LL/o;->a()Z

    move-result v5

    if-eqz v5, :cond_23

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, LL/o;->a:Lw/l;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LL/o;->b:Lal/b;

    move-object v6, v0

    invoke-interface {v5, v6}, Lw/l;->a(Lal/b;)V

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, LL/o;->u:J

    :cond_23
    if-eqz v4, :cond_24

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2}, LL/o;->a(J)V

    :cond_24
    return-void

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, LL/o;->t:LW/k;

    move-object v8, v0

    iget-wide v8, v8, LW/k;->a:J

    sub-long v8, p1, v8

    goto/16 :goto_0

    :cond_26
    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_27
    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_28
    const/4 v13, 0x0

    goto/16 :goto_3

    :cond_29
    const/4 v14, 0x0

    goto/16 :goto_4

    :cond_2a
    const/4 v13, 0x0

    goto/16 :goto_5

    :cond_2b
    const/4 v15, 0x0

    goto/16 :goto_6

    :cond_2c
    const/4 v6, 0x0

    goto/16 :goto_7

    :cond_2d
    const/4 v7, 0x0

    goto/16 :goto_8

    :cond_2e
    const/4 v8, 0x0

    goto/16 :goto_9

    :cond_2f
    const/4 v9, 0x0

    goto/16 :goto_a

    :cond_30
    const/4 v10, 0x0

    goto/16 :goto_b

    :cond_31
    const/4 v10, 0x0

    goto/16 :goto_c

    :cond_32
    const/4 v9, 0x0

    goto/16 :goto_d

    :cond_33
    const/4 v9, 0x0

    goto/16 :goto_e

    :cond_34
    sget-object v12, LL/o;->w:LW/a;

    goto/16 :goto_f

    :cond_35
    const/16 v16, 0x0

    goto/16 :goto_10

    :cond_36
    const/4 v12, 0x0

    goto/16 :goto_11

    :cond_37
    const/16 v16, 0x0

    goto/16 :goto_12

    :cond_38
    const/16 v17, 0x0

    goto/16 :goto_13

    :cond_39
    const/16 v16, 0x0

    goto/16 :goto_14

    :cond_3a
    const/16 v17, 0x0

    goto/16 :goto_15

    :cond_3b
    const/4 v12, 0x0

    goto/16 :goto_16

    :cond_3c
    const/16 v19, 0x0

    goto/16 :goto_17

    :cond_3d
    const/16 v20, 0x0

    goto/16 :goto_18

    :cond_3e
    const/16 v20, 0x0

    goto/16 :goto_19

    :cond_3f
    const/4 v4, 0x0

    goto/16 :goto_1a

    :cond_40
    const/4 v5, 0x0

    goto/16 :goto_1b

    :cond_41
    const/4 v9, 0x0

    goto/16 :goto_1c

    :cond_42
    const/4 v9, 0x0

    goto/16 :goto_1d

    :cond_43
    const/4 v5, 0x0

    goto/16 :goto_1f

    :cond_44
    const/4 v6, 0x0

    goto/16 :goto_20

    :cond_45
    move-wide/from16 v17, p1

    goto/16 :goto_1e
.end method

.method private a(JZZ)V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    iget-boolean v0, p0, LL/o;->q:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, LL/o;->r:Z

    if-eqz v0, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean p3, p0, LL/o;->q:Z

    iput-boolean p4, p0, LL/o;->r:Z

    iget-boolean v1, p0, LL/o;->q:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, LL/o;->r:Z

    if-eqz v1, :cond_4

    :cond_1
    move v1, v2

    :goto_1
    if-eq v0, v1, :cond_2

    if-eqz v1, :cond_5

    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    iput-wide v0, p0, LL/o;->e:J

    :cond_2
    :goto_2
    move-object v0, p0

    move-wide v1, p1

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, LL/o;->a(JLW/k;LW/i;Z)V

    return-void

    :cond_3
    move v0, v5

    goto :goto_0

    :cond_4
    move v1, v5

    goto :goto_1

    :cond_5
    const-wide/32 v0, 0x7fffffff

    add-long/2addr v0, p1

    iput-wide v0, p0, LL/o;->e:J

    goto :goto_2
.end method

.method private a(LW/h;J)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, LL/o;->a:Lw/l;

    invoke-interface {v0}, Lw/l;->h()Lw/A;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p1, LW/h;->c:LW/o;

    iget v0, v0, LW/o;->c:I

    const v1, 0x30d40

    if-ge v0, v1, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    move v0, v6

    goto :goto_0

    :cond_1
    iget-wide v1, p1, LW/h;->e:J

    invoke-interface {v0}, Lw/A;->f()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xafc8

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    move v0, v5

    goto :goto_0

    :cond_2
    iget-object v1, p1, LW/h;->c:LW/o;

    iget v1, v1, LW/o;->c:I

    int-to-float v1, v1

    invoke-interface {v0}, Lw/A;->a()F

    move-result v0

    const/high16 v2, 0x447a

    mul-float/2addr v0, v2

    const v2, 0x47c35000

    add-float/2addr v0, v2

    cmpl-float v0, v1, v0

    if-lez v0, :cond_3

    move v0, v6

    goto :goto_0

    :cond_3
    move v0, v5

    goto :goto_0
.end method

.method private c()J
    .locals 4

    iget-object v0, p0, LL/o;->a:Lw/l;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lw/l;->b(I)V

    iget-object v0, p0, LL/o;->a:Lw/l;

    invoke-interface {v0}, Lw/l;->b()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    iput-wide v2, p0, LL/o;->n:J

    iput-wide v0, p0, LL/o;->m:J

    return-wide v0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, LL/o;->o:LW/a;

    invoke-virtual {v0, p1}, LW/a;->a(I)V

    return-void
.end method

.method public a(IZ)V
    .locals 10

    const/4 v3, 0x0

    const/4 v5, 0x0

    int-to-long v0, p1

    const-wide/16 v6, 0x3e8

    mul-long/2addr v0, v6

    iput-wide v0, p0, LL/o;->d:J

    iget-object v0, p0, LL/o;->a:Lw/l;

    invoke-interface {v0}, Lw/l;->b()J

    move-result-wide v1

    iget-boolean v0, p0, LL/o;->q:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, LL/o;->r:Z

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    if-eqz p2, :cond_3

    const-wide/16 v6, 0x0

    :goto_1
    iget-wide v8, p0, LL/o;->e:J

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    iput-wide v6, p0, LL/o;->e:J

    :cond_1
    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, LL/o;->a(JLW/k;LW/i;Z)V

    return-void

    :cond_2
    move v0, v5

    goto :goto_0

    :cond_3
    iget-wide v6, p0, LL/o;->d:J

    add-long/2addr v6, v1

    goto :goto_1
.end method

.method public a(LW/k;)V
    .locals 6

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, LL/o;->a:Lw/l;

    invoke-interface {v0}, Lw/l;->b()J

    move-result-wide v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, LL/o;->a(JLW/k;LW/i;Z)V

    goto :goto_0
.end method

.method public a(LW/m;)V
    .locals 6

    const/4 v3, 0x0

    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LL/o;->p:J

    :goto_0
    iget-object v0, p0, LL/o;->a:Lw/l;

    invoke-interface {v0}, Lw/l;->b()J

    move-result-wide v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, LL/o;->a(JLW/k;LW/i;Z)V

    return-void

    :cond_0
    iget-object v0, p0, LL/o;->o:LW/a;

    invoke-virtual {v0, p1}, LW/a;->a(LW/m;)V

    goto :goto_0
.end method

.method public a(Law/e;)V
    .locals 7

    iget-object v0, p0, LL/o;->a:Lw/l;

    invoke-interface {v0}, Lw/l;->b()J

    move-result-wide v1

    iget-object v0, p0, LL/o;->k:LW/k;

    invoke-static {p1, v0, v1, v2}, LW/i;->a(Law/e;LW/k;J)LW/i;

    move-result-object v4

    iget-object v0, p0, LL/o;->b:Lal/b;

    iget-object v3, p0, LL/o;->a:Lw/l;

    invoke-interface {v3}, Lw/l;->c()J

    move-result-wide v5

    invoke-virtual {v0, p1, v5, v6}, Lal/b;->a(Law/e;J)V

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, LL/o;->a(JLW/k;LW/i;Z)V

    return-void
.end method

.method public a(Z)V
    .locals 4

    iget-object v0, p0, LL/o;->a:Lw/l;

    invoke-interface {v0}, Lw/l;->b()J

    move-result-wide v0

    if-nez p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    iget-boolean v3, p0, LL/o;->r:Z

    invoke-direct {p0, v0, v1, v2, v3}, LL/o;->a(JZZ)V

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method a()Z
    .locals 4

    iget-wide v0, p0, LL/o;->m:J

    iget-wide v2, p0, LL/o;->n:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, LL/o;->a:Lw/l;

    invoke-interface {v0}, Lw/l;->b()J

    move-result-wide v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, LL/o;->a(JLW/k;LW/i;Z)V

    return-void
.end method

.method public b(Z)V
    .locals 3

    iget-object v0, p0, LL/o;->a:Lw/l;

    invoke-interface {v0}, Lw/l;->b()J

    move-result-wide v0

    iget-boolean v2, p0, LL/o;->q:Z

    invoke-direct {p0, v0, v1, v2, p1}, LL/o;->a(JZZ)V

    return-void
.end method

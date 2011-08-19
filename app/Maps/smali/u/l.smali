.class public Lu/l;
.super Ljava/lang/Object;

# interfaces
.implements LH/o;


# static fields
.field public static final a:Lf/l;


# instance fields
.field private final b:LH/f;

.field private c:Z

.field private d:I

.field private final e:LaU/a;

.field private final f:Lcom/google/googlenav/bL;

.field private g:J

.field private h:J

.field private i:Lf/h;

.field private j:I

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Lu/v;

.field private n:J

.field private o:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xf

    invoke-static {v0}, Lf/l;->b(I)Lf/l;

    move-result-object v0

    sput-object v0, Lu/l;->a:Lf/l;

    return-void
.end method

.method public constructor <init>(LaU/a;Lcom/google/googlenav/bL;LH/f;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lu/l;->d:I

    iput v0, p0, Lu/l;->j:I

    iput-object p1, p0, Lu/l;->e:LaU/a;

    iput-object p2, p0, Lu/l;->f:Lcom/google/googlenav/bL;

    iput-object p3, p0, Lu/l;->b:LH/f;

    invoke-virtual {p3, p0}, LH/f;->a(LH/o;)V

    return-void
.end method

.method private a(Lf/h;I)I
    .locals 12

    const-wide/16 v9, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lu/l;->m:Lu/v;

    invoke-virtual {v0}, Lu/v;->Y()Lu/k;

    move-result-object v0

    invoke-virtual {v0}, Lu/k;->f()[Lf/h;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lu/k;->x()[I

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v3

    :goto_0
    return v0

    :cond_1
    array-length v2, v1

    invoke-virtual {v0}, Lu/k;->x()[I

    move-result-object v0

    array-length v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Lu/l;->i:Lf/h;

    if-nez v2, :cond_3

    if-lez p2, :cond_2

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0x5

    iget-object v4, p0, Lu/l;->i:Lf/h;

    invoke-virtual {v4, p1}, Lf/h;->a(Lf/h;)J

    move-result-wide v4

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-long v4, v4

    mul-long/2addr v2, v4

    iget v4, p0, Lu/l;->j:I

    add-int v5, v4, p2

    move v6, v5

    move v7, v4

    move-wide v4, v9

    :goto_1
    if-ltz v6, :cond_5

    if-ge v6, v0, :cond_5

    cmp-long v8, v4, v2

    if-ltz v8, :cond_4

    cmp-long v8, v4, v9

    if-nez v8, :cond_5

    :cond_4
    aget-object v8, v1, v6

    aget-object v7, v1, v7

    invoke-virtual {v8, v7}, Lf/h;->a(Lf/h;)J

    move-result-wide v7

    long-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-long v7, v7

    add-long/2addr v4, v7

    add-int v7, v6, p2

    move v11, v7

    move v7, v6

    move v6, v11

    goto :goto_1

    :cond_5
    move v0, v7

    goto :goto_0
.end method

.method private static a(JJJ)J
    .locals 6

    add-long v0, p0, p2

    add-long/2addr v0, p4

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    sub-long v2, v0, p0

    mul-long/2addr v2, v0

    sub-long v4, v0, p2

    mul-long/2addr v2, v4

    sub-long/2addr v0, p4

    mul-long/2addr v0, v2

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method private a(J)V
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const-wide/16 v1, 0x78

    invoke-direct {p0}, Lu/l;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lu/l;->d()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lu/l;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lu/l;->m:Lu/v;

    if-eqz v0, :cond_0

    cmp-long v0, p1, v5

    if-ltz v0, :cond_2

    cmp-long v0, p1, v1

    if-gez v0, :cond_2

    move v0, v3

    :goto_1
    iput v0, p0, Lu/l;->d:I

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1

    :pswitch_1
    cmp-long v0, p1, v1

    if-gez v0, :cond_3

    iget-boolean v0, p0, Lu/l;->c:Z

    if-eqz v0, :cond_0

    :cond_3
    iput v4, p0, Lu/l;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lu/l;->i:Lf/h;

    goto :goto_0

    :pswitch_2
    cmp-long v0, p1, v5

    if-ltz v0, :cond_0

    cmp-long v0, p1, v1

    if-gez v0, :cond_0

    iput v3, p0, Lu/l;->d:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private f()Z
    .locals 3

    iget-object v0, p0, Lu/l;->m:Lu/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu/l;->b:LH/f;

    iget-object v1, p0, Lu/l;->m:Lu/v;

    invoke-virtual {v1}, Lu/v;->av()Lf/h;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, LH/f;->a(Lf/h;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()V
    .locals 1

    const/16 v0, 0x440

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lu/l;->l:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lu/l;->c:Z

    return-void
.end method


# virtual methods
.method public a(Lf/h;)J
    .locals 27

    move-object/from16 v0, p0

    iget-object v0, v0, Lu/l;->m:Lu/v;

    move-object v3, v0

    invoke-virtual {v3}, Lu/v;->Y()Lu/k;

    move-result-object v9

    invoke-virtual {v9}, Lu/k;->f()[Lf/h;

    move-result-object v10

    const/4 v3, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v3

    invoke-direct {v0, v1, v2}, Lu/l;->a(Lf/h;I)I

    move-result v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v4

    invoke-direct {v0, v1, v2}, Lu/l;->a(Lf/h;I)I

    move-result v11

    if-eqz v10, :cond_0

    aget-object v4, v10, v3

    sget-object v5, Lu/l;->a:Lf/l;

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lf/h;->a(Lf/h;Lf/l;)J

    move-result-wide v4

    :goto_0
    long-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-long v6, v6

    const-wide v12, 0x7fffffffffffffffL

    const/4 v8, -0x1

    move-wide v14, v12

    move-wide/from16 v16, v4

    move v12, v3

    move v13, v8

    move-wide/from16 v24, v6

    move-wide/from16 v5, v24

    :goto_1
    if-ge v12, v11, :cond_4

    add-int/lit8 v3, v12, 0x1

    aget-object v3, v10, v3

    sget-object v4, Lu/l;->a:Lf/l;

    move-object/from16 v0, p1

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lf/h;->a(Lf/h;Lf/l;)J

    move-result-wide v18

    add-int/lit8 v3, v12, 0x1

    aget-object v3, v10, v3

    aget-object v4, v10, v12

    sget-object v7, Lu/l;->a:Lf/l;

    invoke-virtual {v3, v4, v7}, Lf/h;->a(Lf/h;Lf/l;)J

    move-result-wide v20

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-long v3, v3

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-long v7, v7

    const-wide/16 v22, 0x0

    cmp-long v22, v7, v22

    if-nez v22, :cond_1

    move v5, v13

    move-wide v6, v14

    :goto_2
    add-int/lit8 v8, v12, 0x1

    move v12, v8

    move v13, v5

    move-wide v14, v6

    move-wide/from16 v16, v18

    move-wide v5, v3

    goto :goto_1

    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_1
    add-long v16, v16, v20

    sub-long v16, v16, v18

    const-wide/16 v20, 0x2

    mul-long v20, v20, v7

    div-long v16, v16, v20

    const-wide/16 v20, 0x0

    cmp-long v20, v16, v20

    if-ltz v20, :cond_2

    cmp-long v20, v16, v7

    if-lez v20, :cond_3

    :cond_2
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :goto_3
    cmp-long v20, v5, v14

    if-gez v20, :cond_6

    invoke-virtual {v9}, Lu/k;->x()[I

    move-result-object v13

    aget v13, v13, v12

    invoke-virtual {v9}, Lu/k;->x()[I

    move-result-object v14

    add-int/lit8 v15, v12, 0x1

    aget v14, v14, v15

    sub-int/2addr v14, v13

    int-to-long v14, v14

    mul-long v14, v14, v16

    div-long v7, v14, v7

    long-to-int v7, v7

    add-int/2addr v7, v13

    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lu/l;->j:I

    move/from16 v24, v7

    move-wide/from16 v25, v5

    move-wide/from16 v6, v25

    move/from16 v5, v24

    goto :goto_2

    :cond_3
    invoke-static/range {v3 .. v8}, Lu/l;->a(JJJ)J

    move-result-wide v5

    const-wide/16 v20, 0x2

    mul-long v5, v5, v20

    div-long/2addr v5, v7

    goto :goto_3

    :cond_4
    const/4 v3, -0x1

    if-ne v13, v3, :cond_5

    invoke-direct/range {p0 .. p0}, Lu/l;->g()V

    const-wide/16 v3, -0x1

    move-object/from16 v0, p0

    move-wide v1, v3

    invoke-direct {v0, v1, v2}, Lu/l;->a(J)V

    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lu/l;->i:Lf/h;

    :goto_4
    int-to-long v3, v13

    move-wide v0, v3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lu/l;->o:J

    return-wide v14

    :cond_5
    invoke-static {v13}, Lcom/google/googlenav/ui/aM;->a(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lu/l;->l:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lu/l;->i:Lf/h;

    goto :goto_4

    :cond_6
    move v5, v13

    move-wide v6, v14

    goto/16 :goto_2
.end method

.method public declared-synchronized a(ILH/f;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lu/l;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lf/h;LH/f;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lu/l;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lu/l;->h:J

    sub-long v2, v0, v2

    const-wide/16 v4, -0x1

    const-wide/16 v6, 0xbb8

    cmp-long v2, v2, v6

    if-lez v2, :cond_1

    invoke-virtual {p2}, LH/f;->p()Lf/h;

    move-result-object v2

    invoke-virtual {p0, v2}, Lu/l;->a(Lf/h;)J

    move-result-wide v2

    iput-wide v2, p0, Lu/l;->n:J

    iput-wide v0, p0, Lu/l;->h:J

    move-wide v0, v2

    :goto_1
    invoke-direct {p0, v0, v1}, Lu/l;->a(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move-wide v0, v4

    goto :goto_1
.end method

.method public declared-synchronized a(Lu/v;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lu/l;->m:Lu/v;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lu/l;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lu/l;->i:Lf/h;

    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lu/l;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()Z
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lu/l;->d:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized b(Lu/v;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lu/l;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-object p1, p0, Lu/l;->m:Lu/v;

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lu/l;->g:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lu/l;->k:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lu/l;->c:Z

    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lu/l;->a(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Z
    .locals 1

    iget v0, p0, Lu/l;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    invoke-virtual {p0}, Lu/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lu/l;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized d()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lu/l;->m:Lu/v;

    const/4 v0, 0x0

    iput-object v0, p0, Lu/l;->l:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lu/l;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lu/l;->i:Lf/h;

    const/4 v0, 0x0

    iput v0, p0, Lu/l;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lu/l;->l:Ljava/lang/String;

    return-object v0
.end method

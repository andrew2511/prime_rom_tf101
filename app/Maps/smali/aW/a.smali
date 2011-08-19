.class public LaW/a;
.super Ljava/lang/Object;


# static fields
.field private static a:LaW/b;

.field private static b:Z

.field private static n:LaW/a;

.field private static o:J

.field private static p:J

.field private static q:I


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, LaW/a;->b:Z

    const-wide/32 v0, 0x927c0

    sput-wide v0, LaW/a;->o:J

    sget-wide v0, LaW/a;->o:J

    neg-long v0, v0

    sput-wide v0, LaW/a;->p:J

    const/4 v0, -0x1

    sput v0, LaW/a;->q:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIIIIIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaW/a;->c:Ljava/lang/String;

    iput p3, p0, LaW/a;->j:I

    iput p4, p0, LaW/a;->i:I

    iput p5, p0, LaW/a;->h:I

    iput p6, p0, LaW/a;->f:I

    iput p7, p0, LaW/a;->g:I

    iput p8, p0, LaW/a;->d:I

    iput p9, p0, LaW/a;->e:I

    iput p2, p0, LaW/a;->l:I

    iput p10, p0, LaW/a;->k:I

    iput-wide p11, p0, LaW/a;->m:J

    return-void
.end method

.method public static a(Ljava/lang/String;IIIIIIIII)LaW/a;
    .locals 13

    new-instance v0, LaW/a;

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->p()Lac/p;

    move-result-object v1

    invoke-interface {v1}, Lac/p;->a()J

    move-result-wide v11

    move-object v1, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v12}, LaW/a;-><init>(Ljava/lang/String;IIIIIIIIIJ)V

    return-object v0
.end method

.method public static a(LaW/b;)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, LaW/a;->b:Z

    if-nez p0, :cond_0

    invoke-static {}, LaW/a;->b()V

    :cond_0
    sput-object p0, LaW/a;->a:LaW/b;

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, LaW/a;->b:Z

    return v0
.end method

.method static b()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, LaW/a;->b:Z

    return-void
.end method

.method public static c()I
    .locals 6

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    sget-wide v2, LaW/a;->p:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sget-wide v4, LaW/a;->o:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    invoke-static {}, LaW/a;->d()LaW/a;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, LaW/a;->i()I

    move-result v2

    sput v2, LaW/a;->q:I

    :cond_0
    sput-wide v0, LaW/a;->p:J

    :cond_1
    sget v0, LaW/a;->q:I

    return v0
.end method

.method public static d()LaW/a;
    .locals 1

    sget-object v0, LaW/a;->a:LaW/b;

    if-nez v0, :cond_0

    invoke-static {}, LaW/a;->e()LaW/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, LaW/a;->a:LaW/b;

    invoke-interface {v0}, LaW/b;->a()LaW/a;

    move-result-object v0

    goto :goto_0
.end method

.method public static e()LaW/a;
    .locals 13

    const/4 v2, -0x1

    sget-object v0, LaW/a;->n:LaW/a;

    if-nez v0, :cond_0

    new-instance v0, LaW/a;

    const/4 v1, 0x0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v3

    invoke-virtual {v3}, Lac/m;->p()Lac/p;

    move-result-object v3

    invoke-interface {v3}, Lac/p;->a()J

    move-result-wide v11

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v0 .. v12}, LaW/a;-><init>(Ljava/lang/String;IIIIIIIIIJ)V

    sput-object v0, LaW/a;->n:LaW/a;

    :cond_0
    sget-object v0, LaW/a;->n:LaW/a;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    check-cast p1, LaW/a;

    iget v0, p0, LaW/a;->j:I

    iget v1, p1, LaW/a;->j:I

    if-ne v0, v1, :cond_3

    iget v0, p0, LaW/a;->i:I

    iget v1, p1, LaW/a;->i:I

    if-eq v0, v1, :cond_4

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    iget v0, p0, LaW/a;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()I
    .locals 1

    iget v0, p0, LaW/a;->j:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, LaW/a;->i:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, LaW/a;->j:I

    mul-int/lit8 v0, v0, 0x1d

    iget v1, p0, LaW/a;->i:I

    add-int/2addr v0, v1

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, LaW/a;->f:I

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, LaW/a;->g:I

    return v0
.end method

.method public k()Law/e;
    .locals 3

    new-instance v0, Law/e;

    sget-object v1, LZ/d;->e:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x4

    iget v2, p0, LaW/a;->e:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/4 v1, 0x5

    iget v2, p0, LaW/a;->d:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/4 v1, 0x1

    iget v2, p0, LaW/a;->l:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/4 v1, 0x2

    iget-object v2, p0, LaW/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    return-object v0
.end method

.method public l()Law/e;
    .locals 5

    const/4 v3, 0x2

    const/4 v4, 0x1

    new-instance v0, Law/e;

    sget-object v1, LZ/m;->b:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    iget-wide v1, p0, LaW/a;->m:J

    invoke-virtual {v0, v3, v1, v2}, Law/e;->b(IJ)V

    new-instance v1, Law/e;

    sget-object v2, LZ/m;->a:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    iget v2, p0, LaW/a;->j:I

    invoke-virtual {v1, v3, v2}, Law/e;->h(II)V

    iget v2, p0, LaW/a;->i:I

    invoke-virtual {v1, v4, v2}, Law/e;->h(II)V

    const/4 v2, 0x3

    iget v3, p0, LaW/a;->g:I

    invoke-virtual {v1, v2, v3}, Law/e;->h(II)V

    const/4 v2, 0x4

    iget v3, p0, LaW/a;->f:I

    invoke-virtual {v1, v2, v3}, Law/e;->h(II)V

    const/4 v2, 0x5

    iget v3, p0, LaW/a;->k:I

    invoke-virtual {v1, v2, v3}, Law/e;->h(II)V

    invoke-virtual {v0, v4, v1}, Law/e;->b(ILaw/e;)V

    return-object v0
.end method

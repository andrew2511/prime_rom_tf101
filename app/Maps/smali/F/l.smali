.class public LF/l;
.super Lak/m;


# static fields
.field private static p:Ljava/lang/String;


# instance fields
.field private final a:I

.field private final b:[LF/u;

.field private c:Law/e;

.field private d:I

.field private e:[LF/M;

.field private f:[LF/u;

.field private g:[LF/K;

.field private h:[LF/K;

.field private i:Z

.field private j:I

.field private k:I

.field private l:F

.field private m:F

.field private n:LF/u;

.field private final o:I


# direct methods
.method public constructor <init>([LF/u;IFFZLF/u;III[LF/K;)V
    .locals 0

    invoke-direct {p0, p1, p2, p9}, LF/l;-><init>([LF/u;II)V

    iput p3, p0, LF/l;->l:F

    iput p4, p0, LF/l;->m:F

    iput-boolean p5, p0, LF/l;->i:Z

    iput-object p6, p0, LF/l;->n:LF/u;

    iput p8, p0, LF/l;->k:I

    iput-object p10, p0, LF/l;->g:[LF/K;

    iput p7, p0, LF/l;->j:I

    return-void
.end method

.method public constructor <init>([LF/u;II)V
    .locals 2

    const/high16 v1, -0x4080

    invoke-direct {p0}, Lak/m;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, LF/l;->k:I

    iput v1, p0, LF/l;->l:F

    iput v1, p0, LF/l;->m:F

    iput-object p1, p0, LF/l;->b:[LF/u;

    iput p2, p0, LF/l;->a:I

    iput p3, p0, LF/l;->o:I

    sget-object v0, LF/l;->p:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, LF/l;->x()V

    :cond_0
    return-void
.end method

.method static a(Law/e;)[LF/K;
    .locals 6

    const/16 v5, 0xe

    const/4 v4, 0x0

    invoke-virtual {p0, v5}, Law/e;->i(I)I

    move-result v0

    new-array v1, v0, [LF/K;

    move v2, v4

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v5, v2}, Law/e;->e(II)Law/e;

    move-result-object v3

    invoke-static {v3}, LF/K;->a(Law/e;)LF/K;

    move-result-object v3

    aput-object v3, v1, v2

    aget-object v3, v1, v2

    if-nez v3, :cond_0

    new-array v0, v4, [LF/K;

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private a(Law/e;[LF/u;)[LF/M;
    .locals 13

    const/16 v12, 0x8

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p1, v12}, Law/e;->i(I)I

    move-result v9

    new-array v10, v9, [LF/M;

    const/16 v0, 0xd

    invoke-static {p1, v0, v2}, Law/b;->c(Law/e;II)I

    move-result v0

    if-le v0, v1, :cond_0

    move v0, v2

    :cond_0
    if-ne v0, v1, :cond_2

    const/16 v1, 0x17

    invoke-static {p1, v1}, Law/b;->h(Law/e;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    move v7, v0

    :goto_0
    move v11, v2

    :goto_1
    if-ge v11, v9, :cond_1

    invoke-virtual {p1, v12, v11}, Law/e;->e(II)Law/e;

    move-result-object v0

    iget v1, p0, LF/l;->o:I

    iget v3, p0, LF/l;->l:F

    iget v4, p0, LF/l;->m:F

    iget-boolean v5, p0, LF/l;->i:Z

    iget-object v6, p0, LF/l;->n:LF/u;

    iget-object v8, p0, LF/l;->h:[LF/K;

    move-object v2, p2

    invoke-static/range {v0 .. v8}, LF/M;->a(Law/e;I[LF/u;FFZLF/u;I[LF/K;)LF/M;

    move-result-object v0

    aput-object v0, v10, v11

    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_1

    :cond_1
    return-object v10

    :cond_2
    move v7, v0

    goto :goto_0
.end method

.method private static a(Law/e;Ljava/lang/String;)[LF/u;
    .locals 10

    const/16 v9, 0xf

    const/4 v8, 0x5

    const/4 v7, 0x0

    invoke-virtual {p0, v8}, Law/e;->i(I)I

    move-result v0

    new-array v1, v0, [LF/u;

    move v2, v7

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v8, v2}, Law/e;->e(II)Law/e;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v3, v4, v7}, Law/e;->e(II)Law/e;

    move-result-object v4

    const/4 v5, 0x1

    sub-int v5, v0, v5

    if-ne v2, v5, :cond_1

    new-instance v5, LF/u;

    invoke-direct {v5, v4, p1}, LF/u;-><init>(Law/e;Ljava/lang/String;)V

    aput-object v5, v1, v2

    :goto_1
    invoke-virtual {v3, v9}, Law/e;->h(I)Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v4, v1, v2

    invoke-virtual {v3, v9}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, LF/u;->a(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v5, LF/u;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6}, LF/u;-><init>(Law/e;Ljava/lang/String;)V

    aput-object v5, v1, v2

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method private b(I)I
    .locals 2

    iget-object v0, p0, LF/l;->c:Law/e;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Law/e;->e(II)Law/e;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Law/e;->d(I)I

    move-result v0

    return v0
.end method

.method private static b(Law/e;)[LF/u;
    .locals 8

    const/4 v7, 0x7

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {p0, v2}, Law/e;->i(I)I

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v3, [LF/u;

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v2, v0}, Law/e;->e(II)Law/e;

    move-result-object v0

    invoke-virtual {v0, v7}, Law/e;->i(I)I

    move-result v1

    new-array v2, v1, [LF/u;

    :goto_1
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v7, v3}, Law/e;->e(II)Law/e;

    move-result-object v4

    new-instance v5, LF/u;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6}, LF/u;-><init>(Law/e;Ljava/lang/String;)V

    aput-object v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method

.method private w()V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget-object v0, p0, LF/l;->c:Law/e;

    invoke-virtual {v0, v2}, Law/e;->d(I)I

    move-result v0

    iput v0, p0, LF/l;->d:I

    iget-object v0, p0, LF/l;->c:Law/e;

    invoke-static {v0}, LF/l;->a(Law/e;)[LF/K;

    move-result-object v0

    iput-object v0, p0, LF/l;->h:[LF/K;

    invoke-direct {p0}, LF/l;->y()V

    invoke-virtual {p0}, LF/l;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LF/l;->b:[LF/u;

    iget-object v1, p0, LF/l;->b:[LF/u;

    array-length v1, v1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    invoke-virtual {v0}, LF/u;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LF/l;->c:Law/e;

    invoke-static {v1, v0}, LF/l;->a(Law/e;Ljava/lang/String;)[LF/u;

    move-result-object v0

    iget-object v1, p0, LF/l;->c:Law/e;

    invoke-direct {p0, v1, v0}, LF/l;->a(Law/e;[LF/u;)[LF/M;

    move-result-object v0

    iput-object v0, p0, LF/l;->e:[LF/M;

    iget v0, p0, LF/l;->o:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, LF/l;->e:[LF/M;

    array-length v0, v0

    if-ge v0, v3, :cond_0

    const/4 v0, 0x4

    iput v0, p0, LF/l;->d:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, LF/l;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LF/l;->c:Law/e;

    invoke-static {v0}, LF/l;->b(Law/e;)[LF/u;

    move-result-object v0

    iput-object v0, p0, LF/l;->f:[LF/u;

    iget-object v0, p0, LF/l;->f:[LF/u;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, LF/l;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, LF/l;->f:[LF/u;

    goto :goto_0
.end method

.method private x()V
    .locals 1

    invoke-static {}, Lcom/google/android/maps/driveabout/app/cC;->a()Lcom/google/android/maps/driveabout/app/cC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cC;->g()Lcom/google/android/maps/driveabout/app/NavigationService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->j()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LF/l;->p:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private y()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x2

    iget v0, p0, LF/l;->d:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, LF/l;->c:Law/e;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Law/e;->i(I)I

    move-result v0

    if-lt v0, v3, :cond_0

    const/4 v1, 0x0

    :goto_1
    sub-int v2, v0, v4

    if-ge v1, v2, :cond_2

    invoke-direct {p0, v1}, LF/l;->b(I)I

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    sub-int/2addr v0, v4

    invoke-direct {p0, v0}, LF/l;->b(I)I

    move-result v0

    if-ne v0, v3, :cond_0

    iput v3, p0, LF/l;->d:I

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x1c

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, LF/l;->d:I

    return-void
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 1

    invoke-virtual {p0}, LF/l;->v()Law/e;

    move-result-object v0

    invoke-static {p1, v0}, Law/b;->a(Ljava/io/DataOutput;Law/e;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 2

    :try_start_0
    sget-object v0, Ls/v;->g:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    iput-object v0, p0, LF/l;->c:Law/e;

    invoke-direct {p0}, LF/l;->w()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "DA:DirectionsRequest"

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    const-string v1, "DA:DirectionsRequest"

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public g_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j()Z
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, LF/l;->b:[LF/u;

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LF/l;->b:[LF/u;

    aget-object v0, v0, v6

    invoke-virtual {v0}, LF/u;->e()LG/y;

    move-result-object v0

    iget-object v1, p0, LF/l;->b:[LF/u;

    aget-object v1, v1, v5

    invoke-virtual {v1}, LF/u;->e()LG/y;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, LG/y;->a()I

    move-result v2

    invoke-virtual {v0}, LG/y;->b()I

    move-result v0

    invoke-static {v2, v0}, LG/Q;->b(II)LG/Q;

    move-result-object v0

    invoke-virtual {v1}, LG/y;->a()I

    move-result v2

    invoke-virtual {v1}, LG/y;->b()I

    move-result v1

    invoke-static {v2, v1}, LG/Q;->b(II)LG/Q;

    move-result-object v1

    invoke-virtual {v0, v1}, LG/Q;->c(LG/Q;)F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0}, LG/Q;->e()D

    move-result-wide v3

    div-double v0, v1, v3

    const-wide/high16 v2, 0x4000

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iput v5, p0, LF/l;->d:I

    move v0, v6

    :goto_0
    return v0

    :cond_0
    move v0, v5

    goto :goto_0
.end method

.method public l()[LF/M;
    .locals 1

    iget-object v0, p0, LF/l;->e:[LF/M;

    return-object v0
.end method

.method public m()[LF/u;
    .locals 1

    iget-object v0, p0, LF/l;->f:[LF/u;

    return-object v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, LF/l;->j:I

    return v0
.end method

.method public o()Z
    .locals 1

    iget v0, p0, LF/l;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()Z
    .locals 2

    iget v0, p0, LF/l;->d:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()Z
    .locals 2

    iget v0, p0, LF/l;->d:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()Z
    .locals 2

    iget v0, p0, LF/l;->d:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s()Z
    .locals 2

    iget v0, p0, LF/l;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t()Z
    .locals 2

    iget v0, p0, LF/l;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LF/l;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LF/l;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " startBearing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LF/l;->l:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " startSpeed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LF/l;->m:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " waypoints: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v4

    :goto_0
    iget-object v2, p0, LF/l;->b:[LF/u;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, LF/l;->b:[LF/u;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LF/l;->b:[LF/u;

    aget-object v2, v2, v1

    iget-object v3, p0, LF/l;->n:LF/u;

    invoke-virtual {v2, v3}, LF/u;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, LF/l;->i:Z

    if-eqz v1, :cond_2

    const-string v1, " hasUncertainFromPoint:true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, " maxTripCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LF/l;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, LF/l;->g:[LF/K;

    if-eqz v1, :cond_3

    iget-object v1, p0, LF/l;->g:[LF/K;

    array-length v2, v1

    move v3, v4

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget v1, p0, LF/l;->j:I

    if-eqz v1, :cond_4

    const-string v1, " previousAlternateExtraMeters:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LF/l;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, " ] ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()I
    .locals 1

    iget v0, p0, LF/l;->o:I

    return v0
.end method

.method v()Law/e;
    .locals 9

    const v4, 0x186a0

    const/4 v8, 0x2

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    new-instance v0, Law/e;

    sget-object v1, Ls/v;->f:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    iget v1, p0, LF/l;->a:I

    invoke-virtual {v0, v6, v1}, Law/e;->a(II)V

    move v1, v3

    :goto_0
    iget-object v2, p0, LF/l;->b:[LF/u;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, LF/l;->b:[LF/u;

    aget-object v2, v2, v1

    invoke-virtual {v2}, LF/u;->j()Law/e;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Law/e;->a(ILaw/e;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    iget v2, p0, LF/l;->k:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    iget v1, p0, LF/l;->k:I

    if-le v1, v6, :cond_1

    const/16 v1, 0x16

    invoke-virtual {v0, v1, v6}, Law/e;->b(IZ)V

    invoke-static {}, Lcom/google/android/maps/driveabout/app/cC;->a()Lcom/google/android/maps/driveabout/app/cC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/cC;->g()Lcom/google/android/maps/driveabout/app/NavigationService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/NavigationService;->k()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x20

    invoke-virtual {v0, v1, v6}, Law/e;->b(IZ)V

    :cond_1
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v3}, Law/e;->h(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v6}, Law/e;->b(IZ)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1, v6}, Law/e;->h(II)V

    const/16 v1, 0x14

    invoke-virtual {v0, v1, v6}, Law/e;->b(IZ)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v6}, Law/e;->b(IZ)V

    const/16 v1, 0x19

    invoke-virtual {v0, v1, v6}, Law/e;->b(IZ)V

    const/16 v1, 0x15

    invoke-virtual {v0, v1, v6}, Law/e;->b(IZ)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v6}, Law/e;->b(IZ)V

    const/16 v1, 0x1d

    invoke-virtual {v0, v1, v6}, Law/e;->b(IZ)V

    const/16 v1, 0x1f

    invoke-virtual {v0, v1, v6}, Law/e;->b(IZ)V

    const/16 v1, 0x17

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/16 v1, 0x18

    iget v2, p0, LF/l;->o:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    sget-object v1, LF/l;->p:Ljava/lang/String;

    if-eqz v1, :cond_2

    const/16 v1, 0x23

    sget-object v2, LF/l;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    :cond_2
    iget v1, p0, LF/l;->o:I

    if-nez v1, :cond_3

    new-instance v1, Law/e;

    sget-object v2, Ls/P;->g:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    iget-object v2, p0, LF/l;->b:[LF/u;

    aget-object v2, v2, v3

    invoke-virtual {v2}, LF/u;->e()LG/y;

    move-result-object v2

    invoke-static {v2}, Lad/m;->b(LG/y;)Law/e;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Law/e;->a(ILaw/e;)V

    invoke-virtual {v1, v8, v4}, Law/e;->h(II)V

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v4}, Law/e;->h(II)V

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Law/e;->b(ILaw/e;)V

    :cond_3
    iget-object v1, p0, LF/l;->g:[LF/K;

    if-eqz v1, :cond_4

    iget-object v1, p0, LF/l;->g:[LF/K;

    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    const/16 v5, 0xa

    invoke-virtual {v4}, LF/K;->a()Law/e;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Law/e;->a(ILaw/e;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iget v1, p0, LF/l;->l:F

    cmpl-float v1, v1, v7

    if-gez v1, :cond_5

    iget v1, p0, LF/l;->m:F

    cmpl-float v1, v1, v7

    if-ltz v1, :cond_8

    :cond_5
    new-instance v1, Law/e;

    sget-object v2, Ls/v;->A:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    iget v2, p0, LF/l;->l:F

    cmpl-float v2, v2, v7

    if-ltz v2, :cond_6

    iget v2, p0, LF/l;->l:F

    float-to-int v2, v2

    invoke-virtual {v1, v6, v2}, Law/e;->h(II)V

    :cond_6
    iget v2, p0, LF/l;->m:F

    cmpl-float v2, v2, v7

    if-ltz v2, :cond_7

    iget v2, p0, LF/l;->m:F

    float-to-int v2, v2

    invoke-virtual {v1, v8, v2}, Law/e;->h(II)V

    :cond_7
    const/16 v2, 0x11

    invoke-virtual {v0, v2, v1}, Law/e;->a(ILaw/e;)V

    :cond_8
    return-object v0
.end method

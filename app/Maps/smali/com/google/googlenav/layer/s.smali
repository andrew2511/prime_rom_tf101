.class public Lcom/google/googlenav/layer/s;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/googlenav/layer/s;


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private f:[Law/e;

.field private final g:B

.field private final h:I

.field private final i:I

.field private final j:Z

.field private final k:Z

.field private final l:Z

.field private m:I

.field private n:I

.field private o:[Lcom/google/googlenav/aG;

.field private p:[[B

.field private final q:I

.field private r:J

.field private final s:J

.field private t:Law/e;

.field private u:Law/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/googlenav/layer/s;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/google/googlenav/layer/s;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/googlenav/layer/s;->a:Lcom/google/googlenav/layer/s;

    return-void
.end method

.method public constructor <init>(Law/e;)V
    .locals 8

    const/16 v7, 0x16

    const/16 v4, 0x12

    const/4 v1, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v6}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/layer/s;->b:Ljava/lang/String;

    invoke-static {p1, v1}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/layer/s;->c:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/layer/s;->d:Ljava/lang/String;

    invoke-static {p1, v7}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/layer/s;->e:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-static {p1, v0, v1}, Law/b;->c(Law/e;II)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/layer/s;->h:I

    const/4 v0, 0x4

    invoke-static {p1, v0, v1}, Law/b;->c(Law/e;II)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/layer/s;->i:I

    const/16 v0, 0x13

    invoke-static {p1, v0}, Law/b;->h(Law/e;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/layer/s;->j:Z

    const/16 v0, 0x10

    invoke-static {p1, v0}, Law/b;->h(Law/e;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/layer/s;->k:Z

    const/16 v0, 0x14

    invoke-static {p1, v0}, Law/b;->h(Law/e;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/layer/s;->l:Z

    invoke-virtual {p1, v4}, Law/e;->i(I)I

    move-result v0

    new-array v1, v0, [Law/e;

    iput-object v1, p0, Lcom/google/googlenav/layer/s;->f:[Law/e;

    move v1, v5

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/google/googlenav/layer/s;->f:[Law/e;

    invoke-virtual {p1, v4, v1}, Law/e;->e(II)Law/e;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->w()Lk/i;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {p1, v1}, Law/e;->i(I)I

    move-result v1

    if-nez v1, :cond_1

    iput-byte v4, p0, Lcom/google/googlenav/layer/s;->g:B

    :goto_1
    const/16 v0, 0x15

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Law/b;->c(Law/e;II)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/layer/s;->q:I

    const/4 v0, 0x6

    invoke-static {p1, v0}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v1, 0x3d

    invoke-static {v0, v1, v6}, Law/b;->c(Law/e;II)I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/layer/s;->m:I

    const/16 v1, 0x3e

    invoke-static {v0, v1, v7}, Law/b;->c(Law/e;II)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/layer/s;->n:I

    :goto_2
    const/16 v0, 0x8

    invoke-static {p1, v0}, Law/b;->g(Law/e;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/layer/s;->r:J

    const/16 v0, 0x9

    invoke-static {p1, v0}, Law/b;->g(Law/e;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/layer/s;->s:J

    invoke-direct {p0, p1}, Lcom/google/googlenav/layer/s;->a(Law/e;)V

    return-void

    :cond_1
    new-array v2, v1, [Lcom/google/googlenav/aG;

    iput-object v2, p0, Lcom/google/googlenav/layer/s;->o:[Lcom/google/googlenav/aG;

    new-array v2, v1, [[B

    iput-object v2, p0, Lcom/google/googlenav/layer/s;->p:[[B

    move v2, v5

    :goto_3
    if-ge v2, v1, :cond_2

    const/16 v3, 0x11

    invoke-virtual {p1, v3, v2}, Law/e;->b(II)[B

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/layer/s;->p:[[B

    aput-object v3, v4, v2

    array-length v4, v3

    invoke-interface {v0, v3, v5, v4}, Lk/i;->a([BII)Lk/l;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/layer/s;->o:[Lcom/google/googlenav/aG;

    invoke-static {v3}, Lcom/google/googlenav/aG;->a(Lk/l;)Lcom/google/googlenav/aG;

    move-result-object v3

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    const/16 v0, 0x14

    iput-byte v0, p0, Lcom/google/googlenav/layer/s;->g:B

    goto :goto_1

    :cond_3
    iput v6, p0, Lcom/google/googlenav/layer/s;->m:I

    iput v7, p0, Lcom/google/googlenav/layer/s;->n:I

    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    const-wide/16 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/layer/s;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/layer/s;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/layer/s;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/layer/s;->e:Ljava/lang/String;

    iput v1, p0, Lcom/google/googlenav/layer/s;->h:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/googlenav/layer/s;->i:I

    iput-boolean v2, p0, Lcom/google/googlenav/layer/s;->j:Z

    iput-boolean v1, p0, Lcom/google/googlenav/layer/s;->k:Z

    iput-boolean v1, p0, Lcom/google/googlenav/layer/s;->l:Z

    new-array v0, v1, [Law/e;

    iput-object v0, p0, Lcom/google/googlenav/layer/s;->f:[Law/e;

    const/16 v0, 0x14

    iput-byte v0, p0, Lcom/google/googlenav/layer/s;->g:B

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/layer/s;->q:I

    iput v2, p0, Lcom/google/googlenav/layer/s;->m:I

    const/16 v0, 0x16

    iput v0, p0, Lcom/google/googlenav/layer/s;->n:I

    iput-wide v3, p0, Lcom/google/googlenav/layer/s;->r:J

    iput-wide v3, p0, Lcom/google/googlenav/layer/s;->s:J

    return-void
.end method

.method private a(Law/e;)V
    .locals 4

    iget-object v0, p0, Lcom/google/googlenav/layer/s;->b:Ljava/lang/String;

    const-string v1, "msid:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    invoke-virtual {p1, v0}, Law/e;->f(I)Law/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/layer/s;->t:Law/e;

    new-instance v0, Law/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    iput-object v0, p0, Lcom/google/googlenav/layer/s;->u:Law/e;

    iget-object v0, p0, Lcom/google/googlenav/layer/s;->u:Law/e;

    const/16 v1, 0x47

    iget-object v2, p0, Lcom/google/googlenav/layer/s;->t:Law/e;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/layer/s;->u:Law/e;

    const/16 v1, 0x48

    iget-object v2, p0, Lcom/google/googlenav/layer/s;->t:Law/e;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/layer/s;->u:Law/e;

    const/16 v1, 0x49

    iget-object v2, p0, Lcom/google/googlenav/layer/s;->t:Law/e;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/layer/s;->u:Law/e;

    const/16 v1, 0x73

    iget-object v2, p0, Lcom/google/googlenav/layer/s;->t:Law/e;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/layer/s;->u:Law/e;

    const/16 v1, 0x74

    iget-object v2, p0, Lcom/google/googlenav/layer/s;->t:Law/e;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/googlenav/aG;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/layer/s;->o:[Lcom/google/googlenav/aG;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/layer/s;->o:[Lcom/google/googlenav/aG;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/layer/s;->o:[Lcom/google/googlenav/aG;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public a([Law/e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/layer/s;->f:[Law/e;

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/layer/s;->b:Ljava/lang/String;

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/layer/s;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)Z
    .locals 1

    iget v0, p0, Lcom/google/googlenav/layer/s;->m:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/googlenav/layer/s;->n:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/layer/s;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/layer/s;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()[Law/e;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/layer/s;->f:[Law/e;

    return-object v0
.end method

.method public f()B
    .locals 1

    iget-byte v0, p0, Lcom/google/googlenav/layer/s;->g:B

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/layer/s;->q:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/layer/s;->h:I

    return v0
.end method

.method public i()J
    .locals 2

    iget-wide v0, p0, Lcom/google/googlenav/layer/s;->r:J

    return-wide v0
.end method

.method public j()J
    .locals 2

    iget-wide v0, p0, Lcom/google/googlenav/layer/s;->s:J

    return-wide v0
.end method

.method public k()Z
    .locals 1

    iget v0, p0, Lcom/google/googlenav/layer/s;->i:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/layer/s;->l:Z

    return v0
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/layer/s;->j:Z

    return v0
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/layer/s;->k:Z

    return v0
.end method

.method public o()Law/e;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Law/e;

    sget-object v1, Ls/t;->a:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlenav/layer/s;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/google/googlenav/layer/s;->c:Ljava/lang/String;

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlenav/layer/s;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/google/googlenav/layer/s;->d:Ljava/lang/String;

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlenav/layer/s;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    :cond_1
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/googlenav/layer/s;->i:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/googlenav/layer/s;->h:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    new-instance v1, Law/e;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    const/16 v2, 0x3d

    iget v3, p0, Lcom/google/googlenav/layer/s;->m:I

    invoke-virtual {v1, v2, v3}, Law/e;->h(II)V

    const/16 v2, 0x3e

    iget v3, p0, Lcom/google/googlenav/layer/s;->n:I

    invoke-virtual {v1, v2, v3}, Law/e;->h(II)V

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Law/e;->b(ILaw/e;)V

    const/16 v1, 0x8

    iget-wide v2, p0, Lcom/google/googlenav/layer/s;->r:J

    invoke-virtual {v0, v1, v2, v3}, Law/e;->b(IJ)V

    const/16 v1, 0x9

    iget-wide v2, p0, Lcom/google/googlenav/layer/s;->s:J

    invoke-virtual {v0, v1, v2, v3}, Law/e;->b(IJ)V

    const/16 v1, 0x10

    iget-boolean v2, p0, Lcom/google/googlenav/layer/s;->k:Z

    invoke-virtual {v0, v1, v2}, Law/e;->b(IZ)V

    const/16 v1, 0x13

    iget-boolean v2, p0, Lcom/google/googlenav/layer/s;->j:Z

    invoke-virtual {v0, v1, v2}, Law/e;->b(IZ)V

    const/16 v1, 0x14

    iget-boolean v2, p0, Lcom/google/googlenav/layer/s;->l:Z

    invoke-virtual {v0, v1, v2}, Law/e;->b(IZ)V

    iget-object v1, p0, Lcom/google/googlenav/layer/s;->p:[[B

    if-eqz v1, :cond_2

    move v1, v4

    :goto_0
    iget-object v2, p0, Lcom/google/googlenav/layer/s;->p:[[B

    array-length v2, v2

    if-ge v1, v2, :cond_2

    const/16 v2, 0x11

    iget-object v3, p0, Lcom/google/googlenav/layer/s;->p:[[B

    aget-object v3, v3, v1

    invoke-virtual {v0, v2, v3}, Law/e;->a(I[B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 v1, 0x15

    iget v2, p0, Lcom/google/googlenav/layer/s;->q:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    iget-object v1, p0, Lcom/google/googlenav/layer/s;->f:[Law/e;

    if-eqz v1, :cond_3

    move v1, v4

    :goto_1
    iget-object v2, p0, Lcom/google/googlenav/layer/s;->f:[Law/e;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    const/16 v2, 0x12

    iget-object v3, p0, Lcom/google/googlenav/layer/s;->f:[Law/e;

    aget-object v3, v3, v1

    invoke-virtual {v0, v2, v3}, Law/e;->a(ILaw/e;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/16 v1, 0x16

    iget-object v2, p0, Lcom/google/googlenav/layer/s;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/google/googlenav/layer/s;->b:Ljava/lang/String;

    const-string v2, "msid:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x17

    iget-object v2, p0, Lcom/google/googlenav/layer/s;->t:Law/e;

    invoke-virtual {v0, v1, v2}, Law/e;->a(ILaw/e;)V

    :cond_4
    return-object v0
.end method

.method public p()Law/e;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/layer/s;->u:Law/e;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/layer/s;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/layer/s;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/layer/s;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

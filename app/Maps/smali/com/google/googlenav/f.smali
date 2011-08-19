.class public Lcom/google/googlenav/f;
.super Lak/m;


# instance fields
.field private a:Lcom/google/googlenav/P;

.field private final b:Lcom/google/googlenav/Z;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private final g:Law/e;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/Z;ILjava/lang/String;I[B)V
    .locals 3

    invoke-direct {p0}, Lak/m;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/f;->f:Z

    new-instance v0, Law/e;

    sget-object v1, Ls/r;->a:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    iput-object v0, p0, Lcom/google/googlenav/f;->g:Law/e;

    iput-object p1, p0, Lcom/google/googlenav/f;->b:Lcom/google/googlenav/Z;

    iput p4, p0, Lcom/google/googlenav/f;->c:I

    iput-object p3, p0, Lcom/google/googlenav/f;->d:Ljava/lang/String;

    const/16 v0, 0x23

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/f;->e:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/googlenav/f;->g:Law/e;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Law/e;->b(ILjava/lang/String;)V

    return-void

    :cond_0
    move-object v0, p3

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/googlenav/P;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v4, -0x1

    move-object v0, p0

    move-object v3, p1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/f;-><init>(Lcom/google/googlenav/Z;ILjava/lang/String;I[B)V

    iput-object p2, p0, Lcom/google/googlenav/f;->a:Lcom/google/googlenav/P;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLcom/google/googlenav/P;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/google/googlenav/f;-><init>(Ljava/lang/String;Lcom/google/googlenav/P;)V

    iput-boolean p2, p0, Lcom/google/googlenav/f;->f:Z

    return-void
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/imageservice/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, LA/d;->a([BZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?fmt=JPEG&maxW="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x27

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/f;->g:Law/e;

    invoke-virtual {v0}, Law/e;->f()[B

    move-result-object v0

    array-length v1, v0

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x1

    sget-object v0, Ls/r;->b:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/googlenav/f;->I_()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v11

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v9, v11}, Law/e;->i(I)I

    move-result v10

    move v1, v12

    :goto_1
    if-ge v1, v10, :cond_5

    invoke-virtual {v9, v11, v1}, Law/e;->e(II)Law/e;

    move-result-object v2

    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x6

    invoke-virtual {v2, v0}, Law/e;->c(I)[B

    move-result-object v4

    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Law/e;->d(I)I

    move-result v0

    const/16 v5, 0xc8

    if-eq v0, v5, :cond_3

    move v5, v11

    :goto_2
    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/f;->a:Lcom/google/googlenav/P;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/f;->a:Lcom/google/googlenav/P;

    iget-object v6, p0, Lcom/google/googlenav/f;->d:Ljava/lang/String;

    if-eqz v5, :cond_4

    const/4 v7, 0x0

    :goto_3
    invoke-interface {v0, v6, v7}, Lcom/google/googlenav/P;->a(Ljava/lang/String;[B)V

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/f;->b:Lcom/google/googlenav/Z;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/googlenav/f;->b:Lcom/google/googlenav/Z;

    iget v6, p0, Lcom/google/googlenav/f;->c:I

    iget-object v7, p0, Lcom/google/googlenav/f;->e:Ljava/lang/String;

    const/4 v8, 0x7

    invoke-virtual {v2, v8}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface/range {v0 .. v8}, Lcom/google/googlenav/Z;->a(ILaw/e;Ljava/lang/String;[BZILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v5, v12

    goto :goto_2

    :cond_4
    move-object v7, v4

    goto :goto_3

    :cond_5
    move v0, v11

    goto :goto_0
.end method

.method public e_()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/f;->f:Z

    return v0
.end method

.method public h_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.class Lcom/google/googlenav/F;
.super Lak/m;


# instance fields
.field private a:I

.field private b:J

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Lcom/google/googlenav/bz;

.field private h:Z


# direct methods
.method private constructor <init>(Lcom/google/googlenav/c;ILcom/google/googlenav/bz;)V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Lak/m;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/googlenav/F;->b:J

    iput v2, p0, Lcom/google/googlenav/F;->d:I

    iput v2, p0, Lcom/google/googlenav/F;->f:I

    invoke-virtual {p1}, Lcom/google/googlenav/c;->bg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/F;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/googlenav/c;->I()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/F;->b:J

    iput p2, p0, Lcom/google/googlenav/F;->a:I

    iput-object p3, p0, Lcom/google/googlenav/F;->g:Lcom/google/googlenav/bz;

    return-void
.end method

.method public static a(Lcom/google/googlenav/c;ILcom/google/googlenav/bz;)Lcom/google/googlenav/F;
    .locals 2

    new-instance v0, Lcom/google/googlenav/F;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, p2}, Lcom/google/googlenav/F;-><init>(Lcom/google/googlenav/c;ILcom/google/googlenav/bz;)V

    iput p1, v0, Lcom/google/googlenav/F;->f:I

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/c;Lcom/google/googlenav/bz;)Lcom/google/googlenav/F;
    .locals 2

    new-instance v0, Lcom/google/googlenav/F;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/google/googlenav/F;-><init>(Lcom/google/googlenav/c;ILcom/google/googlenav/bz;)V

    return-object v0
.end method

.method public static b(Lcom/google/googlenav/c;ILcom/google/googlenav/bz;)Lcom/google/googlenav/F;
    .locals 2

    new-instance v0, Lcom/google/googlenav/F;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p2}, Lcom/google/googlenav/F;-><init>(Lcom/google/googlenav/c;ILcom/google/googlenav/bz;)V

    iput p1, v0, Lcom/google/googlenav/F;->d:I

    return-object v0
.end method

.method public static b(Lcom/google/googlenav/c;Lcom/google/googlenav/bz;)Lcom/google/googlenav/F;
    .locals 2

    new-instance v0, Lcom/google/googlenav/F;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1, p1}, Lcom/google/googlenav/F;-><init>(Lcom/google/googlenav/c;ILcom/google/googlenav/bz;)V

    return-object v0
.end method

.method public static c(Lcom/google/googlenav/c;Lcom/google/googlenav/bz;)Lcom/google/googlenav/F;
    .locals 2

    new-instance v0, Lcom/google/googlenav/F;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Lcom/google/googlenav/F;-><init>(Lcom/google/googlenav/c;ILcom/google/googlenav/bz;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x4e

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 6

    const/4 v5, -0x1

    new-instance v0, Law/e;

    sget-object v1, Ls/w;->a:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlenav/F;->a:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    iget-wide v1, p0, Lcom/google/googlenav/F;->b:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/googlenav/F;->b:J

    invoke-virtual {v0, v1, v2, v3}, Law/e;->b(IJ)V

    :cond_0
    iget-object v1, p0, Lcom/google/googlenav/F;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlenav/F;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    :cond_1
    iget v1, p0, Lcom/google/googlenav/F;->d:I

    if-eq v1, v5, :cond_2

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/googlenav/F;->d:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    :cond_2
    iget-object v1, p0, Lcom/google/googlenav/F;->e:Ljava/lang/String;

    if-eqz v1, :cond_3

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/googlenav/F;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    :cond_3
    iget v1, p0, Lcom/google/googlenav/F;->f:I

    if-eq v1, v5, :cond_4

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/googlenav/F;->f:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    :cond_4
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x1

    sget-object v0, Ls/w;->b:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    invoke-static {v0, v3, v4}, Law/b;->c(Law/e;II)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-static {v0, v3, v4}, Law/b;->c(Law/e;II)I

    move-result v0

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/login/j;->a(I)V

    :goto_0
    return v3

    :pswitch_0
    iput-boolean v3, p0, Lcom/google/googlenav/F;->h:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public g_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public i_()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/F;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/F;->g:Lcom/google/googlenav/bz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/F;->g:Lcom/google/googlenav/bz;

    invoke-interface {v0}, Lcom/google/googlenav/bz;->a()V

    :cond_0
    return-void
.end method

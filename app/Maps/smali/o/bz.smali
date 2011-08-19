.class public Lo/bz;
.super Lak/m;


# instance fields
.field private final a:[B

.field private final b:LaU/a;

.field private final c:Lo/bO;

.field private d:Z


# direct methods
.method public constructor <init>([BLaU/a;Lo/bO;)V
    .locals 0

    invoke-direct {p0}, Lak/m;-><init>()V

    iput-object p1, p0, Lo/bz;->a:[B

    iput-object p2, p0, Lo/bz;->b:LaU/a;

    iput-object p3, p0, Lo/bz;->c:Lo/bO;

    return-void
.end method

.method static synthetic a(Lo/bz;)[B
    .locals 1

    iget-object v0, p0, Lo/bz;->a:[B

    return-object v0
.end method

.method static synthetic b(Lo/bz;)Lo/bO;
    .locals 1

    iget-object v0, p0, Lo/bz;->c:Lo/bO;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x26

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Law/e;

    sget-object v1, Ls/N;->i:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    iget-object v1, p0, Lo/bz;->a:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/bz;->a:[B

    array-length v1, v1

    if-lez v1, :cond_0

    new-instance v1, Law/e;

    sget-object v2, Ls/N;->h:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    iget-object v2, p0, Lo/bz;->a:[B

    invoke-virtual {v1, v3, v2}, Law/e;->b(I[B)V

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Law/e;->b(ILaw/e;)V

    :cond_0
    iget-boolean v1, p0, Lo/bz;->d:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3}, Law/e;->b(IZ)V

    :cond_1
    invoke-virtual {v0}, Law/e;->d()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->b(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 5

    const/4 v3, -0x1

    const/4 v4, 0x1

    sget-object v0, Ls/N;->j:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    invoke-static {v0, v4, v3}, Law/b;->c(Law/e;II)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-static {v0, v4, v3}, Law/b;->c(Law/e;II)I

    move-result v0

    packed-switch v1, :pswitch_data_0

    if-nez v0, :cond_0

    iget-object v2, p0, Lo/bz;->b:LaU/a;

    new-instance v3, Lo/aZ;

    invoke-direct {v3, p0, v1}, Lo/aZ;-><init>(Lo/bz;I)V

    invoke-interface {v2, v3}, LaU/a;->a(Ljava/lang/Runnable;)V

    :cond_0
    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/login/j;->a(I)V

    :cond_1
    :goto_0
    return v4

    :pswitch_0
    iget-object v0, p0, Lo/bz;->b:LaU/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/bz;->b:LaU/a;

    new-instance v1, Lo/aY;

    invoke-direct {v1, p0}, Lo/aY;-><init>(Lo/bz;)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

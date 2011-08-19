.class public Lo/an;
.super Lak/m;


# instance fields
.field private a:Lf/h;

.field private b:Law/e;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:J

.field private i:I

.field private j:Z

.field private k:J

.field private l:F

.field private m:F

.field private n:D

.field private o:Law/e;

.field private p:Lo/r;

.field private q:LaU/a;

.field private r:Lo/cb;

.field private s:Law/e;


# direct methods
.method public constructor <init>(Lf/h;Ljava/lang/String;ILaw/e;ZZZJILo/r;LaU/a;Lo/cb;ZJ)V
    .locals 5

    invoke-direct {p0}, Lak/m;-><init>()V

    const/high16 v3, -0x4080

    iput v3, p0, Lo/an;->l:F

    const/high16 v3, -0x4080

    iput v3, p0, Lo/an;->m:F

    const-wide/high16 v3, -0x4010

    iput-wide v3, p0, Lo/an;->n:D

    iput-object p1, p0, Lo/an;->a:Lf/h;

    iput-object p2, p0, Lo/an;->c:Ljava/lang/String;

    iput p3, p0, Lo/an;->d:I

    iput-object p4, p0, Lo/an;->b:Law/e;

    iput-boolean p5, p0, Lo/an;->e:Z

    iput-boolean p6, p0, Lo/an;->f:Z

    iput-wide p8, p0, Lo/an;->h:J

    iput p10, p0, Lo/an;->i:I

    iput-boolean p7, p0, Lo/an;->g:Z

    move-object/from16 v0, p11

    move-object v1, p0

    iput-object v0, v1, Lo/an;->p:Lo/r;

    move-object/from16 v0, p12

    move-object v1, p0

    iput-object v0, v1, Lo/an;->q:LaU/a;

    move-object/from16 v0, p13

    move-object v1, p0

    iput-object v0, v1, Lo/an;->r:Lo/cb;

    move/from16 v0, p14

    move-object v1, p0

    iput-boolean v0, v1, Lo/an;->j:Z

    move-wide/from16 v0, p15

    move-object v2, p0

    iput-wide v0, v2, Lo/an;->k:J

    return-void
.end method

.method private c(Law/e;)V
    .locals 3

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/an;->e:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lo/an;->g:Z

    if-nez v0, :cond_0

    new-instance v0, Lo/R;

    iget-object v1, p0, Lo/an;->q:LaU/a;

    iget-object v2, p0, Lo/an;->p:Lo/r;

    invoke-direct {v0, v1, v2}, Lo/R;-><init>(LaU/a;Lo/r;)V

    invoke-virtual {v0, p1}, Lo/R;->a(Law/e;)V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 6

    const/high16 v5, -0x4080

    const/4 v3, 0x2

    const/4 v4, 0x1

    new-instance v0, Law/e;

    sget-object v1, Ls/N;->d:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    iput-object v0, p0, Lo/an;->s:Law/e;

    new-instance v0, Law/e;

    sget-object v1, Ls/P;->d:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    new-instance v1, Law/e;

    sget-object v2, Ls/P;->a:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    iget-object v2, p0, Lo/an;->a:Lf/h;

    invoke-virtual {v2}, Lf/h;->b()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Law/e;->h(II)V

    iget-object v2, p0, Lo/an;->a:Lf/h;

    invoke-virtual {v2}, Lf/h;->d()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Law/e;->h(II)V

    invoke-virtual {v0, v4, v4}, Law/e;->h(II)V

    invoke-virtual {v0, v3, v1}, Law/e;->b(ILaw/e;)V

    iget-object v1, p0, Lo/an;->s:Law/e;

    invoke-virtual {v1, v4, v0}, Law/e;->b(ILaw/e;)V

    iget v0, p0, Lo/an;->d:I

    const v1, 0x1869f

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lo/an;->s:Law/e;

    iget v1, p0, Lo/an;->d:I

    invoke-virtual {v0, v3, v1}, Law/e;->h(II)V

    :cond_0
    iget-object v0, p0, Lo/an;->b:Law/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/an;->s:Law/e;

    const/16 v1, 0x9

    iget-object v2, p0, Lo/an;->b:Law/e;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILaw/e;)V

    :cond_1
    iget-object v0, p0, Lo/an;->s:Law/e;

    const/4 v1, 0x3

    iget-object v2, p0, Lo/an;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    iget-object v0, p0, Lo/an;->s:Law/e;

    const/16 v1, 0xa

    iget-boolean v2, p0, Lo/an;->j:Z

    invoke-virtual {v0, v1, v2}, Law/e;->b(IZ)V

    iget-object v0, p0, Lo/an;->s:Law/e;

    const/16 v1, 0xb

    iget-wide v2, p0, Lo/an;->k:J

    invoke-virtual {v0, v1, v2, v3}, Law/e;->b(IJ)V

    iget-object v0, p0, Lo/an;->s:Law/e;

    const/4 v1, 0x4

    iget-boolean v2, p0, Lo/an;->e:Z

    invoke-virtual {v0, v1, v2}, Law/e;->b(IZ)V

    iget-object v0, p0, Lo/an;->s:Law/e;

    const/16 v1, 0x8

    iget-boolean v2, p0, Lo/an;->f:Z

    if-nez v2, :cond_7

    move v2, v4

    :goto_0
    invoke-virtual {v0, v1, v2}, Law/e;->b(IZ)V

    iget-wide v0, p0, Lo/an;->h:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/an;->s:Law/e;

    const/4 v1, 0x5

    iget-wide v2, p0, Lo/an;->h:J

    invoke-virtual {v0, v1, v2, v3}, Law/e;->b(IJ)V

    :cond_2
    iget-object v0, p0, Lo/an;->s:Law/e;

    const/4 v1, 0x7

    iget v2, p0, Lo/an;->i:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    iget-object v0, p0, Lo/an;->s:Law/e;

    const/16 v1, 0xd

    iget-object v2, p0, Lo/an;->a:Lf/h;

    invoke-virtual {v2}, Lf/h;->c()I

    move-result v2

    iget-object v3, p0, Lo/an;->a:Lf/h;

    invoke-virtual {v3}, Lf/h;->e()I

    move-result v3

    invoke-static {v2, v3}, LH/a;->a(II)Law/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILaw/e;)V

    iget v0, p0, Lo/an;->l:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/an;->s:Law/e;

    const/16 v1, 0xe

    iget v2, p0, Lo/an;->l:F

    invoke-virtual {v0, v1, v2}, Law/e;->a(IF)V

    :cond_3
    iget v0, p0, Lo/an;->m:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_4

    iget-object v0, p0, Lo/an;->s:Law/e;

    const/16 v1, 0xf

    iget v2, p0, Lo/an;->m:F

    invoke-virtual {v0, v1, v2}, Law/e;->a(IF)V

    :cond_4
    iget-wide v0, p0, Lo/an;->n:D

    const-wide/high16 v2, -0x4010

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_5

    iget-object v0, p0, Lo/an;->s:Law/e;

    const/16 v1, 0x10

    iget-wide v2, p0, Lo/an;->n:D

    invoke-virtual {v0, v1, v2, v3}, Law/e;->a(ID)V

    :cond_5
    iget-object v0, p0, Lo/an;->o:Law/e;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lo/an;->s:Law/e;

    const/16 v1, 0x11

    iget-object v2, p0, Lo/an;->o:Law/e;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILaw/e;)V

    :cond_6
    return-void

    :cond_7
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public a(D)V
    .locals 0

    iput-wide p1, p0, Lo/an;->n:D

    return-void
.end method

.method public a(F)V
    .locals 0

    iput p1, p0, Lo/an;->l:F

    return-void
.end method

.method public a(Law/e;)V
    .locals 0

    iput-object p1, p0, Lo/an;->o:Law/e;

    return-void
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 1

    iget-object v0, p0, Lo/an;->s:Law/e;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lo/an;->l()V

    :cond_0
    iget-object v0, p0, Lo/an;->s:Law/e;

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 5

    const/4 v3, -0x1

    const/4 v4, 0x1

    sget-object v0, Ls/N;->e:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    invoke-static {v0, v4, v3}, Law/b;->c(Law/e;II)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Law/e;->f(I)Law/e;

    move-result-object v2

    invoke-static {v2, v4, v3}, Law/b;->c(Law/e;II)I

    move-result v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/googlenav/login/j;->a(I)V

    :goto_1
    if-nez v1, :cond_1

    move v1, v4

    :goto_2
    iget-object v2, p0, Lo/an;->r:Lo/cb;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lo/an;->r:Lo/cb;

    iget-object v3, p0, Lo/an;->s:Law/e;

    invoke-interface {v2, v0, v1, v3}, Lo/cb;->a(Law/e;ZLaw/e;)V

    :cond_0
    return v4

    :pswitch_0
    invoke-direct {p0, v0}, Lo/an;->c(Law/e;)V

    invoke-virtual {p0, v0}, Lo/an;->b(Law/e;)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, v0}, Lo/an;->c(Law/e;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b(F)V
    .locals 0

    iput p1, p0, Lo/an;->m:F

    return-void
.end method

.method public b(Law/e;)V
    .locals 0

    invoke-static {p1}, Lo/aX;->a(Law/e;)V

    return-void
.end method

.method public e_()Z
    .locals 1

    iget-boolean v0, p0, Lo/an;->f:Z

    return v0
.end method

.method public f_()Z
    .locals 1

    iget-boolean v0, p0, Lo/an;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m_()Z
    .locals 5

    const/4 v4, 0x0

    iget-wide v0, p0, Lo/an;->h:J

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lo/an;->aE()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_0
.end method

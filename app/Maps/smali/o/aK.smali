.class public Lo/aK;
.super Lak/m;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Lo/v;

.field private g:Z

.field private h:Law/e;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/v;)V
    .locals 0

    invoke-direct {p0}, Lak/m;-><init>()V

    iput p1, p0, Lo/aK;->a:I

    iput p2, p0, Lo/aK;->b:I

    iput-object p3, p0, Lo/aK;->c:Ljava/lang/String;

    iput-object p4, p0, Lo/aK;->d:Ljava/lang/String;

    iput-object p5, p0, Lo/aK;->e:Ljava/lang/String;

    iput-object p6, p0, Lo/aK;->f:Lo/v;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x74

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Law/e;

    sget-object v1, Ls/E;->c:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    new-instance v1, Law/e;

    sget-object v2, LaG/b;->a:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    iget v2, p0, Lo/aK;->a:I

    mul-int/lit8 v2, v2, 0xa

    iget v3, p0, Lo/aK;->b:I

    mul-int/lit8 v3, v3, 0xa

    invoke-virtual {v1, v4, v2}, Law/e;->h(II)V

    invoke-virtual {v1, v5, v3}, Law/e;->h(II)V

    invoke-virtual {v0, v4, v1}, Law/e;->b(ILaw/e;)V

    iget-object v1, p0, Lo/aK;->c:Ljava/lang/String;

    invoke-virtual {v0, v5, v1}, Law/e;->b(ILjava/lang/String;)V

    iget-object v1, p0, Lo/aK;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    iget-object v2, p0, Lo/aK;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lo/aK;->e:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    iget-object v2, p0, Lo/aK;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    :cond_1
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Ls/E;->d:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v3, v1}, Law/b;->c(Law/e;II)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Law/e;->f(I)Law/e;

    move-result-object v0

    iput-object v0, p0, Lo/aK;->h:Law/e;

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v3

    :pswitch_0
    iput-boolean v3, p0, Lo/aK;->g:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public i_()V
    .locals 3

    iget-object v0, p0, Lo/aK;->f:Lo/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/aK;->f:Lo/v;

    iget-boolean v1, p0, Lo/aK;->g:Z

    iget-object v2, p0, Lo/aK;->h:Law/e;

    invoke-interface {v0, v1, v2}, Lo/v;->a(ZLaw/e;)V

    :cond_0
    return-void
.end method

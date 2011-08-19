.class public LaA/f;
.super Lak/m;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static b:I

.field private static c:I


# instance fields
.field a:Z

.field private final d:I

.field private final e:LaA/d;

.field private final f:Law/e;

.field private g:Law/e;

.field private h:Z

.field private final i:J

.field private j:J

.field private k:J

.field private l:J

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, LaA/f;->b:I

    return-void
.end method

.method public constructor <init>(LaA/d;Lf/h;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Lak/m;-><init>()V

    iput-boolean v3, p0, LaA/f;->h:Z

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    iput-wide v0, p0, LaA/f;->i:J

    iput-object p1, p0, LaA/f;->e:LaA/d;

    sget v0, LaA/f;->c:I

    add-int/lit8 v1, v0, 0x1

    sput v1, LaA/f;->c:I

    iput v0, p0, LaA/f;->d:I

    new-instance v0, Law/e;

    sget-object v1, Ls/c;->g:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    iput-object v0, p0, LaA/f;->f:Law/e;

    if-eqz p2, :cond_0

    iget-object v0, p0, LaA/f;->f:Law/e;

    const/4 v1, 0x2

    invoke-virtual {p2}, Lf/h;->f()Law/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILaw/e;)V

    iget-object v0, p0, LaA/f;->f:Law/e;

    const/16 v1, 0x33

    invoke-virtual {v0, v1, v3}, Law/e;->b(IZ)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private s()V
    .locals 10

    const/16 v6, 0x16

    const/16 v1, 0x11

    const/4 v2, 0x0

    iget-object v0, p0, LaA/f;->g:Law/e;

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LaA/f;->g:Law/e;

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-virtual {v0, v6}, Law/e;->i(I)I

    move-result v1

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v6, v2}, Law/e;->e(II)Law/e;

    move-result-object v4

    const/16 v5, 0x19

    invoke-virtual {v4, v5}, Law/e;->c(I)[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v5, v3

    move v4, v1

    :goto_1
    if-nez v4, :cond_1

    :goto_2
    return-void

    :cond_1
    const-string v0, "sv"

    iget-wide v1, p0, LaA/f;->j:J

    iget-wide v6, p0, LaA/f;->i:J

    sub-long/2addr v1, v6

    long-to-int v1, v1

    iget-wide v2, p0, LaA/f;->k:J

    iget-wide v6, p0, LaA/f;->i:J

    sub-long/2addr v2, v6

    long-to-int v2, v2

    iget-wide v6, p0, LaA/f;->l:J

    iget-wide v8, p0, LaA/f;->i:J

    sub-long/2addr v6, v8

    long-to-int v3, v6

    invoke-static/range {v0 .. v5}, Lcom/google/googlenav/bO;->a(Ljava/lang/String;IIIII)V

    goto :goto_2

    :cond_2
    move v5, v2

    move v4, v2

    goto :goto_1
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method public a(II)V
    .locals 3

    const/16 v2, 0x35

    iget-object v0, p0, LaA/f;->f:Law/e;

    invoke-virtual {v0, v2}, Law/e;->a(I)Law/e;

    move-result-object v0

    const/16 v1, 0x36

    invoke-virtual {v0, v1, p1}, Law/e;->h(II)V

    const/16 v1, 0x37

    invoke-virtual {v0, v1, p2}, Law/e;->h(II)V

    iget-object v1, p0, LaA/f;->f:Law/e;

    invoke-virtual {v1, v2, v0}, Law/e;->b(ILaw/e;)V

    return-void
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 2

    iget-object v0, p0, LaA/f;->f:Law/e;

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    iput-wide v0, p0, LaA/f;->j:J

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, LaA/f;->h:Z

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 5

    const/4 v4, 0x1

    iget-boolean v0, p0, LaA/f;->a:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataInput;->skipBytes(I)I

    :goto_0
    return v4

    :cond_0
    :try_start_0
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    iput-wide v0, p0, LaA/f;->k:J

    sget-object v0, Ls/c;->m:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    iput-object v0, p0, LaA/f;->g:Law/e;

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    iput-wide v0, p0, LaA/f;->l:J

    invoke-direct {p0}, LaA/f;->s()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, LaA/f;->f:Law/e;

    const/16 v2, 0x21

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Law/e;->g(II)V

    iput-boolean v4, p0, LaA/f;->a:Z

    throw v0
.end method

.method public e_()Z
    .locals 1

    iget-boolean v0, p0, LaA/f;->h:Z

    return v0
.end method

.method public i_()V
    .locals 1

    iget-object v0, p0, LaA/f;->e:LaA/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, LaA/f;->e:LaA/d;

    invoke-interface {v0, p0}, LaA/d;->a(LaA/f;)V

    :cond_0
    return-void
.end method

.method public l()Z
    .locals 2

    iget-object v0, p0, LaA/f;->g:Law/e;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v0

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

.method public m()Z
    .locals 2

    iget-object v0, p0, LaA/f;->g:Law/e;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v0

    return v0
.end method

.method public n()Lk/l;
    .locals 4

    iget-object v0, p0, LaA/f;->g:Law/e;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, LaA/f;->o()[B

    move-result-object v0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->w()Lk/i;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v0

    invoke-interface {v1, v0, v2, v3}, Lk/i;->a([BII)Lk/l;

    move-result-object v0

    goto :goto_0
.end method

.method public o()[B
    .locals 2

    iget-object v0, p0, LaA/f;->g:Law/e;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Law/e;->c(I)[B

    move-result-object v0

    return-object v0
.end method

.method public p()V
    .locals 3

    sget v0, LaA/f;->b:I

    if-lez v0, :cond_0

    iget-object v0, p0, LaA/f;->f:Law/e;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LaA/f;->r()LT/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LT/a;->a(I)V

    sget v1, LaA/f;->b:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, LT/a;->a(J)V

    invoke-virtual {v0}, LT/a;->b()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, LaA/f;->q()V

    goto :goto_0
.end method

.method q()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LaA/f;->m:Z

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lak/h;->c(Lak/d;)V

    return-void
.end method

.method r()LT/a;
    .locals 2

    new-instance v0, LT/a;

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v1

    invoke-direct {v0, v1, p0}, LT/a;-><init>(LT/c;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public run()V
    .locals 0

    invoke-virtual {p0}, LaA/f;->q()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SVR["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LaA/f;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

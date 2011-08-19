.class public Lcom/google/googlenav/networkinitiated/b;
.super Lak/m;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/googlenav/networkinitiated/a;

.field private final c:I

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/google/googlenav/networkinitiated/a;)V
    .locals 0

    invoke-direct {p0}, Lak/m;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/networkinitiated/b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/googlenav/networkinitiated/b;->b:Lcom/google/googlenav/networkinitiated/a;

    iput p2, p0, Lcom/google/googlenav/networkinitiated/b;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x5b

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    new-instance v0, Law/e;

    sget-object v1, LaG/b;->m:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    iget-object v1, p0, Lcom/google/googlenav/networkinitiated/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Law/e;->b(ILjava/lang/String;)V

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/googlenav/networkinitiated/b;->c:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    new-instance v1, Law/e;

    sget-object v2, Ls/N;->K:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v1, v3, v0}, Law/e;->b(ILaw/e;)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 2

    const/4 v1, 0x1

    sget-object v0, Ls/N;->L:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Law/e;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/networkinitiated/b;->d:I

    return v1
.end method

.method public f_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i_()V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/b;->b:Lcom/google/googlenav/networkinitiated/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/b;->b:Lcom/google/googlenav/networkinitiated/a;

    iget v1, p0, Lcom/google/googlenav/networkinitiated/b;->d:I

    iget-object v2, p0, Lcom/google/googlenav/networkinitiated/b;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/networkinitiated/a;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

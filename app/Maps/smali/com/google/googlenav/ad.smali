.class public Lcom/google/googlenav/ad;
.super Lak/m;


# instance fields
.field private final a:Lcom/google/googlenav/bh;

.field private final b:Ljava/lang/String;

.field private c:Z

.field private d:Law/e;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/bh;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lak/m;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ad;->e:Z

    iput-object p1, p0, Lcom/google/googlenav/ad;->a:Lcom/google/googlenav/bh;

    iput-object p2, p0, Lcom/google/googlenav/ad;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/google/googlenav/bh;Ljava/lang/String;)Lcom/google/googlenav/ad;
    .locals 2

    new-instance v0, Lcom/google/googlenav/ad;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/ad;-><init>(Lcom/google/googlenav/bh;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/googlenav/ad;->c:Z

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://maps.google.com/?cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/googlenav/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "georestrict="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://maps.google.com/?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x50

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Law/e;

    sget-object v1, Ls/L;->a:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    iget-object v1, p0, Lcom/google/googlenav/ad;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Law/e;->b(ILjava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/googlenav/ad;->c:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Law/e;->b(IZ)V

    const/4 v1, 0x4

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    :goto_0
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/ad;->a()I

    move-result v1

    iget-boolean v2, p0, Lcom/google/googlenav/ad;->e:Z

    invoke-static {v1, v0, v2}, Lcom/google/googlenav/aW;->a(ILaw/e;Z)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/googlenav/ad;->e:Z

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-object v0, Ls/L;->b:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    invoke-static {v0, v2}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v0

    if-nez v0, :cond_0

    iput-object v3, p0, Lcom/google/googlenav/ad;->d:Law/e;

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-static {v0, v2, v2}, Law/b;->c(Law/e;II)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    iput-object v3, p0, Lcom/google/googlenav/ad;->d:Law/e;

    :goto_1
    move v0, v2

    goto :goto_0

    :pswitch_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ad;->d:Law/e;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public h_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public i_()V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/ad;->a:Lcom/google/googlenav/bh;

    iget-object v1, p0, Lcom/google/googlenav/ad;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/googlenav/ad;->d:Law/e;

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/bh;->a(Ljava/lang/String;Law/e;)V

    return-void
.end method

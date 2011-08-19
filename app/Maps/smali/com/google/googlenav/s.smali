.class public Lcom/google/googlenav/s;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lk/l;

.field private final b:Lcom/google/googlenav/ui/aS;

.field private final c:Ljava/lang/String;

.field private d:Z

.field private e:Law/e;


# direct methods
.method public constructor <init>(Law/e;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/s;->a:Lk/l;

    iput-object p1, p0, Lcom/google/googlenav/s;->e:Law/e;

    iput-object v0, p0, Lcom/google/googlenav/s;->c:Ljava/lang/String;

    new-instance v0, Lcom/google/googlenav/ui/aS;

    invoke-virtual {p1, v3}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/google/googlenav/ui/aV;->bM:I

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/aS;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/googlenav/s;->b:Lcom/google/googlenav/ui/aS;

    iput-boolean v3, p0, Lcom/google/googlenav/s;->d:Z

    return-void
.end method

.method public constructor <init>(Lk/l;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/s;->a:Lk/l;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/s;->b:Lcom/google/googlenav/ui/aS;

    iput-object p2, p0, Lcom/google/googlenav/s;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lk/l;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/s;->a:Lk/l;

    return-object v0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/googlenav/s;->d:Z

    return-void
.end method

.method public b()Lcom/google/googlenav/ui/aS;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/s;->b:Lcom/google/googlenav/ui/aS;

    return-object v0
.end method

.method public c()Law/e;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/s;->e:Law/e;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/s;->d:Z

    return v0
.end method

.method public e()Law/e;
    .locals 6

    const/4 v5, 0x1

    new-instance v0, Law/e;

    sget-object v1, Ls/l;->c:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    iget-object v1, p0, Lcom/google/googlenav/s;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/s;->a()Lk/l;

    move-result-object p0

    check-cast p0, LaB/f;

    invoke-virtual {p0}, LaB/f;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x55

    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Law/e;->b(I[B)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/googlenav/s;->c:Ljava/lang/String;

    invoke-static {v1}, LaY/a;->a(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/s;->c:Ljava/lang/String;

    const v3, 0x124f80

    invoke-static {v2, v1, v3}, LaY/a;->a(Ljava/lang/String;II)[B

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Law/e;->b(I[B)V

    goto :goto_0
.end method

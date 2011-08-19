.class public Lu/q;
.super Lak/m;


# instance fields
.field final synthetic a:Lu/m;

.field private b:Law/e;


# direct methods
.method public constructor <init>(Lu/m;)V
    .locals 1

    iput-object p1, p0, Lu/q;->a:Lu/m;

    invoke-direct {p0}, Lak/m;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lu/q;->b:Law/e;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x2b

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 2

    new-instance v0, Law/e;

    sget-object v1, Ls/v;->t:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 1

    sget-object v0, Ls/v;->u:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    iput-object v0, p0, Lu/q;->b:Law/e;

    const/4 v0, 0x1

    return v0
.end method

.method public f_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i_()V
    .locals 3

    iget-object v0, p0, Lu/q;->a:Lu/m;

    iget-object v1, p0, Lu/q;->b:Law/e;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lu/m;->a(Law/e;Z)V

    return-void
.end method

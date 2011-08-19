.class public Lv/e;
.super Lak/m;


# instance fields
.field private a:Lv/w;

.field private b:Law/e;

.field private c:Law/e;

.field private d:Z


# direct methods
.method public constructor <init>(Law/e;)V
    .locals 1

    invoke-direct {p0}, Lak/m;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lv/e;->d:Z

    iput-object p1, p0, Lv/e;->c:Law/e;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x4d

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 1

    iget-object v0, p0, Lv/e;->c:Law/e;

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Lv/w;)V
    .locals 0

    iput-object p1, p0, Lv/e;->a:Lv/w;

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 1

    sget-object v0, Ls/s;->h:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    iput-object v0, p0, Lv/e;->b:Law/e;

    const/4 v0, 0x1

    return v0
.end method

.method public f_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public i_()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lv/e;->d:Z

    iget-object v0, p0, Lv/e;->b:Law/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv/e;->a:Lv/w;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lv/e;->a:Lv/w;

    iget-object v1, p0, Lv/e;->b:Law/e;

    invoke-interface {v0, v1}, Lv/w;->a(Law/e;)V

    goto :goto_0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lv/e;->d:Z

    return v0
.end method

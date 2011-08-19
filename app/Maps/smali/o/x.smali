.class public Lo/x;
.super Ljava/lang/Object;


# instance fields
.field private final a:Law/e;


# direct methods
.method public constructor <init>(Law/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/x;->a:Law/e;

    return-void
.end method

.method private j()I
    .locals 2

    iget-object v0, p0, Lo/x;->a:Law/e;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Law/e;->d(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-object v0, p0, Lo/x;->a:Law/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Law/e;->e(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lo/x;->a:Law/e;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lo/x;->a:Law/e;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lo/x;->j()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public d()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lo/x;->a:Law/e;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lo/x;->j()I

    move-result v0

    if-ne v0, v3, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public e()V
    .locals 3

    const/4 v2, 0x3

    invoke-virtual {p0}, Lo/x;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/x;->a:Law/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Law/e;->h(II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lo/x;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/x;->a:Law/e;

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Law/e;->h(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lo/x;->a:Law/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Law/e;->h(II)V

    goto :goto_0
.end method

.method public f()Lk/l;
    .locals 1

    invoke-virtual {p0}, Lo/x;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->K()Lk/l;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lo/x;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->L()Lk/l;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->M()Lk/l;

    move-result-object v0

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lo/x;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x113

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lo/x;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x114

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x116

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public h()J
    .locals 2

    iget-object v0, p0, Lo/x;->a:Law/e;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Law/b;->g(Law/e;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public i()Law/e;
    .locals 1

    iget-object v0, p0, Lo/x;->a:Law/e;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lo/x;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lo/x;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

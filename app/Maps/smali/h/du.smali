.class public Lh/du;
.super Lh/ar;


# direct methods
.method public constructor <init>(Lh/eY;LaU/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lh/ar;-><init>(Lh/eY;LaU/a;)V

    return-void
.end method


# virtual methods
.method protected h()Lh/eP;
    .locals 4

    invoke-static {}, Lo/ao;->l()Lo/ao;

    move-result-object v0

    invoke-virtual {v0}, Lo/ao;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x74

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const/4 v0, 0x3

    const-string v3, "http://m.google.com/tospage"

    aput-object v3, v2, v0

    invoke-static {v1, v2}, LR/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/16 v1, 0x76

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x66

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x67

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v0, v2, v3}, Lh/du;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lh/eP;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v0, 0x75

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://m.google.com/tospage"

    invoke-static {v0, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected i()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected j()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->as()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

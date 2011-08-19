.class public Lh/ap;
.super Lh/fo;


# direct methods
.method protected constructor <init>(Lh/eY;)V
    .locals 0

    invoke-direct {p0, p1}, Lh/fo;-><init>(Lh/eY;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;ZZLh/eJ;)V
    .locals 9

    if-eqz p3, :cond_0

    const/16 v0, 0x2a0

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move-object v6, p5

    invoke-super/range {v0 .. v6}, Lh/fo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lh/eJ;)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x2a0

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v0, 0x5d

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p4

    move-object v8, p5

    invoke-super/range {v0 .. v8}, Lh/fo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLh/eJ;)V

    goto :goto_0
.end method

.method protected h()LI/n;
    .locals 2

    invoke-super {p0}, Lh/fo;->h()LI/n;

    move-result-object v0

    new-instance v1, Lh/S;

    invoke-direct {v1, p0, v0}, Lh/S;-><init>(Lh/ap;LI/n;)V

    return-object v1
.end method

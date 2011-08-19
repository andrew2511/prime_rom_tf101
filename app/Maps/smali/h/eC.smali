.class public Lh/eC;
.super Lh/fo;


# direct methods
.method protected constructor <init>(Lh/eY;)V
    .locals 0

    invoke-direct {p0, p1}, Lh/fo;-><init>(Lh/eY;)V

    return-void
.end method


# virtual methods
.method public a(Lh/eJ;)V
    .locals 9

    const/16 v0, 0x386

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x379

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v0, 0x36e

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v0, 0x37b

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/16 v0, 0x37a

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    move-object v8, p1

    invoke-super/range {v0 .. v8}, Lh/fo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLh/eJ;)V

    return-void
.end method

.method protected h()LI/n;
    .locals 2

    invoke-super {p0}, Lh/fo;->h()LI/n;

    move-result-object v0

    new-instance v1, Lh/cV;

    invoke-direct {v1, p0, v0}, Lh/cV;-><init>(Lh/eC;LI/n;)V

    return-object v1
.end method

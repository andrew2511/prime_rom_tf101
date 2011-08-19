.class public Lh/bY;
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

    const/16 v0, 0x14f

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14e

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10f

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x11d

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lh/bY;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lh/eP;

    move-result-object v0

    return-object v0
.end method

.method protected i()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected j()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->aq()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

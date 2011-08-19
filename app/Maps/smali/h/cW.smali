.class Lh/cW;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/i;


# instance fields
.field private final a:Lcom/google/googlenav/bL;

.field private final b:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/c;Lcom/google/googlenav/bL;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lh/cW;->a:Lcom/google/googlenav/bL;

    invoke-virtual {p1}, Lcom/google/googlenav/c;->af()Lcom/google/googlenav/bH;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bH;->e()Z

    move-result v0

    iput-boolean v0, p0, Lh/cW;->b:Z

    return-void
.end method

.method private a(Z)V
    .locals 7

    if-eqz p1, :cond_0

    const-string v0, "s"

    :goto_0
    const/16 v1, 0x65

    const-string v2, "r"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "r="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v3}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_0
    const-string v0, "e"

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/googlenav/bl;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/googlenav/bl;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lh/cW;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/cW;->a:Lcom/google/googlenav/bL;

    const/16 v1, 0x305

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/googlenav/bl;->b()Z

    move-result v0

    invoke-direct {p0, v0}, Lh/cW;->a(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lh/cW;->a:Lcom/google/googlenav/bL;

    const/16 v1, 0x306

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lh/cW;->a(Z)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lh/cW;->a:Lcom/google/googlenav/bL;

    const/16 v1, 0x306

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lh/cW;->a(Z)V

    return-void
.end method

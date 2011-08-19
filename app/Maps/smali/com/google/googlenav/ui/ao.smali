.class Lcom/google/googlenav/ui/ao;
.super Lcom/google/googlenav/ui/by;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/bu;

.field final synthetic b:Lcom/google/googlenav/ui/bW;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/bW;Ljava/lang/String;Lcom/google/googlenav/ui/bu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/ao;->b:Lcom/google/googlenav/ui/bW;

    iput-object p3, p0, Lcom/google/googlenav/ui/ao;->a:Lcom/google/googlenav/ui/bu;

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/by;-><init>(Lcom/google/googlenav/ui/bW;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/ao;->a:Lcom/google/googlenav/ui/bu;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bu;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x219

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

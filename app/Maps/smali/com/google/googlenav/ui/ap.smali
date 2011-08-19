.class Lcom/google/googlenav/ui/ap;
.super Ljava/lang/Object;

# interfaces
.implements Lo/cf;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/bW;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/bW;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/ap;->a:Lcom/google/googlenav/ui/bW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/ui/ap;->a:Lcom/google/googlenav/ui/bW;

    invoke-static {v0}, Lcom/google/googlenav/ui/bW;->a(Lcom/google/googlenav/ui/bW;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const-string v0, "IS_COMING_FROM_SETTINGS_PAGE"

    const/4 v1, -0x1

    new-instance v2, Lcom/google/googlenav/ui/v;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/v;-><init>(Lcom/google/googlenav/ui/ap;)V

    invoke-static {v0, v1, v2}, Lo/as;->a(Ljava/lang/String;ILo/cf;)V

    :cond_1
    return-void
.end method

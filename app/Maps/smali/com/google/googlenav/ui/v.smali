.class Lcom/google/googlenav/ui/v;
.super Ljava/lang/Object;

# interfaces
.implements Lo/cf;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/ap;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/ap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/v;->a:Lcom/google/googlenav/ui/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/v;->a:Lcom/google/googlenav/ui/ap;

    iget-object v0, v0, Lcom/google/googlenav/ui/ap;->a:Lcom/google/googlenav/ui/bW;

    invoke-static {v0}, Lcom/google/googlenav/ui/bW;->b(Lcom/google/googlenav/ui/bW;)V

    const-string v0, "IS_COMING_FROM_SETTINGS_PAGE"

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lo/as;->a(Ljava/lang/String;ILo/Z;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/v;->a:Lcom/google/googlenav/ui/ap;

    iget-object v0, v0, Lcom/google/googlenav/ui/ap;->a:Lcom/google/googlenav/ui/bW;

    invoke-static {v0}, Lcom/google/googlenav/ui/bW;->c(Lcom/google/googlenav/ui/bW;)V

    goto :goto_0
.end method

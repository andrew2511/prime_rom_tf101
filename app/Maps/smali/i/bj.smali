.class Li/bj;
.super Ljava/lang/Object;

# interfaces
.implements LaD/n;


# instance fields
.field final synthetic a:Li/bl;


# direct methods
.method constructor <init>(Li/bl;)V
    .locals 0

    iput-object p1, p0, Li/bj;->a:Li/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ar_()V
    .locals 2

    iget-object v0, p0, Li/bj;->a:Li/bl;

    invoke-virtual {v0}, Li/bl;->aK()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Li/bj;->a:Li/bl;

    const/4 v1, 0x0

    iput-object v1, v0, Li/bl;->m:Lcom/google/googlenav/bf;

    iget-object v0, p0, Li/bj;->a:Li/bl;

    invoke-virtual {v0}, Li/bl;->aN()Z

    goto :goto_0
.end method

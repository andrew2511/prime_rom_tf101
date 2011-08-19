.class Lcom/google/googlenav/am;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/bh;


# instance fields
.field final synthetic a:Lcom/google/googlenav/i;

.field final synthetic b:Lcom/google/googlenav/bl;


# direct methods
.method constructor <init>(Lcom/google/googlenav/bl;Lcom/google/googlenav/i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/am;->b:Lcom/google/googlenav/bl;

    iput-object p2, p0, Lcom/google/googlenav/am;->a:Lcom/google/googlenav/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Law/e;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/google/googlenav/c;->a(Law/e;)Lcom/google/googlenav/c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/am;->b:Lcom/google/googlenav/bl;

    invoke-static {v1}, Lcom/google/googlenav/bl;->a(Lcom/google/googlenav/bl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/googlenav/am;->b:Lcom/google/googlenav/bl;

    invoke-static {v0}, Lcom/google/googlenav/bl;->a(Lcom/google/googlenav/bl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/am;->b:Lcom/google/googlenav/bl;

    invoke-static {v1}, Lcom/google/googlenav/bl;->b(Lcom/google/googlenav/bl;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/am;->a:Lcom/google/googlenav/i;

    invoke-interface {v0}, Lcom/google/googlenav/i;->a()V

    :cond_0
    return-void
.end method

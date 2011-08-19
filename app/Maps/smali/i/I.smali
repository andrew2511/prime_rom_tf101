.class Li/I;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/p;


# instance fields
.field final synthetic a:Li/bl;

.field private final b:Lcom/google/googlenav/c;


# direct methods
.method private constructor <init>(Li/bl;Lcom/google/googlenav/c;)V
    .locals 0

    iput-object p1, p0, Li/I;->a:Li/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Li/I;->b:Lcom/google/googlenav/c;

    return-void
.end method

.method synthetic constructor <init>(Li/bl;Lcom/google/googlenav/c;Li/bj;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Li/I;-><init>(Li/bl;Lcom/google/googlenav/c;)V

    return-void
.end method


# virtual methods
.method public a(JZ)V
    .locals 4

    iget-object v0, p0, Li/I;->b:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/googlenav/aH;

    invoke-direct {v0}, Lcom/google/googlenav/aH;-><init>()V

    iget-object v1, p0, Li/I;->a:Li/bl;

    iget-object v2, p0, Li/I;->b:Lcom/google/googlenav/c;

    const/16 v3, 0x11

    invoke-virtual {v1, v0, v2, v3}, Li/bl;->a(Lcom/google/googlenav/aH;Lcom/google/googlenav/bf;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Li/I;->b:Lcom/google/googlenav/c;

    invoke-virtual {v2}, Lcom/google/googlenav/c;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/aH;->c(Ljava/lang/String;)Lcom/google/googlenav/aH;

    invoke-virtual {v0}, Lcom/google/googlenav/aH;->a()V

    goto :goto_0
.end method

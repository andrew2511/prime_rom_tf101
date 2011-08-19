.class Li/bb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/bh;


# instance fields
.field final synthetic a:Li/bl;

.field private final b:Lcom/google/googlenav/c;


# direct methods
.method private constructor <init>(Li/bl;Lcom/google/googlenav/c;)V
    .locals 0

    iput-object p1, p0, Li/bb;->a:Li/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Li/bb;->b:Lcom/google/googlenav/c;

    return-void
.end method

.method synthetic constructor <init>(Li/bl;Lcom/google/googlenav/c;Li/bj;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Li/bb;-><init>(Li/bl;Lcom/google/googlenav/c;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Law/e;)V
    .locals 8

    const/16 v7, 0x9e

    const/4 v6, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2, v7}, Law/e;->i(I)I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-virtual {p2, v7, v1}, Law/e;->e(II)Law/e;

    move-result-object v3

    invoke-virtual {v3, v6}, Law/e;->d(I)I

    move-result v4

    iget-object v5, p0, Li/bb;->b:Lcom/google/googlenav/c;

    invoke-virtual {v5, v4}, Lcom/google/googlenav/c;->b(I)Lcom/google/googlenav/aE;

    move-result-object v4

    if-nez v4, :cond_2

    iget-object v2, p0, Li/bb;->b:Lcom/google/googlenav/c;

    invoke-virtual {v2, v3}, Lcom/google/googlenav/c;->d(Law/e;)V

    move v2, v6

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_0

    iget-object v0, p0, Li/bb;->a:Li/bl;

    iget-object v0, v0, Li/bl;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->b()Lcom/google/googlenav/bf;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/googlenav/c;->ao()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Li/bb;->b:Lcom/google/googlenav/c;

    invoke-virtual {v1}, Lcom/google/googlenav/c;->ao()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/bb;->a:Li/bl;

    invoke-virtual {v0}, Li/bl;->bI()V

    goto :goto_0
.end method

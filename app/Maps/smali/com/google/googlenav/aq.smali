.class public Lcom/google/googlenav/aq;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/googlenav/ak;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Law/e;)V
    .locals 6

    const/4 v1, 0x2

    const/4 v5, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/aq;->c:Ljava/util/Vector;

    invoke-virtual {p1, v1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/googlenav/ak;

    invoke-virtual {p1, v1}, Law/e;->f(I)Law/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/ak;-><init>(Law/e;)V

    :goto_0
    iput-object v0, p0, Lcom/google/googlenav/aq;->a:Lcom/google/googlenav/ak;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aq;->b:Ljava/lang/String;

    invoke-virtual {p1, v5}, Law/e;->i(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/google/googlenav/aq;->c:Ljava/util/Vector;

    new-instance v3, Lcom/google/googlenav/ak;

    invoke-virtual {p1, v5, v1}, Law/e;->e(II)Law/e;

    move-result-object v4

    invoke-virtual {v4, v5}, Law/e;->f(I)Law/e;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/googlenav/ak;-><init>(Law/e;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a()Lcom/google/googlenav/ak;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/aq;->a:Lcom/google/googlenav/ak;

    return-object v0
.end method

.method public b()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/aq;->c:Ljava/util/Vector;

    return-object v0
.end method

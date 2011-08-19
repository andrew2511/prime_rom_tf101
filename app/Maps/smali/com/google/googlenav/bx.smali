.class abstract Lcom/google/googlenav/bx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/bh;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/bq;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/bx;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Law/e;)V
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/google/googlenav/ad;

    invoke-static {p1}, Lcom/google/googlenav/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ad;-><init>(Lcom/google/googlenav/bh;Ljava/lang/String;)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lak/h;->c(Lak/d;)V

    return-void
.end method

.method public a(Ljava/lang/String;Law/e;)V
    .locals 0

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/googlenav/bx;->a(Law/e;)V

    goto :goto_0
.end method

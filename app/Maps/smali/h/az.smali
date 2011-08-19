.class Lh/az;
.super Ljava/lang/Object;

# interfaces
.implements Lh/at;


# instance fields
.field final synthetic a:Lh/cs;


# direct methods
.method private constructor <init>(Lh/cs;)V
    .locals 0

    iput-object p1, p0, Lh/az;->a:Lh/cs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lh/cs;Lh/cZ;)V
    .locals 0

    invoke-direct {p0, p1}, Lh/az;-><init>(Lh/cs;)V

    return-void
.end method


# virtual methods
.method public a(Lo/I;)V
    .locals 3

    iget-object v0, p0, Lh/az;->a:Lh/cs;

    invoke-static {v0}, Lh/cs;->c(Lh/cs;)Lcom/google/googlenav/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/googlenav/h;->a()Law/e;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/I;->a(Law/e;)Z

    move-result v1

    invoke-virtual {v0}, Lcom/google/googlenav/h;->a()Law/e;

    move-result-object v2

    invoke-virtual {p1, v2}, Lo/I;->b(Law/e;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/h;->a(ZZ)V

    iget-object v1, p0, Lh/az;->a:Lh/cs;

    invoke-virtual {v1, v0}, Lh/cs;->b(Lcom/google/googlenav/h;)V

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.class public Lcom/google/googlenav/m;
.super Lcom/google/googlenav/c;


# direct methods
.method public constructor <init>(Lv/d;)V
    .locals 2

    invoke-virtual {p1}, Lv/d;->d()Lf/h;

    move-result-object v0

    invoke-virtual {p1}, Lv/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/c;-><init>(Lf/N;Ljava/lang/String;)V

    invoke-virtual {p1}, Lv/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/m;->a(Ljava/lang/String;)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/googlenav/m;->a(B)V

    return-void
.end method

.method public constructor <init>(Lv/d;Law/e;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/google/googlenav/c;-><init>(Law/e;)V

    invoke-virtual {p1}, Lv/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/m;->a(Ljava/lang/String;)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/googlenav/m;->a(B)V

    invoke-virtual {p1}, Lv/d;->d()Lf/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lv/d;->d()Lf/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/m;->c(Lf/N;)V

    :cond_0
    invoke-virtual {p1}, Lv/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/m;->c(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public ao()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/m;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

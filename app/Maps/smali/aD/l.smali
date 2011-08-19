.class LaD/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/P;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:LaD/n;

.field final synthetic c:LaD/a;

.field final synthetic d:LaD/p;


# direct methods
.method constructor <init>(LaD/p;Ljava/lang/String;LaD/n;LaD/a;)V
    .locals 0

    iput-object p1, p0, LaD/l;->d:LaD/p;

    iput-object p2, p0, LaD/l;->a:Ljava/lang/String;

    iput-object p3, p0, LaD/l;->b:LaD/n;

    iput-object p4, p0, LaD/l;->c:LaD/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;[B)V
    .locals 3

    if-eqz p2, :cond_2

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->w()Lk/i;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p2

    invoke-interface {v0, p2, v1, v2}, Lk/i;->a([BII)Lk/l;

    move-result-object v0

    iget-object v1, p0, LaD/l;->d:LaD/p;

    invoke-static {v1}, LaD/p;->a(LaD/p;)Lac/c;

    move-result-object v1

    iget-object v2, p0, LaD/l;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lac/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, LaD/l;->b:LaD/n;

    if-eqz v0, :cond_1

    iget-object v0, p0, LaD/l;->c:LaD/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, LaD/l;->c:LaD/a;

    invoke-virtual {v0}, LaD/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, LaD/l;->d:LaD/p;

    invoke-static {v0}, LaD/p;->b(LaD/p;)LaU/a;

    move-result-object v0

    new-instance v1, LaD/k;

    invoke-direct {v1, p0}, LaD/k;-><init>(LaD/l;)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, LaD/l;->d:LaD/p;

    invoke-static {v0}, LaD/p;->a(LaD/p;)Lac/c;

    move-result-object v0

    iget-object v1, p0, LaD/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lac/c;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

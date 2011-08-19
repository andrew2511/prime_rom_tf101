.class LaD/h;
.super Ljava/lang/Object;

# interfaces
.implements Lo/aJ;


# instance fields
.field final synthetic a:LaD/n;

.field final synthetic b:LaD/r;


# direct methods
.method constructor <init>(LaD/r;LaD/n;)V
    .locals 0

    iput-object p1, p0, LaD/h;->b:LaD/r;

    iput-object p2, p0, LaD/h;->a:LaD/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Vector;)V
    .locals 4

    iget-object v0, p0, LaD/h;->b:LaD/r;

    invoke-static {v0, p1}, LaD/r;->a(LaD/r;Ljava/util/Vector;)V

    iget-object v0, p0, LaD/h;->b:LaD/r;

    iget-object v1, p0, LaD/h;->a:LaD/n;

    invoke-static {v0, v1}, LaD/r;->a(LaD/r;LaD/n;)V

    iget-object v0, p0, LaD/h;->b:LaD/r;

    invoke-static {v0}, LaD/r;->a(LaD/r;)V

    iget-object v0, p0, LaD/h;->b:LaD/r;

    invoke-static {v0}, LaD/r;->b(LaD/r;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, LaD/s;

    iget-object v1, p0, LaD/h;->b:LaD/r;

    invoke-static {v1}, LaD/r;->c(LaD/r;)LT/c;

    move-result-object v1

    new-instance v2, LaD/m;

    iget-object v3, p0, LaD/h;->b:LaD/r;

    invoke-direct {v2, v3}, LaD/m;-><init>(LaD/r;)V

    invoke-direct {v0, v1, p1, v2}, LaD/s;-><init>(LT/c;Ljava/util/Vector;LaD/i;)V

    invoke-virtual {v0}, LaD/s;->b()V

    :cond_0
    return-void
.end method

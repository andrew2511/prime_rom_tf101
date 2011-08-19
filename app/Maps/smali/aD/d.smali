.class LaD/d;
.super Ljava/lang/Object;

# interfaces
.implements LaD/o;


# instance fields
.field final synthetic a:LaD/n;

.field final synthetic b:LaD/r;


# direct methods
.method constructor <init>(LaD/r;LaD/n;)V
    .locals 0

    iput-object p1, p0, LaD/d;->b:LaD/r;

    iput-object p2, p0, LaD/d;->a:LaD/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LaD/j;)V
    .locals 3

    iget-object v0, p0, LaD/d;->b:LaD/r;

    invoke-virtual {p1}, LaD/j;->b()Ljava/lang/Long;

    move-result-object v1

    invoke-static {}, LaD/r;->c()LaD/q;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaD/r;->a(LaD/r;Ljava/lang/Long;LaD/q;)V

    return-void
.end method

.method public a(LaD/q;)V
    .locals 2

    iget-object v0, p0, LaD/d;->b:LaD/r;

    invoke-virtual {p1}, LaD/q;->a()Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1, p1}, LaD/r;->a(LaD/r;Ljava/lang/Long;LaD/q;)V

    return-void
.end method

.method public a(Ljava/util/Vector;)V
    .locals 2

    iget-object v0, p0, LaD/d;->b:LaD/r;

    iget-object v1, p0, LaD/d;->a:LaD/n;

    invoke-static {v0, v1}, LaD/r;->a(LaD/r;LaD/n;)V

    iget-object v0, p0, LaD/d;->b:LaD/r;

    invoke-static {v0}, LaD/r;->a(LaD/r;)V

    return-void
.end method

.class LaD/m;
.super Ljava/lang/Object;

# interfaces
.implements LaD/i;


# instance fields
.field private final a:LaD/r;


# direct methods
.method public constructor <init>(LaD/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaD/m;->a:LaD/r;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LaD/m;->a:LaD/r;

    invoke-static {v0}, LaD/r;->f(LaD/r;)V

    return-void
.end method

.method public a(LaD/q;)V
    .locals 3

    iget-object v0, p0, LaD/m;->a:LaD/r;

    invoke-static {v0}, LaD/r;->e(LaD/r;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {p1}, LaD/q;->a()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1}, LaD/q;->b()LaD/j;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, LaD/m;->a:LaD/r;

    invoke-static {v0}, LaD/r;->g(LaD/r;)V

    return-void
.end method

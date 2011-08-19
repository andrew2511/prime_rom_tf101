.class LaK/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:LaK/g;


# direct methods
.method constructor <init>(LaK/g;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, LaK/e;->b:LaK/g;

    iput-object p2, p0, LaK/e;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LaK/e;->b:LaK/g;

    iget-object v0, v0, LaK/g;->a:LaK/i;

    invoke-static {v0}, LaK/i;->a(LaK/i;)LaK/j;

    move-result-object v0

    iget-object v1, p0, LaK/e;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, LaK/j;->a(Ljava/util/List;)V

    iget-object v0, p0, LaK/e;->b:LaK/g;

    iget-object v0, v0, LaK/g;->a:LaK/i;

    invoke-static {v0}, LaK/i;->b(LaK/i;)V

    iget-object v0, p0, LaK/e;->b:LaK/g;

    iget-object v0, v0, LaK/g;->a:LaK/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LaK/i;->a(LaK/i;LaK/f;)LaK/f;

    return-void
.end method

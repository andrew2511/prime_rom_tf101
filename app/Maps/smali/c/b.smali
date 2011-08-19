.class Lc/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LaD/q;

.field final synthetic b:Lc/r;


# direct methods
.method constructor <init>(Lc/r;LaD/q;)V
    .locals 0

    iput-object p1, p0, Lc/b;->b:Lc/r;

    iput-object p2, p0, Lc/b;->a:LaD/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lc/b;->b:Lc/r;

    iget-object v0, v0, Lc/r;->c:Lc/c;

    iget-object v0, v0, Lc/c;->b:Lc/l;

    iget-object v1, p0, Lc/b;->b:Lc/r;

    iget-object v1, v1, Lc/r;->a:Ljava/lang/String;

    iget-object v2, p0, Lc/b;->b:Lc/r;

    iget-wide v2, v2, Lc/r;->b:J

    iget-object v4, p0, Lc/b;->a:LaD/q;

    invoke-interface {v0, v1, v2, v3, v4}, Lc/l;->a(Ljava/lang/String;JLaD/q;)V

    return-void
.end method

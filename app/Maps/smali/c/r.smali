.class Lc/r;
.super Ljava/lang/Object;

# interfaces
.implements Lo/aJ;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lc/c;


# direct methods
.method constructor <init>(Lc/c;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lc/r;->c:Lc/c;

    iput-object p2, p0, Lc/r;->a:Ljava/lang/String;

    iput-wide p3, p0, Lc/r;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Vector;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaD/q;

    iget-object v1, p0, Lc/r;->c:Lc/c;

    iget-object v1, v1, Lc/c;->a:LaU/a;

    new-instance v2, Lc/b;

    invoke-direct {v2, p0, v0}, Lc/b;-><init>(Lc/r;LaD/q;)V

    invoke-interface {v1, v2}, LaU/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

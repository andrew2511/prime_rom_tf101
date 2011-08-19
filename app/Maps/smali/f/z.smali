.class Lf/z;
.super LT/d;


# instance fields
.field final synthetic a:Lf/P;

.field final synthetic b:Lf/W;


# direct methods
.method constructor <init>(Lf/W;LT/c;Lf/P;)V
    .locals 0

    iput-object p1, p0, Lf/z;->b:Lf/W;

    iput-object p3, p0, Lf/z;->a:Lf/P;

    invoke-direct {p0, p2}, LT/d;-><init>(LT/c;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    iget-object v0, p0, Lf/z;->b:Lf/W;

    iget-object v1, p0, Lf/z;->a:Lf/P;

    invoke-static {v0, v1}, Lf/W;->a(Lf/W;Lf/P;)V

    return-void
.end method

.class Lc/f;
.super Ljava/lang/Object;

# interfaces
.implements Lc/e;


# instance fields
.field final synthetic a:Lc/e;

.field final synthetic b:LaU/a;

.field final synthetic c:Lc/k;


# direct methods
.method constructor <init>(Lc/k;Lc/e;LaU/a;)V
    .locals 0

    iput-object p1, p0, Lc/f;->c:Lc/k;

    iput-object p2, p0, Lc/f;->a:Lc/e;

    iput-object p3, p0, Lc/f;->b:LaU/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/i;)V
    .locals 3

    iget-object v0, p0, Lc/f;->c:Lc/k;

    invoke-virtual {v0, p1}, Lc/k;->a(Lo/i;)V

    iget-object v0, p0, Lc/f;->c:Lc/k;

    iget-object v1, p0, Lc/f;->a:Lc/e;

    iget-object v2, p0, Lc/f;->b:LaU/a;

    invoke-static {v0, p1, v1, v2}, Lc/k;->a(Lc/k;Lo/i;Lc/e;LaU/a;)V

    return-void
.end method

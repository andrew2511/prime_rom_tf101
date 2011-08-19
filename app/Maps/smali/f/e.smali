.class Lf/e;
.super LT/d;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lf/J;


# direct methods
.method constructor <init>(Lf/J;LT/c;IILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lf/e;->d:Lf/J;

    iput p3, p0, Lf/e;->a:I

    iput p4, p0, Lf/e;->b:I

    iput-object p5, p0, Lf/e;->c:Ljava/lang/String;

    invoke-direct {p0, p2}, LT/d;-><init>(LT/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lf/e;->d:Lf/J;

    iget v1, p0, Lf/e;->a:I

    iget v2, p0, Lf/e;->b:I

    iget-object v3, p0, Lf/e;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lf/J;->a(Lf/J;IILjava/lang/String;)V

    return-void
.end method

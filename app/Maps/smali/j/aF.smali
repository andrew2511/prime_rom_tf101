.class final Lj/aF;
.super Lj/g;


# instance fields
.field final synthetic a:Ljava/lang/Iterable;

.field final synthetic b:Lae/c;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Lae/c;)V
    .locals 0

    iput-object p1, p0, Lj/aF;->a:Ljava/lang/Iterable;

    iput-object p2, p0, Lj/aF;->b:Lae/c;

    invoke-direct {p0}, Lj/g;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lj/aF;->a:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lj/aF;->b:Lae/c;

    invoke-static {v0, v1}, Lj/l;->a(Ljava/util/Iterator;Lae/c;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

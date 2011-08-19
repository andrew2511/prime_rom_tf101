.class final Lj/H;
.super Lj/aA;


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lae/f;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Lae/f;)V
    .locals 0

    iput-object p1, p0, Lj/H;->a:Ljava/util/Iterator;

    iput-object p2, p0, Lj/H;->b:Lae/f;

    invoke-direct {p0}, Lj/aA;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Object;
    .locals 2

    :cond_0
    iget-object v0, p0, Lj/H;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj/H;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lj/H;->b:Lae/f;

    invoke-interface {v1, v0}, Lae/f;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lj/H;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

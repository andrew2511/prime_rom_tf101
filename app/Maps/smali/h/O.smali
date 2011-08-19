.class Lh/O;
.super Ljava/lang/Object;

# interfaces
.implements Lh/fA;


# instance fields
.field final synthetic a:Lh/dr;


# direct methods
.method private constructor <init>(Lh/dr;)V
    .locals 0

    iput-object p1, p0, Lh/O;->a:Lh/dr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lh/dr;Lh/x;)V
    .locals 0

    invoke-direct {p0, p1}, Lh/O;-><init>(Lh/dr;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lh/O;->a:Lh/dr;

    invoke-static {v0}, Lh/dr;->a(Lh/dr;)Lh/af;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lo/av;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x2dd

    :goto_0
    iget-object v1, p0, Lh/O;->a:Lh/dr;

    invoke-static {v1}, Lh/dr;->a(Lh/dr;)Lh/af;

    move-result-object v1

    invoke-virtual {v1, v0}, Lh/af;->b(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x175

    goto :goto_0
.end method

.method public a(Ljava/util/Vector;)V
    .locals 3

    invoke-static {}, Lh/dr;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lj/X;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/x;

    invoke-static {v0}, Lo/d;->a(Lo/x;)Lo/d;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lh/O;->a:Lh/dr;

    invoke-static {v0}, Lh/dr;->a(Lh/dr;)Lh/af;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/O;->a:Lh/dr;

    invoke-static {v0}, Lh/dr;->a(Lh/dr;)Lh/af;

    move-result-object v0

    iget-object v2, p0, Lh/O;->a:Lh/dr;

    invoke-static {v2}, Lh/dr;->c(Lh/dr;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lh/af;->a(Ljava/util/List;Ljava/util/List;)V

    iget-object v0, p0, Lh/O;->a:Lh/dr;

    invoke-static {v0}, Lh/dr;->a(Lh/dr;)Lh/af;

    move-result-object v0

    invoke-virtual {v0}, Lh/af;->d()V

    :cond_1
    return-void
.end method

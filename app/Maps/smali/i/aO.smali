.class public Li/aO;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/j;


# instance fields
.field private a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Li/aO;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(B)V
    .locals 0

    return-void
.end method

.method public a(Li/aH;)V
    .locals 1

    iget-object v0, p0, Li/aO;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Lcom/google/googlenav/bf;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(I)Lcom/google/googlenav/bf;
    .locals 1

    iget-object v0, p0, Li/aO;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/bf;

    return-object p0
.end method

.method public c_()I
    .locals 1

    iget-object v0, p0, Li/aO;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public d(I)I
    .locals 0

    return p1
.end method

.method public d_()B
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

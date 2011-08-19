.class public Li/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/j;


# instance fields
.field private a:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Li/h;->a:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public a(I)Li/ac;
    .locals 0

    invoke-virtual {p0, p1}, Li/h;->c(I)Lcom/google/googlenav/bf;

    move-result-object p0

    check-cast p0, Li/ac;

    return-object p0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Li/h;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method public a(B)V
    .locals 0

    return-void
.end method

.method public a(Li/ac;)V
    .locals 1

    iget-object v0, p0, Li/h;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

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

    iget-object v0, p0, Li/h;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li/ac;

    return-object p0
.end method

.method public c_()I
    .locals 1

    iget-object v0, p0, Li/h;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

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

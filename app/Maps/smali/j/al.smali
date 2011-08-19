.class Lj/al;
.super Ljava/lang/Object;

# interfaces
.implements Lae/f;


# instance fields
.field final synthetic a:Ljava/util/Collection;

.field final synthetic b:Lj/aj;


# direct methods
.method constructor <init>(Lj/aj;Ljava/util/Collection;)V
    .locals 0

    iput-object p1, p0, Lj/al;->b:Lj/aj;

    iput-object p2, p0, Lj/al;->a:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lj/al;->b:Lj/aj;

    iget-object v0, v0, Lj/aj;->b:Lae/f;

    invoke-interface {v0, p1}, Lae/f;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj/al;->a:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

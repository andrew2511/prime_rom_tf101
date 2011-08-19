.class Lj/W;
.super Lj/ab;


# instance fields
.field final synthetic a:Lj/ae;


# direct methods
.method constructor <init>(Lj/ae;I)V
    .locals 0

    iput-object p1, p0, Lj/W;->a:Lj/ae;

    invoke-direct {p0, p2}, Lj/ab;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj/W;->a:Lj/ae;

    iget-object v0, v0, Lj/ae;->a:Lj/av;

    invoke-static {v0}, Lj/av;->a(Lj/av;)[Lj/af;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-interface {v0}, Lj/af;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

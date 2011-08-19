.class Lj/V;
.super Lj/ab;


# instance fields
.field final synthetic a:Lj/z;


# direct methods
.method constructor <init>(Lj/z;I)V
    .locals 0

    iput-object p1, p0, Lj/V;->a:Lj/z;

    invoke-direct {p0, p2}, Lj/ab;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lj/V;->a:Lj/z;

    iget-object v1, p0, Lj/V;->a:Lj/z;

    iget-object v1, v1, Lj/z;->a:[Ljava/lang/Object;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lj/z;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

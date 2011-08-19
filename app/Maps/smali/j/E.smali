.class Lj/E;
.super Lj/ab;


# instance fields
.field final synthetic a:Lj/aI;


# direct methods
.method constructor <init>(Lj/aI;II)V
    .locals 0

    iput-object p1, p0, Lj/E;->a:Lj/aI;

    invoke-direct {p0, p2, p3}, Lj/ab;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lj/E;->a:Lj/aI;

    invoke-static {v0}, Lj/aI;->a(Lj/aI;)[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lj/E;->a:Lj/aI;

    invoke-static {v1}, Lj/aI;->b(Lj/aI;)I

    move-result v1

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

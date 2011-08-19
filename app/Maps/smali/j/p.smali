.class final Lj/p;
.super Lj/aI;


# instance fields
.field private final transient a:Lj/Z;


# direct methods
.method constructor <init>([Ljava/lang/Object;Lj/Z;)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lj/aI;-><init>([Ljava/lang/Object;II)V

    iput-object p2, p0, Lj/p;->a:Lj/Z;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lj/p;->a:Lj/Z;

    invoke-virtual {v0, p1}, Lj/Z;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

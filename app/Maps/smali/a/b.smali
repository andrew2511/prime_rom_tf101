.class La/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public a:La/f;

.field public b:LG/w;

.field public c:La/g;


# direct methods
.method public constructor <init>(La/f;LG/w;La/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/b;->a:La/f;

    iput-object p2, p0, La/b;->b:LG/w;

    iput-object p3, p0, La/b;->c:La/g;

    return-void
.end method


# virtual methods
.method public a(La/b;)I
    .locals 3

    iget-object v0, p0, La/b;->c:La/g;

    iget-wide v0, v0, La/g;->d:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p1, La/b;->c:La/g;

    iget-wide v1, v1, La/g;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, La/b;

    invoke-virtual {p0, p1}, La/b;->a(La/b;)I

    move-result v0

    return v0
.end method

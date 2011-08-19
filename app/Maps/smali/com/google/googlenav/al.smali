.class Lcom/google/googlenav/al;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/google/googlenav/D;


# direct methods
.method constructor <init>(Lcom/google/googlenav/D;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/al;->a:Lcom/google/googlenav/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/K;Lcom/google/googlenav/K;)I
    .locals 4

    invoke-virtual {p1}, Lcom/google/googlenav/K;->b()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/google/googlenav/K;->b()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/googlenav/aB;->a(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/googlenav/K;

    check-cast p2, Lcom/google/googlenav/K;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/al;->a(Lcom/google/googlenav/K;Lcom/google/googlenav/K;)I

    move-result v0

    return v0
.end method

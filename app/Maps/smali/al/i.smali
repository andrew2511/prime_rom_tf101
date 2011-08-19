.class Lal/i;
.super Ljava/util/LinkedHashMap;


# instance fields
.field final a:I

.field final b:Lal/g;


# direct methods
.method constructor <init>(ILal/g;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput p1, p0, Lal/i;->a:I

    iput-object p2, p0, Lal/i;->b:Lal/g;

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2

    invoke-virtual {p0}, Lal/i;->size()I

    move-result v0

    iget v1, p0, Lal/i;->a:I

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lal/i;->b:Lal/g;

    invoke-virtual {v1}, Lal/g;->a()V

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

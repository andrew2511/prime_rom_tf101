.class public Lav/a;
.super Ljava/util/LinkedHashMap;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/high16 v0, 0x3f80

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput p1, p0, Lav/a;->a:I

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2

    invoke-virtual {p0}, Lav/a;->size()I

    move-result v0

    iget v1, p0, Lav/a;->a:I

    if-le v0, v1, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lav/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

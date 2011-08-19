.class Lcom/google/android/location/internal/server/f;
.super Ljava/util/LinkedHashMap;


# instance fields
.field final synthetic a:Lcom/google/android/location/internal/server/e;


# direct methods
.method constructor <init>(Lcom/google/android/location/internal/server/e;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/location/internal/server/f;->a:Lcom/google/android/location/internal/server/e;

    invoke-direct {p0, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/location/internal/server/f;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class Lcom/google/android/location/internal/server/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/HashMap;

.field private b:I


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/location/internal/server/c;->a:Ljava/util/HashMap;

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/location/internal/server/c;->b:I

    return-void
.end method

.method private b()V
    .locals 3

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/location/internal/server/c;->b:I

    iget-object v0, p0, Lcom/google/android/location/internal/server/c;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/internal/server/g;

    iget v2, p0, Lcom/google/android/location/internal/server/c;->b:I

    iget v0, v0, Lcom/google/android/location/internal/server/g;->b:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/location/internal/server/c;->b:I

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    iget v0, p0, Lcom/google/android/location/internal/server/c;->b:I

    return v0
.end method

.method a(Landroid/location/Location;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/location/internal/server/c;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/internal/server/g;

    :try_start_0
    iget-object v0, v0, Lcom/google/android/location/internal/server/g;->a:Lcom/google/android/location/internal/a;

    invoke-interface {v0, p1}, Lcom/google/android/location/internal/a;->a(Landroid/location/Location;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :goto_1
    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/google/android/location/internal/server/c;->b()V

    :cond_1
    return-void
.end method

.method a(Lcom/google/android/location/internal/a;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/location/internal/server/c;->a:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/google/android/location/internal/a;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/location/internal/server/c;->b()V

    return-void
.end method

.method a(Lcom/google/android/location/internal/a;I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/location/internal/server/c;->a:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/google/android/location/internal/a;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/google/android/location/internal/server/g;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/location/internal/server/g;-><init>(Lcom/google/android/location/internal/server/c;Lcom/google/android/location/internal/a;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/location/internal/server/c;->b()V

    return-void
.end method

.method a(Z)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/location/internal/server/c;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/internal/server/g;

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, v0, Lcom/google/android/location/internal/server/g;->a:Lcom/google/android/location/internal/a;

    invoke-interface {v0}, Lcom/google/android/location/internal/a;->a()V

    :goto_1
    move v0, v2

    :goto_2
    move v2, v0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/google/android/location/internal/server/g;->a:Lcom/google/android/location/internal/a;

    invoke-interface {v0}, Lcom/google/android/location/internal/a;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/google/android/location/internal/server/c;->b()V

    :cond_2
    return-void
.end method

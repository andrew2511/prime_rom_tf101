.class public Lcom/google/android/location/localizer/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/location/localizer/b;

.field private final b:Lcom/google/android/location/localizer/b;

.field private final c:Lal/a;

.field private final d:Lw/l;


# direct methods
.method public constructor <init>(Lcom/google/android/location/localizer/p;Lcom/google/android/location/localizer/t;Lal/a;Lw/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/location/localizer/g;->a:Lcom/google/android/location/localizer/b;

    iput-object p2, p0, Lcom/google/android/location/localizer/g;->b:Lcom/google/android/location/localizer/b;

    iput-object p3, p0, Lcom/google/android/location/localizer/g;->c:Lal/a;

    iput-object p4, p0, Lcom/google/android/location/localizer/g;->d:Lw/l;

    return-void
.end method

.method private a(Ljava/util/Map;)LW/j;
    .locals 5

    const/4 v0, -0x1

    sget-object v1, LW/j;->a:LW/j;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LW/r;

    iget-object v3, p0, LW/r;->i:LW/j;

    invoke-virtual {v3}, LW/j;->ordinal()I

    move-result v4

    if-le v4, v0, :cond_0

    invoke-static {}, LW/j;->a()LW/j;

    move-result-object v1

    if-ne v3, v1, :cond_1

    move-object v0, v3

    :goto_1
    return-object v0

    :cond_1
    move-object v1, v3

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private a(Ljava/util/Map;Ljava/util/Map;)Lcom/google/android/location/localizer/u;
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/location/localizer/g;->a(Ljava/util/Map;)LW/j;

    move-result-object v0

    sget-object v1, LW/j;->a:LW/j;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, LW/j;->b:LW/j;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/location/localizer/g;->a:Lcom/google/android/location/localizer/b;

    invoke-interface {v0, p1, p2}, Lcom/google/android/location/localizer/b;->a(Ljava/util/Map;Ljava/util/Map;)Lcom/google/android/location/localizer/u;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/location/localizer/g;->b:Lcom/google/android/location/localizer/b;

    invoke-interface {v0, p1, p2}, Lcom/google/android/location/localizer/b;->a(Ljava/util/Map;Ljava/util/Map;)Lcom/google/android/location/localizer/u;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;III)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " hasLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int v1, p2, p3

    sub-int v1, p4, v1

    const-string v2, " noLocation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cacheMiss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method private c(Ljava/util/List;)I
    .locals 2

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/util/List;)LW/d;
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/location/localizer/g;->b(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/location/localizer/g;->a(Ljava/util/Set;)LW/p;

    move-result-object v2

    iget-object v6, v2, LW/p;->b:Ljava/lang/Object;

    check-cast v6, Ljava/util/Map;

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LW/k;

    iget-object v3, v2, LW/p;->a:Ljava/lang/Object;

    sget-object v4, LW/n;->a:LW/n;

    if-eq v3, v4, :cond_0

    new-instance v0, LW/d;

    iget-object v2, v2, LW/p;->a:Ljava/lang/Object;

    check-cast v2, LW/n;

    iget-object v3, p0, Lcom/google/android/location/localizer/g;->d:Lw/l;

    invoke-interface {v3}, Lw/l;->b()J

    move-result-wide v3

    invoke-direct/range {v0 .. v6}, LW/d;-><init>(LW/o;LW/n;JLW/k;Ljava/util/Map;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v6, v0}, Lcom/google/android/location/localizer/g;->a(Ljava/util/Map;Ljava/util/Map;)Lcom/google/android/location/localizer/u;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/location/localizer/u;->a()LW/o;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    new-instance v0, LW/d;

    sget-object v2, LW/n;->b:LW/n;

    iget-object v3, p0, Lcom/google/android/location/localizer/g;->d:Lw/l;

    invoke-interface {v3}, Lw/l;->b()J

    move-result-wide v3

    invoke-direct/range {v0 .. v6}, LW/d;-><init>(LW/o;LW/n;JLW/k;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/location/localizer/u;->a()LW/o;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/location/localizer/k;->c(LW/o;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "WifiLocator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Locator found a location that did not have sane values: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lw/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, LW/d;

    sget-object v2, LW/n;->b:LW/n;

    iget-object v3, p0, Lcom/google/android/location/localizer/g;->d:Lw/l;

    invoke-interface {v3}, Lw/l;->b()J

    move-result-wide v3

    invoke-direct/range {v0 .. v6}, LW/d;-><init>(LW/o;LW/n;JLW/k;Ljava/util/Map;)V

    goto :goto_0

    :cond_3
    new-instance v1, LW/t;

    invoke-virtual {v0}, Lcom/google/android/location/localizer/u;->a()LW/o;

    move-result-object v2

    invoke-direct {v1, v2}, LW/t;-><init>(LW/o;)V

    invoke-virtual {v0}, Lcom/google/android/location/localizer/u;->b()I

    move-result v0

    iput v0, v1, LW/t;->d:I

    new-instance v0, LW/d;

    invoke-virtual {v1}, LW/t;->a()LW/o;

    move-result-object v1

    sget-object v2, LW/n;->a:LW/n;

    iget-object v3, p0, Lcom/google/android/location/localizer/g;->d:Lw/l;

    invoke-interface {v3}, Lw/l;->b()J

    move-result-wide v3

    invoke-direct/range {v0 .. v6}, LW/d;-><init>(LW/o;LW/n;JLW/k;Ljava/util/Map;)V

    goto :goto_0
.end method

.method a(Ljava/util/Set;)LW/p;
    .locals 9

    const/4 v0, 0x0

    const/4 v8, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v0

    move v5, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v1, p0, Lcom/google/android/location/localizer/g;->c:Lal/a;

    const/4 v6, 0x1

    invoke-virtual {v1, v0, v6}, Lal/a;->a(Ljava/lang/Object;Z)Lal/h;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lal/h;->d()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    add-int/lit8 v0, v5, 0x1

    move v1, v0

    move v0, v4

    :goto_1
    move v4, v0

    move v5, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Lal/h;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LW/r;

    invoke-virtual {v1}, LW/r;->a()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v1, v1, LW/r;->i:LW/j;

    sget-object v7, LW/j;->a:LW/j;

    if-eq v1, v7, :cond_6

    add-int/lit8 v1, v4, 0x1

    invoke-virtual {v6}, Lal/h;->e()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    move v1, v5

    goto :goto_1

    :cond_2
    if-lez v4, :cond_4

    const/4 v0, 0x5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-lt v4, v0, :cond_3

    const-string v0, "Good cache hits. Computing WiFi location locally"

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {p0, v0, v4, v5, v1}, Lcom/google/android/location/localizer/g;->a(Ljava/lang/String;III)V

    sget-object v0, LW/n;->a:LW/n;

    invoke-static {v0, v2}, LW/p;->a(Ljava/lang/Object;Ljava/lang/Object;)LW/p;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_3
    const-string v0, "Not enough positive cache hits compared to misses. Need server request."

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {p0, v0, v4, v5, v1}, Lcom/google/android/location/localizer/g;->a(Ljava/lang/String;III)V

    sget-object v0, LW/n;->c:LW/n;

    invoke-static {v0, v8}, LW/p;->a(Ljava/lang/Object;Ljava/lang/Object;)LW/p;

    move-result-object v0

    goto :goto_2

    :cond_4
    if-lez v5, :cond_5

    const-string v0, "Too many cache  misses. Need server request."

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {p0, v0, v4, v5, v1}, Lcom/google/android/location/localizer/g;->a(Ljava/lang/String;III)V

    sget-object v0, LW/n;->c:LW/n;

    invoke-static {v0, v8}, LW/p;->a(Ljava/lang/Object;Ljava/lang/Object;)LW/p;

    move-result-object v0

    goto :goto_2

    :cond_5
    const-string v0, "Too many no-location APs. Will not compute a location nor go to the server."

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {p0, v0, v4, v5, v1}, Lcom/google/android/location/localizer/g;->a(Ljava/lang/String;III)V

    sget-object v0, LW/n;->b:LW/n;

    invoke-static {v0, v8}, LW/p;->a(Ljava/lang/Object;Ljava/lang/Object;)LW/p;

    move-result-object v0

    goto :goto_2

    :cond_6
    move v0, v4

    move v1, v5

    goto :goto_1
.end method

.method b(Ljava/util/List;)Ljava/util/Map;
    .locals 8

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LW/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LW/k;->a()I

    move-result v4

    const/4 v1, 0x0

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_0

    invoke-virtual {v0, v5}, LW/k;->a(I)LW/g;

    move-result-object v6

    iget-object v1, v6, LW/g;->a:Ljava/lang/Long;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, v6, LW/g;->a:Ljava/lang/Long;

    invoke-interface {v2, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget v6, v6, LW/g;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/google/android/location/localizer/g;->c(Ljava/util/List;)I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-object v3
.end method

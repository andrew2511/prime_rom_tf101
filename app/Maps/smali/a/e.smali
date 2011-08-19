.class public La/e;
.super Ljava/lang/Object;


# static fields
.field static final a:LG/w;

.field private static b:La/e;

.field private static final j:[La/f;


# instance fields
.field private final c:Lac/p;

.field private final d:Ljava/util/Map;

.field private final e:I

.field private final f:I

.field private g:I

.field private h:Lcom/google/android/maps/driveabout/vector/u;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v2, 0x0

    new-instance v0, LG/w;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2, v2}, LG/w;-><init>(III)V

    sput-object v0, La/e;->a:LG/w;

    invoke-static {}, La/a;->values()[La/a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [La/f;

    sput-object v0, La/e;->j:[La/f;

    move v0, v2

    :goto_0
    invoke-static {}, La/a;->values()[La/a;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, La/e;->j:[La/f;

    new-instance v2, La/f;

    invoke-static {}, La/a;->values()[La/a;

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, La/f;-><init>(La/a;Ljava/util/SortedSet;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lac/p;II)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, La/e;->d:Ljava/util/Map;

    iput v1, p0, La/e;->g:I

    iput v1, p0, La/e;->i:I

    iput-object p1, p0, La/e;->c:Lac/p;

    iput p2, p0, La/e;->e:I

    iput p3, p0, La/e;->f:I

    return-void
.end method

.method static a(I)I
    .locals 1

    mul-int/lit16 v0, p0, 0x400

    mul-int/lit16 v0, v0, 0x400

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method static synthetic a(La/e;I)I
    .locals 1

    iget v0, p0, La/e;->g:I

    sub-int/2addr v0, p1

    iput v0, p0, La/e;->g:I

    return v0
.end method

.method public static declared-synchronized a()La/e;
    .locals 2

    const-class v0, La/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, La/e;->b:La/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(La/e;)Lcom/google/android/maps/driveabout/vector/u;
    .locals 1

    iget-object v0, p0, La/e;->h:Lcom/google/android/maps/driveabout/vector/u;

    return-object v0
.end method

.method private declared-synchronized a(II)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget v0, p0, La/e;->g:I

    if-gt v0, p1, :cond_1

    iget v0, p0, La/e;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt v0, p2, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    iget-object v0, p0, La/e;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/d;

    invoke-virtual {v1}, La/d;->g()Lad/l;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v1, v2, Lad/l;->a:Ljava/lang/Object;

    sget-object v5, La/e;->a:LG/w;

    if-eq v1, v5, :cond_2

    new-instance v5, La/b;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/f;

    iget-object v1, v2, Lad/l;->a:Ljava/lang/Object;

    check-cast v1, LG/w;

    iget-object v2, v2, Lad/l;->b:Ljava/lang/Object;

    check-cast v2, La/g;

    invoke-direct {v5, v0, v1, v2}, La/b;-><init>(La/f;LG/w;La/g;)V

    invoke-interface {v3, v5}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget v0, p0, La/e;->g:I

    if-gt v0, p1, :cond_5

    iget v0, p0, La/e;->i:I

    if-le v0, p2, :cond_7

    :cond_5
    invoke-interface {v3}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/b;

    iget-object v1, p0, La/e;->d:Ljava/util/Map;

    iget-object v4, v0, La/b;->a:La/f;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/d;

    iget-object v4, v0, La/b;->b:LG/w;

    invoke-virtual {v1, v4}, La/d;->c(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, La/d;->b()I

    move-result v4

    if-nez v4, :cond_6

    invoke-static {v1}, La/d;->a(La/d;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, v0, La/b;->a:La/f;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-interface {v3, v0}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, La/d;->g()Lad/l;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v4, v1, Lad/l;->a:Ljava/lang/Object;

    sget-object v5, La/e;->a:LG/w;

    if-eq v4, v5, :cond_4

    new-instance v4, La/b;

    iget-object v5, v0, La/b;->a:La/f;

    iget-object v0, v1, Lad/l;->a:Ljava/lang/Object;

    check-cast v0, LG/w;

    iget-object v1, v1, Lad/l;->b:Ljava/lang/Object;

    check-cast v1, La/g;

    invoke-direct {v4, v5, v0, v1}, La/b;-><init>(La/f;LG/w;La/g;)V

    invoke-interface {v3, v4}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/f;

    iget-object v2, p0, La/e;->d:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public static declared-synchronized a(Lac/p;)V
    .locals 6

    const-class v0, La/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, La/e;->b:La/e;

    if-nez v1, :cond_1

    invoke-static {}, La/e;->b()I

    move-result v1

    new-instance v2, La/e;

    invoke-static {v1}, La/e;->a(I)I

    move-result v3

    invoke-static {v1}, La/e;->b(I)I

    move-result v1

    invoke-direct {v2, p0, v3, v1}, La/e;-><init>(Lac/p;II)V

    sput-object v2, La/e;->b:La/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, La/a;->values()[La/a;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    sget-object v5, La/e;->b:La/e;

    invoke-virtual {v5, v4}, La/e;->b(La/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static b()I
    .locals 2

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    check-cast v0, Lz/b;

    invoke-virtual {v0}, Lz/b;->q()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    return v0
.end method

.method static b(I)I
    .locals 1

    mul-int/lit16 v0, p0, 0x400

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x10

    return v0
.end method

.method static synthetic b(La/e;)I
    .locals 1

    iget v0, p0, La/e;->g:I

    return v0
.end method

.method static synthetic b(La/e;I)I
    .locals 1

    iget v0, p0, La/e;->i:I

    sub-int/2addr v0, p1

    iput v0, p0, La/e;->i:I

    return v0
.end method

.method static synthetic c(La/e;)I
    .locals 1

    iget v0, p0, La/e;->i:I

    return v0
.end method

.method static synthetic c(La/e;I)I
    .locals 0

    iput p1, p0, La/e;->g:I

    return p1
.end method

.method private declared-synchronized c()Ljava/lang/String;
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, La/e;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/d;

    invoke-virtual {v1}, La/d;->b()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, " + "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "no"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v0, " tiles use "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, La/e;->g:I

    invoke-static {v0}, La/e;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, La/e;->e:I

    invoke-static {v1}, La/e;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "M GL, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, La/e;->i:I

    invoke-static {v1}, La/e;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, La/e;->f:I

    invoke-static {v1}, La/e;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "M J+N"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method private static c(I)Ljava/lang/String;
    .locals 3

    mul-int/lit8 v0, p0, 0xa

    const/high16 v1, 0x10

    invoke-static {v0, v1}, LA/h;->b(II)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-int/lit8 v2, v0, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    rem-int/lit8 v0, v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(La/e;I)I
    .locals 0

    iput p1, p0, La/e;->i:I

    return p1
.end method

.method static synthetic d(La/e;)Lac/p;
    .locals 1

    iget-object v0, p0, La/e;->c:Lac/p;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(La/a;LG/w;Z)Lcom/google/android/maps/driveabout/vector/cu;
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, La/e;->j:[La/f;

    invoke-virtual {p1}, La/a;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p2, p3}, La/e;->a(La/f;LG/w;Z)Lcom/google/android/maps/driveabout/vector/cu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(La/f;LG/w;Z)Lcom/google/android/maps/driveabout/vector/cu;
    .locals 8

    const/4 v7, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La/e;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/d;

    if-nez v0, :cond_3

    if-eqz p3, :cond_0

    new-instance v0, La/d;

    invoke-direct {v0, p0}, La/d;-><init>(La/e;)V

    iget-object v1, p0, La/e;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v0

    :goto_0
    invoke-virtual {v6, p2}, La/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/g;

    if-eqz v0, :cond_1

    iget-object v1, p0, La/e;->c:Lac/p;

    invoke-interface {v1}, Lac/p;->b()J

    move-result-wide v1

    iput-wide v1, v0, La/g;->d:J

    iget-object v0, v0, La/g;->a:Lcom/google/android/maps/driveabout/vector/cu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-object v0

    :cond_0
    move-object v0, v7

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    :try_start_1
    new-instance v0, La/g;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, La/e;->c:Lac/p;

    invoke-interface {v4}, Lac/p;->b()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, La/g;-><init>(Lcom/google/android/maps/driveabout/vector/cu;IIJ)V

    invoke-virtual {v6, p2, v0}, La/d;->c(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    move-object v0, v7

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move-object v6, v0

    goto :goto_0
.end method

.method public declared-synchronized a(La/a;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, La/e;->j:[La/f;

    invoke-virtual {p1}, La/a;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, La/e;->a(La/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(La/a;LG/w;Lcom/google/android/maps/driveabout/vector/cu;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, La/e;->j:[La/f;

    invoke-virtual {p1}, La/a;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p2, p3}, La/e;->a(La/f;LG/w;Lcom/google/android/maps/driveabout/vector/cu;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(La/a;Lcom/google/android/maps/driveabout/vector/cu;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, La/e;->j:[La/f;

    invoke-virtual {p1}, La/a;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p2}, La/e;->a(La/f;Lcom/google/android/maps/driveabout/vector/cu;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(La/a;Ljava/util/List;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, La/e;->j:[La/f;

    invoke-virtual {p1}, La/a;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p2}, La/e;->a(La/f;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(La/f;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La/e;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, La/d;->a()V

    invoke-virtual {v0}, La/d;->i()V

    iget-object v0, p0, La/e;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(La/f;LG/w;Lcom/google/android/maps/driveabout/vector/cu;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La/e;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/d;

    if-nez v0, :cond_3

    new-instance v0, La/d;

    invoke-direct {v0, p0}, La/d;-><init>(La/e;)V

    iget-object v1, p0, La/e;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    :goto_0
    invoke-virtual {v1, p2}, La/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v2, v0, La/g;->a:Lcom/google/android/maps/driveabout/vector/cu;

    if-eqz v2, :cond_1

    invoke-virtual {v1, p2}, La/d;->a(LG/w;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, La/g;

    invoke-direct {v2, v0}, La/g;-><init>(La/g;)V

    invoke-virtual {v1, v2}, La/d;->a(La/g;)V

    :cond_1
    :goto_2
    iput-object p3, v0, La/g;->a:Lcom/google/android/maps/driveabout/vector/cu;

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/cu;->f()I

    move-result v1

    iput v1, v0, La/g;->b:I

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/cu;->g()I

    move-result v1

    iput v1, v0, La/g;->c:I

    iget v1, p0, La/e;->g:I

    iget v2, v0, La/g;->b:I

    add-int/2addr v1, v2

    iput v1, p0, La/e;->g:I

    iget v1, p0, La/e;->i:I

    iget v0, v0, La/g;->c:I

    add-int/2addr v0, v1

    iput v0, p0, La/e;->i:I

    iget v0, p0, La/e;->e:I

    iget v1, p0, La/e;->f:I

    invoke-direct {p0, v0, v1}, La/e;->a(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget-object v1, v0, La/g;->a:Lcom/google/android/maps/driveabout/vector/cu;

    iget-object v2, p0, La/e;->h:Lcom/google/android/maps/driveabout/vector/u;

    invoke-interface {v1, v2}, Lcom/google/android/maps/driveabout/vector/cu;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    iget v1, p0, La/e;->g:I

    iget v2, v0, La/g;->b:I

    sub-int/2addr v1, v2

    iput v1, p0, La/e;->g:I

    iget v1, p0, La/e;->i:I

    iget v2, v0, La/g;->c:I

    sub-int/2addr v1, v2

    iput v1, p0, La/e;->i:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method public declared-synchronized a(La/f;Lcom/google/android/maps/driveabout/vector/cu;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, La/e;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, La/d;

    move-object v7, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, La/g;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, La/g;-><init>(Lcom/google/android/maps/driveabout/vector/cu;IIJ)V

    invoke-virtual {v7, v1}, La/d;->a(La/g;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized a(La/f;Ljava/util/List;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La/e;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LG/w;

    invoke-virtual {v0, v1}, La/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/g;

    if-eqz v1, :cond_2

    iget-object v4, v1, La/g;->a:Lcom/google/android/maps/driveabout/vector/cu;

    if-eqz v4, :cond_2

    iget v4, v1, La/g;->b:I

    if-nez v4, :cond_2

    iget v1, v1, La/g;->c:I

    add-int/2addr v1, v3

    :goto_2
    move v3, v1

    goto :goto_1

    :cond_1
    iget v0, p0, La/e;->e:I

    sub-int/2addr v0, v3

    iget v1, p0, La/e;->f:I

    invoke-direct {p0, v0, v1}, La/e;->a(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v1, v3

    goto :goto_2
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, La/e;->h:Lcom/google/android/maps/driveabout/vector/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lac/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GLTileCacheManager.onLowJavaAndNativeMemory("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_1

    const-string v2, "critical"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, La/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_2

    iget v0, p0, La/e;->g:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, La/e;->a(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v2, "warning"

    goto :goto_0

    :cond_2
    iget v0, p0, La/e;->g:I

    iget v1, p0, La/e;->i:I

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v0, v1}, La/e;->a(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(La/a;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, La/e;->j:[La/f;

    invoke-virtual {p1}, La/a;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, La/e;->b(La/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(La/a;Ljava/util/List;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, La/e;->j:[La/f;

    invoke-virtual {p1}, La/a;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p2}, La/e;->b(La/f;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(La/f;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La/e;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/d;

    if-eqz v0, :cond_0

    sget-object v1, La/e;->a:LG/w;

    invoke-virtual {v0, v1}, La/d;->c(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, La/d;->f()V

    invoke-virtual {v0}, La/d;->i()V

    invoke-virtual {v0}, La/d;->b()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, La/e;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(La/f;Ljava/util/List;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La/e;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LG/w;

    invoke-virtual {v0, v1}, La/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/g;

    if-eqz v1, :cond_1

    iget-object v3, v1, La/g;->a:Lcom/google/android/maps/driveabout/vector/cu;

    if-eqz v3, :cond_1

    iget v3, v1, La/g;->b:I

    if-nez v3, :cond_1

    iget-object v3, v1, La/g;->a:Lcom/google/android/maps/driveabout/vector/cu;

    invoke-interface {v3}, Lcom/google/android/maps/driveabout/vector/cu;->f()I

    move-result v3

    iput v3, v1, La/g;->b:I

    iget v3, p0, La/e;->g:I

    iget v4, v1, La/g;->b:I

    add-int/2addr v3, v4

    iput v3, p0, La/e;->g:I

    iget v3, v1, La/g;->c:I

    iget-object v4, v1, La/g;->a:Lcom/google/android/maps/driveabout/vector/cu;

    invoke-interface {v4}, Lcom/google/android/maps/driveabout/vector/cu;->g()I

    move-result v4

    iput v4, v1, La/g;->c:I

    iget v1, p0, La/e;->i:I

    sub-int/2addr v1, v3

    add-int/2addr v1, v4

    iput v1, p0, La/e;->i:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget v0, p0, La/e;->e:I

    iget v1, p0, La/e;->f:I

    invoke-direct {p0, v0, v1}, La/e;->a(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized c(La/a;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, La/e;->j:[La/f;

    invoke-virtual {p1}, La/a;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, La/e;->c(La/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(La/f;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La/e;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, La/d;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(La/a;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, La/e;->j:[La/f;

    invoke-virtual {p1}, La/a;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, La/e;->d(La/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(La/f;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La/e;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/d;

    if-nez v0, :cond_0

    new-instance v0, La/d;

    invoke-direct {v0, p0}, La/d;-><init>(La/e;)V

    iget-object v1, p0, La/e;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, La/d;->h()V

    invoke-virtual {v0}, La/d;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.class public LF/c;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:LF/c;

.field private static b:Lak/h;

.field private static c:Lak/d;

.field private static final d:Ljava/util/ArrayList;


# instance fields
.field private final e:Ljava/util/Locale;

.field private final f:[LF/b;

.field private final g:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LF/c;->d:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Ljava/util/Locale;[LF/b;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LF/c;->e:Ljava/util/Locale;

    iput-object p2, p0, LF/c;->f:[LF/b;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LF/c;->g:Ljava/util/HashMap;

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    iget-object v3, p0, LF/c;->g:Ljava/util/HashMap;

    invoke-static {v2}, LF/b;->a(LF/b;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a()LF/c;
    .locals 1

    sget-object v0, LF/c;->a:LF/c;

    return-object v0
.end method

.method static a(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DA_DirOpt_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized a(LF/A;)V
    .locals 2

    const-class v0, LF/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, LF/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, LF/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, LF/c;->a:LF/c;

    iget-object v1, v1, LF/c;->e:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, LF/c;->a(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lak/h;)V
    .locals 3

    sput-object p1, LF/c;->b:Lak/h;

    new-instance v0, LF/c;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [LF/b;

    invoke-direct {v0, v1, v2}, LF/c;-><init>(Ljava/util/Locale;[LF/b;)V

    sput-object v0, LF/c;->a:LF/c;

    const/4 v0, 0x1

    invoke-static {p0, v0}, LF/c;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method private static declared-synchronized a(Landroid/content/Context;Z)V
    .locals 4

    const-class v0, LF/c;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, LF/c;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ls/v;->u:Law/f;

    invoke-static {p0, v2, v3}, Las/a;->a(Landroid/content/Context;Ljava/lang/String;Law/f;)Law/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_1
    invoke-static {v1, v2}, LF/c;->b(Ljava/util/Locale;Law/e;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    sget-object v1, LF/c;->c:Lak/d;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    :goto_1
    monitor-exit v0

    return-void

    :cond_1
    :try_start_3
    new-instance v1, LF/m;

    invoke-direct {v1, p0}, LF/m;-><init>(Landroid/content/Context;)V

    sput-object v1, LF/c;->c:Lak/d;

    sget-object v1, LF/c;->b:Lak/h;

    sget-object v2, LF/c;->c:Lak/d;

    invoke-virtual {v1, v2}, Lak/h;->c(Lak/d;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(Ljava/util/Locale;Law/e;)V
    .locals 0

    invoke-static {p0, p1}, LF/c;->b(Ljava/util/Locale;Law/e;)V

    return-void
.end method

.method public static a([LF/K;I)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    array-length v0, p0

    move v1, v4

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    invoke-virtual {v2}, LF/K;->b()I

    move-result v3

    if-ne v3, p1, :cond_1

    invoke-virtual {v2}, LF/K;->c()I

    move-result v0

    if-ne v0, v5, :cond_0

    move v0, v5

    :goto_1
    return v0

    :cond_0
    move v0, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method public static declared-synchronized b(LF/A;)V
    .locals 2

    const-class v0, LF/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, LF/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized b(Ljava/util/Locale;Law/e;)V
    .locals 5

    const-class v0, LF/c;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v1}, Law/e;->i(I)I

    move-result v1

    new-array v2, v1, [LF/b;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    const/4 v4, 0x1

    invoke-virtual {p1, v4, v3}, Law/e;->e(II)Law/e;

    move-result-object v4

    invoke-static {v4}, LF/b;->a(Law/e;)LF/b;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, LF/c;->a:LF/c;

    if-eqz v1, :cond_1

    sget-object v1, LF/c;->a:LF/c;

    iget-object v1, v1, LF/c;->f:[LF/b;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    new-instance v1, LF/c;

    invoke-direct {v1, p0, v2}, LF/c;-><init>(Ljava/util/Locale;[LF/b;)V

    sput-object v1, LF/c;->a:LF/c;

    sget-object v1, LF/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LF/A;

    invoke-interface {p0}, LF/A;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_2
    const/4 v1, 0x0

    :try_start_1
    sput-object v1, LF/c;->c:Lak/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void
.end method

.method public static b(I)[LF/K;
    .locals 5

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const/4 v0, 0x2

    new-array v0, v0, [LF/K;

    new-instance v1, LF/K;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v4}, LF/K;-><init>(II)V

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-instance v2, LF/K;

    const/4 v3, 0x5

    invoke-direct {v2, v3, v4}, LF/K;-><init>(II)V

    aput-object v2, v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static c([LF/K;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    aget-object v2, p0, v1

    invoke-virtual {v2}, LF/K;->b()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v1

    invoke-virtual {v2}, LF/K;->c()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(I)Z
    .locals 2

    iget-object v0, p0, LF/c;->g:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LF/b;

    if-eqz p0, :cond_0

    invoke-static {p0}, LF/b;->b(LF/b;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a([LF/K;)I
    .locals 5

    const/4 v1, 0x0

    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p1, v1

    iget-object v4, p0, LF/c;->g:Ljava/util/HashMap;

    invoke-virtual {v3}, LF/K;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public a(I)LF/b;
    .locals 2

    iget-object v0, p0, LF/c;->g:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LF/b;

    return-object p0
.end method

.method public a(Landroid/content/Context;[LF/K;)V
    .locals 2

    invoke-virtual {p0, p2}, LF/c;->a([LF/K;)I

    move-result v0

    array-length v1, p2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, LF/c;->a(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method public b([LF/K;)I
    .locals 4

    const/4 v1, 0x0

    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p1, v1

    invoke-virtual {v3}, LF/K;->b()I

    move-result v3

    invoke-direct {p0, v3}, LF/c;->c(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

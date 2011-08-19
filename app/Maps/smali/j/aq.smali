.class public final Lj/aq;
.super Ljava/lang/Object;


# static fields
.field static final a:Lae/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ", "

    invoke-static {v0}, Lae/i;->a(Ljava/lang/String;)Lae/i;

    move-result-object v0

    sput-object v0, Lj/aq;->a:Lae/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/util/Collection;)Ljava/lang/String;
    .locals 3

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lj/aq;->a(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lj/aq;->a:Lae/i;

    new-instance v2, Lj/aa;

    invoke-direct {v2, p0}, Lj/aa;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v2}, Lj/w;->a(Ljava/lang/Iterable;Lae/c;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lae/i;->a(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(I)Ljava/lang/StringBuilder;
    .locals 5

    if-ltz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "size must be non-negative"

    invoke-static {v0, v1}, Lae/k;->a(ZLjava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    int-to-long v1, p0

    const-wide/16 v3, 0x8

    mul-long/2addr v1, v3

    const-wide/32 v3, 0x40000000

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public static a(Ljava/util/Collection;Lae/f;)Ljava/util/Collection;
    .locals 2

    instance-of v0, p0, Lj/aj;

    if-eqz v0, :cond_0

    check-cast p0, Lj/aj;

    invoke-virtual {p0, p1}, Lj/aj;->a(Lae/f;)Lj/aj;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lj/aj;

    invoke-static {p0}, Lae/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p1}, Lae/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/f;

    invoke-direct {v1, p0, v0}, Lj/aj;-><init>(Ljava/util/Collection;Lae/f;)V

    move-object v0, v1

    goto :goto_0
.end method

.method static a(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 1

    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 2

    invoke-static {p0}, Lae/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

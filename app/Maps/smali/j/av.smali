.class final Lj/av;
.super Lj/ao;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final transient a:[Lj/af;

.field private final transient b:[Lj/af;

.field private final transient c:I

.field private final transient d:I

.field private transient e:Lj/O;

.field private transient f:Lj/O;

.field private transient g:Lj/Z;


# direct methods
.method varargs constructor <init>([Ljava/util/Map$Entry;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Lj/ao;-><init>()V

    array-length v0, p1

    invoke-direct {p0, v0}, Lj/av;->b(I)[Lj/af;

    move-result-object v1

    iput-object v1, p0, Lj/av;->a:[Lj/af;

    invoke-static {v0}, Lj/av;->a(I)I

    move-result v1

    invoke-direct {p0, v1}, Lj/av;->b(I)[Lj/af;

    move-result-object v2

    iput-object v2, p0, Lj/av;->b:[Lj/af;

    sub-int/2addr v1, v9

    iput v1, p0, Lj/av;->c:I

    move v1, v8

    move v2, v8

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v3, p1, v1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int/2addr v2, v5

    invoke-static {v5}, Lj/t;->a(I)I

    move-result v5

    iget v6, p0, Lj/av;->c:I

    and-int/2addr v5, v6

    iget-object v6, p0, Lj/av;->b:[Lj/af;

    aget-object v6, v6, v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3, v6}, Lj/av;->a(Ljava/lang/Object;Ljava/lang/Object;Lj/af;)Lj/af;

    move-result-object v3

    iget-object v7, p0, Lj/av;->b:[Lj/af;

    aput-object v3, v7, v5

    iget-object v5, p0, Lj/av;->a:[Lj/af;

    aput-object v3, v5, v1

    move-object v3, v6

    :goto_1
    if-eqz v3, :cond_1

    invoke-interface {v3}, Lj/af;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v9

    :goto_2
    const-string v6, "duplicate key: %s"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v8

    invoke-static {v5, v6, v7}, Lae/k;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v3}, Lj/af;->a()Lj/af;

    move-result-object v3

    goto :goto_1

    :cond_0
    move v5, v8

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iput v2, p0, Lj/av;->d:I

    return-void
.end method

.method private static a(I)I
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    move v1, v3

    :goto_0
    const-string v2, "table too large: %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lae/k;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    move v1, v5

    goto :goto_0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;Lj/af;)Lj/af;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Lj/an;

    invoke-direct {v0, p0, p1}, Lj/an;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lj/T;

    invoke-direct {v0, p0, p1, p2}, Lj/T;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lj/af;)V

    goto :goto_0
.end method

.method static synthetic a(Lj/av;)[Lj/af;
    .locals 1

    iget-object v0, p0, Lj/av;->a:[Lj/af;

    return-object v0
.end method

.method static synthetic b(Lj/av;)I
    .locals 1

    iget v0, p0, Lj/av;->d:I

    return v0
.end method

.method private b(I)[Lj/af;
    .locals 1

    new-array v0, p1, [Lj/af;

    return-object v0
.end method


# virtual methods
.method public a()Lj/O;
    .locals 1

    iget-object v0, p0, Lj/av;->e:Lj/O;

    if-nez v0, :cond_0

    new-instance v0, Lj/J;

    invoke-direct {v0, p0}, Lj/J;-><init>(Lj/av;)V

    iput-object v0, p0, Lj/av;->e:Lj/O;

    :cond_0
    return-object v0
.end method

.method public b()Lj/O;
    .locals 1

    iget-object v0, p0, Lj/av;->f:Lj/O;

    if-nez v0, :cond_0

    new-instance v0, Lj/ar;

    invoke-direct {v0, p0}, Lj/ar;-><init>(Lj/av;)V

    iput-object v0, p0, Lj/av;->f:Lj/O;

    :cond_0
    return-object v0
.end method

.method public c()Lj/Z;
    .locals 1

    iget-object v0, p0, Lj/av;->g:Lj/Z;

    if-nez v0, :cond_0

    new-instance v0, Lj/ae;

    invoke-direct {v0, p0}, Lj/ae;-><init>(Lj/av;)V

    iput-object v0, p0, Lj/av;->g:Lj/Z;

    :cond_0
    return-object v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lj/av;->a:[Lj/af;

    array-length v1, v0

    move v2, v4

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v4

    goto :goto_0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lj/av;->a()Lj/O;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lj/t;->a(I)I

    move-result v0

    iget v1, p0, Lj/av;->c:I

    and-int/2addr v0, v1

    iget-object v1, p0, Lj/av;->b:[Lj/af;

    aget-object v0, v1, v0

    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lj/af;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lj/af;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lj/af;->a()Lj/af;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lj/av;->b()Lj/O;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lj/av;->a:[Lj/af;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lj/av;->size()I

    move-result v0

    invoke-static {v0}, Lj/aq;->a(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lj/aq;->a:Lae/i;

    iget-object v2, p0, Lj/av;->a:[Lj/af;

    invoke-virtual {v1, v0, v2}, Lae/i;->a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lj/av;->c()Lj/Z;

    move-result-object v0

    return-object v0
.end method

.class public Lr/h;
.super Ljava/lang/Object;


# static fields
.field private static d:Lr/h;


# instance fields
.field private final a:[Lr/c;

.field private final b:Ljava/util/Hashtable;

.field private final c:Lcom/google/googlenav/ui/aT;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/aT;[Lr/c;)V
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lr/h;->b:Ljava/util/Hashtable;

    iput-object p1, p0, Lr/h;->c:Lcom/google/googlenav/ui/aT;

    iput-object p2, p0, Lr/h;->a:[Lr/c;

    invoke-direct {p0}, Lr/h;->f()V

    invoke-static {}, Lac/d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->ao()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/googlenav/labs/android/i;->a:Lcom/google/googlenav/labs/android/i;

    invoke-direct {p0, v0}, Lr/h;->a(Lcom/google/googlenav/labs/android/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    const-string v1, "VectorMaps"

    invoke-interface {v0, v1}, Ln/a;->b_(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/googlenav/labs/android/i;->a:Lcom/google/googlenav/labs/android/i;

    invoke-direct {p0, v1, v4}, Lr/h;->a(Lr/c;Z)V

    const-string v1, "VectorMaps"

    new-array v2, v4, [B

    const/4 v3, 0x0

    aput-byte v4, v2, v3

    invoke-interface {v0, v1, v2}, Ln/a;->a(Ljava/lang/String;[B)Z

    invoke-interface {v0}, Ln/a;->a()V

    :cond_0
    return-void
.end method

.method public static a()Lr/h;
    .locals 1

    sget-object v0, Lr/h;->d:Lr/h;

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/ui/aT;[Lr/c;)V
    .locals 1

    new-instance v0, Lr/h;

    invoke-direct {v0, p0, p1}, Lr/h;-><init>(Lcom/google/googlenav/ui/aT;[Lr/c;)V

    sput-object v0, Lr/h;->d:Lr/h;

    return-void
.end method

.method private a(Lr/c;Z)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Lr/c;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lr/h;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lr/h;->c:Lcom/google/googlenav/ui/aT;

    invoke-interface {p1, v0, p2}, Lr/c;->a(Lcom/google/googlenav/ui/aT;Z)V

    invoke-direct {p0}, Lr/h;->h()V

    if-nez p2, :cond_0

    const/16 v0, 0x47

    const-string v1, "a"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lr/c;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static a(I)Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lr/h;->g()[I

    move-result-object v0

    move v1, v3

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget v2, v0, v1

    if-ne v2, p0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1
.end method

.method private a(Lcom/google/googlenav/labs/android/i;)Z
    .locals 1

    iget-object v0, p0, Lr/h;->a:[Lr/c;

    invoke-static {v0, p1}, LA/r;->a([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(I)Lr/c;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lr/h;->a:[Lr/c;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lr/h;->a:[Lr/c;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lr/c;->e()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lr/h;->a:[Lr/c;

    aget-object v0, v1, v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static c()Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->B()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lac/d;->b()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/googlenav/labs/android/i;->a:Lcom/google/googlenav/labs/android/i;

    invoke-virtual {v0}, Lcom/google/googlenav/labs/android/i;->e()I

    move-result v0

    invoke-static {v0}, Lr/h;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    const-string v1, "VectorMaps"

    invoke-interface {v0, v1}, Ln/a;->b_(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_0
.end method

.method private f()V
    .locals 4

    invoke-static {}, Lr/h;->g()[I

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget v2, v0, v1

    invoke-direct {p0, v2}, Lr/h;->b(I)Lr/c;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lr/h;->a(Lr/c;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static g()[I
    .locals 6

    const/4 v5, 0x0

    const-string v0, "Labs"

    invoke-static {v0}, Lac/i;->b(Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v0

    if-nez v0, :cond_0

    new-array v0, v5, [I

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    new-array v2, v1, [I

    move v3, v5

    :goto_1
    if-ge v3, v1, :cond_1

    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v4

    aput v4, v2, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FLASH"

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    const-string v1, "Labs"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ln/a;->a(Ljava/lang/String;[B)Z

    new-array v0, v5, [I

    goto :goto_0
.end method

.method private h()V
    .locals 6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lr/h;->d()[Lr/c;

    move-result-object v2

    array-length v3, v2

    new-array v3, v3, [I

    :try_start_0
    array-length v4, v2

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v4, 0x0

    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_0

    aget-object v5, v2, v4

    invoke-interface {v5}, Lr/c;->e()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->g()Ln/a;

    move-result-object v1

    const-string v2, "Labs"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ln/a;->a(Ljava/lang/String;[B)Z

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    invoke-virtual {v0, v3}, Lak/h;->b([I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "FLASH"

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    const-string v1, "Labs"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ln/a;->a(Ljava/lang/String;[B)Z

    goto :goto_1
.end method


# virtual methods
.method public a(Lr/c;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lr/h;->a(Lr/c;Z)V

    return-void
.end method

.method public b(Lr/c;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Lr/c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr/h;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lr/h;->c:Lcom/google/googlenav/ui/aT;

    invoke-interface {p1, v0}, Lr/c;->a(Lcom/google/googlenav/ui/aT;)V

    invoke-direct {p0}, Lr/h;->h()V

    const/16 v0, 0x47

    const-string v1, "d"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lr/c;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public b()[Lr/c;
    .locals 1

    iget-object v0, p0, Lr/h;->a:[Lr/c;

    return-object v0
.end method

.method public d()[Lr/c;
    .locals 4

    iget-object v0, p0, Lr/h;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    new-array v0, v0, [Lr/c;

    iget-object v1, p0, Lr/h;->b:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr/c;

    add-int/lit8 v3, v2, 0x1

    aput-object p0, v0, v2

    move v2, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lr/h;->b:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr/c;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {p0}, Lr/c;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

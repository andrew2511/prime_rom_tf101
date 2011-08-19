.class public LD/e;
.super Ljava/lang/Object;


# static fields
.field private static e:LD/e;


# instance fields
.field private final a:[LD/j;

.field private final b:Ljava/util/Hashtable;

.field private final c:Lak/h;

.field private d:Z


# direct methods
.method private constructor <init>(Lak/h;[LD/j;)V
    .locals 6

    const v5, 0x155cc0

    const v4, 0x13d620

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, LD/e;->b:Ljava/util/Hashtable;

    iput-boolean v1, p0, LD/e;->d:Z

    iput-object p2, p0, LD/e;->a:[LD/j;

    iput-object p1, p0, LD/e;->c:Lak/h;

    iget-object v0, p0, LD/e;->a:[LD/j;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Bad KNE"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_5

    aget-object v2, p2, v0

    instance-of v3, v2, LD/l;

    if-eqz v3, :cond_2

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate version control experiments: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, LD/j;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v1, 0x1

    :cond_2
    invoke-interface {v2}, LD/j;->a()I

    move-result v3

    if-lt v3, v4, :cond_3

    invoke-interface {v2}, LD/j;->a()I

    move-result v3

    if-lt v3, v5, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad experiment id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, LD/j;->a()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " <= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, LD/j;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    array-length v0, p2

    if-lez v0, :cond_6

    if-nez v1, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No control experiment."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-direct {p0}, LD/e;->e()V

    invoke-direct {p0}, LD/e;->d()V

    new-instance v0, LD/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LD/n;-><init>(LD/e;LD/d;)V

    invoke-virtual {p1, v0}, Lak/h;->c(Lak/d;)V

    return-void
.end method

.method public static a()LD/e;
    .locals 1

    sget-object v0, LD/e;->e:LD/e;

    return-object v0
.end method

.method static synthetic a(LD/e;I)LD/j;
    .locals 1

    invoke-direct {p0, p1}, LD/e;->c(I)LD/j;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(LD/e;LD/j;)V
    .locals 0

    invoke-direct {p0, p1}, LD/e;->a(LD/j;)V

    return-void
.end method

.method private a(LD/j;)V
    .locals 1

    iget-object v0, p0, LD/e;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, LD/j;->b()V

    return-void
.end method

.method public static a(Lak/h;[LD/j;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Bad drd"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, LD/e;

    invoke-direct {v0, p0, p1}, LD/e;-><init>(Lak/h;[LD/j;)V

    sput-object v0, LD/e;->e:LD/e;

    return-void
.end method

.method static synthetic a(LD/e;)[LD/j;
    .locals 1

    iget-object v0, p0, LD/e;->a:[LD/j;

    return-object v0
.end method

.method static synthetic b(LD/e;)Z
    .locals 1

    iget-boolean v0, p0, LD/e;->d:Z

    return v0
.end method

.method private c(I)LD/j;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LD/e;->a:[LD/j;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, LD/e;->a:[LD/j;

    aget-object v1, v1, v0

    invoke-interface {v1}, LD/j;->a()I

    move-result v1

    if-ne v1, p1, :cond_1

    iget-object v1, p0, LD/e;->a:[LD/j;

    aget-object v0, v1, v0

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, LD/i;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LD/i;-><init>(ILD/d;)V

    iget-object v1, p0, LD/e;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LD/e;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LD/j;

    move-object v0, p0

    goto :goto_1
.end method

.method static synthetic c(LD/e;)Ljava/util/Hashtable;
    .locals 1

    invoke-direct {p0}, LD/e;->f()Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(LD/e;)Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, LD/e;->b:Ljava/util/Hashtable;

    return-object v0
.end method

.method private d()V
    .locals 6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, LD/e;->b()[LD/j;

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

    invoke-interface {v5}, LD/j;->a()I

    move-result v5

    aput v5, v3, v4

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->g()Ln/a;

    move-result-object v1

    const-string v2, "Experiments"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ln/a;->a(Ljava/lang/String;[B)Z

    iget-object v0, p0, LD/e;->c:Lak/h;

    invoke-virtual {v0, v3}, Lak/h;->a([I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private e()V
    .locals 4

    const-string v0, "Experiments"

    invoke-static {v0}, Lac/i;->b(Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_0

    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v3

    invoke-direct {p0, v3}, LD/e;->c(I)LD/j;

    move-result-object v3

    invoke-direct {p0, v3}, LD/e;->a(LD/j;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "FLASH"

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    const-string v1, "Experiments"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ln/a;->a(Ljava/lang/String;[B)Z

    goto :goto_0
.end method

.method static synthetic e(LD/e;)V
    .locals 0

    invoke-direct {p0}, LD/e;->d()V

    return-void
.end method

.method private f()Ljava/util/Hashtable;
    .locals 3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iget-object v1, p0, LD/e;->b:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LD/j;

    invoke-virtual {v0, p0, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    invoke-direct {p0, p1}, LD/e;->c(I)LD/j;

    move-result-object v0

    invoke-interface {v0}, LD/j;->d()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, LD/e;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, LD/j;->b()V

    invoke-direct {p0}, LD/e;->d()V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2

    invoke-direct {p0, p1}, LD/e;->c(I)LD/j;

    move-result-object v0

    invoke-interface {v0}, LD/j;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LD/e;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, LD/j;->c()V

    invoke-direct {p0}, LD/e;->d()V

    :cond_0
    return-void
.end method

.method public b()[LD/j;
    .locals 4

    iget-object v0, p0, LD/e;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    new-array v0, v0, [LD/j;

    iget-object v1, p0, LD/e;->b:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LD/j;

    add-int/lit8 v3, v2, 0x1

    aput-object p0, v0, v2

    move v2, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LD/e;->b:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LD/j;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {p0}, LD/j;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

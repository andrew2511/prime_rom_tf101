.class Lf/y;
.super Ljava/lang/Object;


# static fields
.field private static d:[B

.field private static e:Lf/y;

.field private static final f:Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/Vector;

.field private b:I

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lf/y;->d:[B

    sput-object v0, Lf/y;->e:Lf/y;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lf/y;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/y;->c:Z

    const/4 v0, -0x1

    iput v0, p0, Lf/y;->b:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lf/y;->a:Ljava/util/Vector;

    return-void
.end method

.method private a([BLf/K;)Lf/P;
    .locals 9

    const/4 v3, 0x0

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v7

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-static {p1}, Ln/c;->a([B)Ljava/io/DataInput;

    move-result-object v0

    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    invoke-virtual {p0}, Lf/y;->a()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eq v1, v2, :cond_2

    move-object v0, v7

    goto :goto_0

    :cond_2
    move v2, v3

    move-object v3, v7

    :goto_1
    if-ge v2, v1, :cond_6

    :try_start_1
    invoke-static {v0}, Lf/P;->a(Ljava/io/DataInput;)Lf/P;

    move-result-object v4

    iget-boolean v5, p0, Lf/y;->c:Z

    if-eqz v5, :cond_3

    new-instance v5, Lf/L;

    invoke-direct {v5, v4}, Lf/L;-><init>(Lf/P;)V

    iget-object v6, p0, Lf/y;->a:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lf/L;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    move-object v0, v7

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Lf/P;->c()Lf/K;

    move-result-object v5

    invoke-virtual {v5, p2}, Lf/K;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v5

    if-eqz v5, :cond_5

    :try_start_2
    iget-boolean v3, p0, Lf/y;->c:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    if-nez v3, :cond_4

    move-object v0, v4

    :goto_2
    const/4 v1, 0x0

    :try_start_3
    iput-boolean v1, p0, Lf/y;->c:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_3
    const-string v2, "FLASH"

    invoke-static {v2, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    :cond_4
    move-object v3, v4

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v7

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v1, v3

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v1, v4

    goto :goto_3

    :cond_6
    move-object v0, v3

    goto :goto_2
.end method

.method public static a(Ljava/io/DataInput;)Lf/y;
    .locals 5

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    new-instance v2, Lf/y;

    invoke-direct {v2}, Lf/y;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-static {p0}, Lf/L;->a(Ljava/io/DataInput;)Lf/L;

    move-result-object v4

    invoke-virtual {v2, v4}, Lf/y;->a(Lf/L;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "FlashRecord full"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, v2, Lf/y;->c:Z

    iput v1, v2, Lf/y;->b:I

    return-object v2
.end method

.method static f()V
    .locals 2

    sget-object v0, Lf/y;->f:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lf/y;->d:[B

    const/4 v1, 0x0

    sput-object v1, Lf/y;->e:Lf/y;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lf/y;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public a(J)J
    .locals 11

    iget-object v0, p0, Lf/y;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    if-lez v0, :cond_1

    const/4 v3, 0x0

    move v8, v3

    move-wide v9, v1

    move-wide v2, v9

    move v1, v8

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lf/y;->a(I)Lf/L;

    move-result-object v4

    invoke-virtual {v4}, Lf/L;->a()Lf/K;

    move-result-object v5

    invoke-virtual {v4}, Lf/L;->b()J

    move-result-wide v6

    invoke-static {v5, p1, p2, v6, v7}, Lf/J;->a(Lf/K;JJ)J

    move-result-wide v4

    add-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    int-to-long v0, v0

    div-long v0, v2, v0

    :goto_1
    return-wide v0

    :cond_1
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_1
.end method

.method public a(I)Lf/L;
    .locals 1

    iget-object v0, p0, Lf/y;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf/L;

    return-object p0
.end method

.method public a(Lf/K;)Lf/L;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lf/y;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lf/y;->a(I)Lf/L;

    move-result-object v1

    invoke-virtual {v1}, Lf/L;->a()Lf/K;

    move-result-object v2

    invoke-virtual {v2, p1}, Lf/K;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Lf/K;)Lf/P;
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lf/y;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lf/y;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lf/y;->e:Lf/y;

    invoke-virtual {p0, v1}, Lf/y;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lf/y;->d:[B

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_3

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    invoke-interface {v0, p1}, Ln/a;->c(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    if-eqz v1, :cond_1

    sget-object v1, Lf/y;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    sput-object v0, Lf/y;->d:[B

    sput-object p0, Lf/y;->e:Lf/y;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    :goto_2
    if-nez v0, :cond_2

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_2
    invoke-direct {p0, v0, p2}, Lf/y;->a([BLf/K;)Lf/P;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_2

    :cond_4
    move-object v1, v2

    goto :goto_1
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 3

    iget v0, p0, Lf/y;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t write unsaved FlashRecord"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lf/y;->a()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget v1, p0, Lf/y;->b:I

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lf/y;->a(I)Lf/L;

    move-result-object v2

    invoke-virtual {v2, p1}, Lf/L;->a(Ljava/io/DataOutput;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method a(Ljava/lang/String;I[B)V
    .locals 2

    iget v0, p0, Lf/y;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already saved"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    invoke-interface {v0, p3, p1}, Ln/a;->a([BLjava/lang/String;)I

    iput p2, p0, Lf/y;->b:I

    return-void
.end method

.method public a(Lf/L;)Z
    .locals 2

    invoke-virtual {p0}, Lf/y;->a()I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_0

    iget v0, p0, Lf/y;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lf/y;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lf/L;->a(Lf/y;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Ljava/util/Hashtable;)[B
    .locals 5

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const v0, 0x11940

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lf/y;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_1

    invoke-virtual {p0, v4}, Lf/y;->a(I)Lf/L;

    move-result-object v0

    invoke-virtual {v0}, Lf/L;->a()Lf/K;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/P;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {v0, v2}, Lf/P;->a(Ljava/io/DataOutput;)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_1
.end method

.method public b()I
    .locals 5

    iget-object v0, p0, Lf/y;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v4, v2

    move v2, v1

    move v1, v4

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lf/y;->a(I)Lf/L;

    move-result-object v3

    invoke-virtual {v3}, Lf/L;->c()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lf/y;->b:I

    return v0
.end method

.method d()Z
    .locals 2

    iget v0, p0, Lf/y;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lf/y;->b:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-ne p0, p1, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lf/y;

    if-nez v0, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    check-cast p1, Lf/y;

    iget v0, p0, Lf/y;->b:I

    iget v1, p1, Lf/y;->b:I

    if-eq v0, v1, :cond_2

    move v0, v5

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lf/y;->a()I

    move-result v1

    invoke-virtual {p1}, Lf/y;->a()I

    move-result v0

    if-eq v1, v0, :cond_3

    move v0, v5

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lf/y;->a:Ljava/util/Vector;

    move v3, v5

    :goto_1
    if-ge v3, v1, :cond_5

    iget-object v0, p0, Lf/y;->a:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/L;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Lf/L;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v5

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_5
    move v0, v6

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lf/y;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

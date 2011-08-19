.class public Lf/A;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/aU;
.implements Lf/N;


# static fields
.field private static final d:Ljava/lang/Object;

.field private static e:I


# instance fields
.field private final a:[Lf/h;

.field private final b:I

.field private final c:I

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lf/A;->d:Ljava/lang/Object;

    const/4 v0, 0x1

    sput v0, Lf/A;->e:I

    return-void
.end method

.method public constructor <init>([Lf/h;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lf/A;->m()I

    move-result v0

    iput v0, p0, Lf/A;->f:I

    iput-object p1, p0, Lf/A;->a:[Lf/h;

    iput p2, p0, Lf/A;->b:I

    iput p3, p0, Lf/A;->c:I

    return-void
.end method

.method public static a(Law/e;)Lf/A;
    .locals 4

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Law/e;->d(I)I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Law/e;->d(I)I

    move-result v1

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Law/e;->c(I)[B

    move-result-object v2

    invoke-static {v2}, Lf/A;->a([B)[Lf/h;

    move-result-object v2

    new-instance v3, Lf/A;

    invoke-direct {v3, v2, v0, v1}, Lf/A;-><init>([Lf/h;II)V

    return-object v3
.end method

.method public static a([JLf/h;Lf/l;)Z
    .locals 10

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_0
    invoke-virtual {p1, p2}, Lf/h;->a(Lf/l;)I

    move-result v0

    invoke-virtual {p1, p2}, Lf/h;->b(Lf/l;)I

    move-result p1

    const/4 p2, 0x0

    const/4 v1, 0x1

    move v9, v1

    move v1, p2

    move p2, v9

    :goto_1
    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_6

    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/J;->a(J)I

    move-result v2

    aget-wide v3, p0, v1

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/J;->b(J)I

    move-result v3

    aget-wide v4, p0, p2

    invoke-static {v4, v5}, Lcom/google/googlenav/ui/J;->a(J)I

    move-result v4

    aget-wide v5, p0, p2

    invoke-static {v5, v6}, Lcom/google/googlenav/ui/J;->b(J)I

    move-result v5

    if-gt v3, v5, :cond_2

    const/4 v6, 0x4

    sub-int v6, v3, v6

    if-gt v6, p1, :cond_1

    add-int/lit8 v6, v5, 0x4

    if-le p1, v6, :cond_3

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x4

    sub-int v6, v5, v6

    if-gt v6, p1, :cond_1

    add-int/lit8 v6, v3, 0x4

    if-gt p1, v6, :cond_1

    :cond_3
    if-gt v2, v4, :cond_5

    const/4 v6, 0x4

    sub-int v6, v2, v6

    if-gt v6, v0, :cond_1

    add-int/lit8 v6, v4, 0x4

    if-gt v0, v6, :cond_1

    :cond_4
    sub-int/2addr v4, v2

    sub-int/2addr v5, v3

    sub-int v2, v0, v2

    sub-int v3, p1, v3

    const/16 v6, 0x50

    mul-int v7, v4, v4

    mul-int v8, v5, v5

    add-int/2addr v7, v8

    invoke-static {v7}, LA/h;->c(I)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    mul-int/2addr v2, v5

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    div-int/2addr v2, v6

    const/4 v3, 0x4

    if-gt v2, v3, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_5
    const/4 v6, 0x4

    sub-int v6, v4, v6

    if-gt v6, v0, :cond_1

    add-int/lit8 v6, v2, 0x4

    if-le v0, v6, :cond_4

    goto :goto_2

    :cond_6
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static a([Lf/h;)[B
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lf/h;->b()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lf/h;->d()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static a([B)[Lf/h;
    .locals 7

    array-length v0, p0

    div-int/lit8 v0, v0, 0x8

    new-array v1, v0, [Lf/h;

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    new-instance v6, Lf/h;

    invoke-direct {v6, v4, v5}, Lf/h;-><init>(II)V

    aput-object v6, v1, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    return-object v1
.end method

.method private static m()I
    .locals 3

    sget-object v0, Lf/A;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lf/A;->e:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lf/A;->e:I

    monitor-exit v0

    return v1

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

    iget v0, p0, Lf/A;->f:I

    return v0
.end method

.method public a(Lf/l;)I
    .locals 3

    const/4 v2, 0x2

    invoke-virtual {p1}, Lf/l;->a()I

    move-result v0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    iget v1, p0, Lf/A;->c:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public ap_()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public b()Z
    .locals 1

    invoke-virtual {p0}, Lf/A;->l()Z

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lf/A;->b:I

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public f()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g()Lf/h;
    .locals 2

    iget-object v0, p0, Lf/A;->a:[Lf/h;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public h()[Lf/h;
    .locals 1

    iget-object v0, p0, Lf/A;->a:[Lf/h;

    return-object v0
.end method

.method public i()[[Lf/h;
    .locals 0

    const/4 p0, 0x0

    check-cast p0, [[Lf/h;

    return-object p0
.end method

.method public j()Law/e;
    .locals 3

    new-instance v0, Law/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x5

    iget v2, p0, Lf/A;->b:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/4 v1, 0x4

    iget v2, p0, Lf/A;->c:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/4 v1, 0x6

    iget-object v2, p0, Lf/A;->a:[Lf/h;

    invoke-static {v2}, Lf/A;->a([Lf/h;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(I[B)V

    return-object v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lf/A;->c:I

    return v0
.end method

.method public l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

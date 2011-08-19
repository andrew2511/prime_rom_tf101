.class Lt/af;
.super Ljava/lang/Object;


# instance fields
.field private final a:[B

.field private final b:I

.field private c:I

.field private d:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    const/16 v0, 0x2000

    new-array v0, v0, [B

    invoke-direct {p0, p1, v0}, Lt/af;-><init>(I[B)V

    return-void
.end method

.method constructor <init>(I[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lt/af;->d:I

    iput-object p2, p0, Lt/af;->a:[B

    iput p1, p0, Lt/af;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lt/af;->c:I

    return-void
.end method

.method constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lt/af;->d:I

    iput-object p1, p0, Lt/af;->a:[B

    iget-object v0, p0, Lt/af;->a:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lt/d;->a([BI)I

    move-result v0

    iput v0, p0, Lt/af;->b:I

    iget-object v0, p0, Lt/af;->a:[B

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lt/d;->a([BI)I

    move-result v0

    iput v0, p0, Lt/af;->c:I

    return-void
.end method

.method static synthetic a(Lt/af;)I
    .locals 1

    iget v0, p0, Lt/af;->b:I

    return v0
.end method

.method static a(Lt/g;)Lt/af;
    .locals 5

    const/16 v2, 0x1ffc

    const/16 v0, 0x2000

    new-array v0, v0, [B

    invoke-interface {p0, v0}, Lt/g;->b([B)V

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lt/d;->c([BII)I

    move-result v1

    invoke-static {v0, v2}, Lt/d;->a([BI)I

    move-result v2

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected checksum: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", expected: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Lt/af;

    invoke-direct {v1, v0}, Lt/af;-><init>([B)V

    return-object v1
.end method

.method static synthetic b(Lt/af;)I
    .locals 1

    iget v0, p0, Lt/af;->c:I

    return v0
.end method


# virtual methods
.method a()I
    .locals 1

    iget v0, p0, Lt/af;->b:I

    return v0
.end method

.method a(I)V
    .locals 4

    iget-object v0, p0, Lt/af;->a:[B

    mul-int/lit8 v1, p1, 0x14

    add-int/lit8 v1, v1, 0x8

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Lt/d;->a([BIJ)V

    return-void
.end method

.method a(Lt/Y;)V
    .locals 2

    iget-object v0, p0, Lt/af;->a:[B

    iget v1, p0, Lt/af;->c:I

    mul-int/lit8 v1, v1, 0x14

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {p1, v0, v1}, Lt/Y;->a([BI)V

    iget v0, p0, Lt/af;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lt/af;->c:I

    iget v0, p1, Lt/Y;->b:I

    iget v1, p1, Lt/Y;->c:I

    add-int/2addr v0, v1

    iget v1, p1, Lt/Y;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lt/af;->d:I

    return-void
.end method

.method b()I
    .locals 1

    iget v0, p0, Lt/af;->c:I

    return v0
.end method

.method b(I)J
    .locals 2

    iget-object v0, p0, Lt/af;->a:[B

    mul-int/lit8 v1, p1, 0x14

    add-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Lt/d;->c([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method b(Lt/g;)V
    .locals 5

    const/16 v4, 0x1ffc

    const/4 v3, 0x0

    iget-object v0, p0, Lt/af;->a:[B

    iget v1, p0, Lt/af;->b:I

    invoke-static {v0, v3, v1}, Lt/d;->a([BII)V

    iget-object v0, p0, Lt/af;->a:[B

    const/4 v1, 0x4

    iget v2, p0, Lt/af;->c:I

    invoke-static {v0, v1, v2}, Lt/d;->a([BII)V

    iget-object v0, p0, Lt/af;->a:[B

    invoke-static {v0, v3, v4}, Lt/d;->c([BII)I

    move-result v0

    iget-object v1, p0, Lt/af;->a:[B

    invoke-static {v1, v4, v0}, Lt/d;->a([BII)V

    iget-object v0, p0, Lt/af;->a:[B

    invoke-interface {p1, v0}, Lt/g;->a([B)V

    return-void
.end method

.method c()I
    .locals 3

    iget v0, p0, Lt/af;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lt/af;->d:I

    if-gez v0, :cond_1

    iget v0, p0, Lt/af;->c:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lt/af;->d(I)Lt/Y;

    move-result-object v0

    iget v1, v0, Lt/Y;->b:I

    iget v2, v0, Lt/Y;->c:I

    add-int/2addr v1, v2

    iget v0, v0, Lt/Y;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lt/af;->d:I

    :cond_1
    iget v0, p0, Lt/af;->d:I

    goto :goto_0
.end method

.method c(I)I
    .locals 2

    iget-object v0, p0, Lt/af;->a:[B

    mul-int/lit8 v1, p1, 0x14

    add-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Lt/Y;->b([BI)I

    move-result v0

    return v0
.end method

.method d(I)Lt/Y;
    .locals 3

    iget-object v0, p0, Lt/af;->a:[B

    mul-int/lit8 v1, p1, 0x14

    add-int/lit8 v1, v1, 0x8

    iget v2, p0, Lt/af;->b:I

    invoke-static {v0, v1, v2, p1}, Lt/Y;->a([BIII)Lt/Y;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lt/af;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lt/af;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

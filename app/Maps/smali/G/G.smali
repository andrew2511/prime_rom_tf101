.class public LG/G;
.super Ljava/lang/Object;

# interfaces
.implements LG/u;


# instance fields
.field private final a:LG/w;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:[B

.field private f:[Ljava/lang/String;

.field private g:[Ljava/lang/String;

.field private h:I


# direct methods
.method public constructor <init>(LG/w;III[B)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, LG/G;->h:I

    iput-object p1, p0, LG/G;->a:LG/w;

    iput p2, p0, LG/G;->b:I

    iput p3, p0, LG/G;->c:I

    iput p4, p0, LG/G;->d:I

    if-eqz p5, :cond_4

    array-length v0, p5

    if-eqz v0, :cond_4

    new-instance v0, Lf/k;

    invoke-direct {v0}, Lf/k;-><init>()V

    invoke-virtual {v0, p5}, Lf/k;->a([B)[B

    move-result-object v1

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bc;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lf/k;->b()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, LG/G;->f:[Ljava/lang/String;

    invoke-virtual {v0}, Lf/k;->c()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, LG/G;->g:[Ljava/lang/String;

    invoke-virtual {v0}, Lf/k;->d()I

    move-result v0

    iput v0, p0, LG/G;->h:I

    :cond_0
    aget-byte v0, v1, v3

    const/16 v2, 0x43

    if-ne v0, v2, :cond_3

    :try_start_0
    invoke-static {v1}, LaN/c;->a([B)[B
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iget-object v1, p0, LG/G;->f:[Ljava/lang/String;

    if-nez v1, :cond_1

    new-array v1, v3, [Ljava/lang/String;

    iput-object v1, p0, LG/G;->f:[Ljava/lang/String;

    :cond_1
    iget-object v1, p0, LG/G;->g:[Ljava/lang/String;

    if-nez v1, :cond_2

    new-array v1, v3, [Ljava/lang/String;

    iput-object v1, p0, LG/G;->g:[Ljava/lang/String;

    :cond_2
    iput-object v0, p0, LG/G;->e:[B

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Input image is not Compact JPEG"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object v0, v1

    goto :goto_0

    :cond_4
    move-object v0, p5

    goto :goto_0
.end method

.method public static a(LG/w;Ljava/io/DataInput;)LG/G;
    .locals 6

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    const v1, 0x44524154

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TILE_MAGIC expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p1}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Version mismatch: 7 or 8 expected, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " found"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {p1}, LG/w;->a(Ljava/io/DataInput;)LG/w;

    move-result-object v0

    invoke-virtual {v0}, LG/w;->c()I

    move-result v1

    invoke-virtual {p0}, LG/w;->c()I

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, LG/w;->d()I

    move-result v1

    invoke-virtual {p0}, LG/w;->d()I

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, LG/w;->b()I

    move-result v1

    invoke-virtual {p0}, LG/w;->b()I

    move-result v2

    if-eq v1, v2, :cond_3

    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected tile coords: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {p1}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v2

    invoke-static {p1}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v3

    invoke-static {p1}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v4

    invoke-static {p1}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v0

    new-array v5, v0, [B

    invoke-interface {p1, v5}, Ljava/io/DataInput;->readFully([B)V

    new-instance v0, LG/G;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, LG/G;-><init>(LG/w;III[B)V

    return-object v0
.end method

.method public static a(LG/w;III[BLjava/io/DataOutput;)V
    .locals 1

    const v0, 0x44524154

    invoke-interface {p5, v0}, Ljava/io/DataOutput;->writeInt(I)V

    const/16 v0, 0x8

    invoke-static {p5, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    invoke-virtual {p0, p5}, LG/w;->a(Ljava/io/DataOutput;)V

    invoke-static {p5, p1}, LG/L;->a(Ljava/io/DataOutput;I)V

    invoke-static {p5, p2}, LG/L;->a(Ljava/io/DataOutput;I)V

    invoke-static {p5, p3}, LG/L;->a(Ljava/io/DataOutput;I)V

    array-length v0, p4

    invoke-static {p5, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    invoke-interface {p5, p4}, Ljava/io/DataOutput;->write([B)V

    return-void
.end method


# virtual methods
.method public a()LG/w;
    .locals 1

    iget-object v0, p0, LG/G;->a:LG/w;

    return-object v0
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .locals 6

    iget-object v0, p0, LG/G;->e:[B

    iget-object v1, p0, LG/G;->f:[Ljava/lang/String;

    array-length v1, v1

    if-gtz v1, :cond_0

    iget-object v1, p0, LG/G;->g:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_1

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, LG/G;->e:[B

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iget-object v1, p0, LG/G;->f:[Ljava/lang/String;

    iget-object v2, p0, LG/G;->g:[Ljava/lang/String;

    iget v3, p0, LG/G;->h:I

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v1, v2, v3, v4}, Lf/k;->a([Ljava/lang/String;[Ljava/lang/String;ILjava/io/DataOutputStream;)V

    iget-object v1, p0, LG/G;->e:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    move-object v4, v0

    :goto_0
    iget-object v0, p0, LG/G;->a:LG/w;

    iget v1, p0, LG/G;->b:I

    iget v2, p0, LG/G;->c:I

    iget v3, p0, LG/G;->d:I

    move-object v5, p1

    invoke-static/range {v0 .. v5}, LG/G;->a(LG/w;III[BLjava/io/DataOutput;)V

    return-void

    :cond_1
    move-object v4, v0

    goto :goto_0
.end method

.method public a(Lac/p;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, LG/G;->b:I

    return v0
.end method

.method public c()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LG/G;->f:[Ljava/lang/String;

    return-object v0
.end method

.method public d()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LG/G;->g:[Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, LG/G;->h:I

    return v0
.end method

.method public f()[B
    .locals 1

    iget-object v0, p0, LG/G;->e:[B

    return-object v0
.end method

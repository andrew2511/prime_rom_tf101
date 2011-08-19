.class final Lt/I;
.super Ljava/lang/Object;


# instance fields
.field final a:I

.field final b:I

.field final c:I

.field final d:I

.field final e:I

.field final f:Z

.field final g:I

.field final h:Ljava/util/Locale;

.field final i:I

.field final j:I


# direct methods
.method constructor <init>(IIIIZILjava/util/Locale;)V
    .locals 4

    const/4 v3, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lt/I;->a:I

    iput p2, p0, Lt/I;->c:I

    iput p3, p0, Lt/I;->d:I

    iput p4, p0, Lt/I;->e:I

    iput-boolean p5, p0, Lt/I;->f:Z

    iput p6, p0, Lt/I;->g:I

    iput-object p7, p0, Lt/I;->h:Ljava/util/Locale;

    invoke-direct {p0}, Lt/I;->a()[B

    move-result-object v0

    array-length v1, v0

    iput v1, p0, Lt/I;->b:I

    iget v1, p0, Lt/I;->b:I

    invoke-static {v0, v3, v1}, Lt/d;->a([BII)V

    const/4 v1, 0x0

    array-length v2, v0

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Lt/d;->c([BII)I

    move-result v0

    iput v0, p0, Lt/I;->i:I

    iget v0, p0, Lt/I;->d:I

    mul-int/lit16 v0, v0, 0x400

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x2000

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v0, v0, 0x2000

    add-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lt/I;->j:I

    return-void
.end method

.method constructor <init>([BI)V
    .locals 5

    const/4 v2, 0x4

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lt/d;->a([BI)I

    move-result v0

    iput v0, p0, Lt/I;->a:I

    iget v0, p0, Lt/I;->a:I

    if-ne v0, v4, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t parse header for old schema"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v0, p2, 0x4

    invoke-static {p1, v0}, Lt/d;->a([BI)I

    move-result v0

    iput v0, p0, Lt/I;->b:I

    iget v0, p0, Lt/I;->b:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_1

    iget v0, p0, Lt/I;->b:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-le v0, v1, :cond_2

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong header size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lt/I;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Lt/I;->b:I

    add-int/2addr v0, p2

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Lt/d;->a([BI)I

    move-result v0

    iput v0, p0, Lt/I;->i:I

    iget v0, p0, Lt/I;->b:I

    sub-int/2addr v0, v2

    invoke-static {p1, p2, v0}, Lt/d;->c([BII)I

    move-result v0

    iget v1, p0, Lt/I;->i:I

    if-eq v1, v0, :cond_3

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Checksum mismatch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lt/I;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " vs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v0, Lad/e;

    invoke-direct {v0, p1}, Lad/e;-><init>([B)V

    add-int/lit8 v1, p2, 0x8

    invoke-virtual {v0, v1}, Lad/e;->skipBytes(I)I

    invoke-virtual {v0}, Lad/e;->readInt()I

    move-result v1

    iput v1, p0, Lt/I;->c:I

    invoke-virtual {v0}, Lad/e;->readInt()I

    move-result v1

    iput v1, p0, Lt/I;->d:I

    invoke-virtual {v0}, Lad/e;->readInt()I

    move-result v1

    iput v1, p0, Lt/I;->e:I

    invoke-virtual {v0}, Lad/e;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lt/I;->f:Z

    invoke-virtual {v0}, Lad/e;->readInt()I

    move-result v1

    iput v1, p0, Lt/I;->g:I

    invoke-virtual {v0}, Lad/e;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lad/e;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lad/e;->readUTF()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v1, v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lt/I;->h:Ljava/util/Locale;

    iget v0, p0, Lt/I;->d:I

    mul-int/lit16 v0, v0, 0x400

    sub-int/2addr v0, v4

    div-int/lit16 v0, v0, 0x2000

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v0, v0, 0x2000

    add-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lt/I;->j:I

    return-void
.end method

.method private a(Ljava/io/DataOutput;)V
    .locals 1

    iget v0, p0, Lt/I;->a:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p0, Lt/I;->b:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p0, Lt/I;->c:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p0, Lt/I;->d:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p0, Lt/I;->e:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-boolean v0, p0, Lt/I;->f:Z

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    iget v0, p0, Lt/I;->g:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object v0, p0, Lt/I;->h:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lt/I;->h:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lt/I;->h:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    iget v0, p0, Lt/I;->i:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    return-void
.end method

.method private a()[B
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v1}, Lt/I;->a(Ljava/io/DataOutput;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a([BI)I
    .locals 3

    invoke-direct {p0}, Lt/I;->a()[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CatalogVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lt/I;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " BlockSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lt/I;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " MaxShardCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lt/I;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " RecordsPerBlock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lt/I;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AutoConfig: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lt/I;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DataVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lt/I;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Checksum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lt/I;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

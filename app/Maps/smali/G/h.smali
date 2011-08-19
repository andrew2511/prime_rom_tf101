.class public LG/h;
.super Ljava/lang/Object;

# interfaces
.implements LG/d;


# instance fields
.field private final a:I

.field private final b:[B

.field private final c:I

.field private final d:LG/r;

.field private final e:[I


# direct methods
.method public constructor <init>(I[BILG/r;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LG/h;->a:I

    iput-object p2, p0, LG/h;->b:[B

    iput p3, p0, LG/h;->c:I

    iput-object p4, p0, LG/h;->d:LG/r;

    iput-object p5, p0, LG/h;->e:[I

    return-void
.end method

.method public static a(Ljava/io/DataInput;ILG/q;)LG/h;
    .locals 7

    const/4 v4, 0x0

    invoke-static {p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v1

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    new-array v2, v0, [B

    invoke-interface {p0, v2}, Ljava/io/DataInput;->readFully([B)V

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    :cond_0
    invoke-static {p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v0

    :goto_0
    new-array v5, v0, [I

    :goto_1
    if-ge v4, v0, :cond_1

    invoke-static {p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v6

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, LG/h;

    invoke-static {}, LG/r;->a()LG/r;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, LG/h;-><init>(I[BILG/r;[I)V

    return-object v0

    :cond_2
    move v0, v4

    goto :goto_0
.end method


# virtual methods
.method public a(LG/w;Ljava/io/DataOutput;)V
    .locals 4

    iget v0, p0, LG/h;->a:I

    invoke-static {p2, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    iget-object v0, p0, LG/h;->b:[B

    array-length v0, v0

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object v0, p0, LG/h;->b:[B

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->write([B)V

    iget v0, p0, LG/h;->c:I

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget-object v0, p0, LG/h;->e:[I

    array-length v0, v0

    invoke-static {p2, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    iget-object v0, p0, LG/h;->e:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    invoke-static {p2, v3}, LG/L;->a(Ljava/io/DataOutput;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a()[B
    .locals 1

    iget-object v0, p0, LG/h;->b:[B

    return-object v0
.end method

.method public b()LG/ac;
    .locals 1

    sget-object v0, LG/ac;->a:LG/ac;

    return-object v0
.end method

.method public h()LG/r;
    .locals 1

    iget-object v0, p0, LG/h;->d:LG/r;

    return-object v0
.end method

.method public k()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, LG/h;->c:I

    return v0
.end method

.method public m()[I
    .locals 1

    iget-object v0, p0, LG/h;->e:[I

    return-object v0
.end method

.method public n()I
    .locals 1

    iget-object v0, p0, LG/h;->b:[B

    array-length v0, v0

    return v0
.end method

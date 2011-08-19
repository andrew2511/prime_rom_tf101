.class public LG/J;
.super Ljava/lang/Object;

# interfaces
.implements LG/d;


# instance fields
.field private a:LG/m;

.field private b:LG/r;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private final g:[I


# direct methods
.method public constructor <init>(LG/m;LG/r;ILjava/lang/String;II[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG/J;->a:LG/m;

    iput-object p2, p0, LG/J;->b:LG/r;

    iput p3, p0, LG/J;->c:I

    iput-object p4, p0, LG/J;->d:Ljava/lang/String;

    iput p5, p0, LG/J;->e:I

    iput p6, p0, LG/J;->f:I

    iput-object p7, p0, LG/J;->g:[I

    return-void
.end method

.method public static a(Ljava/io/DataInput;ILG/w;LG/q;[Ljava/lang/String;)LG/J;
    .locals 10

    const/16 v7, 0x9

    const/4 v8, 0x0

    invoke-static {p0, p2}, LG/m;->a(Ljava/io/DataInput;LG/w;)LG/m;

    move-result-object v1

    invoke-static {p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v0

    invoke-virtual {p3, v0}, LG/q;->a(I)LG/r;

    move-result-object v2

    const/4 v0, -0x1

    const/4 v3, 0x0

    if-ne p1, v7, :cond_3

    invoke-static {p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v0

    invoke-static {v0, p4}, LG/X;->a(I[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    aget-object v3, p4, v0

    move-object v4, v3

    move v3, v0

    :goto_0
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v5

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v6

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    if-ne p1, v7, :cond_2

    :cond_0
    invoke-static {p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v0

    :goto_1
    new-array v7, v0, [I

    :goto_2
    if-ge v8, v0, :cond_1

    invoke-static {p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v9

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    new-instance v0, LG/J;

    invoke-direct/range {v0 .. v7}, LG/J;-><init>(LG/m;LG/r;ILjava/lang/String;II[I)V

    return-object v0

    :cond_2
    move v0, v8

    goto :goto_1

    :cond_3
    move-object v4, v3

    move v3, v0

    goto :goto_0
.end method


# virtual methods
.method public a()LG/m;
    .locals 1

    iget-object v0, p0, LG/J;->a:LG/m;

    return-object v0
.end method

.method public a(LG/w;Ljava/io/DataOutput;)V
    .locals 4

    iget-object v0, p0, LG/J;->a:LG/m;

    invoke-virtual {v0, p1, p2}, LG/m;->a(LG/w;Ljava/io/DataOutput;)V

    iget-object v0, p0, LG/J;->b:LG/r;

    invoke-virtual {v0}, LG/r;->b()I

    move-result v0

    invoke-static {p2, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    iget v0, p0, LG/J;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, LG/J;->c:I

    invoke-static {p2, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    :cond_0
    iget v0, p0, LG/J;->e:I

    int-to-byte v0, v0

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget v0, p0, LG/J;->f:I

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object v0, p0, LG/J;->g:[I

    array-length v0, v0

    invoke-static {p2, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    iget-object v0, p0, LG/J;->g:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    invoke-static {p2, v3}, LG/L;->a(Ljava/io/DataOutput;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b()LG/ac;
    .locals 1

    sget-object v0, LG/ac;->a:LG/ac;

    return-object v0
.end method

.method public h()LG/r;
    .locals 1

    iget-object v0, p0, LG/J;->b:LG/r;

    return-object v0
.end method

.method public k()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, LG/J;->e:I

    return v0
.end method

.method public m()[I
    .locals 1

    iget-object v0, p0, LG/J;->g:[I

    return-object v0
.end method

.method public n()I
    .locals 1

    iget-object v0, p0, LG/J;->a:LG/m;

    invoke-virtual {v0}, LG/m;->f()I

    move-result v0

    return v0
.end method

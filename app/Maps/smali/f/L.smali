.class Lf/L;
.super Ljava/lang/Object;


# static fields
.field static a:I


# instance fields
.field private final b:Lf/K;

.field private c:I

.field private final d:I

.field private e:Lf/y;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    sput v0, Lf/L;->a:I

    return-void
.end method

.method private constructor <init>(Lf/K;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/L;->b:Lf/K;

    invoke-virtual {p0, p2, p3}, Lf/L;->a(J)V

    iput p4, p0, Lf/L;->d:I

    return-void
.end method

.method public constructor <init>(Lf/P;)V
    .locals 4

    invoke-virtual {p1}, Lf/P;->c()Lf/K;

    move-result-object v0

    invoke-virtual {p1}, Lf/P;->g()J

    move-result-wide v1

    invoke-virtual {p1}, Lf/P;->j()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lf/L;-><init>(Lf/K;JI)V

    return-void
.end method

.method public static a(Ljava/io/DataInput;)Lf/L;
    .locals 6

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v1

    invoke-static {p0}, Lf/K;->a(Ljava/io/DataInput;)Lf/K;

    move-result-object v2

    new-instance v3, Lf/L;

    int-to-long v4, v0

    invoke-direct {v3, v2, v4, v5, v1}, Lf/L;-><init>(Lf/K;JI)V

    return-object v3
.end method


# virtual methods
.method public a()Lf/K;
    .locals 1

    iget-object v0, p0, Lf/L;->b:Lf/K;

    return-object v0
.end method

.method public a(J)V
    .locals 4

    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    const-wide/32 v2, 0x424b1f68

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lf/L;->c:I

    return-void
.end method

.method public a(Lf/y;)V
    .locals 2

    iget-object v0, p0, Lf/L;->e:Lf/y;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FlashRecord already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lf/L;->e:Lf/y;

    return-void
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 1

    iget v0, p0, Lf/L;->c:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p0, Lf/L;->d:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeShort(I)V

    iget-object v0, p0, Lf/L;->b:Lf/K;

    invoke-virtual {v0, p1}, Lf/K;->a(Ljava/io/DataOutput;)V

    return-void
.end method

.method public b()J
    .locals 4

    iget v0, p0, Lf/L;->c:I

    int-to-long v0, v0

    const-wide/32 v2, 0x424b1f68

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lf/L;->d:I

    add-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public d()Lf/y;
    .locals 1

    iget-object v0, p0, Lf/L;->e:Lf/y;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lf/L;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    check-cast p1, Lf/L;

    iget v0, p0, Lf/L;->d:I

    iget v1, p1, Lf/L;->d:I

    if-eq v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lf/L;->b:Lf/K;

    if-nez v0, :cond_4

    iget-object v0, p1, Lf/L;->b:Lf/K;

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lf/L;->b:Lf/K;

    iget-object v1, p1, Lf/L;->b:Lf/K;

    invoke-virtual {v0, v1}, Lf/K;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lf/L;->b:Lf/K;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/L;->b:Lf/K;

    invoke-virtual {v0}, Lf/K;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1d

    iget v1, p0, Lf/L;->d:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lf/L;->b:Lf/K;

    invoke-virtual {v1}, Lf/K;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lf/L;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

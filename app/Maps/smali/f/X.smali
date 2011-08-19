.class public abstract Lf/X;
.super Lak/m;


# static fields
.field private static volatile f:Z


# instance fields
.field private a:LA/p;

.field protected final b:J

.field private final c:I

.field private d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lf/X;->f:Z

    return-void
.end method

.method protected constructor <init>(IB)V
    .locals 4

    invoke-direct {p0}, Lak/m;-><init>()V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lf/X;->b:J

    iput p1, p0, Lf/X;->c:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tile-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    shl-int/2addr v1, p2

    invoke-static {v1}, Lf/X;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, LA/p;

    const-string v2, "t"

    const/16 v3, 0x16

    invoke-direct {v1, v0, v2, v3}, LA/p;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, p0, Lf/X;->a:LA/p;

    iget-object v0, p0, Lf/X;->a:LA/p;

    invoke-virtual {v0}, LA/p;->a()V

    return-void
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lf/X;->f:Z

    return-void
.end method

.method private static b(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_0

    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_1

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_2

    const-string v1, "h"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_3

    const-string v1, "n"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_3
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_4

    const-string v1, "t"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_4
    const-string v1, ","

    invoke-static {v0, v1}, LR/a;->a(Ljava/util/Vector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/io/DataInput;)[B
    .locals 1

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    new-array v0, v0, [B

    invoke-interface {p1, v0}, Ljava/io/DataInput;->readFully([B)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lf/X;->c:I

    return v0
.end method

.method protected abstract a(I)V
.end method

.method protected abstract a(II)V
.end method

.method protected a([Lf/K;Ljava/io/DataOutput;)V
    .locals 4

    iget v0, p0, Lf/X;->c:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_2

    array-length v0, p1

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeShort(I)V

    invoke-static {}, Lf/P;->w()I

    move-result v0

    iput v0, p0, Lf/X;->d:I

    iget v0, p0, Lf/X;->d:I

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeShort(I)V

    const/16 v0, 0x100

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeShort(I)V

    const-wide/16 v0, 0xa2f

    sget-boolean v2, Lf/X;->f:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x2000

    or-long/2addr v0, v2

    :cond_0
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/d;->V()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/32 v2, 0x8000

    or-long/2addr v0, v2

    :cond_1
    invoke-interface {p2, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    :cond_2
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    aget-object v1, p1, v0

    invoke-virtual {v1, p2}, Lf/K;->a(Ljava/io/DataOutput;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lf/X;->b:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lf/X;->e:I

    return-void
.end method

.method protected abstract a(ILf/K;[B)Z
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 12

    const/4 v11, 0x1

    const/4 v5, 0x0

    :try_start_0
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lf/X;->b:J

    sub-long/2addr v0, v2

    long-to-int v2, v0

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    iget v1, p0, Lf/X;->d:I

    invoke-virtual {p0, v0, v1}, Lf/X;->a(II)V

    iget v0, p0, Lf/X;->c:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_3

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Server returned: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    move v1, v5

    :goto_0
    invoke-virtual {p0, v1}, Lf/X;->a(I)V

    throw v0

    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    move v4, v0

    :goto_1
    move v0, v5

    move v6, v5

    :goto_2
    if-ge v6, v4, :cond_1

    :try_start_2
    invoke-static {p1}, Lf/K;->a(Ljava/io/DataInput;)Lf/K;

    move-result-object v1

    invoke-direct {p0, p1}, Lf/X;->b(Ljava/io/DataInput;)[B

    move-result-object v3

    invoke-virtual {p0, v6, v1, v3}, Lf/X;->a(ILf/K;[B)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->p()Lac/p;

    move-result-object v1

    invoke-interface {v1}, Lac/p;->b()J

    move-result-wide v7

    iget-wide v9, p0, Lf/X;->b:J

    sub-long/2addr v7, v9

    long-to-int v3, v7

    iget-object v1, p0, Lf/X;->a:LA/p;

    invoke-virtual {v1}, LA/p;->b()V

    invoke-static {v0}, Lf/X;->b(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lf/X;->e:I

    invoke-static/range {v0 .. v5}, Lcom/google/googlenav/bO;->a(Ljava/lang/String;IIIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {p0, v6}, Lf/X;->a(I)V

    return v11

    :cond_2
    :try_start_3
    array-length v3, v3

    add-int/2addr v3, v5

    invoke-virtual {v1}, Lf/K;->b()B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v1

    shl-int v1, v11, v1

    or-int/2addr v0, v1

    add-int/lit8 v1, v6, 0x1

    move v5, v3

    move v6, v1

    goto :goto_2

    :catchall_1
    move-exception v0

    move v1, v6

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1
.end method

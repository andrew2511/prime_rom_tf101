.class public LG/P;
.super Ljava/lang/Object;

# interfaces
.implements LG/u;


# instance fields
.field private final a:LG/w;

.field private final b:I

.field private final c:[LG/d;

.field private final d:LG/q;

.field private final e:[Ljava/lang/String;

.field private f:J

.field private final g:[Ljava/lang/String;

.field private final h:[Ljava/lang/String;

.field private final i:[Ljava/lang/String;

.field private j:I

.field private final k:I

.field private final l:[LG/E;


# direct methods
.method public constructor <init>(LG/q;LG/w;I[Ljava/lang/String;[Ljava/lang/String;I[LG/d;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LG/P;->f:J

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, LG/P;->h:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, LG/P;->j:I

    iput-object p1, p0, LG/P;->d:LG/q;

    iput-object v3, p0, LG/P;->e:[Ljava/lang/String;

    iput-object p2, p0, LG/P;->a:LG/w;

    iput p3, p0, LG/P;->b:I

    if-nez p4, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    :goto_0
    iput-object v0, p0, LG/P;->g:[Ljava/lang/String;

    if-nez p5, :cond_1

    new-array v0, v2, [Ljava/lang/String;

    :goto_1
    iput-object v0, p0, LG/P;->i:[Ljava/lang/String;

    iput p6, p0, LG/P;->j:I

    iput-object p7, p0, LG/P;->c:[LG/d;

    iput p8, p0, LG/P;->k:I

    iput-object v3, p0, LG/P;->l:[LG/E;

    return-void

    :cond_0
    move-object v0, p4

    goto :goto_0

    :cond_1
    move-object v0, p5

    goto :goto_1
.end method

.method public constructor <init>(LG/q;[Ljava/lang/String;LG/w;I[Ljava/lang/String;[Ljava/lang/String;I[LG/d;I[LG/E;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LG/P;->f:J

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, LG/P;->h:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, LG/P;->j:I

    iput-object p1, p0, LG/P;->d:LG/q;

    iput-object p2, p0, LG/P;->e:[Ljava/lang/String;

    iput-object p3, p0, LG/P;->a:LG/w;

    iput p4, p0, LG/P;->b:I

    if-nez p5, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    :goto_0
    iput-object v0, p0, LG/P;->g:[Ljava/lang/String;

    if-nez p6, :cond_1

    new-array v0, v2, [Ljava/lang/String;

    :goto_1
    iput-object v0, p0, LG/P;->i:[Ljava/lang/String;

    iput p7, p0, LG/P;->j:I

    iput-object p8, p0, LG/P;->c:[LG/d;

    iput p9, p0, LG/P;->k:I

    iput-object p10, p0, LG/P;->l:[LG/E;

    return-void

    :cond_0
    move-object v0, p5

    goto :goto_0

    :cond_1
    move-object v0, p6

    goto :goto_1
.end method

.method public static a(LG/w;Ljava/io/DataInput;III)LG/P;
    .locals 11

    invoke-static {p1}, LG/P;->a(Ljava/io/DataInput;)V

    invoke-static {p1}, LG/w;->a(Ljava/io/DataInput;)LG/w;

    move-result-object v0

    invoke-virtual {v0}, LG/w;->c()I

    move-result v1

    invoke-virtual {p0}, LG/w;->c()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, LG/w;->d()I

    move-result v1

    invoke-virtual {p0}, LG/w;->d()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, LG/w;->b()I

    move-result v1

    invoke-virtual {p0}, LG/w;->b()I

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Expected tile coords: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " but received "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v0, -0x1

    const/16 v1, 0x8

    if-eq p2, v1, :cond_2

    const/16 v1, 0x9

    if-ne p2, v1, :cond_6

    :cond_2
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v0

    if-lez v0, :cond_3

    add-int/lit16 v0, v0, 0x7d0

    :cond_3
    invoke-static {p1}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-static {p1}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_5

    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    move-object v6, v3

    move-object v5, v2

    move v7, v0

    :goto_2
    invoke-static {p1, p2}, LG/q;->a(Ljava/io/DataInput;I)LG/q;

    move-result-object v1

    const/4 v0, 0x0

    const/16 v2, 0x9

    if-ne p2, v2, :cond_7

    invoke-static {p1}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v0, :cond_8

    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v5, v1

    move v7, v0

    goto :goto_2

    :cond_7
    move-object v2, v0

    :cond_8
    invoke-static {p1}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v0

    new-array v8, v0, [LG/d;

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v0, :cond_9

    invoke-static {p1, p2, p0, v1, v2}, LG/P;->a(Ljava/io/DataInput;ILG/w;LG/q;[Ljava/lang/String;)LG/d;

    move-result-object v4

    aput-object v4, v8, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    const/16 v3, 0x9

    if-ne p2, v3, :cond_b

    invoke-static {p1}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v0

    new-array v3, v0, [LG/E;

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v0, :cond_a

    invoke-static {p1, p2, p0, v1, v2}, LG/E;->a(Ljava/io/DataInput;ILG/w;LG/q;[Ljava/lang/String;)LG/E;

    move-result-object v9

    aput-object v9, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_a
    move-object v10, v3

    :goto_6
    new-instance v0, LG/P;

    move-object v3, p0

    move v4, p3

    move v9, p4

    invoke-direct/range {v0 .. v10}, LG/P;-><init>(LG/q;[Ljava/lang/String;LG/w;I[Ljava/lang/String;[Ljava/lang/String;I[LG/d;I[LG/E;)V

    return-object v0

    :cond_b
    move-object v10, v0

    goto :goto_6
.end method

.method public static a(LG/w;[BI)LG/P;
    .locals 10

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, LG/P;->a([B)[J

    move-result-object v0

    aget-wide v1, v0, v1

    long-to-int v8, v1

    aget-wide v1, v0, v3

    long-to-int v1, v1

    const/4 v2, 0x2

    aget-wide v2, v0, v2

    long-to-int v2, v2

    const/4 v3, 0x3

    aget-wide v3, v0, v3

    const/16 v0, 0x9

    if-ne v1, v0, :cond_0

    const/16 v0, 0x16

    move v6, v0

    :goto_0
    array-length v0, p1

    sub-int v7, v0, v6

    move-object v0, p0

    move-object v5, p1

    invoke-static/range {v0 .. v7}, LG/P;->a(LG/w;IIJ[BII)V

    :try_start_0
    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/zip/Inflater;-><init>(Z)V

    array-length v2, p1

    sub-int/2addr v2, v6

    invoke-virtual {v0, p1, v6, v2}, Ljava/util/zip/Inflater;->setInput([BII)V

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, LaY/b;->a(I)[B

    move-result-object v3

    if-nez v3, :cond_3

    new-array v2, v2, [B

    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v3

    move v9, v3

    move-object v3, v2

    move v2, v9

    :goto_2
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v4

    if-lez v4, :cond_1

    array-length v4, v3

    mul-int/lit8 v4, v4, 0x2

    new-array v4, v4, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v5, v4, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v4

    sub-int/2addr v3, v2

    invoke-virtual {v0, v4, v2, v3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v3

    add-int/2addr v2, v3

    move-object v3, v4

    goto :goto_2

    :cond_0
    const/16 v0, 0xc

    move v6, v0

    goto :goto_0

    :cond_1
    new-instance v0, Lad/e;

    invoke-direct {v0, v3}, Lad/e;-><init>([B)V

    invoke-static {p0, v0, v1, v8, p2}, LG/P;->a(LG/w;Ljava/io/DataInput;III)LG/P;

    move-result-object v1

    invoke-virtual {v0}, Lad/e;->a()I

    move-result v0

    if-eq v0, v2, :cond_2

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Byte stream not fully read for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, LG/P;->a()LG/w;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :try_start_1
    invoke-static {v3}, LaY/b;->a([B)V
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :cond_3
    move-object v2, v3

    goto :goto_1
.end method

.method static a(Ljava/io/DataInput;ILG/w;LG/q;[Ljava/lang/String;)LG/d;
    .locals 4

    invoke-static {p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown feature type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-static {p0, p1, p3}, LG/l;->a(Ljava/io/DataInput;ILG/q;)LG/l;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-static {p0, p1, p2, p3, p4}, LG/i;->a(Ljava/io/DataInput;ILG/w;LG/q;[Ljava/lang/String;)LG/i;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {p0, p1, p2, p3, p4}, LG/c;->a(Ljava/io/DataInput;ILG/w;LG/q;[Ljava/lang/String;)LG/c;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-static {p0, p1, p2, p3, p4}, LG/n;->a(Ljava/io/DataInput;ILG/w;LG/q;[Ljava/lang/String;)LG/n;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-static {p0, p1, p2, p3, p4}, LG/J;->a(Ljava/io/DataInput;ILG/w;LG/q;[Ljava/lang/String;)LG/J;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-static {p0, p1, p3}, LG/h;->a(Ljava/io/DataInput;ILG/q;)LG/h;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-static {p0, p1, p2, p3, p4}, LG/Y;->a(Ljava/io/DataInput;ILG/w;LG/q;[Ljava/lang/String;)LG/Y;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    invoke-static {p0, p1, p2, p3, p4}, LG/V;->a(Ljava/io/DataInput;ILG/w;LG/q;[Ljava/lang/String;)LG/V;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    invoke-static {p0, p1, p2, p3, p4}, LG/ae;->a(Ljava/io/DataInput;ILG/w;LG/q;[Ljava/lang/String;)LG/d;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static a(I[B)V
    .locals 2

    const/4 v0, 0x0

    shr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    const/4 v0, 0x1

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    const/4 v0, 0x2

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    const/4 v0, 0x3

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    return-void
.end method

.method public static a(LG/d;LG/w;Ljava/io/DataOutput;)V
    .locals 1

    invoke-interface {p0}, LG/d;->k()I

    move-result v0

    invoke-static {p2, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    invoke-interface {p0, p1, p2}, LG/d;->a(LG/w;Ljava/io/DataOutput;)V

    return-void
.end method

.method private static a(LG/w;IIJ[BII)V
    .locals 13

    new-instance v12, Lt/az;

    invoke-direct {v12}, Lt/az;-><init>()V

    const/16 v4, 0x9

    if-ge p1, v4, :cond_0

    const/16 p3, 0x20

    move/from16 v0, p3

    new-array v0, v0, [B

    move-object v9, v0

    invoke-virtual {p0}, LG/w;->c()I

    move-result v4

    invoke-virtual {p0}, LG/w;->d()I

    move-result v5

    invoke-virtual {p0}, LG/w;->b()I

    move-result v6

    move v7, p1

    move v8, p2

    invoke-static/range {v4 .. v9}, Lt/az;->a(IIIII[B)V

    const/16 p0, 0x100

    invoke-virtual {v12, v9, p0}, Lt/az;->b([BI)V

    :goto_0
    move-object v0, v12

    move-object/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-virtual {v0, v1, v2, v3}, Lt/az;->a([BII)V

    return-void

    :cond_0
    const/16 v4, 0x28

    new-array v11, v4, [B

    invoke-virtual {p0}, LG/w;->c()I

    move-result v4

    invoke-virtual {p0}, LG/w;->d()I

    move-result v5

    invoke-virtual {p0}, LG/w;->b()I

    move-result v6

    move v7, p1

    move v8, p2

    move-wide/from16 v9, p3

    invoke-static/range {v4 .. v11}, Lt/az;->a(IIIIIJ[B)V

    const/16 p0, 0x100

    invoke-virtual {v12, v11, p0}, Lt/az;->a([BI)V

    goto :goto_0
.end method

.method private static a(Ljava/io/DataInput;)V
    .locals 4

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    const v1, 0x44524154

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TILE_MAGIC expected. Found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method static a([B)[J
    .locals 12

    const/4 v6, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v0, Lad/e;

    invoke-direct {v0, p0}, Lad/e;-><init>([B)V

    invoke-virtual {v0}, Lad/e;->readInt()I

    move-result v1

    invoke-static {v0}, LG/P;->a(Ljava/io/DataInput;)V

    invoke-virtual {v0}, Lad/e;->readUnsignedShort()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Version mismatch: 7 or 8 or 9 expected, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v3, 0x7

    if-eq v2, v3, :cond_1

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    :cond_1
    invoke-virtual {v0}, Lad/e;->readUnsignedShort()I

    move-result v0

    new-array v3, v6, [J

    int-to-long v4, v1

    aput-wide v4, v3, v8

    int-to-long v1, v2

    aput-wide v1, v3, v9

    int-to-long v0, v0

    aput-wide v0, v3, v10

    const-wide/16 v0, 0x0

    aput-wide v0, v3, v11

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {v0}, Lad/e;->readInt()I

    move-result v3

    invoke-virtual {v0}, Lad/e;->readLong()J

    move-result-wide v4

    new-array v0, v6, [J

    int-to-long v6, v1

    aput-wide v6, v0, v8

    int-to-long v1, v2

    aput-wide v1, v0, v9

    int-to-long v1, v3

    aput-wide v1, v0, v10

    aput-wide v4, v0, v11

    goto :goto_0
.end method


# virtual methods
.method public a(I)LG/d;
    .locals 1

    iget-object v0, p0, LG/P;->c:[LG/d;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a()LG/w;
    .locals 1

    iget-object v0, p0, LG/P;->a:LG/w;

    return-object v0
.end method

.method public a(Lac/p;J)V
    .locals 2

    invoke-interface {p1}, Lac/p;->b()J

    move-result-wide v0

    add-long/2addr v0, p2

    iput-wide v0, p0, LG/P;->f:J

    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .locals 6

    const/4 v5, 0x0

    const v0, 0x44524154

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, LG/P;->a:LG/w;

    invoke-virtual {v0, p1}, LG/w;->a(Ljava/io/DataOutput;)V

    iget v0, p0, LG/P;->j:I

    if-lez v0, :cond_0

    iget v0, p0, LG/P;->j:I

    const/16 v1, 0x7d0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    :goto_0
    iget-object v0, p0, LG/P;->g:[Ljava/lang/String;

    array-length v0, v0

    invoke-static {p1, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    iget-object v0, p0, LG/P;->g:[Ljava/lang/String;

    array-length v1, v0

    move v2, v5

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, LG/P;->i:[Ljava/lang/String;

    array-length v0, v0

    invoke-static {p1, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    iget-object v0, p0, LG/P;->i:[Ljava/lang/String;

    array-length v1, v0

    move v2, v5

    :goto_2
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, LG/P;->d:LG/q;

    invoke-virtual {v0, p1}, LG/q;->a(Ljava/io/DataOutput;)V

    iget-object v0, p0, LG/P;->e:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, LG/P;->e:[Ljava/lang/String;

    array-length v0, v0

    invoke-static {p1, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    iget-object v0, p0, LG/P;->e:[Ljava/lang/String;

    array-length v1, v0

    move v2, v5

    :goto_3
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    iget-object v0, p0, LG/P;->c:[LG/d;

    array-length v0, v0

    invoke-static {p1, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    iget-object v0, p0, LG/P;->c:[LG/d;

    array-length v1, v0

    move v2, v5

    :goto_4
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    iget-object v4, p0, LG/P;->a:LG/w;

    invoke-static {v3, v4, p1}, LG/P;->a(LG/d;LG/w;Ljava/io/DataOutput;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    iget-object v0, p0, LG/P;->l:[LG/E;

    if-eqz v0, :cond_5

    iget-object v0, p0, LG/P;->l:[LG/E;

    array-length v0, v0

    invoke-static {p1, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    iget-object v0, p0, LG/P;->l:[LG/E;

    array-length v1, v0

    move v2, v5

    :goto_5
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    iget-object v4, p0, LG/P;->a:LG/w;

    invoke-virtual {v3, v4, p1}, LG/E;->a(LG/w;Ljava/io/DataOutput;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public a(Lac/p;)Z
    .locals 4

    iget-wide v0, p0, LG/P;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-interface {p1}, Lac/p;->b()J

    move-result-wide v0

    iget-wide v2, p0, LG/P;->f:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    iget v0, p0, LG/P;->b:I

    return v0
.end method

.method public b(I)LG/E;
    .locals 1

    iget-object v0, p0, LG/P;->l:[LG/E;

    if-eqz v0, :cond_0

    iget-object v0, p0, LG/P;->l:[LG/E;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LG/P;->g:[Ljava/lang/String;

    return-object v0
.end method

.method public d()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LG/P;->i:[Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, LG/P;->c:[LG/d;

    array-length v0, v0

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, LG/P;->j:I

    return v0
.end method

.method protected g()[LG/d;
    .locals 1

    iget-object v0, p0, LG/P;->c:[LG/d;

    return-object v0
.end method

.method public h()LG/j;
    .locals 1

    new-instance v0, LG/j;

    invoke-direct {v0, p0}, LG/j;-><init>(LG/P;)V

    return-object v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, LG/P;->l:[LG/E;

    if-eqz v0, :cond_0

    iget-object v0, p0, LG/P;->l:[LG/E;

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()J
    .locals 2

    iget-wide v0, p0, LG/P;->f:J

    return-wide v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, LG/P;->k:I

    return v0
.end method

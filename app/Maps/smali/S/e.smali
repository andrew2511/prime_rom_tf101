.class public LS/e;
.super Ljava/lang/Object;

# interfaces
.implements LG/u;


# instance fields
.field private final a:LG/w;

.field private final b:I

.field private final c:[LS/c;


# direct methods
.method private constructor <init>(LG/w;Law/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LS/e;->a:LG/w;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Law/e;->d(I)I

    move-result v0

    iput v0, p0, LS/e;->b:I

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Law/e;->i(I)I

    move-result v0

    new-array v0, v0, [LS/c;

    iput-object v0, p0, LS/e;->c:[LS/c;

    invoke-direct {p0, p2}, LS/e;->a(Law/e;)[LG/Q;

    move-result-object v0

    invoke-direct {p0, p2, v0}, LS/e;->a(Law/e;[LG/Q;)V

    invoke-direct {p0, p2}, LS/e;->b(Law/e;)V

    invoke-virtual {p0}, LS/e;->d()V

    return-void
.end method

.method public static a([B)I
    .locals 4

    new-instance v0, Lad/e;

    invoke-direct {v0, p0}, Lad/e;-><init>([B)V

    invoke-virtual {v0}, Lad/e;->readInt()I

    move-result v1

    const v2, 0x45504752

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FORMAT_MAGIC expected. Found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Lad/e;->readUnsignedShort()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Version mismatch: 1 expected, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Lad/e;->readInt()I

    move-result v0

    return v0
.end method

.method private static a([BLG/Q;LG/Q;)LG/m;
    .locals 7

    const/4 v4, 0x0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v1

    :goto_0
    new-instance v2, LG/b;

    add-int/lit8 v3, v1, 0x2

    invoke-direct {v2, v3}, LG/b;-><init>(I)V

    if-eqz p1, :cond_0

    invoke-virtual {v2, p1}, LG/b;->a(LG/Q;)Z

    :cond_0
    move v3, v4

    move v5, v4

    :goto_1
    if-ge v3, v1, :cond_1

    invoke-static {v0}, LG/L;->b(Ljava/io/DataInput;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v0}, LG/L;->b(Ljava/io/DataInput;)I

    move-result v6

    add-int/2addr v4, v6

    invoke-static {v5, v4}, LG/Q;->c(II)LG/Q;

    move-result-object v6

    invoke-virtual {v2, v6}, LG/b;->a(LG/Q;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v2, p2}, LG/b;->a(LG/Q;)Z

    :cond_2
    invoke-virtual {v2}, LG/b;->d()LG/m;

    move-result-object v0

    return-object v0

    :cond_3
    move v1, v4

    goto :goto_0
.end method

.method public static a(LG/w;[B)LS/e;
    .locals 7

    const/16 v3, 0xa

    :try_start_0
    invoke-static {p1}, LS/e;->a([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    invoke-static {p0, v0, p1}, LS/e;->a(LG/w;I[B)V

    :try_start_1
    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    const/16 v1, 0xa

    array-length v2, p1

    sub-int/2addr v2, v3

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/zip/Inflater;->setInput([BII)V

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v2

    move v6, v2

    move-object v2, v1

    move v1, v6

    :goto_0
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v3

    if-lez v3, :cond_0

    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v4, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v3

    sub-int/2addr v2, v1

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/zip/Inflater;->inflate([BII)I
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    add-int/2addr v1, v2

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v0

    array-length v0, p1

    invoke-static {p0, p1, v0}, LS/e;->a(LG/w;[BI)LS/e;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    :try_start_2
    invoke-static {p0, v2, v1}, LS/e;->a(LG/w;[BI)LS/e;
    :try_end_2
    .catch Ljava/util/zip/DataFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static a(LG/w;[BI)LS/e;
    .locals 2

    new-instance v0, Law/e;

    sget-object v1, LaP/a;->e:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1, p2}, Law/e;->a(Ljava/io/InputStream;I)I

    new-instance v1, LS/e;

    invoke-direct {v1, p0, v0}, LS/e;-><init>(LG/w;Law/e;)V

    return-object v1
.end method

.method private static a(LG/w;I[B)V
    .locals 5

    const/16 v4, 0xa

    const/16 v0, 0x20

    new-array v0, v0, [B

    invoke-virtual {p0}, LG/w;->c()I

    move-result v1

    invoke-virtual {p0}, LG/w;->d()I

    move-result v2

    invoke-virtual {p0}, LG/w;->b()I

    move-result v3

    invoke-static {v1, v2, v3, p1, v0}, Lt/az;->a(IIII[B)V

    new-instance v1, Lt/az;

    invoke-direct {v1}, Lt/az;-><init>()V

    const/16 v2, 0x100

    invoke-virtual {v1, v0, v2}, Lt/az;->b([BI)V

    array-length v0, p2

    sub-int/2addr v0, v4

    invoke-virtual {v1, p2, v4, v0}, Lt/az;->a([BII)V

    return-void
.end method

.method private a(Law/e;[LG/Q;)V
    .locals 14

    iget-object v0, p0, LS/e;->a:LG/w;

    invoke-virtual {v0}, LG/w;->i()LG/S;

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    iget-object v0, p0, LS/e;->c:[LS/c;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    if-ge v9, v0, :cond_2

    mul-int/lit8 v10, v9, 0x2

    mul-int/lit8 v0, v9, 0x2

    add-int/lit8 v11, v0, 0x1

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v10}, Law/e;->e(II)Law/e;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Law/b;->e(Law/e;I)I

    move-result v6

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v11}, Law/e;->e(II)Law/e;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Law/b;->e(Law/e;I)I

    move-result v12

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v9}, Law/e;->e(II)Law/e;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Law/e;->h(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Law/e;->c(I)[B

    move-result-object v1

    :cond_0
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Law/b;->c(Law/e;II)I

    move-result v8

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Law/b;->c(Law/e;II)I

    move-result v7

    invoke-static {v0, v7, p1}, LS/e;->a(Law/e;ILaw/e;)[LS/a;

    move-result-object v3

    aget-object v0, p2, v11

    aget-object v2, p2, v10

    invoke-static {v1, v0, v2}, LS/e;->a([BLG/Q;LG/Q;)LG/m;

    move-result-object v4

    iget-object v13, p0, LS/e;->c:[LS/c;

    new-instance v0, LS/c;

    iget-object v1, p0, LS/e;->a:LG/w;

    invoke-static {v1, v10}, LS/c;->a(LG/w;I)J

    move-result-wide v1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v8}, LS/c;-><init>(J[LS/a;LG/m;IIII)V

    aput-object v0, v13, v10

    iget-object v13, p0, LS/e;->c:[LS/c;

    new-instance v0, LS/c;

    iget-object v1, p0, LS/e;->a:LG/w;

    invoke-static {v1, v11}, LS/c;->a(LG/w;I)J

    move-result-wide v1

    const/4 v5, 0x4

    move v6, v12

    invoke-direct/range {v0 .. v8}, LS/c;-><init>(J[LS/a;LG/m;IIII)V

    aput-object v0, v13, v11

    invoke-virtual {v4}, LG/m;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Segment polyline had fewer than two points: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LS/e;->c:[LS/c;

    aget-object v2, v2, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LS/e;->a:LG/w;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method private a(Law/e;)[LG/Q;
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x0

    iget-object v0, p0, LS/e;->c:[LS/c;

    array-length v0, v0

    new-array v0, v0, [LG/Q;

    invoke-virtual {p1, v8}, Law/e;->i(I)I

    move-result v1

    move v2, v7

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p1, v8, v2}, Law/e;->e(II)Law/e;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Law/e;->d(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Law/e;->d(I)I

    move-result v5

    invoke-static {v4, v5}, LG/Q;->a(II)LG/Q;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Law/e;->c(I)[B

    move-result-object v3

    invoke-static {v3}, LS/e;->b([B)[I

    move-result-object v3

    move v5, v7

    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_0

    aget v6, v3, v5

    aput-object v4, v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static a(Law/e;ILaw/e;)[LS/a;
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v3, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0, v9}, Law/e;->i(I)I

    move-result v0

    if-ne p1, v7, :cond_1

    move v1, v7

    :goto_0
    if-lez v0, :cond_3

    new-array v2, v0, [LS/a;

    :goto_1
    if-ge v3, v0, :cond_2

    invoke-virtual {p0, v9, v3}, Law/e;->c(II)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {p2, v5, v4}, Law/e;->e(II)Law/e;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v8}, Law/e;->h(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4, v8}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    :cond_0
    new-instance v6, LS/a;

    invoke-virtual {v4, v7}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4, v5, v1}, LS/a;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v6, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_2
    return-object v0

    :cond_3
    new-array v0, v7, [LS/a;

    sget-object v1, LS/c;->a:LS/a;

    aput-object v1, v0, v3

    goto :goto_2
.end method

.method private b(Law/e;)V
    .locals 18

    const/4 v3, 0x4

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Law/e;->i(I)I

    move-result v3

    new-instance v4, LG/Q;

    invoke-direct {v4}, LG/Q;-><init>()V

    new-instance v4, LG/Q;

    invoke-direct {v4}, LG/Q;-><init>()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    const/4 v5, 0x4

    move-object/from16 v0, p1

    move v1, v5

    move v2, v4

    invoke-virtual {v0, v1, v2}, Law/e;->e(II)Law/e;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Law/e;->c(I)[B

    move-result-object v6

    invoke-static {v6}, LS/e;->b([B)[I

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Law/e;->c(I)[B

    move-result-object v5

    invoke-static {v5}, LS/e;->b([B)[I

    move-result-object v5

    const/4 v7, 0x0

    array-length v8, v6

    new-array v8, v8, [LS/f;

    const/4 v9, 0x0

    move/from16 v17, v9

    move v9, v7

    move/from16 v7, v17

    :goto_1
    array-length v10, v6

    if-ge v7, v10, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, LS/e;->c:[LS/c;

    move-object v10, v0

    aget v11, v6, v7

    aget-object v10, v10, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v17, v12

    move v12, v9

    move v9, v11

    move v11, v7

    move/from16 v7, v17

    :goto_2
    array-length v13, v6

    if-ge v7, v13, :cond_2

    array-length v13, v5

    if-lt v12, v13, :cond_1

    array-length v7, v6

    move v11, v7

    :cond_0
    :goto_3
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_1
    aget v13, v5, v12

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, LS/e;->c:[LS/c;

    move-object v14, v0

    aget v15, v6, v7

    xor-int/lit8 v15, v15, 0x1

    aget-object v14, v14, v15

    add-int/lit8 v15, v9, 0x1

    new-instance v16, LS/f;

    move-object/from16 v0, v16

    move-object v1, v14

    move v2, v13

    invoke-direct {v0, v1, v2}, LS/f;-><init>(LS/c;I)V

    aput-object v16, v8, v9

    move v9, v15

    goto :goto_3

    :cond_2
    new-array v7, v9, [LS/f;

    const/4 v9, 0x0

    const/4 v13, 0x0

    array-length v14, v7

    invoke-static {v8, v9, v7, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v10, v7}, LS/c;->a([LS/f;)V

    add-int/lit8 v7, v11, 0x1

    move v9, v12

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static b([B)[I
    .locals 5

    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v1

    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-static {v0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method


# virtual methods
.method public a()LG/w;
    .locals 1

    iget-object v0, p0, LS/e;->a:LG/w;

    return-object v0
.end method

.method public a(I)LS/c;
    .locals 1

    iget-object v0, p0, LS/e;->c:[LS/c;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a(LS/c;)LS/c;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LS/e;->c:[LS/c;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, LS/e;->c:[LS/c;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LS/c;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, LS/c;->a(LS/c;)Z

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

.method public a(Ljava/io/DataOutputStream;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported on RoadGraph tiles"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lac/p;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, LS/e;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, LS/e;->c:[LS/c;

    array-length v0, v0

    return v0
.end method

.method d()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LS/e;->c:[LS/c;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, LS/e;->c:[LS/c;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LS/c;->c()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, LS/e;->c:[LS/c;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, LS/c;->a(I)V

    iget-object v1, p0, LS/e;->c:[LS/c;

    xor-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, LS/c;->a(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

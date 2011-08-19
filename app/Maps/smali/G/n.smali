.class public LG/n;
.super Ljava/lang/Object;

# interfaces
.implements LG/d;


# static fields
.field private static final o:[B

.field private static final p:[I


# instance fields
.field private final a:LG/ac;

.field private final b:LG/s;

.field private final c:LG/s;

.field private final d:[B

.field private final e:Ljava/lang/String;

.field private final f:LG/Q;

.field private final g:LG/r;

.field private final h:I

.field private final i:Ljava/lang/String;

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, LG/n;->o:[B

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, LG/n;->p:[I

    return-void

    :array_0
    .array-data 0x1
        0x1t
        0x2t
        0x4t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(LG/ac;LG/s;LG/s;[BIILG/r;ILjava/lang/String;II[I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG/n;->a:LG/ac;

    iput-object p2, p0, LG/n;->b:LG/s;

    iput-object p3, p0, LG/n;->c:LG/s;

    iput-object p4, p0, LG/n;->d:[B

    iput p5, p0, LG/n;->j:I

    iput p6, p0, LG/n;->k:I

    iput-object v0, p0, LG/n;->e:Ljava/lang/String;

    iput-object v0, p0, LG/n;->f:LG/Q;

    iput-object p7, p0, LG/n;->g:LG/r;

    iput p8, p0, LG/n;->h:I

    iput-object p9, p0, LG/n;->i:Ljava/lang/String;

    iput p10, p0, LG/n;->l:I

    iput p11, p0, LG/n;->m:I

    iput-object p12, p0, LG/n;->n:[I

    return-void
.end method

.method public constructor <init>(LG/s;[BIILjava/lang/String;LG/Q;LG/r;II[I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, LG/n;->a:LG/ac;

    iput-object p1, p0, LG/n;->b:LG/s;

    iput-object v1, p0, LG/n;->c:LG/s;

    iput-object p2, p0, LG/n;->d:[B

    iput p3, p0, LG/n;->j:I

    iput p4, p0, LG/n;->k:I

    iput-object p5, p0, LG/n;->e:Ljava/lang/String;

    iput-object p6, p0, LG/n;->f:LG/Q;

    iput-object p7, p0, LG/n;->g:LG/r;

    const/4 v0, -0x1

    iput v0, p0, LG/n;->h:I

    iput-object v1, p0, LG/n;->i:Ljava/lang/String;

    iput p8, p0, LG/n;->l:I

    iput p9, p0, LG/n;->m:I

    iput-object p10, p0, LG/n;->n:[I

    return-void
.end method

.method public static a(Ljava/io/DataInput;ILG/w;LG/q;[Ljava/lang/String;)LG/n;
    .locals 27

    const/4 v3, 0x0

    const/16 v4, 0x9

    move/from16 v0, p1

    move v1, v4

    if-ne v0, v1, :cond_e

    invoke-static/range {p0 .. p0}, LG/ac;->a(Ljava/io/DataInput;)LG/ac;

    move-result-object v3

    move-object v15, v3

    :goto_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, LG/s;->a(Ljava/io/DataInput;LG/w;)LG/s;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x9

    move/from16 v0, p1

    move v1, v6

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, LG/s;->a(Ljava/io/DataInput;LG/w;I)LG/s;

    move-result-object v3

    invoke-virtual {v3}, LG/s;->a()I

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    :goto_1
    move-object/from16 v17, v3

    move v3, v5

    :goto_2
    if-eqz v3, :cond_4

    invoke-virtual/range {v17 .. v17}, LG/s;->a()I

    move-result v3

    :goto_3
    new-array v5, v3, [B

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/io/DataInput;->readFully([B)V

    const/16 v3, 0x9

    move/from16 v0, p1

    move v1, v3

    if-ne v0, v1, :cond_5

    invoke-static/range {p0 .. p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v3

    move v6, v3

    :goto_4
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x9

    move/from16 v0, p1

    move v1, v8

    if-ge v0, v1, :cond_c

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, LG/Q;->a(Ljava/io/DataInput;LG/w;)LG/Q;

    move-result-object p2

    move-object/from16 v9, p2

    move-object v8, v3

    :goto_5
    const/16 p2, -0x1

    const/16 v3, 0x9

    move/from16 v0, p1

    move v1, v3

    if-ne v0, v1, :cond_0

    invoke-static/range {p0 .. p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result p2

    :cond_0
    invoke-static/range {p0 .. p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v3

    move-object/from16 v0, p3

    move v1, v3

    invoke-virtual {v0, v1}, LG/q;->a(I)LG/r;

    move-result-object v10

    const/16 p3, -0x1

    const/4 v3, 0x0

    const/16 v7, 0x9

    move/from16 v0, p1

    move v1, v7

    if-ne v0, v1, :cond_b

    invoke-static/range {p0 .. p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result p3

    invoke-static/range {p3 .. p4}, LG/X;->a(I[Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    aget-object p4, p4, p3

    move-object/from16 v23, p4

    move/from16 v22, p3

    :goto_6
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result v11

    const/16 p3, 0x9

    move/from16 v0, p1

    move/from16 v1, p3

    if-ge v0, v1, :cond_a

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readShort()S

    move-result p2

    move/from16 v7, p2

    :goto_7
    const/16 p2, 0x9

    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_7

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result p2

    move/from16 v12, p2

    :goto_8
    const/16 p2, 0x0

    const/16 p3, 0x8

    move/from16 v0, p1

    move/from16 v1, p3

    if-eq v0, v1, :cond_1

    const/16 p3, 0x9

    move/from16 v0, p1

    move/from16 v1, p3

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-static/range {p0 .. p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result p2

    :cond_2
    move/from16 v0, p2

    new-array v0, v0, [I

    move-object v13, v0

    const/16 p3, 0x0

    :goto_9
    move/from16 v0, p3

    move/from16 v1, p2

    if-ge v0, v1, :cond_8

    invoke-static/range {p0 .. p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result p4

    aput p4, v13, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_9

    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v4}, LG/s;->a()I

    move-result v3

    goto/16 :goto_3

    :cond_5
    invoke-static/range {p0 .. p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v3

    const v6, 0xffff

    and-int/2addr v3, v6

    move v6, v3

    goto/16 :goto_4

    :cond_6
    new-instance p2, LG/Q;

    invoke-direct/range {p2 .. p2}, LG/Q;-><init>()V

    move-object/from16 v9, p2

    move-object v8, v3

    goto/16 :goto_5

    :cond_7
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readShort()S

    move-result p2

    move/from16 v12, p2

    goto :goto_8

    :cond_8
    const/16 p0, 0x9

    move/from16 v0, p1

    move/from16 v1, p0

    if-ge v0, v1, :cond_9

    new-instance v3, LG/n;

    invoke-direct/range {v3 .. v13}, LG/n;-><init>(LG/s;[BIILjava/lang/String;LG/Q;LG/r;II[I)V

    move-object/from16 p0, v3

    :goto_a
    return-object p0

    :cond_9
    new-instance v14, LG/n;

    move-object/from16 v16, v4

    move-object/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v7

    move-object/from16 v21, v10

    move/from16 v24, v11

    move/from16 v25, v12

    move-object/from16 v26, v13

    invoke-direct/range {v14 .. v26}, LG/n;-><init>(LG/ac;LG/s;LG/s;[BIILG/r;ILjava/lang/String;II[I)V

    move-object/from16 p0, v14

    goto :goto_a

    :cond_a
    move/from16 v7, p2

    goto/16 :goto_7

    :cond_b
    move-object/from16 v23, v3

    move/from16 v22, p3

    goto/16 :goto_6

    :cond_c
    move-object v9, v7

    move-object v8, v3

    goto/16 :goto_5

    :cond_d
    move-object/from16 v17, v5

    goto/16 :goto_2

    :cond_e
    move-object v15, v3

    goto/16 :goto_0
.end method


# virtual methods
.method public a(LG/w;Ljava/io/DataOutput;)V
    .locals 4

    invoke-virtual {p0}, LG/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LG/n;->a:LG/ac;

    invoke-virtual {v0, p2}, LG/ac;->a(Ljava/io/DataOutput;)V

    :cond_0
    iget-object v0, p0, LG/n;->b:LG/s;

    invoke-virtual {v0, p1, p2}, LG/s;->a(LG/w;Ljava/io/DataOutput;)V

    invoke-virtual {p0}, LG/n;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LG/n;->c:LG/s;

    invoke-virtual {v0, p1, p2}, LG/s;->b(LG/w;Ljava/io/DataOutput;)V

    :cond_1
    iget-object v0, p0, LG/n;->d:[B

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->write([B)V

    iget v0, p0, LG/n;->j:I

    invoke-static {p2, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    invoke-virtual {p0}, LG/n;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, LG/n;->k:I

    invoke-static {p2, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    :cond_2
    invoke-virtual {p0}, LG/n;->a()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, LG/n;->e:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, LG/n;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, LG/n;->f:LG/Q;

    invoke-virtual {v0, p1, p2}, LG/Q;->a(LG/w;Ljava/io/DataOutput;)V

    :cond_3
    iget-object v0, p0, LG/n;->g:LG/r;

    invoke-virtual {v0}, LG/r;->b()I

    move-result v0

    invoke-static {p2, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    invoke-virtual {p0}, LG/n;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, LG/n;->h:I

    invoke-static {p2, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    :cond_4
    iget v0, p0, LG/n;->l:I

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeByte(I)V

    invoke-virtual {p0}, LG/n;->a()Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, LG/n;->k:I

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeShort(I)V

    :cond_5
    invoke-virtual {p0}, LG/n;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, LG/n;->m:I

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeInt(I)V

    :goto_0
    iget-object v0, p0, LG/n;->n:[I

    array-length v0, v0

    invoke-static {p2, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    iget-object v0, p0, LG/n;->n:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_7

    aget v3, v0, v2

    invoke-static {p2, v3}, LG/L;->a(Ljava/io/DataOutput;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    iget v0, p0, LG/n;->m:I

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeShort(I)V

    goto :goto_0

    :cond_7
    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, LG/n;->a:LG/ac;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(II)Z
    .locals 2

    iget-object v0, p0, LG/n;->d:[B

    aget-byte v0, v0, p1

    sget-object v1, LG/n;->o:[B

    aget-byte v1, v1, p2

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()LG/ac;
    .locals 1

    iget-object v0, p0, LG/n;->a:LG/ac;

    return-object v0
.end method

.method public c()LG/s;
    .locals 1

    iget-object v0, p0, LG/n;->b:LG/s;

    return-object v0
.end method

.method public d()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, LG/n;->d:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    sget-object v2, LG/n;->p:[I

    iget-object v3, p0, LG/n;->d:[B

    aget-byte v3, v3, v0

    and-int/lit8 v3, v3, 0x7

    aget v2, v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public e()I
    .locals 1

    iget v0, p0, LG/n;->j:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, LG/n;->k:I

    return v0
.end method

.method public h()LG/r;
    .locals 1

    iget-object v0, p0, LG/n;->g:LG/r;

    return-object v0
.end method

.method public k()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, LG/n;->l:I

    return v0
.end method

.method public m()[I
    .locals 1

    iget-object v0, p0, LG/n;->n:[I

    return-object v0
.end method

.method public n()I
    .locals 2

    iget-object v0, p0, LG/n;->b:LG/s;

    invoke-virtual {v0}, LG/s;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x3e

    iget-object v1, p0, LG/n;->d:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, LG/n;->e:Ljava/lang/String;

    invoke-static {v1}, LG/X;->a(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

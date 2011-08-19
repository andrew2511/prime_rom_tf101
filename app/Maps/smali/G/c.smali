.class public LG/c;
.super Ljava/lang/Object;

# interfaces
.implements LG/d;


# instance fields
.field private final a:LG/ac;

.field private final b:LG/s;

.field private final c:[B

.field private final d:Ljava/lang/String;

.field private final e:LG/Q;

.field private final f:LG/r;

.field private final g:I

.field private final h:Ljava/lang/String;

.field private final i:I

.field private final j:I

.field private final k:[I


# direct methods
.method public constructor <init>(LG/ac;LG/s;[BLG/r;ILjava/lang/String;II[I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG/c;->a:LG/ac;

    iput-object p2, p0, LG/c;->b:LG/s;

    iput-object p3, p0, LG/c;->c:[B

    iput-object v0, p0, LG/c;->d:Ljava/lang/String;

    iput-object v0, p0, LG/c;->e:LG/Q;

    iput-object p4, p0, LG/c;->f:LG/r;

    iput p5, p0, LG/c;->g:I

    iput-object p6, p0, LG/c;->h:Ljava/lang/String;

    iput p7, p0, LG/c;->i:I

    iput p8, p0, LG/c;->j:I

    iput-object p9, p0, LG/c;->k:[I

    return-void
.end method

.method public constructor <init>(LG/s;[BLjava/lang/String;LG/Q;LG/r;II[I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, LG/c;->a:LG/ac;

    iput-object p1, p0, LG/c;->b:LG/s;

    iput-object p2, p0, LG/c;->c:[B

    iput-object p3, p0, LG/c;->d:Ljava/lang/String;

    iput-object p4, p0, LG/c;->e:LG/Q;

    iput-object p5, p0, LG/c;->f:LG/r;

    const/4 v0, -0x1

    iput v0, p0, LG/c;->g:I

    iput-object v1, p0, LG/c;->h:Ljava/lang/String;

    iput p6, p0, LG/c;->i:I

    iput p7, p0, LG/c;->j:I

    iput-object p8, p0, LG/c;->k:[I

    return-void
.end method

.method public static a(Ljava/io/DataInput;ILG/w;LG/q;[Ljava/lang/String;)LG/c;
    .locals 21

    const/4 v2, 0x0

    const/16 v3, 0x9

    move/from16 v0, p1

    move v1, v3

    if-ne v0, v1, :cond_9

    invoke-static/range {p0 .. p0}, LG/ac;->a(Ljava/io/DataInput;)LG/ac;

    move-result-object v2

    move-object v3, v2

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, LG/s;->a(Ljava/io/DataInput;LG/w;)LG/s;

    move-result-object v4

    const/4 v2, 0x0

    const/16 v5, 0x9

    move/from16 v0, p1

    move v1, v5

    if-ge v0, v1, :cond_2

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readBoolean()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v4}, LG/s;->a()I

    move-result v2

    new-array v2, v2, [B

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-interface {v0, v1}, Ljava/io/DataInput;->readFully([B)V

    move-object v5, v2

    :goto_1
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x9

    move/from16 v0, p1

    move v1, v7

    if-ge v0, v1, :cond_7

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/maps/driveabout/vector/cp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, LG/Q;->a(Ljava/io/DataInput;LG/w;)LG/Q;

    move-result-object p2

    move-object/from16 v16, p2

    move-object v15, v2

    :goto_2
    invoke-static/range {p0 .. p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result p2

    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-virtual {v0, v1}, LG/q;->a(I)LG/r;

    move-result-object v6

    const/16 p2, -0x1

    const/16 p3, 0x0

    const/16 v2, 0x9

    move/from16 v0, p1

    move v1, v2

    if-ne v0, v1, :cond_6

    invoke-static/range {p0 .. p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result p2

    move/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, LG/X;->a(I[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    aget-object p3, p4, p2

    move-object/from16 v8, p3

    move/from16 v7, p2

    :goto_3
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result v9

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v10

    const/16 p2, 0x0

    const/16 p3, 0x8

    move/from16 v0, p1

    move/from16 v1, p3

    if-eq v0, v1, :cond_0

    const/16 p3, 0x9

    move/from16 v0, p1

    move/from16 v1, p3

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static/range {p0 .. p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result p2

    :cond_1
    move/from16 v0, p2

    new-array v0, v0, [I

    move-object v11, v0

    const/16 p3, 0x0

    :goto_4
    move/from16 v0, p3

    move/from16 v1, p2

    if-ge v0, v1, :cond_4

    invoke-static/range {p0 .. p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result p4

    aput p4, v11, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_2
    invoke-virtual {v4}, LG/s;->a()I

    move-result v2

    new-array v2, v2, [B

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-interface {v0, v1}, Ljava/io/DataInput;->readFully([B)V

    move-object v5, v2

    goto/16 :goto_1

    :cond_3
    new-instance p2, LG/Q;

    invoke-direct/range {p2 .. p2}, LG/Q;-><init>()V

    move-object/from16 v16, p2

    move-object v15, v2

    goto :goto_2

    :cond_4
    const/16 p0, 0x9

    move/from16 v0, p1

    move/from16 v1, p0

    if-ne v0, v1, :cond_5

    new-instance v2, LG/c;

    invoke-direct/range {v2 .. v11}, LG/c;-><init>(LG/ac;LG/s;[BLG/r;ILjava/lang/String;II[I)V

    move-object/from16 p0, v2

    :goto_5
    return-object p0

    :cond_5
    new-instance v12, LG/c;

    move-object v13, v4

    move-object v14, v5

    move-object/from16 v17, v6

    move/from16 v18, v9

    move/from16 v19, v10

    move-object/from16 v20, v11

    invoke-direct/range {v12 .. v20}, LG/c;-><init>(LG/s;[BLjava/lang/String;LG/Q;LG/r;II[I)V

    move-object/from16 p0, v12

    goto :goto_5

    :cond_6
    move-object/from16 v8, p3

    move/from16 v7, p2

    goto :goto_3

    :cond_7
    move-object/from16 v16, v6

    move-object v15, v2

    goto/16 :goto_2

    :cond_8
    move-object v5, v2

    goto/16 :goto_1

    :cond_9
    move-object v3, v2

    goto/16 :goto_0
.end method


# virtual methods
.method public a(LG/w;Ljava/io/DataOutput;)V
    .locals 4

    invoke-virtual {p0}, LG/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LG/c;->a:LG/ac;

    invoke-virtual {v0, p2}, LG/ac;->a(Ljava/io/DataOutput;)V

    :cond_0
    iget-object v0, p0, LG/c;->b:LG/s;

    invoke-virtual {v0, p1, p2}, LG/s;->a(LG/w;Ljava/io/DataOutput;)V

    invoke-virtual {p0}, LG/c;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, LG/c;->c:[B

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->write([B)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, LG/c;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, LG/c;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, LG/c;->d:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, LG/c;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, LG/c;->e:LG/Q;

    invoke-virtual {v0, p1, p2}, LG/Q;->a(LG/w;Ljava/io/DataOutput;)V

    :cond_2
    iget-object v0, p0, LG/c;->f:LG/r;

    invoke-virtual {v0}, LG/r;->b()I

    move-result v0

    invoke-static {p2, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    invoke-virtual {p0}, LG/c;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, LG/c;->g:I

    invoke-static {p2, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    :cond_3
    iget v0, p0, LG/c;->i:I

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget v0, p0, LG/c;->j:I

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object v0, p0, LG/c;->k:[I

    array-length v0, v0

    invoke-static {p2, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    iget-object v0, p0, LG/c;->k:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_5

    aget v3, v0, v2

    invoke-static {p2, v3}, LG/L;->a(Ljava/io/DataOutput;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, LG/c;->d()Z

    move-result v0

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    invoke-virtual {p0}, LG/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LG/c;->c:[B

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->write([B)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, LG/c;->a:LG/ac;

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

    iget-object v0, p0, LG/c;->a:LG/ac;

    return-object v0
.end method

.method public c()LG/s;
    .locals 1

    iget-object v0, p0, LG/c;->b:LG/s;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, LG/c;->c:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()[B
    .locals 1

    iget-object v0, p0, LG/c;->c:[B

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LG/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g()LG/Q;
    .locals 1

    iget-object v0, p0, LG/c;->e:LG/Q;

    return-object v0
.end method

.method public h()LG/r;
    .locals 1

    iget-object v0, p0, LG/c;->f:LG/r;

    return-object v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, LG/c;->g:I

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LG/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method public k()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, LG/c;->i:I

    return v0
.end method

.method public m()[I
    .locals 1

    iget-object v0, p0, LG/c;->k:[I

    return-object v0
.end method

.method public n()I
    .locals 2

    iget-object v0, p0, LG/c;->b:LG/s;

    invoke-virtual {v0}, LG/s;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x4a

    iget-object v1, p0, LG/c;->c:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, LG/c;->d:Ljava/lang/String;

    invoke-static {v1}, LG/X;->a(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

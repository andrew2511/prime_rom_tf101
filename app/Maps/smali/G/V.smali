.class public LG/V;
.super Ljava/lang/Object;

# interfaces
.implements LG/d;


# instance fields
.field private final a:LG/ac;

.field private final b:LG/m;

.field private final c:[LG/g;

.field private final d:Ljava/lang/String;

.field private final e:LG/r;

.field private final f:I

.field private final g:Ljava/lang/String;

.field private final h:I

.field private final i:F

.field private final j:I

.field private final k:[I


# direct methods
.method public constructor <init>(LG/ac;LG/m;[LG/g;LG/r;ILjava/lang/String;IFI[I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG/V;->a:LG/ac;

    iput-object p2, p0, LG/V;->b:LG/m;

    iput-object p3, p0, LG/V;->c:[LG/g;

    const/4 v0, 0x0

    iput-object v0, p0, LG/V;->d:Ljava/lang/String;

    iput-object p4, p0, LG/V;->e:LG/r;

    iput p5, p0, LG/V;->f:I

    iput-object p6, p0, LG/V;->g:Ljava/lang/String;

    iput p7, p0, LG/V;->h:I

    iput p8, p0, LG/V;->i:F

    iput p9, p0, LG/V;->j:I

    iput-object p10, p0, LG/V;->k:[I

    return-void
.end method

.method public constructor <init>(LG/m;Ljava/lang/String;LG/r;IFI[I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, LG/V;->a:LG/ac;

    iput-object p1, p0, LG/V;->b:LG/m;

    iput-object v1, p0, LG/V;->c:[LG/g;

    iput-object p2, p0, LG/V;->d:Ljava/lang/String;

    iput-object p3, p0, LG/V;->e:LG/r;

    const/4 v0, -0x1

    iput v0, p0, LG/V;->f:I

    iput-object v1, p0, LG/V;->g:Ljava/lang/String;

    iput p4, p0, LG/V;->h:I

    iput p5, p0, LG/V;->i:F

    iput p6, p0, LG/V;->j:I

    iput-object p7, p0, LG/V;->k:[I

    return-void
.end method

.method public static a(Ljava/io/DataInput;ILG/w;LG/q;[Ljava/lang/String;)LG/V;
    .locals 22

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x9

    move/from16 v0, p1

    move v1, v4

    if-ne v0, v1, :cond_9

    invoke-static/range {p0 .. p0}, LG/ac;->a(Ljava/io/DataInput;)LG/ac;

    move-result-object v2

    move-object v12, v2

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, LG/m;->a(Ljava/io/DataInput;LG/w;)LG/m;

    move-result-object v13

    const/16 p2, 0x0

    const/16 v2, 0x9

    move/from16 v0, p1

    move v1, v2

    if-ge v0, v1, :cond_0

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object p2

    invoke-static/range {p2 .. p2}, Lcom/google/android/maps/driveabout/vector/cp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-static/range {p0 .. p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v2

    move-object/from16 v0, p3

    move v1, v2

    invoke-virtual {v0, v1}, LG/q;->a(I)LG/r;

    move-result-object v6

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/16 v5, 0x9

    move/from16 v0, p1

    move v1, v5

    if-ne v0, v1, :cond_8

    invoke-static/range {p0 .. p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v8

    move v0, v8

    move-object/from16 v1, p4

    invoke-static {v0, v1}, LG/X;->a(I[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    aget-object v2, p4, v8

    move-object v7, v2

    :goto_1
    invoke-static/range {p0 .. p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v9

    new-array v10, v9, [LG/g;

    const/4 v2, 0x0

    move v11, v2

    :goto_2
    if-ge v11, v9, :cond_1

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v2 .. v7}, LG/g;->a(Ljava/io/DataInput;ILG/q;[Ljava/lang/String;LG/r;Ljava/lang/String;)LG/g;

    move-result-object v2

    aput-object v2, v10, v11

    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_2

    :cond_1
    move-object/from16 v17, v7

    move/from16 v16, v8

    move-object v14, v10

    :goto_3
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result v7

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result p3

    invoke-static/range {p3 .. p3}, LG/X;->c(I)F

    move-result v8

    const/16 p3, 0x9

    move/from16 v0, p1

    move/from16 v1, p3

    if-ne v0, v1, :cond_4

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result p3

    move/from16 v9, p3

    :goto_4
    const/16 p3, 0x0

    const/16 p4, 0x8

    move/from16 v0, p1

    move/from16 v1, p4

    if-eq v0, v1, :cond_2

    const/16 p4, 0x9

    move/from16 v0, p1

    move/from16 v1, p4

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-static/range {p0 .. p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result p3

    :cond_3
    move/from16 v0, p3

    new-array v0, v0, [I

    move-object v10, v0

    const/16 p4, 0x0

    :goto_5
    move/from16 v0, p4

    move/from16 v1, p3

    if-ge v0, v1, :cond_5

    invoke-static/range {p0 .. p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v2

    aput v2, v10, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_5

    :cond_4
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result p3

    shl-int/lit8 p3, p3, 0x10

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readShort()S

    move-result p4

    or-int p3, p3, p4

    move/from16 v9, p3

    goto :goto_4

    :cond_5
    const/16 p0, 0x9

    move/from16 v0, p1

    move/from16 v1, p0

    if-ge v0, v1, :cond_6

    new-instance v3, LG/V;

    move-object v4, v13

    move-object/from16 v5, p2

    invoke-direct/range {v3 .. v10}, LG/V;-><init>(LG/m;Ljava/lang/String;LG/r;IFI[I)V

    move-object/from16 p0, v3

    :goto_6
    return-object p0

    :cond_6
    new-instance v11, LG/V;

    move-object v15, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v9

    move-object/from16 v21, v10

    invoke-direct/range {v11 .. v21}, LG/V;-><init>(LG/ac;LG/m;[LG/g;LG/r;ILjava/lang/String;IFI[I)V

    move-object/from16 p0, v11

    goto :goto_6

    :cond_7
    move-object v7, v4

    goto/16 :goto_1

    :cond_8
    move-object/from16 v17, v4

    move/from16 v16, v2

    move-object v14, v3

    goto/16 :goto_3

    :cond_9
    move-object v12, v2

    goto/16 :goto_0
.end method


# virtual methods
.method public a(LG/w;Ljava/io/DataOutput;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, LG/V;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LG/V;->a:LG/ac;

    invoke-virtual {v0, p2}, LG/ac;->a(Ljava/io/DataOutput;)V

    :cond_0
    iget-object v0, p0, LG/V;->b:LG/m;

    invoke-virtual {v0, p1, p2}, LG/m;->a(LG/w;Ljava/io/DataOutput;)V

    iget-object v0, p0, LG/V;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, LG/V;->d:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, LG/V;->e:LG/r;

    invoke-virtual {v0}, LG/r;->b()I

    move-result v0

    invoke-static {p2, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    iget v0, p0, LG/V;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, LG/V;->f:I

    invoke-static {p2, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    :cond_2
    iget-object v0, p0, LG/V;->c:[LG/g;

    if-eqz v0, :cond_3

    iget-object v0, p0, LG/V;->c:[LG/g;

    array-length v0, v0

    invoke-static {p2, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    iget-object v0, p0, LG/V;->c:[LG/g;

    array-length v1, v0

    move v2, v4

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    invoke-virtual {v3, p2}, LG/g;->a(Ljava/io/DataOutput;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget v0, p0, LG/V;->h:I

    int-to-byte v0, v0

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget v0, p0, LG/V;->i:F

    invoke-static {v0}, LG/X;->c(F)I

    move-result v0

    int-to-byte v0, v0

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeByte(I)V

    invoke-virtual {p0}, LG/V;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, LG/V;->j:I

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeInt(I)V

    :goto_1
    iget-object v0, p0, LG/V;->k:[I

    array-length v0, v0

    invoke-static {p2, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    iget-object v0, p0, LG/V;->k:[I

    array-length v1, v0

    move v2, v4

    :goto_2
    if-ge v2, v1, :cond_5

    aget v3, v0, v2

    invoke-static {p2, v3}, LG/L;->a(Ljava/io/DataOutput;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    iget v0, p0, LG/V;->j:I

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget v0, p0, LG/V;->j:I

    const v1, 0xffff

    and-int/2addr v0, v1

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeShort(I)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, LG/V;->a:LG/ac;

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

    iget-object v0, p0, LG/V;->a:LG/ac;

    return-object v0
.end method

.method public c()LG/m;
    .locals 1

    iget-object v0, p0, LG/V;->b:LG/m;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LG/V;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()F
    .locals 1

    iget v0, p0, LG/V;->i:F

    return v0
.end method

.method public h()LG/r;
    .locals 1

    iget-object v0, p0, LG/V;->e:LG/r;

    return-object v0
.end method

.method public k()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, LG/V;->h:I

    return v0
.end method

.method public m()[I
    .locals 1

    iget-object v0, p0, LG/V;->k:[I

    return-object v0
.end method

.method public n()I
    .locals 2

    iget-object v0, p0, LG/V;->b:LG/m;

    invoke-virtual {v0}, LG/m;->f()I

    move-result v0

    iget-object v1, p0, LG/V;->d:Ljava/lang/String;

    invoke-static {v1}, LG/X;->a(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

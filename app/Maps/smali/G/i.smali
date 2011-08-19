.class public LG/i;
.super Ljava/lang/Object;

# interfaces
.implements LG/d;


# static fields
.field private static final m:[Ljava/lang/String;

.field private static final n:[Ljava/lang/String;


# instance fields
.field private final a:LG/ac;

.field private final b:LG/m;

.field private final c:[Ljava/lang/String;

.field private final d:[Ljava/lang/String;

.field private final e:[LG/g;

.field private final f:LG/r;

.field private final g:I

.field private final h:Ljava/lang/String;

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, LG/i;->m:[Ljava/lang/String;

    sget-object v0, LG/i;->m:[Ljava/lang/String;

    sput-object v0, LG/i;->n:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(LG/ac;LG/m;[Ljava/lang/String;[Ljava/lang/String;[LG/g;LG/r;ILjava/lang/String;III[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG/i;->a:LG/ac;

    iput-object p2, p0, LG/i;->b:LG/m;

    iput-object p3, p0, LG/i;->c:[Ljava/lang/String;

    iput-object p4, p0, LG/i;->d:[Ljava/lang/String;

    iput-object p5, p0, LG/i;->e:[LG/g;

    iput-object p6, p0, LG/i;->f:LG/r;

    iput p7, p0, LG/i;->g:I

    iput-object p8, p0, LG/i;->h:Ljava/lang/String;

    iput p9, p0, LG/i;->i:I

    iput p10, p0, LG/i;->j:I

    iput p11, p0, LG/i;->k:I

    iput-object p12, p0, LG/i;->l:[I

    return-void
.end method

.method public constructor <init>(LG/m;[Ljava/lang/String;[Ljava/lang/String;LG/r;III[I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, LG/i;->a:LG/ac;

    iput-object p1, p0, LG/i;->b:LG/m;

    iput-object p2, p0, LG/i;->c:[Ljava/lang/String;

    iput-object p3, p0, LG/i;->d:[Ljava/lang/String;

    iput-object v1, p0, LG/i;->e:[LG/g;

    iput-object p4, p0, LG/i;->f:LG/r;

    const/4 v0, -0x1

    iput v0, p0, LG/i;->g:I

    iput-object v1, p0, LG/i;->h:Ljava/lang/String;

    iput p5, p0, LG/i;->i:I

    iput p6, p0, LG/i;->j:I

    iput p7, p0, LG/i;->k:I

    iput-object p8, p0, LG/i;->l:[I

    return-void
.end method

.method public static a(Ljava/io/DataInput;ILG/w;LG/q;[Ljava/lang/String;)LG/i;
    .locals 21

    const/4 v2, 0x0

    const/16 v3, 0x9

    move/from16 v0, p1

    move v1, v3

    if-ne v0, v1, :cond_b

    invoke-static/range {p0 .. p0}, LG/ac;->a(Ljava/io/DataInput;)LG/ac;

    move-result-object v2

    move-object v9, v2

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, LG/m;->a(Ljava/io/DataInput;LG/w;)LG/m;

    move-result-object v10

    const/16 p2, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x7

    move/from16 v0, p1

    move v1, v3

    if-eq v0, v1, :cond_0

    const/16 v3, 0x8

    move/from16 v0, p1

    move v1, v3

    if-ne v0, v1, :cond_a

    :cond_0
    invoke-static/range {p0 .. p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result p2

    if-nez p2, :cond_1

    sget-object v2, LG/i;->m:[Ljava/lang/String;

    :goto_1
    if-nez p2, :cond_2

    sget-object v3, LG/i;->n:[Ljava/lang/String;

    :goto_2
    const/4 v4, 0x0

    :goto_3
    move v0, v4

    move/from16 v1, p2

    if-ge v0, v1, :cond_3

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/maps/driveabout/vector/cp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_1
    move/from16 v0, p2

    new-array v0, v0, [Ljava/lang/String;

    move-object v2, v0

    goto :goto_1

    :cond_2
    move/from16 v0, p2

    new-array v0, v0, [Ljava/lang/String;

    move-object v3, v0

    goto :goto_2

    :cond_3
    move-object v12, v3

    move-object v11, v2

    :goto_4
    invoke-static/range {p0 .. p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result p2

    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-virtual {v0, v1}, LG/q;->a(I)LG/r;

    move-result-object v6

    const/16 p2, -0x1

    const/4 v2, 0x0

    const/16 v3, 0x9

    move/from16 v0, p1

    move v1, v3

    if-ne v0, v1, :cond_9

    invoke-static/range {p0 .. p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result p2

    move/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, LG/X;->a(I[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    aget-object v2, p4, p2

    move-object v7, v2

    move/from16 v15, p2

    :goto_5
    const/16 p2, 0x0

    const/16 v2, 0x9

    move/from16 v0, p1

    move v1, v2

    if-ne v0, v1, :cond_8

    invoke-static/range {p0 .. p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result p2

    move/from16 v0, p2

    new-array v0, v0, [LG/g;

    move-object v8, v0

    const/4 v2, 0x0

    move v13, v2

    :goto_6
    move v0, v13

    move/from16 v1, p2

    if-ge v0, v1, :cond_4

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v2 .. v7}, LG/g;->a(Ljava/io/DataInput;ILG/q;[Ljava/lang/String;LG/r;Ljava/lang/String;)LG/g;

    move-result-object v2

    aput-object v2, v8, v13

    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto :goto_6

    :cond_4
    move-object v13, v8

    :goto_7
    invoke-static/range {p0 .. p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v17

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result v18

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v19

    const/16 p2, 0x0

    const/16 p3, 0x8

    move/from16 v0, p1

    move/from16 v1, p3

    if-eq v0, v1, :cond_5

    const/16 p3, 0x9

    move/from16 v0, p1

    move/from16 v1, p3

    if-ne v0, v1, :cond_7

    :cond_5
    invoke-static/range {p0 .. p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result p1

    :goto_8
    move/from16 v0, p1

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 p2, 0x0

    :goto_9
    move/from16 v0, p2

    move/from16 v1, p1

    if-ge v0, v1, :cond_6

    invoke-static/range {p0 .. p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result p3

    aput p3, v20, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_9

    :cond_6
    new-instance v8, LG/i;

    move-object v14, v6

    move-object/from16 v16, v7

    invoke-direct/range {v8 .. v20}, LG/i;-><init>(LG/ac;LG/m;[Ljava/lang/String;[Ljava/lang/String;[LG/g;LG/r;ILjava/lang/String;III[I)V

    return-object v8

    :cond_7
    move/from16 p1, p2

    goto :goto_8

    :cond_8
    move-object/from16 v13, p2

    goto :goto_7

    :cond_9
    move-object v7, v2

    move/from16 v15, p2

    goto :goto_5

    :cond_a
    move-object v12, v2

    move-object/from16 v11, p2

    goto/16 :goto_4

    :cond_b
    move-object v9, v2

    goto/16 :goto_0
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LG/i;->c:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a(LG/w;Ljava/io/DataOutput;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, LG/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LG/i;->a:LG/ac;

    invoke-virtual {v0, p2}, LG/ac;->a(Ljava/io/DataOutput;)V

    :cond_0
    iget-object v0, p0, LG/i;->b:LG/m;

    invoke-virtual {v0, p1, p2}, LG/m;->a(LG/w;Ljava/io/DataOutput;)V

    invoke-virtual {p0}, LG/i;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LG/i;->c:[Ljava/lang/String;

    array-length v0, v0

    invoke-static {p2, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    move v0, v4

    :goto_0
    iget-object v1, p0, LG/i;->c:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, LG/i;->c:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-interface {p2, v1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    iget-object v1, p0, LG/i;->d:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-interface {p2, v1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, LG/i;->f:LG/r;

    invoke-virtual {v0}, LG/r;->b()I

    move-result v0

    invoke-static {p2, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    invoke-virtual {p0}, LG/i;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, LG/i;->g:I

    invoke-static {p2, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    iget-object v0, p0, LG/i;->e:[LG/g;

    array-length v0, v0

    invoke-static {p2, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    iget-object v0, p0, LG/i;->e:[LG/g;

    array-length v1, v0

    move v2, v4

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3, p2}, LG/g;->a(Ljava/io/DataOutput;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget v0, p0, LG/i;->i:I

    invoke-static {p2, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    iget v0, p0, LG/i;->j:I

    int-to-byte v0, v0

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget v0, p0, LG/i;->k:I

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object v0, p0, LG/i;->l:[I

    array-length v0, v0

    invoke-static {p2, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    iget-object v0, p0, LG/i;->l:[I

    array-length v1, v0

    move v2, v4

    :goto_2
    if-ge v2, v1, :cond_3

    aget v3, v0, v2

    invoke-static {p2, v3}, LG/L;->a(Ljava/io/DataOutput;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, LG/i;->a:LG/ac;

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

    iget-object v0, p0, LG/i;->a:LG/ac;

    return-object v0
.end method

.method public b(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LG/i;->d:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public c()LG/m;
    .locals 1

    iget-object v0, p0, LG/i;->b:LG/m;

    return-object v0
.end method

.method public c(I)Z
    .locals 1

    iget-object v0, p0, LG/i;->d:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, LG/i;->c:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public d(I)Z
    .locals 1

    iget v0, p0, LG/i;->k:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()I
    .locals 1

    iget v0, p0, LG/i;->i:I

    return v0
.end method

.method public f()Z
    .locals 2

    iget v0, p0, LG/i;->k:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_0

    iget v0, p0, LG/i;->i:I

    const/16 v1, 0x80

    if-ge v0, v1, :cond_0

    iget v0, p0, LG/i;->k:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, LG/i;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, LG/i;->d(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()LG/r;
    .locals 1

    iget-object v0, p0, LG/i;->f:LG/r;

    return-object v0
.end method

.method public k()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, LG/i;->j:I

    return v0
.end method

.method public m()[I
    .locals 1

    iget-object v0, p0, LG/i;->l:[I

    return-object v0
.end method

.method public n()I
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, LG/i;->b:LG/m;

    invoke-virtual {v0}, LG/m;->f()I

    move-result v0

    add-int/lit8 v0, v0, 0x30

    iget-object v1, p0, LG/i;->c:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    move v0, v5

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v4, v1, v0

    invoke-static {v4}, LG/X;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, LG/i;->d:[Ljava/lang/String;

    array-length v1, v0

    move v2, v5

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    invoke-static {v4}, LG/X;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return v3
.end method

.class public LG/Y;
.super Ljava/lang/Object;

# interfaces
.implements LG/d;


# instance fields
.field private final a:LG/w;

.field private final b:LG/Q;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:LG/ac;

.field private final h:Ljava/lang/String;

.field private final i:LG/r;

.field private final j:I

.field private final k:[I

.field private final l:I

.field private final m:I

.field private final n:I

.field private final o:F

.field private p:I

.field private q:F

.field private r:F

.field private final s:[LG/W;

.field private final t:LG/g;

.field private final u:LG/g;

.field private final v:[LG/O;

.field private final w:I

.field private final x:Ljava/lang/String;

.field private final y:Ljava/lang/String;


# direct methods
.method public constructor <init>(LG/ac;[LG/W;LG/g;LG/g;[LG/O;Ljava/lang/String;LG/r;ILjava/lang/String;IIIILjava/lang/String;Ljava/lang/String;[I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput v2, p0, LG/Y;->p:I

    const/high16 v2, -0x4080

    iput v2, p0, LG/Y;->q:F

    const/high16 v2, -0x4080

    iput v2, p0, LG/Y;->r:F

    iput-object p1, p0, LG/Y;->g:LG/ac;

    iput-object p2, p0, LG/Y;->s:[LG/W;

    iput-object p3, p0, LG/Y;->t:LG/g;

    iput-object p4, p0, LG/Y;->u:LG/g;

    iput-object p5, p0, LG/Y;->v:[LG/O;

    iput-object p6, p0, LG/Y;->e:Ljava/lang/String;

    iput-object p7, p0, LG/Y;->i:LG/r;

    iput p8, p0, LG/Y;->w:I

    iput-object p9, p0, LG/Y;->x:Ljava/lang/String;

    iput p10, p0, LG/Y;->j:I

    iput p11, p0, LG/Y;->l:I

    iput p12, p0, LG/Y;->m:I

    move/from16 v0, p13

    move-object v1, p0

    iput v0, v1, LG/Y;->n:I

    move-object/from16 v0, p14

    move-object v1, p0

    iput-object v0, v1, LG/Y;->y:Ljava/lang/String;

    move-object/from16 v0, p15

    move-object v1, p0

    iput-object v0, v1, LG/Y;->c:Ljava/lang/String;

    move-object/from16 v0, p16

    move-object v1, p0

    iput-object v0, v1, LG/Y;->k:[I

    const/4 v2, 0x0

    iput-object v2, p0, LG/Y;->f:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, LG/Y;->a:LG/w;

    const/4 v2, 0x0

    iput-object v2, p0, LG/Y;->b:LG/Q;

    const/4 v2, 0x0

    iput-object v2, p0, LG/Y;->h:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, LG/Y;->d:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, p0, LG/Y;->o:F

    return-void
.end method

.method public constructor <init>(LG/w;LG/Q;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LG/r;II[I)V
    .locals 4

    const/4 v3, 0x1

    const/high16 v1, -0x4080

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LG/Y;->p:I

    iput v1, p0, LG/Y;->q:F

    iput v1, p0, LG/Y;->r:F

    iput-object p1, p0, LG/Y;->a:LG/w;

    iput-object p2, p0, LG/Y;->b:LG/Q;

    iput-object p6, p0, LG/Y;->f:Ljava/lang/String;

    iput-object p7, p0, LG/Y;->h:Ljava/lang/String;

    iput-object p3, p0, LG/Y;->c:Ljava/lang/String;

    iput-object p4, p0, LG/Y;->d:Ljava/lang/String;

    iput-object p5, p0, LG/Y;->e:Ljava/lang/String;

    iput-object p8, p0, LG/Y;->i:LG/r;

    iput p9, p0, LG/Y;->j:I

    iput p10, p0, LG/Y;->n:I

    iput-object p11, p0, LG/Y;->k:[I

    iget-object v0, p0, LG/Y;->d:Ljava/lang/String;

    invoke-static {v0}, LG/Y;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, LG/Y;->d:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, LG/Y;->p:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget v0, p0, LG/Y;->n:I

    ushr-int/lit8 v0, v0, 0x1e

    const/high16 v1, 0x3f80

    shl-int v0, v3, v0

    int-to-float v0, v0

    div-float v0, v1, v0

    iput v0, p0, LG/Y;->o:F

    invoke-virtual {p1}, LG/w;->b()I

    move-result v0

    iget v1, p0, LG/Y;->n:I

    ushr-int/lit8 v1, v1, 0x1c

    and-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iput v0, p0, LG/Y;->l:I

    iget v0, p0, LG/Y;->n:I

    ushr-int/lit8 v0, v0, 0x18

    and-int/lit8 v0, v0, 0xf

    if-nez v0, :cond_1

    const/16 v0, 0x1e

    iput v0, p0, LG/Y;->m:I

    :goto_1
    iput-object v2, p0, LG/Y;->s:[LG/W;

    iput-object v2, p0, LG/Y;->t:LG/g;

    iput-object v2, p0, LG/Y;->u:LG/g;

    iput-object v2, p0, LG/Y;->v:[LG/O;

    const/4 v0, -0x1

    iput v0, p0, LG/Y;->w:I

    iput-object v2, p0, LG/Y;->x:Ljava/lang/String;

    iput-object v2, p0, LG/Y;->y:Ljava/lang/String;

    iput-object v2, p0, LG/Y;->g:LG/ac;

    return-void

    :cond_1
    iget v1, p0, LG/Y;->l:I

    add-int/2addr v0, v1

    sub-int/2addr v0, v3

    iput v0, p0, LG/Y;->m:I

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/io/DataInput;ILG/w;LG/q;[Ljava/lang/String;)LG/Y;
    .locals 26

    const/16 v3, 0x9

    move/from16 v0, p1

    move v1, v3

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, LG/Q;->a(Ljava/io/DataInput;LG/w;)LG/Q;

    move-result-object v5

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object p4

    invoke-static/range {p4 .. p4}, Lcom/google/android/maps/driveabout/vector/cp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object p4

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object p4

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object p4

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p0 .. p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result p4

    invoke-virtual/range {p3 .. p4}, LG/q;->a(I)LG/r;

    move-result-object v11

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result v12

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v13

    const-string p3, ""

    const/16 p4, 0x0

    const/16 v3, 0x8

    move/from16 v0, p1

    move v1, v3

    if-ne v0, v1, :cond_9

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-static/range {p0 .. p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result p3

    move-object/from16 v10, p1

    move/from16 p1, p3

    :goto_0
    move/from16 v0, p1

    new-array v0, v0, [I

    move-object v14, v0

    const/16 p3, 0x0

    :goto_1
    move/from16 v0, p3

    move/from16 v1, p1

    if-ge v0, v1, :cond_0

    invoke-static/range {p0 .. p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result p4

    aput p4, v14, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_0
    new-instance v3, LG/Y;

    move-object/from16 v4, p2

    invoke-direct/range {v3 .. v14}, LG/Y;-><init>(LG/w;LG/Q;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LG/r;II[I)V

    move-object/from16 p0, v3

    :goto_2
    return-object p0

    :cond_1
    invoke-static/range {p0 .. p0}, LG/ac;->a(Ljava/io/DataInput;)LG/ac;

    move-result-object v10

    invoke-static/range {p0 .. p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v3

    new-array v11, v3, [LG/W;

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, LG/W;->a(Ljava/io/DataInput;LG/w;I)LG/W;

    move-result-object v5

    aput-object v5, v11, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_2
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object p2

    invoke-static/range {p2 .. p2}, Lcom/google/android/maps/driveabout/vector/cp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v15

    invoke-static/range {p0 .. p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result p2

    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-virtual {v0, v1}, LG/q;->a(I)LG/r;

    move-result-object v7

    invoke-static/range {p0 .. p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v17

    const/16 p2, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p4

    invoke-static {v0, v1}, LG/X;->a(I[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    aget-object p2, p4, v17

    move-object/from16 v8, p2

    :goto_4
    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-static/range {v3 .. v8}, LG/g;->a(Ljava/io/DataInput;ILG/q;[Ljava/lang/String;LG/r;Ljava/lang/String;)LG/g;

    move-result-object v12

    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-static/range {v3 .. v8}, LG/g;->a(Ljava/io/DataInput;ILG/q;[Ljava/lang/String;LG/r;Ljava/lang/String;)LG/g;

    move-result-object v13

    invoke-static/range {p0 .. p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result p2

    move/from16 v0, p2

    new-array v0, v0, [LG/O;

    move-object v14, v0

    const/16 p3, 0x0

    :goto_5
    move/from16 v0, p3

    move/from16 v1, p2

    if-ge v0, v1, :cond_3

    invoke-static/range {p0 .. p1}, LG/O;->b(Ljava/io/DataInput;I)LG/O;

    move-result-object p4

    aput-object p4, v14, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    :cond_3
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result v19

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result v20

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result v21

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v22

    const/16 p1, 0x0

    invoke-static/range {v22 .. v22}, LG/Y;->b(I)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object p1

    move-object/from16 v23, p1

    :goto_6
    invoke-static/range {v22 .. v22}, LG/Y;->a(I)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object p1

    move-object/from16 v24, p1

    :goto_7
    invoke-static/range {p0 .. p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result p1

    move/from16 v0, p1

    new-array v0, v0, [I

    move-object/from16 v25, v0

    const/16 p2, 0x0

    :goto_8
    move/from16 v0, p2

    move/from16 v1, p1

    if-ge v0, v1, :cond_6

    invoke-static/range {p0 .. p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result p3

    aput p3, v25, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_4
    invoke-virtual {v12}, LG/g;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v13}, LG/g;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_5

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_5

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct/range {p3 .. p3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p3, 0xa

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct/range {p3 .. p3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object/from16 v24, p1

    goto :goto_7

    :cond_6
    new-instance v9, LG/Y;

    move-object/from16 v16, v7

    move-object/from16 v18, v8

    invoke-direct/range {v9 .. v25}, LG/Y;-><init>(LG/ac;[LG/W;LG/g;LG/g;[LG/O;Ljava/lang/String;LG/r;ILjava/lang/String;IIIILjava/lang/String;Ljava/lang/String;[I)V

    move-object/from16 p0, v9

    goto/16 :goto_2

    :cond_7
    move-object/from16 v23, p1

    goto :goto_6

    :cond_8
    move-object/from16 v8, p2

    goto/16 :goto_4

    :cond_9
    move/from16 p1, p4

    move-object/from16 v10, p3

    goto/16 :goto_0
.end method

.method private static a(I)Z
    .locals 1

    const/16 v0, 0x10

    invoke-static {v0, p0}, LG/X;->a(II)Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v3

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v3

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b(I)Z
    .locals 1

    const/16 v0, 0x8

    invoke-static {v0, p0}, LG/X;->a(II)Z

    move-result v0

    return v0
.end method

.method private s()Z
    .locals 1

    iget-object v0, p0, LG/Y;->t:LG/g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()LG/w;
    .locals 1

    iget-object v0, p0, LG/Y;->a:LG/w;

    return-object v0
.end method

.method public a(F)V
    .locals 0

    iput p1, p0, LG/Y;->q:F

    return-void
.end method

.method public a(LG/w;Ljava/io/DataOutput;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, LG/Y;->s()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LG/Y;->b:LG/Q;

    invoke-virtual {v0, p1, p2}, LG/Q;->a(LG/w;Ljava/io/DataOutput;)V

    iget-object v0, p0, LG/Y;->c:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, LG/Y;->d:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, LG/Y;->e:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, LG/Y;->f:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, LG/Y;->i:LG/r;

    invoke-virtual {v0}, LG/r;->b()I

    move-result v0

    invoke-static {p2, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    iget v0, p0, LG/Y;->j:I

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget v0, p0, LG/Y;->n:I

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object v0, p0, LG/Y;->h:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, LG/Y;->k:[I

    array-length v0, v0

    invoke-static {p2, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    iget-object v0, p0, LG/Y;->k:[I

    array-length v1, v0

    move v2, v4

    :goto_0
    if-ge v2, v1, :cond_5

    aget v3, v0, v2

    invoke-static {p2, v3}, LG/L;->a(Ljava/io/DataOutput;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, LG/Y;->g:LG/ac;

    invoke-virtual {v0, p2}, LG/ac;->a(Ljava/io/DataOutput;)V

    iget-object v0, p0, LG/Y;->s:[LG/W;

    array-length v0, v0

    invoke-static {p2, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    iget-object v0, p0, LG/Y;->s:[LG/W;

    array-length v1, v0

    move v2, v4

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p2, p1}, LG/W;->a(Ljava/io/DataOutput;LG/w;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, LG/Y;->e:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, LG/Y;->i:LG/r;

    invoke-virtual {v0}, LG/r;->b()I

    move-result v0

    invoke-static {p2, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    iget v0, p0, LG/Y;->w:I

    invoke-static {p2, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    iget-object v0, p0, LG/Y;->t:LG/g;

    invoke-virtual {v0, p2}, LG/g;->a(Ljava/io/DataOutput;)V

    iget-object v0, p0, LG/Y;->u:LG/g;

    invoke-virtual {v0, p2}, LG/g;->a(Ljava/io/DataOutput;)V

    iget-object v0, p0, LG/Y;->v:[LG/O;

    array-length v0, v0

    invoke-static {p2, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    iget-object v0, p0, LG/Y;->v:[LG/O;

    array-length v1, v0

    move v2, v4

    :goto_2
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3, p2}, LG/O;->a(Ljava/io/DataOutput;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget v0, p0, LG/Y;->j:I

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget v0, p0, LG/Y;->l:I

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget v0, p0, LG/Y;->m:I

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget v0, p0, LG/Y;->n:I

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p0, LG/Y;->n:I

    invoke-static {v0}, LG/Y;->b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, LG/Y;->y:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    :cond_3
    iget v0, p0, LG/Y;->n:I

    invoke-static {v0}, LG/Y;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, LG/Y;->c:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, LG/Y;->k:[I

    array-length v0, v0

    invoke-static {p2, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    iget-object v0, p0, LG/Y;->k:[I

    array-length v1, v0

    move v2, v4

    :goto_3
    if-ge v2, v1, :cond_5

    aget v3, v0, v2

    invoke-static {p2, v3}, LG/L;->a(Ljava/io/DataOutput;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method public b()LG/ac;
    .locals 1

    iget-object v0, p0, LG/Y;->g:LG/ac;

    return-object v0
.end method

.method public b(F)V
    .locals 0

    iput p1, p0, LG/Y;->r:F

    return-void
.end method

.method public c()LG/Q;
    .locals 1

    iget-object v0, p0, LG/Y;->b:LG/Q;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LG/Y;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LG/Y;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, LG/Y;->p:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LG/Y;->e:Ljava/lang/String;

    return-object v0
.end method

.method public h()LG/r;
    .locals 1

    iget-object v0, p0, LG/Y;->i:LG/r;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LG/Y;->f:Ljava/lang/String;

    return-object v0
.end method

.method public j()F
    .locals 1

    iget v0, p0, LG/Y;->o:F

    return v0
.end method

.method public k()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, LG/Y;->j:I

    return v0
.end method

.method public m()[I
    .locals 1

    iget-object v0, p0, LG/Y;->k:[I

    return-object v0
.end method

.method public n()I
    .locals 2

    const/16 v0, 0x50

    iget-object v1, p0, LG/Y;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, LG/Y;->c:Ljava/lang/String;

    invoke-static {v1}, LG/X;->a(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, LG/Y;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, LG/Y;->d:Ljava/lang/String;

    invoke-static {v1}, LG/X;->a(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, LG/Y;->e:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, LG/Y;->e:Ljava/lang/String;

    invoke-static {v1}, LG/X;->a(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, LG/Y;->f:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, LG/Y;->f:Ljava/lang/String;

    invoke-static {v1}, LG/X;->a(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, LG/Y;->h:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, LG/Y;->h:Ljava/lang/String;

    invoke-static {v1}, LG/X;->a(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    return v0
.end method

.method public o()I
    .locals 1

    iget v0, p0, LG/Y;->l:I

    return v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, LG/Y;->m:I

    return v0
.end method

.method public q()F
    .locals 1

    iget v0, p0, LG/Y;->q:F

    return v0
.end method

.method public r()F
    .locals 1

    iget v0, p0, LG/Y;->r:F

    return v0
.end method

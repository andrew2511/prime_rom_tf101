.class public Law/e;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/Boolean;

.field public static final b:Ljava/lang/Boolean;

.field public static final c:[B

.field private static final h:Law/d;


# instance fields
.field private d:Law/f;

.field private final e:LA/w;

.field private f:LA/w;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v2}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Law/e;->a:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Law/e;->b:Ljava/lang/Boolean;

    new-array v0, v2, [B

    sput-object v0, Law/e;->c:[B

    new-instance v0, Law/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Law/d;-><init>(Law/a;)V

    sput-object v0, Law/e;->h:Law/d;

    return-void
.end method

.method public constructor <init>(Law/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x8000

    iput v0, p0, Law/e;->g:I

    iput-object p1, p0, Law/e;->d:Law/f;

    new-instance v0, LA/w;

    invoke-direct {v0}, LA/w;-><init>()V

    iput-object v0, p0, Law/e;->e:LA/w;

    return-void
.end method

.method private a(IIZ)I
    .locals 4

    shl-int/lit8 v0, p1, 0x3

    int-to-long v0, v0

    invoke-static {v0, v1}, Law/e;->a(J)I

    move-result v0

    invoke-direct {p0, p1}, Law/e;->n(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/16 v1, 0x10

    invoke-direct {p0, p1, p2, v1}, Law/e;->a(III)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, [B

    if-eqz v1, :cond_1

    check-cast p0, [B

    check-cast p0, [B

    array-length v1, p0

    :goto_0
    int-to-long v2, v1

    invoke-static {v2, v3}, Law/e;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    :goto_1
    return v0

    :pswitch_1
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    :pswitch_2
    add-int/lit8 v0, v0, 0x8

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, p1, p2}, Law/e;->d(II)J

    move-result-wide v1

    invoke-direct {p0, p1}, Law/e;->k(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1, v2}, Law/e;->b(J)J

    move-result-wide v1

    :cond_0
    invoke-static {v1, v2}, Law/e;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, p1, p2}, Law/e;->e(II)Law/e;

    move-result-object v1

    invoke-direct {v1, p3}, Law/e;->a(Z)I

    move-result v1

    add-int/2addr v1, v0

    add-int/2addr v0, v1

    goto :goto_1

    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_2

    check-cast p0, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Ln/c;->a(Ljava/lang/String;[BI)I

    move-result v1

    goto :goto_0

    :cond_2
    check-cast p0, Law/e;

    invoke-direct {p0, p3}, Law/e;->a(Z)I

    move-result v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(ILn/p;)I
    .locals 20

    invoke-virtual/range {p0 .. p1}, Law/e;->i(I)I

    move-result v5

    invoke-direct/range {p0 .. p1}, Law/e;->n(I)I

    move-result v6

    shl-int/lit8 v4, p1, 0x3

    or-int v7, v4, v6

    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v5, :cond_5

    int-to-long v9, v7

    move-object/from16 v0, p2

    move-wide v1, v9

    invoke-static {v0, v1, v2}, Law/e;->a(Ljava/io/OutputStream;J)I

    move-result v9

    add-int/2addr v9, v4

    const/4 v10, 0x0

    invoke-virtual/range {p2 .. p2}, Ln/p;->d()I

    move-result v11

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    :pswitch_1
    const/16 v4, 0x13

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v8

    move v3, v4

    invoke-direct {v0, v1, v2, v3}, Law/e;->a(III)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const/4 v4, 0x5

    if-ne v6, v4, :cond_0

    const/4 v4, 0x4

    :goto_1
    const/4 v14, 0x0

    move/from16 v17, v14

    move-wide/from16 v18, v12

    move-wide/from16 v13, v18

    move/from16 v12, v17

    :goto_2
    if-ge v12, v4, :cond_1

    const-wide/16 v15, 0xff

    and-long/2addr v15, v13

    long-to-int v15, v15

    move-object/from16 v0, p2

    move v1, v15

    invoke-virtual {v0, v1}, Ln/p;->write(I)V

    const/16 v15, 0x8

    shr-long/2addr v13, v15

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_0
    const/16 v4, 0x8

    goto :goto_1

    :cond_1
    move v4, v10

    :goto_3
    if-nez v4, :cond_6

    invoke-virtual/range {p2 .. p2}, Ln/p;->d()I

    move-result v4

    sub-int/2addr v4, v11

    add-int/2addr v4, v9

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :pswitch_2
    const/16 v4, 0x13

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v8

    move v3, v4

    invoke-direct {v0, v1, v2, v3}, Law/e;->a(III)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-direct/range {p0 .. p1}, Law/e;->k(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v12, v13}, Law/e;->b(J)J

    move-result-wide v12

    :cond_2
    move-object/from16 v0, p2

    move-wide v1, v12

    invoke-static {v0, v1, v2}, Law/e;->a(Ljava/io/OutputStream;J)I

    move v4, v10

    goto :goto_3

    :pswitch_3
    invoke-virtual/range {p0 .. p1}, Law/e;->j(I)I

    move-result v4

    const/16 v12, 0x1b

    if-ne v4, v12, :cond_3

    const/16 v4, 0x10

    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v8

    move v3, v4

    invoke-direct {v0, v1, v2, v3}, Law/e;->a(III)Ljava/lang/Object;

    move-result-object v4

    instance-of v12, v4, [B

    if-eqz v12, :cond_4

    check-cast v4, [B

    check-cast v4, [B

    array-length v12, v4

    int-to-long v12, v12

    move-object/from16 v0, p2

    move-wide v1, v12

    invoke-static {v0, v1, v2}, Law/e;->a(Ljava/io/OutputStream;J)I

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Ln/p;->write([B)V

    move v4, v10

    goto :goto_3

    :cond_3
    const/16 v4, 0x19

    goto :goto_5

    :cond_4
    invoke-virtual/range {p2 .. p2}, Ln/p;->d()I

    move-result v10

    move-object/from16 v0, p2

    move v1, v10

    invoke-virtual {v0, v1}, Ln/p;->b(I)V

    invoke-virtual/range {p2 .. p2}, Ln/p;->c()I

    move-result v10

    const/4 v12, -0x1

    move-object/from16 v0, p2

    move v1, v12

    invoke-virtual {v0, v1}, Ln/p;->b(I)V

    check-cast v4, Law/e;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Law/e;->a(Ln/p;)I

    move-result v4

    move-object/from16 v0, p2

    move v1, v10

    move v2, v4

    invoke-virtual {v0, v1, v2}, Ln/p;->a(II)V

    int-to-long v12, v4

    invoke-static {v12, v13}, Law/e;->a(J)I

    move-result v10

    add-int/2addr v4, v10

    add-int/2addr v4, v9

    const/4 v9, 0x1

    move/from16 v17, v9

    move v9, v4

    move/from16 v4, v17

    goto/16 :goto_3

    :pswitch_4
    const/16 v4, 0x1a

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v8

    move v3, v4

    invoke-direct {v0, v1, v2, v3}, Law/e;->a(III)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Law/e;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Law/e;->a(Ln/p;)I

    move-result v4

    add-int/2addr v4, v9

    shl-int/lit8 v9, p1, 0x3

    or-int/lit8 v9, v9, 0x4

    int-to-long v9, v9

    move-object/from16 v0, p2

    move-wide v1, v9

    invoke-static {v0, v1, v2}, Law/e;->a(Ljava/io/OutputStream;J)I

    move-result v9

    add-int/2addr v4, v9

    const/4 v9, 0x1

    move/from16 v17, v9

    move v9, v4

    move/from16 v4, v17

    goto/16 :goto_3

    :cond_5
    return v4

    :cond_6
    move v4, v9

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(J)I
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    const/16 v0, 0xa

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x1

    move-wide v1, p0

    :goto_0
    const-wide/16 v3, 0x80

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x7

    shr-long/2addr v1, v3

    goto :goto_0
.end method

.method private a(Ljava/io/InputStream;IZLaw/d;)I
    .locals 10

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Law/e;->b()V

    :cond_0
    move v0, p2

    :goto_0
    if-lez v0, :cond_1

    const/4 v1, 0x1

    invoke-static {p1, v1, p4}, Law/e;->a(Ljava/io/InputStream;ZLaw/d;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_2

    :cond_1
    if-gez v0, :cond_c

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_2
    iget v3, p4, Law/d;->a:I

    sub-int/2addr v0, v3

    long-to-int v3, v1

    and-int/lit8 v3, v3, 0x7

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    ushr-long/2addr v1, v4

    long-to-int v1, v1

    invoke-virtual {p0, v1}, Law/e;->j(I)I

    move-result v2

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Law/e;->f:LA/w;

    if-nez v2, :cond_3

    new-instance v2, LA/w;

    invoke-direct {v2}, LA/w;-><init>()V

    iput-object v2, p0, Law/e;->f:LA/w;

    :cond_3
    iget-object v2, p0, Law/e;->f:LA/w;

    invoke-static {v3}, LA/u;->a(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, LA/w;->a(ILjava/lang/Object;)V

    :cond_4
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown wire type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reading garbage data?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const/4 v2, 0x0

    invoke-static {p1, v2, p4}, Law/e;->a(Ljava/io/InputStream;ZLaw/d;)J

    move-result-wide v2

    iget v4, p4, Law/d;->a:I

    sub-int/2addr v0, v4

    invoke-direct {p0, v1}, Law/e;->k(I)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v2, v3}, Law/e;->c(J)J

    move-result-wide v2

    :cond_5
    invoke-static {v2, v3}, LA/u;->a(J)Ljava/lang/Long;

    move-result-object v2

    move-object v9, v2

    move v2, v0

    move-object v0, v9

    :goto_1
    invoke-direct {p0, v1, v0}, Law/e;->b(ILjava/lang/Object;)V

    move v0, v2

    goto :goto_0

    :pswitch_2
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x5

    if-ne v3, v6, :cond_6

    const/4 v3, 0x4

    :goto_2
    sub-int/2addr v0, v3

    move v9, v3

    move v3, v2

    move v2, v9

    :goto_3
    add-int/lit8 v6, v2, -0x1

    if-lez v2, :cond_7

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    int-to-long v7, v2

    shl-long/2addr v7, v3

    or-long/2addr v4, v7

    add-int/lit8 v2, v3, 0x8

    move v3, v2

    move v2, v6

    goto :goto_3

    :cond_6
    const/16 v3, 0x8

    goto :goto_2

    :cond_7
    invoke-static {v4, v5}, LA/u;->a(J)Ljava/lang/Long;

    move-result-object v2

    move-object v9, v2

    move v2, v0

    move-object v0, v9

    goto :goto_1

    :pswitch_3
    const/4 v2, 0x0

    invoke-static {p1, v2, p4}, Law/e;->a(Ljava/io/InputStream;ZLaw/d;)J

    move-result-wide v2

    long-to-int v2, v2

    iget v3, p4, Law/d;->a:I

    sub-int/2addr v0, v3

    sub-int/2addr v0, v2

    if-nez v2, :cond_8

    sget-object v3, Law/e;->c:[B

    :goto_4
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v2, :cond_a

    sub-int v5, v2, v4

    invoke-virtual {p1, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-gtz v5, :cond_9

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexp.EOF"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-array v3, v2, [B

    goto :goto_4

    :cond_9
    add-int/2addr v4, v5

    goto :goto_5

    :cond_a
    move v2, v0

    move-object v0, v3

    goto :goto_1

    :pswitch_4
    new-instance v2, Law/e;

    iget-object v3, p0, Law/e;->d:Law/f;

    if-nez v3, :cond_b

    const/4 v3, 0x0

    :goto_6
    invoke-direct {v2, v3}, Law/e;-><init>(Law/f;)V

    const/4 v3, 0x0

    invoke-direct {v2, p1, v0, v3, p4}, Law/e;->a(Ljava/io/InputStream;IZLaw/d;)I

    move-result v0

    move-object v9, v2

    move v2, v0

    move-object v0, v9

    goto :goto_1

    :cond_b
    iget-object v3, p0, Law/e;->d:Law/f;

    invoke-virtual {v3, v1}, Law/f;->b(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Law/f;

    move-object v3, p2

    goto :goto_6

    :cond_c
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static a(Ljava/io/OutputStream;J)I
    .locals 6

    const/4 v0, 0x0

    move-wide v1, p1

    :goto_0
    const/16 v3, 0xa

    if-ge v0, v3, :cond_0

    const-wide/16 v3, 0x7f

    and-long/2addr v3, v1

    long-to-int v3, v3

    const/4 v4, 0x7

    ushr-long/2addr v1, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_1

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0

    :cond_1
    or-int/lit16 v3, v3, 0x80

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/Object;)I
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    instance-of v0, p0, Ljava/util/Vector;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Ln/p;)I
    .locals 3

    iget-object v0, p0, Law/e;->e:LA/w;

    invoke-virtual {v0}, LA/w;->a()LA/k;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, LA/k;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, LA/k;->b()I

    move-result v2

    invoke-direct {p0, v2, p1}, Law/e;->a(ILn/p;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method private a(Z)I
    .locals 7

    const/4 v6, 0x0

    iget v0, p0, Law/e;->g:I

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_0

    iget v0, p0, Law/e;->g:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Law/e;->e:LA/w;

    invoke-virtual {v0}, LA/w;->a()LA/k;

    move-result-object v0

    move v1, v6

    :goto_1
    invoke-virtual {v0}, LA/k;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, LA/k;->b()I

    move-result v2

    invoke-virtual {p0, v2}, Law/e;->i(I)I

    move-result v3

    move v4, v1

    move v1, v6

    :goto_2
    if-ge v1, v3, :cond_1

    invoke-direct {p0, v2, v1, p1}, Law/e;->a(IIZ)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    move v1, v4

    goto :goto_1

    :cond_2
    iput v1, p0, Law/e;->g:I

    iget v0, p0, Law/e;->g:I

    goto :goto_0
.end method

.method static a(Ljava/io/InputStream;Z)J
    .locals 2

    sget-object v0, Law/e;->h:Law/d;

    invoke-static {p0, p1, v0}, Law/e;->a(Ljava/io/InputStream;ZLaw/d;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static a(Ljava/io/InputStream;ZLaw/d;)J
    .locals 9

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iput v2, p2, Law/d;->a:I

    move v7, v2

    move v8, v2

    move-wide v2, v0

    move v0, v7

    move v1, v8

    :goto_0
    const/16 v4, 0xa

    if-ge v0, v4, :cond_3

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-wide/16 v0, -0x1

    :goto_1
    return-wide v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    and-int/lit8 v5, v4, 0x7f

    int-to-long v5, v5

    shl-long/2addr v5, v1

    or-long/2addr v2, v5

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_2

    move-wide v1, v2

    :goto_2
    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Law/d;->a:I

    move-wide v0, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move-wide v1, v2

    goto :goto_2
.end method

.method private a(III)Ljava/lang/Object;
    .locals 2

    invoke-static {p1}, Law/e;->m(I)V

    iget-object v0, p0, Law/e;->e:LA/w;

    invoke-virtual {v0, p1}, LA/w;->a(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Law/e;->a(Ljava/lang/Object;)I

    move-result v1

    if-lt p2, v1, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0, p1, p2, p3, v0}, Law/e;->a(IIILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a(IIILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p4, Ljava/util/Vector;

    if-eqz v1, :cond_2

    check-cast p4, Ljava/util/Vector;

    invoke-virtual {p4, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    move-object v0, p4

    :goto_0
    invoke-direct {p0, v1, p3, p1}, Law/e;->a(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_0

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, v2}, Law/e;->c(ILjava/lang/Object;)V

    :cond_0
    :goto_1
    return-object v2

    :cond_1
    invoke-virtual {v0, v2, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_1

    :cond_2
    move-object v1, p4

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 3

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupp.Type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    move-object v0, p1

    :goto_0
    return-object v0

    :pswitch_2
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Type mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    sget-object v0, Law/e;->a:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_4
    sget-object v0, Law/e;->b:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_5
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1

    :goto_1
    invoke-static {v0, v1}, LA/u;->a(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_2
    move-object v0, p1

    goto :goto_0

    :pswitch_6
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ln/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    :cond_3
    instance-of v0, p1, Law/e;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    check-cast p1, Law/e;

    invoke-virtual {p1, v0}, Law/e;->b(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    move-object v0, p1

    goto :goto_0

    :pswitch_7
    instance-of v0, p1, [B

    if-eqz v0, :cond_5

    check-cast p1, [B

    check-cast p1, [B

    const/4 v0, 0x0

    array-length v1, p1

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Ln/c;->a([BIIZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, p1

    goto :goto_0

    :pswitch_8
    instance-of v0, p1, [B

    if-eqz v0, :cond_7

    if-lez p3, :cond_6

    :try_start_1
    iget-object v0, p0, Law/e;->d:Law/f;

    if-eqz v0, :cond_6

    new-instance v0, Law/e;

    iget-object v1, p0, Law/e;->d:Law/f;

    invoke-virtual {v1, p3}, Law/f;->b(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Law/f;

    invoke-direct {v0, p0}, Law/e;-><init>(Law/f;)V

    :goto_2
    check-cast p1, [B

    check-cast p1, [B

    invoke-virtual {v0, p1}, Law/e;->a([B)Law/e;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    new-instance v0, Law/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    move-object v0, p1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private a(IILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Law/e;->a(IILjava/lang/Object;Z)V

    return-void
.end method

.method private a(IILjava/lang/Object;Z)V
    .locals 4

    invoke-static {p1}, Law/e;->m(I)V

    iget-object v1, p0, Law/e;->e:LA/w;

    invoke-virtual {v1, p1}, LA/w;->a(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v1, 0x0

    instance-of v3, v2, Ljava/util/Vector;

    if-eqz v3, :cond_0

    move-object v0, v2

    check-cast v0, Ljava/util/Vector;

    move-object v1, v0

    :cond_0
    if-eqz v2, :cond_1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    invoke-direct {p0, p1, p3}, Law/e;->c(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, p1, p3}, Law/e;->a(ILjava/lang/Object;)V

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v2, p0, Law/e;->e:LA/w;

    invoke-virtual {v2, p1, v1}, LA/w;->a(ILjava/lang/Object;)V

    :cond_3
    if-eqz p4, :cond_4

    invoke-virtual {v1, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1, p3, p2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method private a(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method private a(Ljava/io/OutputStream;Z)V
    .locals 8

    const/4 v4, 0x0

    new-instance v2, Ln/p;

    invoke-direct {v2}, Ln/p;-><init>()V

    invoke-direct {p0, v2}, Law/e;->a(Ln/p;)I

    move-result v3

    if-eqz p2, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/io/DataOutput;

    move-object v1, v0

    invoke-interface {v1, v3}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_0
    invoke-virtual {v2}, Ln/p;->c()I

    move-result v1

    move v3, v4

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v2, v3}, Ln/p;->a(I)I

    move-result v5

    sub-int v6, v5, v4

    invoke-virtual {v2, p1, v4, v6}, Ln/p;->a(Ljava/io/OutputStream;II)V

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v2, v4}, Ln/p;->a(I)I

    move-result v4

    int-to-long v6, v4

    invoke-static {p1, v6, v7}, Law/e;->a(Ljava/io/OutputStream;J)I

    add-int/lit8 v3, v3, 0x2

    move v4, v5

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ln/p;->d()I

    move-result v1

    if-ge v4, v1, :cond_2

    invoke-virtual {v2}, Ln/p;->d()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v2, p1, v4, v1}, Ln/p;->a(Ljava/io/OutputStream;II)V

    :cond_2
    return-void
.end method

.method private static b(Ljava/lang/Object;)I
    .locals 4

    const/4 v2, 0x0

    if-nez p0, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :cond_1
    instance-of v1, p0, Ljava/util/Vector;

    if-eqz v1, :cond_3

    move v3, v2

    :goto_1
    move-object v0, p0

    check-cast v0, Ljava/util/Vector;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    move-object v0, p0

    check-cast v0, Ljava/util/Vector;

    move-object v1, v0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Law/e;->b(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v1

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    instance-of v1, p0, Law/e;

    if-eqz v1, :cond_4

    check-cast p0, Law/e;

    invoke-virtual {p0}, Law/e;->e()I

    move-result v1

    goto :goto_0

    :cond_4
    instance-of v1, p0, [B

    if-eqz v1, :cond_5

    check-cast p0, [B

    check-cast p0, [B

    array-length v1, p0

    goto :goto_0

    :cond_5
    instance-of v1, p0, Ljava/lang/Long;

    if-eqz v1, :cond_6

    const/16 v1, 0x8

    goto :goto_0

    :cond_6
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_0

    :cond_7
    move v1, v2

    goto :goto_0
.end method

.method private static b(J)J
    .locals 4

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    ushr-long v2, p0, v2

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private b(IILjava/lang/Object;)V
    .locals 3

    if-gez p1, :cond_0

    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_0
    if-eqz p3, :cond_1

    invoke-direct {p0, p1, p3}, Law/e;->a(ILjava/lang/Object;)V

    :cond_1
    if-gez p2, :cond_2

    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_2
    iget-object v1, p0, Law/e;->e:LA/w;

    invoke-virtual {v1, p1}, LA/w;->a(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/util/Vector;

    if-eqz v2, :cond_4

    move-object v0, v1

    check-cast v0, Ljava/util/Vector;

    move-object p0, v0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    if-ne p2, v1, :cond_3

    invoke-virtual {p0, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0, p3, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_4
    if-nez v1, :cond_6

    if-lez p2, :cond_5

    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_5
    invoke-direct {p0, p1, p3}, Law/e;->c(ILjava/lang/Object;)V

    goto :goto_0

    :cond_6
    packed-switch p2, :pswitch_data_0

    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    :pswitch_0
    invoke-direct {p0, p1, p3}, Law/e;->c(ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v2, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Law/e;->e:LA/w;

    invoke-virtual {v1, p1, v2}, LA/w;->a(ILjava/lang/Object;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b(ILjava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Law/e;->a(IILjava/lang/Object;Z)V

    return-void
.end method

.method private static c(J)J
    .locals 4

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private c(ILjava/lang/Object;)V
    .locals 1

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0, p1, p2}, Law/e;->a(ILjava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Law/e;->e:LA/w;

    invoke-virtual {v0, p1, p2}, LA/w;->a(ILjava/lang/Object;)V

    return-void
.end method

.method private i(II)Ljava/lang/Object;
    .locals 3

    invoke-static {p1}, Law/e;->m(I)V

    iget-object v0, p0, Law/e;->e:LA/w;

    invoke-virtual {v0, p1}, LA/w;->a(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Law/e;->a(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Law/e;->l(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p2, v0}, Law/e;->a(IIILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private k(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Law/e;->j(I)I

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l(I)Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Law/e;->j(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Law/e;->d:Law/f;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :sswitch_0
    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Law/e;->d:Law/f;

    invoke-virtual {v0, p1}, Law/f;->b(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1b -> :sswitch_0
    .end sparse-switch
.end method

.method private static m(I)V
    .locals 0

    return-void
.end method

.method private final n(I)I
    .locals 5

    const/16 v4, 0x2f

    invoke-virtual {p0, p1}, Law/e;->j(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupp.Type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Law/e;->d:Law/f;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    const/4 v0, 0x0

    :goto_0
    :pswitch_2
    return v0

    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public a(Ljava/io/InputStream;I)I
    .locals 3

    const/4 v0, 0x1

    new-instance v1, Law/d;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Law/d;-><init>(Law/a;)V

    invoke-direct {p0, p1, p2, v0, v1}, Law/e;->a(Ljava/io/InputStream;IZLaw/d;)I

    move-result v0

    return v0
.end method

.method public a()Law/e;
    .locals 2

    :try_start_0
    new-instance v0, Law/e;

    invoke-virtual {p0}, Law/e;->c()Law/f;

    move-result-object v1

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    invoke-virtual {p0}, Law/e;->f()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Law/e;->a([B)Law/e;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not serialize and parse ProtoBuf."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(I)Law/e;
    .locals 2

    new-instance v0, Law/e;

    invoke-virtual {p0}, Law/e;->c()Law/f;

    move-result-object v1

    invoke-virtual {v1, p1}, Law/f;->b(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Law/f;

    invoke-direct {v0, p0}, Law/e;-><init>(Law/f;)V

    return-object v0
.end method

.method public a(Ljava/io/InputStream;)Law/e;
    .locals 1

    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Law/e;->a(Ljava/io/InputStream;I)I

    return-object p0
.end method

.method public a([B)Law/e;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-virtual {p0, v0, v1}, Law/e;->a(Ljava/io/InputStream;I)I

    return-object p0
.end method

.method public a(ID)V
    .locals 2

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Law/e;->b(IJ)V

    return-void
.end method

.method public a(IF)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Law/e;->h(II)V

    return-void
.end method

.method public a(II)V
    .locals 2

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Law/e;->a(IJ)V

    return-void
.end method

.method public a(IILaw/e;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Law/e;->a(IILjava/lang/Object;)V

    return-void
.end method

.method public a(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Law/e;->a(IILjava/lang/Object;)V

    return-void
.end method

.method public a(II[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Law/e;->b(IILjava/lang/Object;)V

    return-void
.end method

.method public a(IJ)V
    .locals 1

    invoke-static {p2, p3}, LA/u;->a(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Law/e;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public a(ILaw/e;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Law/e;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Law/e;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public a(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    sget-object v0, Law/e;->b:Ljava/lang/Boolean;

    :goto_0
    invoke-direct {p0, p1, v0}, Law/e;->b(ILjava/lang/Object;)V

    return-void

    :cond_0
    sget-object v0, Law/e;->a:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public a(I[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Law/e;->b(ILjava/lang/Object;)V

    return-void
.end method

.method a(Law/f;)V
    .locals 1

    iget-object v0, p0, Law/e;->e:LA/w;

    invoke-virtual {v0}, LA/w;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Law/e;->d:Law/f;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Law/e;->d:Law/f;

    if-eq p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iput-object p1, p0, Law/e;->d:Law/f;

    const/4 v0, 0x0

    iput-object v0, p0, Law/e;->f:LA/w;

    return-void
.end method

.method public a(Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Law/e;->a(Ljava/io/OutputStream;Z)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Law/e;->e:LA/w;

    invoke-virtual {v0}, LA/w;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Law/e;->f:LA/w;

    return-void
.end method

.method public b(IJ)V
    .locals 1

    invoke-static {p2, p3}, LA/u;->a(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Law/e;->c(ILjava/lang/Object;)V

    return-void
.end method

.method public b(ILaw/e;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Law/e;->c(ILjava/lang/Object;)V

    return-void
.end method

.method public b(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Law/e;->c(ILjava/lang/Object;)V

    return-void
.end method

.method public b(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    sget-object v0, Law/e;->b:Ljava/lang/Boolean;

    :goto_0
    invoke-direct {p0, p1, v0}, Law/e;->c(ILjava/lang/Object;)V

    return-void

    :cond_0
    sget-object v0, Law/e;->a:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public b(I[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Law/e;->c(ILjava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Law/e;->a(Ljava/io/OutputStream;Z)V

    return-void
.end method

.method public b(I)Z
    .locals 1

    const/16 v0, 0x18

    invoke-direct {p0, p1, v0}, Law/e;->i(II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public b(II)[B
    .locals 1

    const/16 v0, 0x19

    invoke-direct {p0, p1, p2, v0}, Law/e;->a(III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    return-object p0
.end method

.method public c(II)I
    .locals 2

    const/16 v0, 0x15

    invoke-direct {p0, p1, p2, v0}, Law/e;->a(III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public c()Law/f;
    .locals 1

    iget-object v0, p0, Law/e;->d:Law/f;

    return-object v0
.end method

.method public c(I)[B
    .locals 1

    const/16 v0, 0x19

    invoke-direct {p0, p1, v0}, Law/e;->i(II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Law/e;->a()Law/e;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Law/e;->a(Z)I

    move-result v0

    return v0
.end method

.method public d(I)I
    .locals 2

    const/16 v0, 0x15

    invoke-direct {p0, p1, v0}, Law/e;->i(II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public d(II)J
    .locals 2

    const/16 v0, 0x13

    invoke-direct {p0, p1, p2, v0}, Law/e;->a(III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public e()I
    .locals 4

    iget-object v0, p0, Law/e;->e:LA/w;

    invoke-virtual {v0}, LA/w;->e()I

    move-result v0

    iget-object v1, p0, Law/e;->e:LA/w;

    invoke-virtual {v1}, LA/w;->a()LA/k;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, LA/k;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, LA/k;->b()I

    move-result v2

    iget-object v3, p0, Law/e;->e:LA/w;

    invoke-virtual {v3, v2}, LA/w;->a(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Law/e;->b(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    return v0
.end method

.method public e(I)J
    .locals 2

    const/16 v0, 0x13

    invoke-direct {p0, p1, v0}, Law/e;->i(II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public e(II)Law/e;
    .locals 1

    const/16 v0, 0x1a

    invoke-direct {p0, p1, p2, v0}, Law/e;->a(III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Law/e;

    return-object p0
.end method

.method public f(I)Law/e;
    .locals 1

    const/16 v0, 0x1a

    invoke-direct {p0, p1, v0}, Law/e;->i(II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Law/e;

    return-object p0
.end method

.method public f(II)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x1c

    invoke-direct {p0, p1, p2, v0}, Law/e;->a(III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public f()[B
    .locals 1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v0}, Law/e;->b(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public g(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x1c

    invoke-direct {p0, p1, v0}, Law/e;->i(II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public g(II)V
    .locals 2

    invoke-virtual {p0, p1}, Law/e;->i(I)I

    move-result v0

    if-lt p2, v0, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Law/e;->e:LA/w;

    invoke-virtual {v0, p1}, LA/w;->b(I)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Law/e;->e:LA/w;

    invoke-virtual {v0, p1}, LA/w;->a(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Vector;

    invoke-virtual {p0, p2}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_0
.end method

.method public h(II)V
    .locals 2

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Law/e;->b(IJ)V

    return-void
.end method

.method public h(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Law/e;->i(I)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-direct {p0, p1}, Law/e;->l(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i(I)I
    .locals 1

    iget-object v0, p0, Law/e;->e:LA/w;

    invoke-virtual {v0, p1}, LA/w;->a(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Law/e;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public j(I)I
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x10

    iget-object v0, p0, Law/e;->d:Law/f;

    if-eqz v0, :cond_5

    iget-object v0, p0, Law/e;->d:Law/f;

    invoke-virtual {v0, p1}, Law/f;->a(I)I

    move-result v0

    move v1, v0

    :goto_0
    if-ne v1, v2, :cond_4

    iget-object v0, p0, Law/e;->f:LA/w;

    if-eqz v0, :cond_2

    iget-object v0, p0, Law/e;->f:LA/w;

    invoke-virtual {v0, p1}, LA/w;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_2
    if-ne v0, v2, :cond_1

    invoke-virtual {p0, p1}, Law/e;->i(I)I

    move-result v1

    if-lez v1, :cond_1

    invoke-direct {p0, p1, v3, v2}, Law/e;->a(III)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Long;

    if-nez v1, :cond_0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    :cond_0
    move v0, v3

    :cond_1
    :goto_3
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_0
.end method

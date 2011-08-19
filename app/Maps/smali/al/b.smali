.class public Lal/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:LW/h;

.field public static final e:LW/f;

.field public static final f:LW/f;

.field public static final g:LW/f;

.field public static final h:LW/f;


# instance fields
.field public b:LW/h;

.field public final c:Lal/a;

.field public final d:Lal/a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LW/h;

    const/4 v1, 0x0

    sget-object v2, LW/n;->b:LW/n;

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, LW/h;-><init>(LW/o;LW/n;J)V

    sput-object v0, Lal/b;->a:LW/h;

    new-instance v0, Lal/f;

    invoke-direct {v0}, Lal/f;-><init>()V

    sput-object v0, Lal/b;->e:LW/f;

    new-instance v0, Lal/e;

    invoke-direct {v0}, Lal/e;-><init>()V

    sput-object v0, Lal/b;->f:LW/f;

    new-instance v0, Lal/d;

    invoke-direct {v0}, Lal/d;-><init>()V

    sput-object v0, Lal/b;->g:LW/f;

    new-instance v0, Lal/c;

    invoke-direct {v0}, Lal/c;-><init>()V

    sput-object v0, Lal/b;->h:LW/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lal/b;->a:LW/h;

    iput-object v0, p0, Lal/b;->b:LW/h;

    new-instance v0, Lal/a;

    const/16 v1, 0x32

    sget-object v2, Lal/b;->e:LW/f;

    sget-object v3, Lal/b;->g:LW/f;

    invoke-direct {v0, v1, v2, v3}, Lal/a;-><init>(ILW/f;LW/f;)V

    iput-object v0, p0, Lal/b;->c:Lal/a;

    new-instance v0, Lal/a;

    const/16 v1, 0x190

    sget-object v2, Lal/b;->f:LW/f;

    sget-object v3, Lal/b;->h:LW/f;

    invoke-direct {v0, v1, v2, v3}, Lal/a;-><init>(ILW/f;LW/f;)V

    iput-object v0, p0, Lal/b;->d:Lal/a;

    return-void
.end method

.method private a(Ljava/io/InputStream;Ljavax/crypto/SecretKey;)Ljava/io/DataInput;
    .locals 4

    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    :try_start_0
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljavax/crypto/CipherInputStream;

    invoke-direct {v2, p1, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to create decrypt cipher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a(Ljava/io/OutputStream;Ljavax/crypto/SecretKey;)Ljava/io/DataOutputStream;
    .locals 4

    const/16 v0, 0x10

    new-array v0, v0, [B

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    :try_start_0
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v1, p1, v2}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to create encrypt cipher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static a(IIII)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 1

    sget-object v0, Lal/b;->a:LW/h;

    iput-object v0, p0, Lal/b;->b:LW/h;

    iget-object v0, p0, Lal/b;->c:Lal/a;

    invoke-virtual {v0}, Lal/a;->a()V

    iget-object v0, p0, Lal/b;->d:Lal/a;

    invoke-virtual {v0}, Lal/a;->a()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 5

    const-wide/32 v0, 0x240c8400

    sub-long v0, p1, v0

    iget-object v2, p0, Lal/b;->c:Lal/a;

    const-wide/32 v3, 0x2932e00

    sub-long v3, p1, v3

    invoke-virtual {v2, v3, v4, v0, v1}, Lal/a;->a(JJ)V

    iget-object v2, p0, Lal/b;->d:Lal/a;

    const-wide/32 v3, 0xa4cb800

    sub-long v3, p1, v3

    invoke-virtual {v2, v3, v4, v0, v1}, Lal/a;->a(JJ)V

    return-void
.end method

.method public a(Law/e;J)V
    .locals 22

    if-eqz p1, :cond_0

    const/4 v5, 0x1

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Law/e;->d(I)I

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x2

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v5, 0x2

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v11

    const/4 v5, 0x1

    invoke-virtual {v11, v5}, Law/e;->d(I)I

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move v12, v5

    :goto_0
    const/4 v5, 0x3

    invoke-virtual {v11, v5}, Law/e;->i(I)I

    move-result v5

    if-ge v12, v5, :cond_0

    const/4 v5, 0x3

    invoke-virtual {v11, v5, v12}, Law/e;->e(II)Law/e;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const v13, 0x9c40

    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Law/e;->h(I)Z

    move-result v14

    if-eqz v14, :cond_9

    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Law/e;->f(I)Law/e;

    move-result-object v14

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Law/e;->h(I)Z

    move-result v15

    if-eqz v15, :cond_8

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Law/e;->h(I)Z

    move-result v15

    if-eqz v15, :cond_8

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Law/e;->h(I)Z

    move-result v15

    if-eqz v15, :cond_8

    const/4 v6, 0x1

    invoke-virtual {v14, v6}, Law/e;->f(I)Law/e;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Law/e;->d(I)I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v14, v7}, Law/e;->f(I)Law/e;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Law/e;->d(I)I

    move-result v7

    const/4 v8, 0x3

    invoke-virtual {v14, v8}, Law/e;->d(I)I

    move-result v8

    mul-int/lit16 v8, v8, 0x3e8

    const/4 v9, 0x4

    invoke-virtual {v14, v9}, Law/e;->d(I)I

    move-result v9

    move/from16 v19, v9

    move v9, v6

    move/from16 v6, v19

    move/from16 v20, v7

    move v7, v8

    move/from16 v8, v20

    :goto_1
    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Law/e;->h(I)Z

    move-result v15

    if-eqz v15, :cond_2

    const/16 v10, 0x8

    invoke-virtual {v14, v10}, Law/e;->d(I)I

    move-result v10

    :cond_2
    const/16 v15, 0x14

    invoke-virtual {v14, v15}, Law/e;->h(I)Z

    move-result v15

    if-eqz v15, :cond_7

    const/16 v13, 0x14

    invoke-virtual {v14, v13}, Law/e;->d(I)I

    move-result v13

    mul-int/lit16 v13, v13, 0x3e8

    move/from16 v19, v13

    move v13, v10

    move/from16 v10, v19

    move/from16 v20, v6

    move v6, v9

    move/from16 v9, v20

    move/from16 v21, v8

    move v8, v7

    move/from16 v7, v21

    :goto_2
    const/4 v14, 0x2

    invoke-virtual {v5, v14}, Law/e;->h(I)Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v14, 0x3

    if-eq v13, v14, :cond_4

    const/4 v13, 0x2

    invoke-virtual {v5, v13}, Law/e;->f(I)Law/e;

    move-result-object v13

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Law/e;->d(I)I

    move-result v14

    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Law/e;->d(I)I

    move-result v15

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, 0x4

    move-object v0, v13

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v18

    if-eqz v18, :cond_3

    const/16 v16, 0x4

    move-object v0, v13

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Law/e;->d(I)I

    move-result v16

    :cond_3
    const/16 v18, 0x3

    move-object v0, v13

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v18

    if-eqz v18, :cond_6

    const/16 v17, 0x3

    move-object v0, v13

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Law/e;->d(I)I

    move-result v13

    :goto_3
    new-instance v17, LW/o;

    move-object/from16 v0, v17

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-direct {v0, v1, v2, v3, v4}, LW/o;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lal/b;->c:Lal/a;

    move-object/from16 v18, v0

    move/from16 v0, v16

    move v1, v13

    move v2, v15

    move v3, v14

    invoke-static {v0, v1, v2, v3}, Lal/b;->a(IIII)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v18

    move-object v1, v13

    move-object/from16 v2, v17

    move-wide/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lal/a;->a(Ljava/lang/Object;Ljava/lang/Object;J)V

    :cond_4
    const/4 v13, 0x3

    invoke-virtual {v5, v13}, Law/e;->h(I)Z

    move-result v13

    if-eqz v13, :cond_5

    const/4 v13, 0x3

    invoke-virtual {v5, v13}, Law/e;->f(I)Law/e;

    move-result-object v5

    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, LW/e;->a(Ljava/lang/String;)J

    move-result-wide v13

    new-instance v5, LW/r;

    invoke-direct/range {v5 .. v10}, LW/r;-><init>(IIIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lal/b;->d:Lal/a;

    move-object v6, v0

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, v6

    move-object v1, v7

    move-object v2, v5

    move-wide/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lal/a;->a(Ljava/lang/Object;Ljava/lang/Object;J)V

    :cond_5
    add-int/lit8 v5, v12, 0x1

    move v12, v5

    goto/16 :goto_0

    :cond_6
    move/from16 v13, v17

    goto :goto_3

    :cond_7
    move/from16 v19, v13

    move v13, v10

    move/from16 v10, v19

    move/from16 v20, v6

    move v6, v9

    move/from16 v9, v20

    move/from16 v21, v8

    move v8, v7

    move/from16 v7, v21

    goto/16 :goto_2

    :cond_8
    move/from16 v19, v9

    move v9, v6

    move/from16 v6, v19

    move/from16 v20, v7

    move v7, v8

    move/from16 v8, v20

    goto/16 :goto_1

    :cond_9
    move/from16 v19, v13

    move v13, v10

    move/from16 v10, v19

    goto/16 :goto_2
.end method

.method public a(Ljava/io/InputStream;Ljavax/crypto/SecretKey;JJ)V
    .locals 6

    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    invoke-direct {p0, p1, p2}, Lal/b;->a(Ljava/io/InputStream;Ljavax/crypto/SecretKey;)Ljava/io/DataInput;

    move-result-object v0

    move-object v1, v0

    :goto_0
    invoke-interface {v1}, Ljava/io/DataInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    sget-object v0, LW/h;->f:LW/f;

    invoke-interface {v0, v1}, LW/f;->b(Ljava/io/DataInput;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LW/h;

    iput-object v0, p0, Lal/b;->b:LW/h;

    iget-object v0, p0, Lal/b;->b:LW/h;

    iget-wide v4, v0, LW/h;->e:J

    add-long/2addr v2, v4

    sub-long/2addr v2, p3

    invoke-static {p5, p6, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    new-instance v0, LW/h;

    iget-object v4, p0, Lal/b;->b:LW/h;

    iget-object v4, v4, LW/h;->c:LW/o;

    iget-object v5, p0, Lal/b;->b:LW/h;

    iget-object v5, v5, LW/h;->d:LW/n;

    invoke-direct {v0, v4, v5, v2, v3}, LW/h;-><init>(LW/o;LW/n;J)V

    iput-object v0, p0, Lal/b;->b:LW/h;

    :cond_0
    iget-object v0, p0, Lal/b;->c:Lal/a;

    invoke-virtual {v0, v1}, Lal/a;->a(Ljava/io/DataInput;)Lal/a;

    iget-object v0, p0, Lal/b;->d:Lal/a;

    invoke-virtual {v0, v1}, Lal/a;->a(Ljava/io/DataInput;)Lal/a;

    :goto_1
    return-void

    :cond_1
    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    move-object v1, v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lal/b;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lal/b;->a()V

    throw v0
.end method

.method public a(Ljava/io/OutputStream;Ljavax/crypto/SecretKey;J)V
    .locals 3

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    invoke-direct {p0, p1, p2}, Lal/b;->a(Ljava/io/OutputStream;Ljavax/crypto/SecretKey;)Ljava/io/DataOutputStream;

    move-result-object v0

    iget-object v1, p0, Lal/b;->b:LW/h;

    sget-object v2, Lal/b;->a:LW/h;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-virtual {v0, p3, p4}, Ljava/io/DataOutputStream;->writeLong(J)V

    sget-object v1, LW/h;->f:LW/f;

    iget-object v2, p0, Lal/b;->b:LW/h;

    invoke-interface {v1, v2, v0}, LW/f;->a(Ljava/lang/Object;Ljava/io/DataOutput;)V

    :goto_0
    iget-object v1, p0, Lal/b;->c:Lal/a;

    iget-object v2, p0, Lal/b;->c:Lal/a;

    invoke-virtual {v1, v2, v0}, Lal/a;->a(Lal/a;Ljava/io/DataOutput;)V

    iget-object v1, p0, Lal/b;->d:Lal/a;

    iget-object v2, p0, Lal/b;->d:Lal/a;

    invoke-virtual {v1, v2, v0}, Lal/a;->a(Lal/a;Ljava/io/DataOutput;)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto :goto_0
.end method

.class public Lcom/zinio/mobile/android/a/a/o;
.super Lcom/zinio/mobile/android/b/a/m;
.source "SourceFile"


# static fields
.field private static R:Ljava/lang/String;

.field private static S:Ljava/lang/String;

.field private static T:Ljava/lang/String;


# instance fields
.field private A:J

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:I

.field private E:I

.field private F:Ljava/util/List;

.field private G:I

.field private H:Ljava/util/List;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Lcom/zinio/mobile/android/a/a/t;

.field private M:Lcom/zinio/mobile/android/a/a/k;

.field private N:Ljava/lang/String;

.field private O:Lcom/zinio/mobile/android/a/a/k;

.field private P:Z

.field private Q:Z

.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Ljava/lang/String;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const-class v0, Lcom/zinio/mobile/android/a/a/o;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zinio/mobile/android/a/a/o;->R:Ljava/lang/String;

    .line 336
    const-string v0, "@~Nr"

    sput-object v0, Lcom/zinio/mobile/android/a/a/o;->S:Ljava/lang/String;

    .line 337
    const-string v0, "M_#>"

    sput-object v0, Lcom/zinio/mobile/android/a/a/o;->T:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Lcom/zinio/mobile/android/b/a/m;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zinio/mobile/android/a/a/o;->O:Lcom/zinio/mobile/android/a/a/k;

    .line 77
    iput-boolean v1, p0, Lcom/zinio/mobile/android/a/a/o;->P:Z

    .line 78
    iput-boolean v1, p0, Lcom/zinio/mobile/android/a/a/o;->Q:Z

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 353
    const-string v0, "BC"

    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-nez v0, :cond_0

    .line 354
    const-string v0, ""

    .line 391
    :goto_0
    return-object v0

    .line 359
    :cond_0
    invoke-static {}, Lcom/zinio/mobile/android/DeviceInfo;->a()Ljava/lang/String;

    move-result-object v0

    .line 360
    invoke-static {}, Lcom/zinio/mobile/android/App;->g()Ljava/lang/String;

    move-result-object v1

    .line 362
    const/16 v2, 0x10

    new-array v2, v2, [C

    .line 363
    sget-object v3, Lcom/zinio/mobile/android/a/a/o;->S:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v2, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 364
    invoke-virtual {v0, v4, v5, v2, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 365
    sget-object v0, Lcom/zinio/mobile/android/a/a/o;->T:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-virtual {v0, v4, v5, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 366
    const/16 v0, 0xc

    invoke-virtual {v1, v4, v5, v2, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 368
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 372
    :try_start_0
    const-string v1, "AES/CBC/PKCS7Padding"

    const-string v2, "BC"

    invoke-static {v1, v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 374
    invoke-static {p1}, Lcom/zinio/mobile/android/a/a/r;->a(Ljava/lang/String;)[B

    move-result-object v2

    .line 375
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 377
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 379
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 380
    invoke-static {v0}, Lcom/zinio/mobile/android/a/a/r;->a([B)[B

    move-result-object v0

    .line 382
    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 384
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 385
    goto :goto_0

    .line 387
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 391
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/zinio/mobile/android/a/a/t;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/o;->L:Lcom/zinio/mobile/android/a/a/t;

    return-object v0
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/zinio/mobile/android/a/a/o;->a:Z

    if-eqz v0, :cond_0

    .line 283
    iget-boolean v0, p0, Lcom/zinio/mobile/android/a/a/o;->b:Z

    if-eqz v0, :cond_0

    .line 285
    iget-boolean v0, p0, Lcom/zinio/mobile/android/a/a/o;->c:Z

    if-eqz v0, :cond_1

    .line 286
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/zinio/mobile/android/a/a/o;->z:I

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    iget-boolean v0, p0, Lcom/zinio/mobile/android/a/a/o;->d:Z

    if-eqz v0, :cond_2

    .line 288
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zinio/mobile/android/a/a/o;->A:J

    goto :goto_0

    .line 289
    :cond_2
    iget-boolean v0, p0, Lcom/zinio/mobile/android/a/a/o;->e:Z

    if-eqz v0, :cond_3

    .line 290
    iput-object p1, p0, Lcom/zinio/mobile/android/a/a/o;->B:Ljava/lang/String;

    goto :goto_0

    .line 291
    :cond_3
    iget-boolean v0, p0, Lcom/zinio/mobile/android/a/a/o;->f:Z

    if-eqz v0, :cond_4

    .line 292
    iput-object p1, p0, Lcom/zinio/mobile/android/a/a/o;->C:Ljava/lang/String;

    goto :goto_0

    .line 293
    :cond_4
    iget-boolean v0, p0, Lcom/zinio/mobile/android/a/a/o;->g:Z

    if-eqz v0, :cond_5

    .line 294
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/zinio/mobile/android/a/a/o;->D:I

    goto :goto_0

    .line 295
    :cond_5
    iget-boolean v0, p0, Lcom/zinio/mobile/android/a/a/o;->h:Z

    if-eqz v0, :cond_6

    .line 296
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/zinio/mobile/android/a/a/o;->E:I

    goto :goto_0

    .line 297
    :cond_6
    iget-boolean v0, p0, Lcom/zinio/mobile/android/a/a/o;->i:Z

    if-eqz v0, :cond_7

    .line 298
    iput-object p1, p0, Lcom/zinio/mobile/android/a/a/o;->K:Ljava/lang/String;

    goto :goto_0

    .line 299
    :cond_7
    iget-boolean v0, p0, Lcom/zinio/mobile/android/a/a/o;->j:Z

    if-eqz v0, :cond_8

    .line 300
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/o;->k:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/zinio/mobile/android/a/a/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/a/a/o;->K:Ljava/lang/String;

    goto :goto_0

    .line 301
    :cond_8
    iget-boolean v0, p0, Lcom/zinio/mobile/android/a/a/o;->l:Z

    if-eqz v0, :cond_9

    .line 303
    iget-boolean v0, p0, Lcom/zinio/mobile/android/a/a/o;->m:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 308
    :cond_9
    iget-boolean v0, p0, Lcom/zinio/mobile/android/a/a/o;->r:Z

    if-eqz v0, :cond_a

    .line 309
    iget-boolean v0, p0, Lcom/zinio/mobile/android/a/a/o;->s:Z

    if-eqz v0, :cond_0

    .line 311
    iget-boolean v0, p0, Lcom/zinio/mobile/android/a/a/o;->t:Z

    if-nez v0, :cond_0

    .line 313
    iget-boolean v0, p0, Lcom/zinio/mobile/android/a/a/o;->v:Z

    if-nez v0, :cond_0

    .line 315
    iget-boolean v0, p0, Lcom/zinio/mobile/android/a/a/o;->u:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 326
    :cond_a
    iget-boolean v0, p0, Lcom/zinio/mobile/android/a/a/o;->w:Z

    if-eqz v0, :cond_c

    .line 327
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/zinio/mobile/android/a/a/o;->P:Z

    goto :goto_0

    :cond_b
    const/4 v0, 0x0

    goto :goto_1

    .line 328
    :cond_c
    iget-boolean v0, p0, Lcom/zinio/mobile/android/a/a/o;->x:Z

    if-eqz v0, :cond_0

    .line 329
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zinio/mobile/android/a/a/o;->Q:Z

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;Lorg/xml/sax/Attributes;Z)V
    .locals 19
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    const-string v2, "issuePackingList"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 87
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zinio/mobile/android/a/a/o;->a:Z

    .line 88
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zinio/mobile/android/a/a/o;->a:Z

    move v2, v0

    if-eqz v2, :cond_1

    .line 89
    const-string v2, "version"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zinio/mobile/android/a/a/o;->y:Ljava/lang/String;

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zinio/mobile/android/a/a/o;->F:Ljava/util/List;

    move-object v2, v0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zinio/mobile/android/a/a/o;->F:Ljava/util/List;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zinio/mobile/android/a/a/o;->F:Ljava/util/List;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_2
    new-instance v2, Lcom/zinio/mobile/android/a/a/t;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zinio/mobile/android/a/a/o;->y:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zinio/mobile/android/a/a/o;->z:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zinio/mobile/android/a/a/o;->G:I

    move v5, v0

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zinio/mobile/android/a/a/o;->B:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zinio/mobile/android/a/a/o;->C:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zinio/mobile/android/a/a/o;->E:I

    move v7, v0

    if-lez v7, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zinio/mobile/android/a/a/o;->E:I

    move v7, v0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zinio/mobile/android/a/a/o;->F:Ljava/util/List;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zinio/mobile/android/a/a/o;->O:Lcom/zinio/mobile/android/a/a/k;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zinio/mobile/android/a/a/o;->J:Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zinio/mobile/android/a/a/o;->H:Ljava/util/List;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zinio/mobile/android/a/a/o;->I:Ljava/lang/String;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/zinio/mobile/android/a/a/o;->A:J

    move-wide v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zinio/mobile/android/a/a/o;->K:Ljava/lang/String;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zinio/mobile/android/a/a/o;->N:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zinio/mobile/android/a/a/o;->P:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zinio/mobile/android/a/a/o;->Q:Z

    move/from16 v18, v0

    invoke-direct/range {v2 .. v18}, Lcom/zinio/mobile/android/a/a/t;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/zinio/mobile/android/a/a/k;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZ)V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zinio/mobile/android/a/a/o;->L:Lcom/zinio/mobile/android/a/a/t;

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zinio/mobile/android/a/a/o;->D:I

    move v7, v0

    goto :goto_1

    .line 103
    :cond_4
    const-string v2, "singleIssue"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 104
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zinio/mobile/android/a/a/o;->b:Z

    goto/16 :goto_0

    .line 106
    :cond_5
    const-string v2, "numberOfPages"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 107
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zinio/mobile/android/a/a/o;->c:Z

    goto/16 :goto_0

    .line 109
    :cond_6
    const-string v2, "packageSize"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 110
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zinio/mobile/android/a/a/o;->d:Z

    goto/16 :goto_0

    .line 112
    :cond_7
    const-string v2, "hostName"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 113
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zinio/mobile/android/a/a/o;->e:Z

    goto/16 :goto_0

    .line 115
    :cond_8
    const-string v2, "issueAssetDir"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 116
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zinio/mobile/android/a/a/o;->f:Z

    goto/16 :goto_0

    .line 118
    :cond_9
    const-string v2, "imageSizeJPEG"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 119
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zinio/mobile/android/a/a/o;->g:Z

    goto/16 :goto_0

    .line 121
    :cond_a
    const-string v2, "thumbnailSizeJPEG"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 122
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zinio/mobile/android/a/a/o;->h:Z

    goto/16 :goto_0

    .line 124
    :cond_b
    const-string v2, "assetKey"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 125
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zinio/mobile/android/a/a/o;->i:Z

    goto/16 :goto_0

    .line 127
    :cond_c
    const-string v2, "trackingKey"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 128
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zinio/mobile/android/a/a/o;->j:Z

    .line 129
    if-eqz p2, :cond_0

    .line 130
    const-string v2, "init"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zinio/mobile/android/a/a/o;->k:Ljava/lang/String;

    goto/16 :goto_0

    .line 133
    :cond_d
    const-string v2, "pages"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 134
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zinio/mobile/android/a/a/o;->l:Z

    .line 135
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zinio/mobile/android/a/a/o;->l:Z

    move v2, v0

    if-eqz v2, :cond_0

    .line 136
    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zinio/mobile/android/a/a/o;->z:I

    move v3, v0

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zinio/mobile/android/a/a/o;->F:Ljava/util/List;

    goto/16 :goto_0

    .line 139
    :cond_e
    const-string v2, "page"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 140
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zinio/mobile/android/a/a/o;->m:Z

    .line 141
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zinio/mobile/android/a/a/o;->m:Z

    move v2, v0

    if-eqz v2, :cond_0

    .line 144
    const-string v2, "bookmark"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 145
    const-string v2, "folio"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 146
    const-string v2, "media"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 147
    const-string v2, "number"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 148
    const-string v2, "type"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 149
    new-instance v2, Lcom/zinio/mobile/android/a/a/k;

    invoke-direct/range {v2 .. v7}, Lcom/zinio/mobile/android/a/a/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zinio/mobile/android/a/a/o;->M:Lcom/zinio/mobile/android/a/a/k;

    .line 150
    const-string v2, "toc"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zinio/mobile/android/a/a/o;->M:Lcom/zinio/mobile/android/a/a/k;

    move-object v2, v0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zinio/mobile/android/a/a/o;->O:Lcom/zinio/mobile/android/a/a/k;

    .line 153
    :cond_f
    const-string v2, "insert"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zinio/mobile/android/a/a/o;->F:Ljava/util/List;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zinio/mobile/android/a/a/o;->M:Lcom/zinio/mobile/android/a/a/k;

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 156
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zinio/mobile/android/a/a/o;->G:I

    move v2, v0

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zinio/mobile/android/a/a/o;->G:I

    goto/16 :goto_0

    .line 160
    :cond_11
    const-string v2, "area"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 161
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zinio/mobile/android/a/a/o;->n:Z

    .line 162
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zinio/mobile/android/a/a/o;->n:Z

    move v2, v0

    if-eqz v2, :cond_0

    .line 166
    const-string v2, "coords"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 167
    const-string v3, "href"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 168
    const-string v3, "onPageLoadEffect"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 169
    const-string v3, "shape"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 170
    const-string v3, "type"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 171
    const-string v3, "control"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 173
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 174
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 175
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    .line 176
    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    .line 177
    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 178
    new-instance v3, Landroid/graphics/RectF;

    add-float/2addr v11, v6

    add-float/2addr v2, v10

    invoke-direct {v3, v6, v10, v11, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zinio/mobile/android/a/a/o;->M:Lcom/zinio/mobile/android/a/a/k;

    move-object v10, v0

    new-instance v2, Lcom/zinio/mobile/android/a/a/g;

    new-instance v6, Lcom/zinio/mobile/android/a/a/n;

    invoke-direct {v6, v9, v8}, Lcom/zinio/mobile/android/a/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {v2 .. v7}, Lcom/zinio/mobile/android/a/a/g;-><init>(Landroid/graphics/RectF;Ljava/lang/String;Ljava/lang/String;Lcom/zinio/mobile/android/a/a/n;Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Lcom/zinio/mobile/android/a/a/k;->a(Lcom/zinio/mobile/android/a/a/g;)V

    goto/16 :goto_0

    .line 183
    :cond_12
    const-string v2, "video"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 184
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zinio/mobile/android/a/a/o;->o:Z

    .line 185
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zinio/mobile/android/a/a/o;->o:Z

    move v2, v0

    if-eqz v2, :cond_0

    .line 186
    const-string v2, "coords"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 187
    const-string v3, "href"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 188
    const-string v4, "fileName"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 190
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 191
    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 192
    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 193
    const/4 v7, 0x2

    aget-object v7, v2, v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 194
    const/4 v8, 0x3

    aget-object v2, v2, v8

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 195
    new-instance v8, Landroid/graphics/RectF;

    add-float/2addr v7, v5

    add-float/2addr v2, v6

    invoke-direct {v8, v5, v6, v7, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zinio/mobile/android/a/a/o;->M:Lcom/zinio/mobile/android/a/a/k;

    move-object v2, v0

    new-instance v5, Lcom/zinio/mobile/android/a/a/c;

    invoke-static {v4}, Lcom/zinio/mobile/android/a/a/u;->a(Ljava/lang/String;)Lcom/zinio/mobile/android/a/a/u;

    move-result-object v4

    invoke-direct {v5, v8, v3, v4}, Lcom/zinio/mobile/android/a/a/c;-><init>(Landroid/graphics/RectF;Ljava/lang/String;Lcom/zinio/mobile/android/a/a/u;)V

    invoke-virtual {v2, v5}, Lcom/zinio/mobile/android/a/a/k;->a(Lcom/zinio/mobile/android/a/a/ac;)V

    goto/16 :goto_0

    .line 199
    :cond_13
    const-string v2, "browser"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 200
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zinio/mobile/android/a/a/o;->p:Z

    .line 201
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zinio/mobile/android/a/a/o;->p:Z

    move v2, v0

    if-eqz v2, :cond_0

    .line 202
    const-string v2, "coords"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 203
    const-string v3, "href"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 205
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 206
    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 207
    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 208
    const/4 v6, 0x2

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 209
    const/4 v7, 0x3

    aget-object v2, v2, v7

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 210
    new-instance v7, Landroid/graphics/RectF;

    add-float/2addr v6, v4

    add-float/2addr v2, v5

    invoke-direct {v7, v4, v5, v6, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zinio/mobile/android/a/a/o;->M:Lcom/zinio/mobile/android/a/a/k;

    move-object v2, v0

    new-instance v4, Lcom/zinio/mobile/android/a/a/e;

    invoke-direct {v4, v7, v3}, Lcom/zinio/mobile/android/a/a/e;-><init>(Landroid/graphics/RectF;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/zinio/mobile/android/a/a/k;->a(Lcom/zinio/mobile/android/a/a/ac;)V

    goto/16 :goto_0

    .line 214
    :cond_14
    const-string v2, "audio"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 215
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zinio/mobile/android/a/a/o;->q:Z

    .line 216
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zinio/mobile/android/a/a/o;->q:Z

    move v2, v0

    if-eqz v2, :cond_0

    .line 217
    const-string v2, "coords"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 218
    const-string v3, "href"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 219
    const-string v4, "fileName"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 221
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 222
    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 223
    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 224
    const/4 v7, 0x2

    aget-object v7, v2, v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 225
    const/4 v8, 0x3

    aget-object v2, v2, v8

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 226
    new-instance v8, Landroid/graphics/RectF;

    add-float/2addr v7, v5

    add-float/2addr v2, v6

    invoke-direct {v8, v5, v6, v7, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zinio/mobile/android/a/a/o;->M:Lcom/zinio/mobile/android/a/a/k;

    move-object v2, v0

    new-instance v5, Lcom/zinio/mobile/android/a/a/aa;

    invoke-static {v4}, Lcom/zinio/mobile/android/a/a/u;->a(Ljava/lang/String;)Lcom/zinio/mobile/android/a/a/u;

    move-result-object v4

    invoke-direct {v5, v8, v3, v4}, Lcom/zinio/mobile/android/a/a/aa;-><init>(Landroid/graphics/RectF;Ljava/lang/String;Lcom/zinio/mobile/android/a/a/u;)V

    invoke-virtual {v2, v5}, Lcom/zinio/mobile/android/a/a/k;->a(Lcom/zinio/mobile/android/a/a/ac;)V

    goto/16 :goto_0

    .line 231
    :cond_15
    const-string v2, "reflowableAssets"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 232
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zinio/mobile/android/a/a/o;->r:Z

    goto/16 :goto_0

    .line 234
    :cond_16
    const-string v2, "articles"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 235
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zinio/mobile/android/a/a/o;->s:Z

    .line 236
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zinio/mobile/android/a/a/o;->s:Z

    move v2, v0

    if-eqz v2, :cond_0

    .line 237
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zinio/mobile/android/a/a/o;->H:Ljava/util/List;

    goto/16 :goto_0

    .line 240
    :cond_17
    const-string v2, "article"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 241
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zinio/mobile/android/a/a/o;->t:Z

    .line 242
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zinio/mobile/android/a/a/o;->t:Z

    move v2, v0

    if-eqz v2, :cond_0

    .line 243
    const-string v2, "name"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zinio/mobile/android/a/a/o;->H:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 247
    :cond_18
    const-string v2, "articlePackage"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 248
    if-eqz p3, :cond_0

    .line 249
    const-string v2, "name"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zinio/mobile/android/a/a/o;->J:Ljava/lang/String;

    goto/16 :goto_0

    .line 252
    :cond_19
    const-string v2, "javascript"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 253
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zinio/mobile/android/a/a/o;->u:Z

    .line 254
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zinio/mobile/android/a/a/o;->u:Z

    move v2, v0

    if-eqz v2, :cond_0

    .line 255
    const-string v2, "name"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zinio/mobile/android/a/a/o;->N:Ljava/lang/String;

    goto/16 :goto_0

    .line 258
    :cond_1a
    const-string v2, "toc"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 259
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zinio/mobile/android/a/a/o;->v:Z

    .line 260
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zinio/mobile/android/a/a/o;->v:Z

    move v2, v0

    if-eqz v2, :cond_0

    .line 261
    const-string v2, "name"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zinio/mobile/android/a/a/o;->I:Ljava/lang/String;

    goto/16 :goto_0

    .line 264
    :cond_1b
    const-string v2, "lowResEncrypted"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 265
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zinio/mobile/android/a/a/o;->w:Z

    goto/16 :goto_0

    .line 266
    :cond_1c
    const-string v2, "isRightToLeft"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zinio/mobile/android/a/a/o;->x:Z

    goto/16 :goto_0
.end method

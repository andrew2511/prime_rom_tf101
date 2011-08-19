.class final Lorg/apache/xml/serializer/utils/URI;
.super Ljava/lang/Object;
.source "URI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final MARK_CHARACTERS:Ljava/lang/String; = "-_.!~*\'() "

.field private static final RESERVED_CHARACTERS:Ljava/lang/String; = ";/?:@&=+$,"

.field private static final SCHEME_CHARACTERS:Ljava/lang/String; = "+-."

.field private static final USERINFO_CHARACTERS:Ljava/lang/String; = ";:&=+$,"


# instance fields
.field private m_fragment:Ljava/lang/String;

.field private m_host:Ljava/lang/String;

.field private m_path:Ljava/lang/String;

.field private m_port:I

.field private m_queryString:Ljava/lang/String;

.field private m_scheme:Ljava/lang/String;

.field private m_userinfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 147
    const/4 v0, 0x0

    sput-boolean v0, Lorg/apache/xml/serializer/utils/URI;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    .line 121
    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    .line 125
    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    .line 129
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    .line 133
    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    .line 140
    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    .line 144
    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "p_uriSpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 182
    const/4 v0, 0x0

    check-cast v0, Lorg/apache/xml/serializer/utils/URI;

    invoke-direct {p0, v0, p1}, Lorg/apache/xml/serializer/utils/URI;-><init>(Lorg/apache/xml/serializer/utils/URI;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "p_scheme"
    .parameter "p_schemeSpecificPart"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    .line 121
    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    .line 125
    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    .line 129
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    .line 133
    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    .line 140
    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    .line 144
    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    .line 218
    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_27

    .line 220
    :cond_1f
    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    const-string v1, "Cannot construct URI with null/empty scheme!"

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_27
    if-eqz p2, :cond_33

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3b

    .line 227
    :cond_33
    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    const-string v1, "Cannot construct URI with null/empty scheme-specific part!"

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_3b
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/utils/URI;->setScheme(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0, p2}, Lorg/apache/xml/serializer/utils/URI;->setPath(Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "p_scheme"
    .parameter "p_userinfo"
    .parameter "p_host"
    .parameter "p_port"
    .parameter "p_path"
    .parameter "p_queryString"
    .parameter "p_fragment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object v3, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    .line 121
    iput-object v3, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    .line 125
    iput-object v3, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    .line 129
    iput v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    .line 133
    iput-object v3, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    .line 140
    iput-object v3, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    .line 144
    iput-object v3, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    .line 291
    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2d

    .line 293
    :cond_1f
    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v2, "ER_SCHEME_REQUIRED"

    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_2d
    if-nez p3, :cond_4f

    .line 298
    if-eqz p2, :cond_3f

    .line 300
    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v2, "ER_NO_USERINFO_IF_NO_HOST"

    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_3f
    if-eq p4, v1, :cond_4f

    .line 306
    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v2, "ER_NO_PORT_IF_NO_HOST"

    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_4f
    if-eqz p5, :cond_81

    .line 313
    const/16 v0, 0x3f

    invoke-virtual {p5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_69

    if-eqz p6, :cond_69

    .line 315
    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v2, "ER_NO_QUERY_STRING_IN_PATH"

    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_69
    const/16 v0, 0x23

    invoke-virtual {p5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_81

    if-eqz p7, :cond_81

    .line 321
    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v2, "ER_NO_FRAGMENT_STRING_IN_PATH"

    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_81
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/utils/URI;->setScheme(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0, p3}, Lorg/apache/xml/serializer/utils/URI;->setHost(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0, p4}, Lorg/apache/xml/serializer/utils/URI;->setPort(I)V

    .line 329
    invoke-virtual {p0, p2}, Lorg/apache/xml/serializer/utils/URI;->setUserinfo(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0, p5}, Lorg/apache/xml/serializer/utils/URI;->setPath(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0, p6}, Lorg/apache/xml/serializer/utils/URI;->setQueryString(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0, p7}, Lorg/apache/xml/serializer/utils/URI;->setFragment(Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .parameter "p_scheme"
    .parameter "p_host"
    .parameter "p_path"
    .parameter "p_queryString"
    .parameter "p_fragment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 259
    const/4 v2, 0x0

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/xml/serializer/utils/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/serializer/utils/URI;)V
    .registers 4
    .parameter "p_other"

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    .line 121
    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    .line 125
    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    .line 129
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    .line 133
    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    .line 140
    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    .line 144
    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    .line 162
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/utils/URI;->initialize(Lorg/apache/xml/serializer/utils/URI;)V

    .line 163
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/serializer/utils/URI;Ljava/lang/String;)V
    .registers 5
    .parameter "p_base"
    .parameter "p_uriSpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    .line 121
    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    .line 125
    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    .line 129
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    .line 133
    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    .line 140
    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    .line 144
    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    .line 199
    invoke-direct {p0, p1, p2}, Lorg/apache/xml/serializer/utils/URI;->initialize(Lorg/apache/xml/serializer/utils/URI;Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method private initialize(Lorg/apache/xml/serializer/utils/URI;)V
    .registers 3
    .parameter "p_other"

    .prologue
    .line 343
    invoke-virtual {p1}, Lorg/apache/xml/serializer/utils/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    .line 344
    invoke-virtual {p1}, Lorg/apache/xml/serializer/utils/URI;->getUserinfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    .line 345
    invoke-virtual {p1}, Lorg/apache/xml/serializer/utils/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    .line 346
    invoke-virtual {p1}, Lorg/apache/xml/serializer/utils/URI;->getPort()I

    move-result v0

    iput v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    .line 347
    invoke-virtual {p1}, Lorg/apache/xml/serializer/utils/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    .line 348
    invoke-virtual {p1}, Lorg/apache/xml/serializer/utils/URI;->getQueryString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    .line 349
    invoke-virtual {p1}, Lorg/apache/xml/serializer/utils/URI;->getFragment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    .line 350
    return-void
.end method

.method private initialize(Lorg/apache/xml/serializer/utils/URI;Ljava/lang/String;)V
    .registers 22
    .parameter "p_base"
    .parameter "p_uriSpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 372
    if-nez p1, :cond_1e

    if-eqz p2, :cond_e

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_1e

    .line 375
    :cond_e
    new-instance v14, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object v15, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v16, "ER_CANNOT_INIT_URI_EMPTY_PARMS"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 380
    :cond_1e
    if-eqz p2, :cond_2a

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_2e

    .line 382
    :cond_2a
    invoke-direct/range {p0 .. p1}, Lorg/apache/xml/serializer/utils/URI;->initialize(Lorg/apache/xml/serializer/utils/URI;)V

    .line 570
    :cond_2d
    :goto_2d
    return-void

    .line 387
    :cond_2e
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 388
    .local v12, uriSpec:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    .line 389
    .local v13, uriSpecLen:I
    const/4 v4, 0x0

    .line 392
    .local v4, index:I
    const/16 v14, 0x3a

    invoke-virtual {v12, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 393
    .local v3, colonIndex:I
    if-gez v3, :cond_5b

    .line 395
    if-nez p1, :cond_6b

    .line 397
    new-instance v14, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object v15, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v16, "ER_NO_SCHEME_IN_URI"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v12, v17, v18

    invoke-virtual/range {v15 .. v17}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 402
    :cond_5b
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI;->initializeScheme(Ljava/lang/String;)V

    .line 403
    add-int/lit8 v14, v3, 0x1

    invoke-virtual {v12, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 404
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    .line 408
    :cond_6b
    const-string v14, "//"

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_95

    .line 410
    add-int/lit8 v4, v4, 0x2

    .line 412
    move v9, v4

    .line 415
    .local v9, startPos:I
    const/4 v11, 0x0

    .line 417
    .local v11, testChar:C
    :goto_77
    if-ge v4, v13, :cond_89

    .line 419
    invoke-virtual {v12, v4}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 421
    const/16 v14, 0x2f

    if-eq v11, v14, :cond_89

    const/16 v14, 0x3f

    if-eq v11, v14, :cond_89

    const/16 v14, 0x23

    if-ne v11, v14, :cond_f9

    .line 431
    :cond_89
    if-le v4, v9, :cond_fd

    .line 433
    invoke-virtual {v12, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI;->initializeAuthority(Ljava/lang/String;)V

    .line 441
    .end local v9           #startPos:I
    .end local v11           #testChar:C
    :cond_95
    :goto_95
    invoke-virtual {v12, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI;->initializePath(Ljava/lang/String;)V

    .line 448
    if-eqz p1, :cond_2d

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_105

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    move-object v14, v0

    if-nez v14, :cond_105

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    move-object v14, v0

    if-nez v14, :cond_105

    .line 460
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/serializer/utils/URI;->getScheme()Ljava/lang/String;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    .line 461
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/serializer/utils/URI;->getUserinfo()Ljava/lang/String;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    .line 462
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/serializer/utils/URI;->getHost()Ljava/lang/String;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    .line 463
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/serializer/utils/URI;->getPort()I

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    .line 464
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/serializer/utils/URI;->getPath()Ljava/lang/String;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    move-object v14, v0

    if-nez v14, :cond_2d

    .line 468
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/serializer/utils/URI;->getQueryString()Ljava/lang/String;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    goto/16 :goto_2d

    .line 426
    .restart local v9       #startPos:I
    .restart local v11       #testChar:C
    :cond_f9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_77

    .line 437
    :cond_fd
    const-string v14, ""

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    goto :goto_95

    .line 476
    .end local v9           #startPos:I
    .end local v11           #testChar:C
    :cond_105
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    move-object v14, v0

    if-nez v14, :cond_115

    .line 478
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/serializer/utils/URI;->getScheme()Ljava/lang/String;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    .line 483
    :cond_115
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    move-object v14, v0

    if-nez v14, :cond_2d

    .line 485
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/serializer/utils/URI;->getUserinfo()Ljava/lang/String;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    .line 486
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/serializer/utils/URI;->getHost()Ljava/lang/String;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    .line 487
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/serializer/utils/URI;->getPort()I

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_14f

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    move-object v14, v0

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2d

    .line 502
    :cond_14f
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    .line 503
    .local v6, path:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/serializer/utils/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 506
    .local v2, basePath:Ljava/lang/String;
    if-eqz v2, :cond_16a

    .line 508
    const/16 v14, 0x2f

    invoke-virtual {v2, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 510
    .local v5, lastSlash:I
    const/4 v14, -0x1

    if-eq v5, v14, :cond_16a

    .line 512
    const/4 v14, 0x0

    add-int/lit8 v15, v5, 0x1

    invoke-virtual {v2, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 517
    .end local v5           #lastSlash:I
    :cond_16a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    move-object v14, v0

    invoke-virtual {v6, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 520
    const/4 v4, -0x1

    .line 522
    :goto_174
    const-string v14, "/./"

    invoke-virtual {v6, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v14, -0x1

    if-eq v4, v14, :cond_18f

    .line 524
    const/4 v14, 0x0

    add-int/lit8 v15, v4, 0x1

    invoke-virtual {v6, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    add-int/lit8 v15, v4, 0x3

    invoke-virtual {v6, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_174

    .line 528
    :cond_18f
    const-string v14, "/."

    invoke-virtual {v6, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1a4

    .line 530
    const/4 v14, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x1

    sub-int v15, v15, v16

    invoke-virtual {v6, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 535
    :cond_1a4
    const/4 v4, -0x1

    .line 537
    const/4 v7, -0x1

    .line 538
    .local v7, segIndex:I
    const/4 v10, 0x0

    .line 540
    .local v10, tempString:Ljava/lang/String;
    :cond_1a7
    :goto_1a7
    const-string v14, "/../"

    invoke-virtual {v6, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1e2

    .line 542
    const/4 v14, 0x0

    const-string v15, "/../"

    invoke-virtual {v6, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v6, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 543
    const/16 v14, 0x2f

    invoke-virtual {v10, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 545
    const/4 v14, -0x1

    if-eq v7, v14, :cond_1a7

    .line 547
    add-int/lit8 v8, v7, 0x1

    .end local v7           #segIndex:I
    .local v8, segIndex:I
    invoke-virtual {v10, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, ".."

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_20e

    .line 549
    const/4 v14, 0x0

    invoke-virtual {v6, v14, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    add-int/lit8 v15, v4, 0x4

    invoke-virtual {v6, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move v7, v8

    .end local v8           #segIndex:I
    .restart local v7       #segIndex:I
    goto :goto_1a7

    .line 557
    :cond_1e2
    const-string v14, "/.."

    invoke-virtual {v6, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_207

    .line 559
    const/4 v14, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x3

    sub-int v15, v15, v16

    invoke-virtual {v6, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 560
    const/16 v14, 0x2f

    invoke-virtual {v10, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 562
    const/4 v14, -0x1

    if-eq v7, v14, :cond_207

    .line 564
    const/4 v14, 0x0

    add-int/lit8 v15, v7, 0x1

    invoke-virtual {v6, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 568
    :cond_207
    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    goto/16 :goto_2d

    .end local v7           #segIndex:I
    .restart local v8       #segIndex:I
    :cond_20e
    move v7, v8

    .end local v8           #segIndex:I
    .restart local v7       #segIndex:I
    goto :goto_1a7
.end method

.method private initializeAuthority(Ljava/lang/String;)V
    .registers 15
    .parameter "p_uriSpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x40

    const/16 v11, 0x3a

    .line 625
    const/4 v3, 0x0

    .line 626
    .local v3, index:I
    const/4 v6, 0x0

    .line 627
    .local v6, start:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 628
    .local v0, end:I
    const/4 v7, 0x0

    .line 629
    .local v7, testChar:C
    const/4 v8, 0x0

    .line 632
    .local v8, userinfo:Ljava/lang/String;
    invoke-virtual {p1, v12, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_21

    .line 634
    :goto_13
    if-ge v3, v0, :cond_1b

    .line 636
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 638
    if-ne v7, v12, :cond_40

    .line 646
    :cond_1b
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 648
    add-int/lit8 v3, v3, 0x1

    .line 652
    :cond_21
    const/4 v1, 0x0

    .line 654
    .local v1, host:Ljava/lang/String;
    move v6, v3

    .line 656
    :goto_23
    if-ge v3, v0, :cond_2b

    .line 658
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 660
    if-ne v7, v11, :cond_43

    .line 668
    :cond_2b
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 670
    const/4 v4, -0x1

    .line 672
    .local v4, port:I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_81

    .line 676
    if-ne v7, v11, :cond_81

    .line 678
    add-int/lit8 v3, v3, 0x1

    .line 680
    move v6, v3

    .line 682
    :goto_3b
    if-ge v3, v0, :cond_46

    .line 684
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 643
    .end local v1           #host:Ljava/lang/String;
    .end local v4           #port:I
    :cond_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 665
    .restart local v1       #host:Ljava/lang/String;
    :cond_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 687
    .restart local v4       #port:I
    :cond_46
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 689
    .local v5, portStr:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_81

    .line 691
    const/4 v2, 0x0

    .local v2, i:I
    :goto_51
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v2, v9, :cond_7d

    .line 693
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lorg/apache/xml/serializer/utils/URI;->isDigit(C)Z

    move-result v9

    if-nez v9, :cond_7a

    .line 695
    new-instance v9, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is invalid. Port should only contain digits!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 691
    :cond_7a
    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    .line 702
    :cond_7d
    :try_start_7d
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_80
    .catch Ljava/lang/NumberFormatException; {:try_start_7d .. :try_end_80} :catch_8b

    move-result v4

    .line 713
    .end local v2           #i:I
    .end local v5           #portStr:Ljava/lang/String;
    :cond_81
    :goto_81
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/utils/URI;->setHost(Ljava/lang/String;)V

    .line 714
    invoke-virtual {p0, v4}, Lorg/apache/xml/serializer/utils/URI;->setPort(I)V

    .line 715
    invoke-virtual {p0, v8}, Lorg/apache/xml/serializer/utils/URI;->setUserinfo(Ljava/lang/String;)V

    .line 716
    return-void

    .line 704
    .restart local v2       #i:I
    .restart local v5       #portStr:Ljava/lang/String;
    :catch_8b
    move-exception v9

    goto :goto_81
.end method

.method private initializePath(Ljava/lang/String;)V
    .registers 12
    .parameter "p_uriSpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x3f

    const/16 v6, 0x25

    const/16 v5, 0x23

    .line 728
    if-nez p1, :cond_10

    .line 730
    new-instance v4, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    const-string v5, "Cannot initialize path from null string!"

    invoke-direct {v4, v5}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 734
    :cond_10
    const/4 v1, 0x0

    .line 735
    .local v1, index:I
    const/4 v2, 0x0

    .line 736
    .local v2, start:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 737
    .local v0, end:I
    const/4 v3, 0x0

    .line 740
    .local v3, testChar:C
    :goto_17
    if-ge v1, v0, :cond_21

    .line 742
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 744
    if-eq v3, v7, :cond_21

    if-ne v3, v5, :cond_6b

    .line 770
    :cond_21
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    .line 773
    if-ne v3, v7, :cond_3a

    .line 775
    add-int/lit8 v1, v1, 0x1

    .line 777
    move v2, v1

    .line 779
    :goto_2c
    if-ge v1, v0, :cond_34

    .line 781
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 783
    if-ne v3, v5, :cond_c4

    .line 807
    :cond_34
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    .line 811
    :cond_3a
    if-ne v3, v5, :cond_142

    .line 813
    add-int/lit8 v1, v1, 0x1

    .line 815
    move v2, v1

    .line 817
    :goto_3f
    if-ge v1, v0, :cond_13c

    .line 819
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 821
    if-ne v3, v6, :cond_113

    .line 823
    add-int/lit8 v4, v1, 0x2

    if-ge v4, v0, :cond_63

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/xml/serializer/utils/URI;->isHex(C)Z

    move-result v4

    if-eqz v4, :cond_63

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/xml/serializer/utils/URI;->isHex(C)Z

    move-result v4

    if-nez v4, :cond_138

    .line 826
    :cond_63
    new-instance v4, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    const-string v5, "Fragment contains invalid escape sequence!"

    invoke-direct {v4, v5}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 750
    :cond_6b
    if-ne v3, v6, :cond_98

    .line 752
    add-int/lit8 v4, v1, 0x2

    if-ge v4, v0, :cond_89

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/xml/serializer/utils/URI;->isHex(C)Z

    move-result v4

    if-eqz v4, :cond_89

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/xml/serializer/utils/URI;->isHex(C)Z

    move-result v4

    if-nez v4, :cond_c0

    .line 755
    :cond_89
    new-instance v4, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object v5, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v6, "ER_PATH_CONTAINS_INVALID_ESCAPE_SEQUENCE"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 759
    :cond_98
    invoke-static {v3}, Lorg/apache/xml/serializer/utils/URI;->isReservedCharacter(C)Z

    move-result v4

    if-nez v4, :cond_c0

    invoke-static {v3}, Lorg/apache/xml/serializer/utils/URI;->isUnreservedCharacter(C)Z

    move-result v4

    if-nez v4, :cond_c0

    .line 762
    const/16 v4, 0x5c

    if-eq v4, v3, :cond_c0

    .line 763
    new-instance v4, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object v5, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v6, "ER_PATH_INVALID_CHAR"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 767
    :cond_c0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_17

    .line 788
    :cond_c4
    if-ne v3, v6, :cond_ea

    .line 790
    add-int/lit8 v4, v1, 0x2

    if-ge v4, v0, :cond_e2

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/xml/serializer/utils/URI;->isHex(C)Z

    move-result v4

    if-eqz v4, :cond_e2

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/xml/serializer/utils/URI;->isHex(C)Z

    move-result v4

    if-nez v4, :cond_10f

    .line 793
    :cond_e2
    new-instance v4, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    const-string v5, "Query string contains invalid escape sequence!"

    invoke-direct {v4, v5}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 797
    :cond_ea
    invoke-static {v3}, Lorg/apache/xml/serializer/utils/URI;->isReservedCharacter(C)Z

    move-result v4

    if-nez v4, :cond_10f

    invoke-static {v3}, Lorg/apache/xml/serializer/utils/URI;->isUnreservedCharacter(C)Z

    move-result v4

    if-nez v4, :cond_10f

    .line 800
    new-instance v4, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Query string contains invalid character:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 804
    :cond_10f
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2c

    .line 830
    :cond_113
    invoke-static {v3}, Lorg/apache/xml/serializer/utils/URI;->isReservedCharacter(C)Z

    move-result v4

    if-nez v4, :cond_138

    invoke-static {v3}, Lorg/apache/xml/serializer/utils/URI;->isUnreservedCharacter(C)Z

    move-result v4

    if-nez v4, :cond_138

    .line 833
    new-instance v4, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment contains invalid character:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 837
    :cond_138
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3f

    .line 840
    :cond_13c
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    .line 842
    :cond_142
    return-void
.end method

.method private initializeScheme(Ljava/lang/String;)V
    .registers 10
    .parameter "p_uriSpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 583
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 584
    .local v3, uriSpecLen:I
    const/4 v0, 0x0

    .line 585
    .local v0, index:I
    const/4 v1, 0x0

    .line 586
    .local v1, scheme:Ljava/lang/String;
    const/4 v2, 0x0

    .line 588
    .local v2, testChar:C
    :goto_7
    if-ge v0, v3, :cond_1d

    .line 590
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 592
    const/16 v4, 0x3a

    if-eq v2, v4, :cond_1d

    const/16 v4, 0x2f

    if-eq v2, v4, :cond_1d

    const/16 v4, 0x3f

    if-eq v2, v4, :cond_1d

    const/16 v4, 0x23

    if-ne v2, v4, :cond_37

    .line 601
    :cond_1d
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 603
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3a

    .line 605
    new-instance v4, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object v5, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v6, "ER_NO_SCHEME_INURI"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 598
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 609
    :cond_3a
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/utils/URI;->setScheme(Ljava/lang/String;)V

    .line 611
    return-void
.end method

.method private static isAlpha(C)Z
    .registers 2
    .parameter "p_char"

    .prologue
    .line 1561
    const/16 v0, 0x61

    if-lt p0, v0, :cond_8

    const/16 v0, 0x7a

    if-le p0, v0, :cond_10

    :cond_8
    const/16 v0, 0x41

    if-lt p0, v0, :cond_12

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static isAlphanum(C)Z
    .registers 2
    .parameter "p_char"

    .prologue
    .line 1574
    invoke-static {p0}, Lorg/apache/xml/serializer/utils/URI;->isAlpha(C)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0}, Lorg/apache/xml/serializer/utils/URI;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isConformantSchemeName(Ljava/lang/String;)Z
    .registers 6
    .parameter "p_scheme"

    .prologue
    const/4 v4, 0x0

    .line 1391
    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_f

    :cond_d
    move v2, v4

    .line 1413
    :goto_e
    return v2

    .line 1396
    :cond_f
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/xml/serializer/utils/URI;->isAlpha(C)Z

    move-result v2

    if-nez v2, :cond_1b

    move v2, v4

    .line 1398
    goto :goto_e

    .line 1403
    :cond_1b
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3a

    .line 1405
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1407
    .local v1, testChar:C
    invoke-static {v1}, Lorg/apache/xml/serializer/utils/URI;->isAlphanum(C)Z

    move-result v2

    if-nez v2, :cond_37

    const-string v2, "+-."

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_37

    move v2, v4

    .line 1409
    goto :goto_e

    .line 1403
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 1413
    .end local v1           #testChar:C
    :cond_3a
    const/4 v2, 0x1

    goto :goto_e
.end method

.method private static isDigit(C)Z
    .registers 2
    .parameter "p_char"

    .prologue
    .line 1535
    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static isHex(C)Z
    .registers 2
    .parameter "p_char"

    .prologue
    .line 1548
    invoke-static {p0}, Lorg/apache/xml/serializer/utils/URI;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_16

    const/16 v0, 0x61

    if-lt p0, v0, :cond_e

    const/16 v0, 0x66

    if-le p0, v0, :cond_16

    :cond_e
    const/16 v0, 0x41

    if-lt p0, v0, :cond_18

    const/16 v0, 0x46

    if-gt p0, v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private static isReservedCharacter(C)Z
    .registers 3
    .parameter "p_char"

    .prologue
    .line 1587
    const-string v0, ";/?:@&=+$,"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static isURIString(Ljava/lang/String;)Z
    .registers 6
    .parameter "p_uric"

    .prologue
    const/4 v4, 0x0

    .line 1614
    if-nez p0, :cond_5

    move v3, v4

    .line 1651
    :goto_4
    return v3

    .line 1619
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1620
    .local v0, end:I
    const/4 v2, 0x0

    .line 1622
    .local v2, testChar:C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_46

    .line 1624
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1626
    const/16 v3, 0x25

    if-ne v2, v3, :cond_38

    .line 1628
    add-int/lit8 v3, v1, 0x2

    if-ge v3, v0, :cond_31

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/xml/serializer/utils/URI;->isHex(C)Z

    move-result v3

    if-eqz v3, :cond_31

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/xml/serializer/utils/URI;->isHex(C)Z

    move-result v3

    if-nez v3, :cond_33

    :cond_31
    move v3, v4

    .line 1631
    goto :goto_4

    .line 1635
    :cond_33
    add-int/lit8 v1, v1, 0x2

    .line 1622
    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1641
    :cond_38
    invoke-static {v2}, Lorg/apache/xml/serializer/utils/URI;->isReservedCharacter(C)Z

    move-result v3

    if-nez v3, :cond_35

    invoke-static {v2}, Lorg/apache/xml/serializer/utils/URI;->isUnreservedCharacter(C)Z

    move-result v3

    if-nez v3, :cond_35

    move v3, v4

    .line 1647
    goto :goto_4

    .line 1651
    :cond_46
    const/4 v3, 0x1

    goto :goto_4
.end method

.method private static isUnreservedCharacter(C)Z
    .registers 3
    .parameter "p_char"

    .prologue
    .line 1599
    invoke-static {p0}, Lorg/apache/xml/serializer/utils/URI;->isAlphanum(C)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "-_.!~*\'() "

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    :cond_f
    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static isWellFormedAddress(Ljava/lang/String;)Z
    .registers 11
    .parameter "p_address"

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x2e

    const/4 v7, 0x0

    .line 1432
    if-nez p0, :cond_8

    move v6, v7

    .line 1523
    :goto_7
    return v6

    .line 1437
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1438
    .local v1, address:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1440
    .local v0, addrLength:I
    if-eqz v0, :cond_16

    const/16 v6, 0xff

    if-le v0, v6, :cond_18

    :cond_16
    move v6, v7

    .line 1442
    goto :goto_7

    .line 1445
    :cond_18
    const-string v6, "."

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_28

    const-string v6, "-"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2a

    :cond_28
    move v6, v7

    .line 1447
    goto :goto_7

    .line 1453
    :cond_2a
    invoke-virtual {v1, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 1455
    .local v3, index:I
    const-string v6, "."

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 1457
    invoke-virtual {v1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 1460
    :cond_3e
    add-int/lit8 v6, v3, 0x1

    if-ge v6, v0, :cond_88

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lorg/apache/xml/serializer/utils/URI;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_88

    .line 1463
    const/4 v4, 0x0

    .line 1468
    .local v4, numDots:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_50
    if-ge v2, v0, :cond_83

    .line 1470
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1472
    .local v5, testChar:C
    if-ne v5, v8, :cond_7b

    .line 1474
    sub-int v6, v2, v9

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lorg/apache/xml/serializer/utils/URI;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_74

    add-int/lit8 v6, v2, 0x1

    if-ge v6, v0, :cond_76

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lorg/apache/xml/serializer/utils/URI;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_76

    :cond_74
    move v6, v7

    .line 1477
    goto :goto_7

    .line 1480
    :cond_76
    add-int/lit8 v4, v4, 0x1

    .line 1468
    :cond_78
    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    .line 1482
    :cond_7b
    invoke-static {v5}, Lorg/apache/xml/serializer/utils/URI;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_78

    move v6, v7

    .line 1484
    goto :goto_7

    .line 1488
    .end local v5           #testChar:C
    :cond_83
    const/4 v6, 0x3

    if-eq v4, v6, :cond_c3

    move v6, v7

    .line 1490
    goto :goto_7

    .line 1500
    .end local v2           #i:I
    .end local v4           #numDots:I
    :cond_88
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_89
    if-ge v2, v0, :cond_c3

    .line 1502
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1504
    .restart local v5       #testChar:C
    if-ne v5, v8, :cond_b3

    .line 1506
    sub-int v6, v2, v9

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lorg/apache/xml/serializer/utils/URI;->isAlphanum(C)Z

    move-result v6

    if-nez v6, :cond_a0

    move v6, v7

    .line 1508
    goto/16 :goto_7

    .line 1511
    :cond_a0
    add-int/lit8 v6, v2, 0x1

    if-ge v6, v0, :cond_c0

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lorg/apache/xml/serializer/utils/URI;->isAlphanum(C)Z

    move-result v6

    if-nez v6, :cond_c0

    move v6, v7

    .line 1513
    goto/16 :goto_7

    .line 1516
    :cond_b3
    invoke-static {v5}, Lorg/apache/xml/serializer/utils/URI;->isAlphanum(C)Z

    move-result v6

    if-nez v6, :cond_c0

    const/16 v6, 0x2d

    if-eq v5, v6, :cond_c0

    move v6, v7

    .line 1518
    goto/16 :goto_7

    .line 1500
    :cond_c0
    add-int/lit8 v2, v2, 0x1

    goto :goto_89

    .end local v5           #testChar:C
    :cond_c3
    move v6, v9

    .line 1523
    goto/16 :goto_7
.end method


# virtual methods
.method public appendPath(Ljava/lang/String;)V
    .registers 7
    .parameter "p_addToPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1190
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    .line 1233
    :cond_d
    :goto_d
    return-void

    .line 1195
    :cond_e
    invoke-static {p1}, Lorg/apache/xml/serializer/utils/URI;->isURIString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 1197
    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v2, "ER_PATH_INVALID_CHAR"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1200
    :cond_27
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_58

    .line 1202
    :cond_37
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1204
    iput-object p1, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    goto :goto_d

    .line 1208
    :cond_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    goto :goto_d

    .line 1211
    :cond_58
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 1213
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 1215
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    goto :goto_d

    .line 1219
    :cond_77
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    goto :goto_d

    .line 1224
    :cond_80
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 1226
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    goto/16 :goto_d

    .line 1230
    :cond_92
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    goto/16 :goto_d
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "p_test"

    .prologue
    .line 1324
    instance-of v2, p1, Lorg/apache/xml/serializer/utils/URI;

    if-eqz v2, :cond_ac

    .line 1326
    move-object v0, p1

    check-cast v0, Lorg/apache/xml/serializer/utils/URI;

    move-object v1, v0

    .line 1328
    .local v1, testURI:Lorg/apache/xml/serializer/utils/URI;
    iget-object v2, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    if-nez v2, :cond_10

    iget-object v2, v1, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    if-eqz v2, :cond_22

    :cond_10
    iget-object v2, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    if-eqz v2, :cond_ac

    iget-object v2, v1, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    if-eqz v2, :cond_ac

    iget-object v2, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    iget-object v3, v1, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ac

    :cond_22
    iget-object v2, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    if-nez v2, :cond_2a

    iget-object v2, v1, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    if-eqz v2, :cond_3c

    :cond_2a
    iget-object v2, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    if-eqz v2, :cond_ac

    iget-object v2, v1, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    if-eqz v2, :cond_ac

    iget-object v2, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    iget-object v3, v1, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ac

    :cond_3c
    iget-object v2, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    if-nez v2, :cond_44

    iget-object v2, v1, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    if-eqz v2, :cond_56

    :cond_44
    iget-object v2, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    if-eqz v2, :cond_ac

    iget-object v2, v1, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    if-eqz v2, :cond_ac

    iget-object v2, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    iget-object v3, v1, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ac

    :cond_56
    iget v2, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    iget v3, v1, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    if-ne v2, v3, :cond_ac

    iget-object v2, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    if-nez v2, :cond_64

    iget-object v2, v1, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    if-eqz v2, :cond_76

    :cond_64
    iget-object v2, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    if-eqz v2, :cond_ac

    iget-object v2, v1, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    if-eqz v2, :cond_ac

    iget-object v2, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    iget-object v3, v1, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ac

    :cond_76
    iget-object v2, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    if-nez v2, :cond_7e

    iget-object v2, v1, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    if-eqz v2, :cond_90

    :cond_7e
    iget-object v2, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    if-eqz v2, :cond_ac

    iget-object v2, v1, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    if-eqz v2, :cond_ac

    iget-object v2, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    iget-object v3, v1, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ac

    :cond_90
    iget-object v2, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    if-nez v2, :cond_98

    iget-object v2, v1, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    if-eqz v2, :cond_aa

    :cond_98
    iget-object v2, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    if-eqz v2, :cond_ac

    iget-object v2, v1, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    if-eqz v2, :cond_ac

    iget-object v2, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    iget-object v3, v1, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 1336
    :cond_aa
    const/4 v2, 0x1

    .line 1340
    .end local v1           #testURI:Lorg/apache/xml/serializer/utils/URI;
    :goto_ab
    return v2

    :cond_ac
    const/4 v2, 0x0

    goto :goto_ab
.end method

.method public getFragment()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1004
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 924
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 980
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    return-object v0
.end method

.method public getPath(ZZ)Ljava/lang/String;
    .registers 5
    .parameter "p_includeQueryString"
    .parameter "p_includeFragment"

    .prologue
    .line 955
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 957
    .local v0, pathString:Ljava/lang/StringBuffer;
    if-eqz p1, :cond_17

    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    if-eqz v1, :cond_17

    .line 959
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 960
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 963
    :cond_17
    if-eqz p2, :cond_27

    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    if-eqz v1, :cond_27

    .line 965
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 966
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 969
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 934
    iget v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    return v0
.end method

.method public getQueryString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 992
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .registers 2

    .prologue
    .line 851
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeSpecificPart()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 863
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 865
    .local v0, schemespec:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    if-nez v1, :cond_12

    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    if-nez v1, :cond_12

    iget v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    if-eq v1, v2, :cond_17

    .line 867
    :cond_12
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 870
    :cond_17
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    if-eqz v1, :cond_25

    .line 872
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 873
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 876
    :cond_25
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    if-eqz v1, :cond_2e

    .line 878
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 881
    :cond_2e
    iget v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    if-eq v1, v2, :cond_3c

    .line 883
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 884
    iget v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 887
    :cond_3c
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    if-eqz v1, :cond_45

    .line 889
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 892
    :cond_45
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    if-eqz v1, :cond_53

    .line 894
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 895
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 898
    :cond_53
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    if-eqz v1, :cond_61

    .line 900
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 901
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 904
    :cond_61
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getUserinfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 914
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    return-object v0
.end method

.method public isGenericURI()Z
    .registers 2

    .prologue
    .line 1376
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setFragment(Ljava/lang/String;)V
    .registers 6
    .parameter "p_fragment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1289
    if-nez p1, :cond_6

    .line 1291
    iput-object v3, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    .line 1311
    :goto_5
    return-void

    .line 1293
    :cond_6
    invoke-virtual {p0}, Lorg/apache/xml/serializer/utils/URI;->isGenericURI()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1295
    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v2, "ER_FRAG_FOR_GENERIC_URI"

    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1298
    :cond_1a
    invoke-virtual {p0}, Lorg/apache/xml/serializer/utils/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2e

    .line 1300
    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v2, "ER_FRAG_WHEN_PATH_NULL"

    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1303
    :cond_2e
    invoke-static {p1}, Lorg/apache/xml/serializer/utils/URI;->isURIString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 1305
    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v2, "ER_FRAG_INVALID_CHAR"

    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1309
    :cond_42
    iput-object p1, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    goto :goto_5
.end method

.method public setHost(Ljava/lang/String;)V
    .registers 6
    .parameter "p_host"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1101
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_17

    .line 1103
    :cond_d
    iput-object p1, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    .line 1104
    iput-object v3, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    .line 1105
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    .line 1112
    :cond_14
    iput-object p1, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    .line 1113
    return-void

    .line 1107
    :cond_17
    invoke-static {p1}, Lorg/apache/xml/serializer/utils/URI;->isWellFormedAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1109
    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v2, "ER_HOST_ADDRESS_NOT_WELLFORMED"

    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 3
    .parameter "p_path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1162
    if-nez p1, :cond_a

    .line 1164
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    .line 1165
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    .line 1166
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    .line 1172
    :goto_9
    return-void

    .line 1170
    :cond_a
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/utils/URI;->initializePath(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public setPort(I)V
    .registers 6
    .parameter "p_port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1129
    if-ltz p1, :cond_1a

    const v0, 0xffff

    if-gt p1, v0, :cond_1a

    .line 1131
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    if-nez v0, :cond_2b

    .line 1133
    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v2, "ER_PORT_WHEN_HOST_NULL"

    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1137
    :cond_1a
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2b

    .line 1139
    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v2, "ER_INVALID_PORT"

    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1142
    :cond_2b
    iput p1, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    .line 1143
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .registers 4
    .parameter "p_queryString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 1250
    if-nez p1, :cond_6

    .line 1252
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    .line 1273
    :goto_5
    return-void

    .line 1254
    :cond_6
    invoke-virtual {p0}, Lorg/apache/xml/serializer/utils/URI;->isGenericURI()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1256
    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    const-string v1, "Query string can only be set for a generic URI!"

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1259
    :cond_14
    invoke-virtual {p0}, Lorg/apache/xml/serializer/utils/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_22

    .line 1261
    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    const-string v1, "Query string cannot be set when path is null!"

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1264
    :cond_22
    invoke-static {p1}, Lorg/apache/xml/serializer/utils/URI;->isURIString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 1266
    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    const-string v1, "Query string contains invalid character!"

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1271
    :cond_30
    iput-object p1, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    goto :goto_5
.end method

.method public setScheme(Ljava/lang/String;)V
    .registers 6
    .parameter "p_scheme"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1019
    if-nez p1, :cond_11

    .line 1021
    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v2, "ER_SCHEME_FROM_NULL_STRING"

    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1024
    :cond_11
    invoke-static {p1}, Lorg/apache/xml/serializer/utils/URI;->isConformantSchemeName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 1026
    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v2, "ER_SCHEME_NOT_CONFORMANT"

    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1029
    :cond_25
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    .line 1030
    return-void
.end method

.method public setUserinfo(Ljava/lang/String;)V
    .registers 8
    .parameter "p_userinfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    .prologue
    .line 1044
    if-nez p1, :cond_8

    .line 1046
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    .line 1086
    :cond_5
    iput-object p1, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    .line 1087
    return-void

    .line 1050
    :cond_8
    iget-object v3, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    if-nez v3, :cond_14

    .line 1052
    new-instance v3, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    const-string v4, "Userinfo cannot be set when host is null!"

    invoke-direct {v3, v4}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1058
    :cond_14
    const/4 v1, 0x0

    .line 1059
    .local v1, index:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1060
    .local v0, end:I
    const/4 v2, 0x0

    .line 1062
    .local v2, testChar:C
    :goto_1a
    if-ge v1, v0, :cond_5

    .line 1064
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1066
    const/16 v3, 0x25

    if-ne v2, v3, :cond_48

    .line 1068
    add-int/lit8 v3, v1, 0x2

    if-ge v3, v0, :cond_40

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/xml/serializer/utils/URI;->isHex(C)Z

    move-result v3

    if-eqz v3, :cond_40

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/xml/serializer/utils/URI;->isHex(C)Z

    move-result v3

    if-nez v3, :cond_70

    .line 1071
    :cond_40
    new-instance v3, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    const-string v4, "Userinfo contains invalid escape sequence!"

    invoke-direct {v3, v4}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1075
    :cond_48
    invoke-static {v2}, Lorg/apache/xml/serializer/utils/URI;->isUnreservedCharacter(C)Z

    move-result v3

    if-nez v3, :cond_70

    const-string v3, ";:&=+$,"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_70

    .line 1078
    new-instance v3, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Userinfo contains invalid character:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1082
    :cond_70
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1351
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1353
    .local v0, uriSpecString:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    if-eqz v1, :cond_13

    .line 1355
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1356
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1359
    :cond_13
    invoke-virtual {p0}, Lorg/apache/xml/serializer/utils/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1361
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

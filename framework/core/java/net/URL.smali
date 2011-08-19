.class public final Ljava/net/URL;
.super Ljava/lang/Object;
.source "URL.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x69dac8c9e5031b8eL

.field private static final specifyStreamHandlerPermission:Ljava/net/NetPermission;

.field private static streamHandlerFactory:Ljava/net/URLStreamHandlerFactory;

.field private static streamHandlers:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/net/URLStreamHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private authority:Ljava/lang/String;

.field private file:Ljava/lang/String;

.field private hashCode:I

.field private host:Ljava/lang/String;

.field private transient path:Ljava/lang/String;

.field private port:I

.field private protocol:Ljava/lang/String;

.field private transient query:Ljava/lang/String;

.field private ref:Ljava/lang/String;

.field transient strmHandler:Ljava/net/URLStreamHandler;

.field private transient userInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 39
    new-instance v0, Ljava/net/NetPermission;

    const-string v1, "specifyStreamHandler"

    invoke-direct {v0, v1}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/net/URL;->specifyStreamHandlerPermission:Ljava/net/NetPermission;

    .line 110
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Ljava/net/URL;->streamHandlers:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .parameter "spec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 157
    move-object v0, v2

    check-cast v0, Ljava/net/URL;

    move-object v1, v0

    check-cast v2, Ljava/net/URLStreamHandler;

    invoke-direct {p0, v1, p1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 11
    .parameter "protocol"
    .parameter "host"
    .parameter "port"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 349
    const/4 v5, 0x0

    check-cast v5, Ljava/net/URLStreamHandler;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V

    .line 350
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V
    .registers 11
    .parameter "protocol"
    .parameter "host"
    .parameter "port"
    .parameter "file"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v2, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    .line 74
    iput v3, p0, Ljava/net/URL;->port:I

    .line 82
    iput-object v2, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    .line 87
    iput-object v2, p0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    .line 92
    iput-object v2, p0, Ljava/net/URL;->path:Ljava/lang/String;

    .line 97
    iput-object v2, p0, Ljava/net/URL;->query:Ljava/lang/String;

    .line 105
    iput-object v2, p0, Ljava/net/URL;->ref:Ljava/lang/String;

    .line 377
    if-ge p3, v3, :cond_2f

    .line 378
    new-instance v2, Ljava/net/MalformedURLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Port out of range: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 381
    :cond_2f
    if-eqz p2, :cond_5a

    const-string v2, ":"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_5a

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_5a

    .line 382
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 385
    :cond_5a
    if-nez p1, :cond_64

    .line 386
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Unknown protocol: null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 389
    :cond_64
    iput-object p1, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    .line 390
    iput-object p2, p0, Ljava/net/URL;->host:Ljava/lang/String;

    .line 391
    iput p3, p0, Ljava/net/URL;->port:I

    .line 395
    const/4 v0, -0x1

    .line 396
    .local v0, index:I
    const-string v2, "#"

    const-string v3, "/"

    invoke-virtual {p4, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p4, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 397
    if-ltz v0, :cond_ac

    .line 398
    invoke-virtual {p4, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/net/URL;->file:Ljava/lang/String;

    .line 399
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/net/URL;->ref:Ljava/lang/String;

    .line 403
    :goto_87
    invoke-virtual {p0, v4}, Ljava/net/URL;->fixURL(Z)V

    .line 408
    if-nez p5, :cond_af

    .line 409
    invoke-virtual {p0}, Ljava/net/URL;->setupStreamHandler()V

    .line 410
    iget-object v2, p0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    if-nez v2, :cond_bc

    .line 411
    new-instance v2, Ljava/net/MalformedURLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown protocol: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 401
    :cond_ac
    iput-object p4, p0, Ljava/net/URL;->file:Ljava/lang/String;

    goto :goto_87

    .line 414
    :cond_af
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 415
    .local v1, sm:Ljava/lang/SecurityManager;
    if-eqz v1, :cond_ba

    .line 416
    sget-object v2, Ljava/net/URL;->specifyStreamHandlerPermission:Ljava/net/NetPermission;

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 418
    :cond_ba
    iput-object p5, p0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    .line 420
    .end local v1           #sm:Ljava/lang/SecurityManager;
    :cond_bc
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "protocol"
    .parameter "host"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 327
    const/4 v3, -0x1

    const/4 v5, 0x0

    check-cast v5, Ljava/net/URLStreamHandler;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V

    .line 328
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;)V
    .registers 4
    .parameter "context"
    .parameter "spec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 176
    const/4 v0, 0x0

    check-cast v0, Ljava/net/URLStreamHandler;

    invoke-direct {p0, p1, p2, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    .line 177
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V
    .registers 32
    .parameter "context"
    .parameter "spec"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 199
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/net/URL;->protocol:Ljava/lang/String;

    .line 74
    const/4 v5, -0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Ljava/net/URL;->port:I

    .line 82
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/net/URL;->authority:Ljava/lang/String;

    .line 87
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/net/URL;->userInfo:Ljava/lang/String;

    .line 92
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/net/URL;->path:Ljava/lang/String;

    .line 97
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/net/URL;->query:Ljava/lang/String;

    .line 105
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/net/URL;->ref:Ljava/lang/String;

    .line 200
    if-eqz p3, :cond_43

    .line 201
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v25

    .line 202
    .local v25, sm:Ljava/lang/SecurityManager;
    if-eqz v25, :cond_3d

    .line 203
    sget-object v5, Ljava/net/URL;->specifyStreamHandlerPermission:Ljava/net/NetPermission;

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 205
    :cond_3d
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    .line 208
    .end local v25           #sm:Ljava/lang/SecurityManager;
    :cond_43
    if-nez p2, :cond_4b

    .line 209
    new-instance v5, Ljava/net/MalformedURLException;

    invoke-direct {v5}, Ljava/net/MalformedURLException;-><init>()V

    throw v5

    .line 211
    :cond_4b
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 218
    const/16 v5, 0x3a

    :try_start_51
    move-object/from16 v0, p2

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I
    :try_end_57
    .catch Ljava/lang/NullPointerException; {:try_start_51 .. :try_end_57} :catch_10a

    move-result v24

    .line 222
    .local v24, index:I
    const/16 v5, 0x5b

    move-object/from16 v0, p2

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v26

    .line 223
    .local v26, startIPv6Addr:I
    if-ltz v24, :cond_127

    .line 224
    const/4 v5, -0x1

    move/from16 v0, v26

    move v1, v5

    if-eq v0, v1, :cond_6f

    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_127

    .line 225
    :cond_6f
    const/4 v5, 0x0

    move-object/from16 v0, p2

    move v1, v5

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/net/URL;->protocol:Ljava/lang/String;

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URL;->protocol:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v21

    .line 230
    .local v21, c:C
    const/16 v5, 0x61

    move v0, v5

    move/from16 v1, v21

    if-gt v0, v1, :cond_96

    const/16 v5, 0x7a

    move/from16 v0, v21

    move v1, v5

    if-le v0, v1, :cond_a4

    :cond_96
    const/16 v5, 0x41

    move v0, v5

    move/from16 v1, v21

    if-gt v0, v1, :cond_115

    const/16 v5, 0x5a

    move/from16 v0, v21

    move v1, v5

    if-gt v0, v1, :cond_115

    :cond_a4
    const/4 v5, 0x1

    move/from16 v27, v5

    .line 231
    .local v27, valid:Z
    :goto_a7
    const/16 v23, 0x1

    .local v23, i:I
    :goto_a9
    if-eqz v27, :cond_11d

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URL;->protocol:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v23

    move v1, v5

    if-ge v0, v1, :cond_11d

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URL;->protocol:Ljava/lang/String;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v21

    .line 233
    const/16 v5, 0x61

    move v0, v5

    move/from16 v1, v21

    if-gt v0, v1, :cond_d3

    const/16 v5, 0x7a

    move/from16 v0, v21

    move v1, v5

    if-le v0, v1, :cond_104

    :cond_d3
    const/16 v5, 0x41

    move v0, v5

    move/from16 v1, v21

    if-gt v0, v1, :cond_e1

    const/16 v5, 0x5a

    move/from16 v0, v21

    move v1, v5

    if-le v0, v1, :cond_104

    :cond_e1
    const/16 v5, 0x30

    move v0, v5

    move/from16 v1, v21

    if-gt v0, v1, :cond_ef

    const/16 v5, 0x39

    move/from16 v0, v21

    move v1, v5

    if-le v0, v1, :cond_104

    :cond_ef
    const/16 v5, 0x2b

    move/from16 v0, v21

    move v1, v5

    if-eq v0, v1, :cond_104

    const/16 v5, 0x2d

    move/from16 v0, v21

    move v1, v5

    if-eq v0, v1, :cond_104

    const/16 v5, 0x2e

    move/from16 v0, v21

    move v1, v5

    if-ne v0, v1, :cond_119

    :cond_104
    const/4 v5, 0x1

    move/from16 v27, v5

    .line 231
    :goto_107
    add-int/lit8 v23, v23, 0x1

    goto :goto_a9

    .line 219
    .end local v21           #c:C
    .end local v23           #i:I
    .end local v24           #index:I
    .end local v26           #startIPv6Addr:I
    .end local v27           #valid:Z
    :catch_10a
    move-exception v22

    .line 220
    .local v22, e:Ljava/lang/NullPointerException;
    new-instance v5, Ljava/net/MalformedURLException;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 230
    .end local v22           #e:Ljava/lang/NullPointerException;
    .restart local v21       #c:C
    .restart local v24       #index:I
    .restart local v26       #startIPv6Addr:I
    :cond_115
    const/4 v5, 0x0

    move/from16 v27, v5

    goto :goto_a7

    .line 233
    .restart local v23       #i:I
    .restart local v27       #valid:Z
    :cond_119
    const/4 v5, 0x0

    move/from16 v27, v5

    goto :goto_107

    .line 240
    :cond_11d
    if-nez v27, :cond_1ac

    .line 241
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/net/URL;->protocol:Ljava/lang/String;

    .line 242
    const/16 v24, -0x1

    .line 251
    .end local v21           #c:C
    .end local v23           #i:I
    .end local v27           #valid:Z
    :cond_127
    :goto_127
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URL;->protocol:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_1bc

    .line 256
    if-eqz p1, :cond_17d

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URL;->protocol:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17d

    .line 257
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v11

    .line 258
    .local v11, cPath:Ljava/lang/String;
    if-eqz v11, :cond_16c

    const-string v5, "/"

    invoke-virtual {v11, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16c

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URL;->protocol:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getPort()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v13}, Ljava/net/URL;->set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_16c
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    move-object v5, v0

    if-nez v5, :cond_17d

    .line 264
    move-object/from16 v0, p1

    iget-object v0, v0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    .line 285
    .end local v11           #cPath:Ljava/lang/String;
    :cond_17d
    :goto_17d
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    move-object v5, v0

    if-nez v5, :cond_210

    .line 286
    invoke-virtual/range {p0 .. p0}, Ljava/net/URL;->setupStreamHandler()V

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    move-object v5, v0

    if-nez v5, :cond_210

    .line 288
    new-instance v5, Ljava/net/MalformedURLException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown protocol: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URL;->protocol:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 246
    .restart local v21       #c:C
    .restart local v23       #i:I
    .restart local v27       #valid:Z
    :cond_1ac
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URL;->protocol:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Lorg/apache/harmony/luni/util/Util;->toASCIILowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/net/URL;->protocol:Ljava/lang/String;

    goto/16 :goto_127

    .line 272
    .end local v21           #c:C
    .end local v23           #i:I
    .end local v27           #valid:Z
    :cond_1bc
    if-nez p1, :cond_1da

    .line 273
    new-instance v5, Ljava/net/MalformedURLException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Protocol not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 275
    :cond_1da
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getPort()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v12, p0

    invoke-virtual/range {v12 .. v20}, Ljava/net/URL;->set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    move-object v5, v0

    if-nez v5, :cond_17d

    .line 279
    move-object/from16 v0, p1

    iget-object v0, v0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    goto/16 :goto_17d

    .line 301
    :cond_210
    :try_start_210
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    move-object v5, v0

    add-int/lit8 v24, v24, 0x1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v6

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, v24

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/net/URLStreamHandler;->parseURL(Ljava/net/URL;Ljava/lang/String;II)V
    :try_end_226
    .catch Ljava/lang/Exception; {:try_start_210 .. :try_end_226} :catch_24c

    .line 306
    move-object/from16 v0, p0

    iget v0, v0, Ljava/net/URL;->port:I

    move v5, v0

    const/4 v6, -0x1

    if-ge v5, v6, :cond_259

    .line 307
    new-instance v5, Ljava/net/MalformedURLException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Port out of range: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Ljava/net/URL;->port:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 302
    :catch_24c
    move-exception v5

    move-object/from16 v22, v5

    .line 303
    .local v22, e:Ljava/lang/Exception;
    new-instance v5, Ljava/net/MalformedURLException;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 309
    .end local v22           #e:Ljava/lang/Exception;
    :cond_259
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 7
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 759
    :try_start_1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 760
    iget-object v2, p0, Ljava/net/URL;->host:Ljava/lang/String;

    if-eqz v2, :cond_3e

    iget-object v2, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    if-nez v2, :cond_3e

    .line 761
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/net/URL;->fixURL(Z)V

    .line 774
    :cond_10
    :goto_10
    invoke-virtual {p0}, Ljava/net/URL;->setupStreamHandler()V

    .line 775
    iget-object v2, p0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    if-nez v2, :cond_7c

    .line 776
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown protocol: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_32
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_32} :catch_32

    .line 778
    :catch_32
    move-exception v2

    move-object v0, v2

    .line 779
    .local v0, e:Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 762
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :cond_3e
    :try_start_3e
    iget-object v2, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 764
    iget-object v2, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .local v1, index:I
    if-le v1, v4, :cond_55

    .line 765
    iget-object v2, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    .line 767
    :cond_55
    iget-object v2, p0, Ljava/net/URL;->file:Ljava/lang/String;

    if-eqz v2, :cond_77

    iget-object v2, p0, Ljava/net/URL;->file:Ljava/lang/String;

    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-le v1, v4, :cond_77

    .line 768
    iget-object v2, p0, Ljava/net/URL;->file:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/net/URL;->query:Ljava/lang/String;

    .line 769
    iget-object v2, p0, Ljava/net/URL;->file:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/net/URL;->path:Ljava/lang/String;

    goto :goto_10

    .line 771
    :cond_77
    iget-object v2, p0, Ljava/net/URL;->file:Ljava/lang/String;

    iput-object v2, p0, Ljava/net/URL;->path:Ljava/lang/String;
    :try_end_7b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3e .. :try_end_7b} :catch_32

    goto :goto_10

    .line 781
    .end local v1           #index:I
    :cond_7c
    return-void
.end method

.method public static declared-synchronized setURLStreamHandlerFactory(Ljava/net/URLStreamHandlerFactory;)V
    .registers 5
    .parameter "streamFactory"

    .prologue
    .line 136
    const-class v1, Ljava/net/URL;

    monitor-enter v1

    :try_start_3
    sget-object v2, Ljava/net/URL;->streamHandlerFactory:Ljava/net/URLStreamHandlerFactory;

    if-eqz v2, :cond_12

    .line 137
    new-instance v2, Ljava/lang/Error;

    const-string v3, "Factory already set"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 136
    :catchall_f
    move-exception v2

    monitor-exit v1

    throw v2

    .line 139
    :cond_12
    :try_start_12
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 140
    .local v0, sm:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1b

    .line 141
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 143
    :cond_1b
    sget-object v2, Ljava/net/URL;->streamHandlers:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 144
    sput-object p0, Ljava/net/URL;->streamHandlerFactory:Ljava/net/URLStreamHandlerFactory;
    :try_end_22
    .catchall {:try_start_12 .. :try_end_22} :catchall_f

    .line 145
    monitor-exit v1

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 796
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 797
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "o"

    .prologue
    const/4 v2, 0x0

    .line 492
    if-nez p1, :cond_5

    move v0, v2

    .line 501
    .end local p1
    :goto_4
    return v0

    .line 495
    .restart local p1
    :cond_5
    if-ne p0, p1, :cond_9

    .line 496
    const/4 v0, 0x1

    goto :goto_4

    .line 498
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_15

    move v0, v2

    .line 499
    goto :goto_4

    .line 501
    :cond_15
    iget-object v0, p0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    check-cast p1, Ljava/net/URL;

    .end local p1
    invoke-virtual {v0, p0, p1}, Ljava/net/URLStreamHandler;->equals(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v0

    goto :goto_4
.end method

.method fixURL(Z)V
    .registers 8
    .parameter "fixHost"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 424
    iget-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    if-eqz v1, :cond_34

    iget-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_34

    .line 425
    iget-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    iput-object v1, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    .line 426
    iget v1, p0, Ljava/net/URL;->port:I

    if-eq v1, v3, :cond_34

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/net/URL;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    .line 430
    :cond_34
    if-eqz p1, :cond_56

    .line 431
    iget-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    if-eqz v1, :cond_77

    iget-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .local v0, index:I
    if-le v0, v3, :cond_77

    .line 432
    iget-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    .line 433
    iget-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    .line 438
    .end local v0           #index:I
    :cond_56
    :goto_56
    iget-object v1, p0, Ljava/net/URL;->file:Ljava/lang/String;

    if-eqz v1, :cond_7a

    iget-object v1, p0, Ljava/net/URL;->file:Ljava/lang/String;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .restart local v0       #index:I
    if-le v0, v3, :cond_7a

    .line 439
    iget-object v1, p0, Ljava/net/URL;->file:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URL;->query:Ljava/lang/String;

    .line 440
    iget-object v1, p0, Ljava/net/URL;->file:Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URL;->path:Ljava/lang/String;

    .line 445
    .end local v0           #index:I
    :goto_76
    return-void

    .line 435
    :cond_77
    iput-object v5, p0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    goto :goto_56

    .line 442
    :cond_7a
    iput-object v5, p0, Ljava/net/URL;->query:Ljava/lang/String;

    .line 443
    iget-object v1, p0, Ljava/net/URL;->file:Ljava/lang/String;

    iput-object v1, p0, Ljava/net/URL;->path:Ljava/lang/String;

    goto :goto_76
.end method

.method public getAuthority()Ljava/lang/String;
    .registers 2

    .prologue
    .line 883
    iget-object v0, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    return-object v0
.end method

.method public final getContent()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 613
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .parameter "types"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 634
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPort()I
    .registers 2

    .prologue
    .line 935
    iget-object v0, p0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {v0}, Ljava/net/URLStreamHandler;->getDefaultPort()I

    move-result v0

    return v0
.end method

.method public getEffectivePort()I
    .registers 3

    .prologue
    .line 829
    iget-object v0, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    iget v1, p0, Ljava/net/URL;->port:I

    invoke-static {v0, v1}, Ljava/net/URI;->getEffectivePort(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFile()Ljava/lang/String;
    .registers 2

    .prologue
    .line 806
    iget-object v0, p0, Ljava/net/URL;->file:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 815
    iget-object v0, p0, Ljava/net/URL;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 865
    iget-object v0, p0, Ljava/net/URL;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 824
    iget v0, p0, Ljava/net/URL;->port:I

    return v0
.end method

.method public getProtocol()Ljava/lang/String;
    .registers 2

    .prologue
    .line 838
    iget-object v0, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .registers 2

    .prologue
    .line 856
    iget-object v0, p0, Ljava/net/URL;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getRef()Ljava/lang/String;
    .registers 2

    .prologue
    .line 847
    iget-object v0, p0, Ljava/net/URL;->ref:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 874
    iget-object v0, p0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 525
    iget v0, p0, Ljava/net/URL;->hashCode:I

    if-nez v0, :cond_c

    .line 526
    iget-object v0, p0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {v0, p0}, Ljava/net/URLStreamHandler;->hashCode(Ljava/net/URL;)I

    move-result v0

    iput v0, p0, Ljava/net/URL;->hashCode:I

    .line 528
    :cond_c
    iget v0, p0, Ljava/net/URL;->hashCode:I

    return v0
.end method

.method public openConnection()Ljava/net/URLConnection;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 657
    iget-object v0, p0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {v0, p0}, Ljava/net/URLStreamHandler;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

.method public openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;
    .registers 7
    .parameter "proxy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 705
    if-nez p1, :cond_a

    .line 706
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "proxy == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 709
    :cond_a
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 710
    .local v2, sm:Ljava/lang/SecurityManager;
    if-eqz v2, :cond_30

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    sget-object v4, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v3, v4, :cond_30

    .line 711
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 712
    .local v0, pAddress:Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 714
    .local v1, pHostName:Ljava/lang/String;
    :goto_29
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 717
    .end local v0           #pAddress:Ljava/net/InetSocketAddress;
    .end local v1           #pHostName:Ljava/lang/String;
    :cond_30
    iget-object v3, p0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {v3, p0, p1}, Ljava/net/URLStreamHandler;->openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v3

    return-object v3

    .line 712
    .restart local v0       #pAddress:Ljava/net/InetSocketAddress;
    :cond_37
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    goto :goto_29
.end method

.method public final openStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 645
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public sameFile(Ljava/net/URL;)Z
    .registers 3
    .parameter "otherURL"

    .prologue
    .line 515
    iget-object v0, p0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {v0, p0, p1}, Ljava/net/URLStreamHandler;->sameFile(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v0

    return v0
.end method

.method protected set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "protocol"
    .parameter "host"
    .parameter "port"
    .parameter "file"
    .parameter "ref"

    .prologue
    .line 465
    iget-object v0, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 466
    iput-object p1, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    .line 468
    :cond_6
    iput-object p2, p0, Ljava/net/URL;->host:Ljava/lang/String;

    .line 469
    iput-object p4, p0, Ljava/net/URL;->file:Ljava/lang/String;

    .line 470
    iput p3, p0, Ljava/net/URL;->port:I

    .line 471
    iput-object p5, p0, Ljava/net/URL;->ref:Ljava/lang/String;

    .line 472
    const/4 v0, 0x0

    iput v0, p0, Ljava/net/URL;->hashCode:I

    .line 473
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/URL;->fixURL(Z)V

    .line 474
    return-void
.end method

.method protected set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .parameter "protocol"
    .parameter "host"
    .parameter "port"
    .parameter "authority"
    .parameter "userInfo"
    .parameter "path"
    .parameter "query"
    .parameter "ref"

    .prologue
    .line 911
    move-object v4, p6

    .line 912
    .local v4, filePart:Ljava/lang/String;
    if-eqz p7, :cond_22

    invoke-virtual {p7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 913
    if-eqz v4, :cond_33

    .line 914
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_22
    :goto_22
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p8

    .line 919
    invoke-virtual/range {v0 .. v5}, Ljava/net/URL;->set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 920
    iput-object p4, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    .line 921
    iput-object p5, p0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    .line 922
    iput-object p6, p0, Ljava/net/URL;->path:Ljava/lang/String;

    .line 923
    iput-object p7, p0, Ljava/net/URL;->query:Ljava/lang/String;

    .line 924
    return-void

    .line 916
    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_22
.end method

.method setupStreamHandler()V
    .registers 7

    .prologue
    .line 543
    sget-object v3, Ljava/net/URL;->streamHandlers:Ljava/util/Hashtable;

    iget-object v4, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/URLStreamHandler;

    iput-object v3, p0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    .line 544
    iget-object v3, p0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    if-eqz v3, :cond_11

    .line 598
    :cond_10
    :goto_10
    return-void

    .line 550
    :cond_11
    sget-object v3, Ljava/net/URL;->streamHandlerFactory:Ljava/net/URLStreamHandlerFactory;

    if-eqz v3, :cond_2d

    .line 551
    sget-object v3, Ljava/net/URL;->streamHandlerFactory:Ljava/net/URLStreamHandlerFactory;

    iget-object v4, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/net/URLStreamHandlerFactory;->createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    move-result-object v3

    iput-object v3, p0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    .line 552
    iget-object v3, p0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    if-eqz v3, :cond_2d

    .line 553
    sget-object v3, Ljava/net/URL;->streamHandlers:Ljava/util/Hashtable;

    iget-object v4, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    iget-object v5, p0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 560
    :cond_2d
    new-instance v3, Lorg/apache/harmony/luni/util/PriviAction;

    const-string v4, "java.protocol.handler.pkgs"

    invoke-direct {v3, v4}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 563
    .local v1, packageList:Ljava/lang/String;
    if-eqz v1, :cond_8d

    .line 564
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "|"

    invoke-direct {v2, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    .local v2, st:Ljava/util/StringTokenizer;
    :goto_43
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 566
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".Handler"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 569
    .local v0, className:Ljava/lang/String;
    const/4 v3, 0x1

    :try_start_6d
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v0, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/URLStreamHandler;

    iput-object v3, p0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    .line 572
    iget-object v3, p0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    if-eqz v3, :cond_10

    .line 573
    sget-object v3, Ljava/net/URL;->streamHandlers:Ljava/util/Hashtable;

    iget-object v4, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    iget-object v5, p0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8a
    .catch Ljava/lang/IllegalAccessException; {:try_start_6d .. :try_end_8a} :catch_8b
    .catch Ljava/lang/InstantiationException; {:try_start_6d .. :try_end_8a} :catch_cc
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6d .. :try_end_8a} :catch_c9

    goto :goto_10

    .line 576
    :catch_8b
    move-exception v3

    goto :goto_43

    .line 585
    .end local v0           #className:Ljava/lang/String;
    .end local v2           #st:Ljava/util/StringTokenizer;
    :cond_8d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "org.apache.harmony.luni.internal.net.www.protocol."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".Handler"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 588
    .restart local v0       #className:Ljava/lang/String;
    :try_start_a8
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/URLStreamHandler;

    iput-object v3, p0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;
    :try_end_b4
    .catch Ljava/lang/IllegalAccessException; {:try_start_a8 .. :try_end_b4} :catch_c7
    .catch Ljava/lang/InstantiationException; {:try_start_a8 .. :try_end_b4} :catch_c5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a8 .. :try_end_b4} :catch_c3

    .line 594
    :goto_b4
    iget-object v3, p0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    if-eqz v3, :cond_10

    .line 595
    sget-object v3, Ljava/net/URL;->streamHandlers:Ljava/util/Hashtable;

    iget-object v4, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    iget-object v5, p0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_10

    .line 592
    :catch_c3
    move-exception v3

    goto :goto_b4

    .line 591
    :catch_c5
    move-exception v3

    goto :goto_b4

    .line 590
    :catch_c7
    move-exception v3

    goto :goto_b4

    .line 578
    .restart local v2       #st:Ljava/util/StringTokenizer;
    :catch_c9
    move-exception v3

    goto/16 :goto_43

    .line 577
    :catch_cc
    move-exception v3

    goto/16 :goto_43
.end method

.method public toExternalForm()Ljava/lang/String;
    .registers 3

    .prologue
    .line 739
    iget-object v0, p0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    if-nez v0, :cond_2c

    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown protocol("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/net/URL;->file:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 742
    :goto_2b
    return-object v0

    :cond_2c
    iget-object v0, p0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    invoke-virtual {v0, p0}, Ljava/net/URLStreamHandler;->toExternalForm(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2b
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 729
    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toURI()Ljava/net/URI;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 668
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toURILenient()Ljava/net/URI;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 678
    iget-object v0, p0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    if-nez v0, :cond_c

    .line 679
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 681
    :cond_c
    new-instance v0, Ljava/net/URI;

    iget-object v1, p0, Ljava/net/URL;->strmHandler:Ljava/net/URLStreamHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Ljava/net/URLStreamHandler;->toExternalForm(Ljava/net/URL;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

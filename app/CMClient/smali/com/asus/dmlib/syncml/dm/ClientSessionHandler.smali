.class public Lcom/asus/dmlib/syncml/dm/ClientSessionHandler;
.super Ljava/lang/Object;
.source "ClientSessionHandler.java"

# interfaces
.implements Lcom/asus/dmlib/syncml/dm/IDMSessionHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "ClientSessionHandler"

.field private static mInstance:Lcom/asus/dmlib/syncml/dm/ClientSessionHandler;


# instance fields
.field private mSessionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/asus/dmlib/syncml/dm/DMSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/asus/dmlib/syncml/dm/ClientSessionHandler;->mSessionMap:Ljava/util/HashMap;

    .line 25
    return-void
.end method

.method public static getInstance()Lcom/asus/dmlib/syncml/dm/ClientSessionHandler;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/asus/dmlib/syncml/dm/ClientSessionHandler;->mInstance:Lcom/asus/dmlib/syncml/dm/ClientSessionHandler;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/asus/dmlib/syncml/dm/ClientSessionHandler;

    invoke-direct {v0}, Lcom/asus/dmlib/syncml/dm/ClientSessionHandler;-><init>()V

    sput-object v0, Lcom/asus/dmlib/syncml/dm/ClientSessionHandler;->mInstance:Lcom/asus/dmlib/syncml/dm/ClientSessionHandler;

    .line 31
    :cond_0
    sget-object v0, Lcom/asus/dmlib/syncml/dm/ClientSessionHandler;->mInstance:Lcom/asus/dmlib/syncml/dm/ClientSessionHandler;

    return-object v0
.end method


# virtual methods
.method public finish(Lcom/asus/dmlib/syncml/dm/DMSession;)V
    .locals 2
    .parameter "session"

    .prologue
    .line 49
    const-string v0, "ClientSessionHandler"

    const-string v1, "remove session from HashMap"

    invoke-static {v0, v1}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/ClientSessionHandler;->mSessionMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/asus/dmlib/syncml/dm/DMSession;->getSessionID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public getDMSession(Lcom/asus/dmlib/syncml/message/container/SyncHdr;)Lcom/asus/dmlib/syncml/dm/DMSession;
    .locals 3
    .parameter "pSyncHdr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/syncml/exception/DMException;
        }
    .end annotation

    .prologue
    .line 36
    iget-object v1, p0, Lcom/asus/dmlib/syncml/dm/ClientSessionHandler;->mSessionMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->getSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/dmlib/syncml/dm/DMSession;

    .line 38
    .local v0, session:Lcom/asus/dmlib/syncml/dm/DMSession;
    if-nez v0, :cond_0

    .line 39
    const-string v1, "ClientSessionHandler"

    const-string v2, "====== initial session object ======"

    invoke-static {v1, v2}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/asus/dmlib/syncml/dm/DMSession;

    .end local v0           #session:Lcom/asus/dmlib/syncml/dm/DMSession;
    invoke-virtual {p1}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->getSessionID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/asus/dmlib/syncml/dm/DMSession;-><init>(Ljava/lang/String;)V

    .line 42
    .restart local v0       #session:Lcom/asus/dmlib/syncml/dm/DMSession;
    iget-object v1, p0, Lcom/asus/dmlib/syncml/dm/ClientSessionHandler;->mSessionMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/asus/dmlib/syncml/message/container/SyncHdr;->getSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_0
    return-object v0
.end method

.method public syncMLAuthMatches(Lcom/asus/dmlib/syncml/message/common/Cred;Ljava/lang/String;)Z
    .locals 23
    .parameter "rcvCred"
    .parameter "charsetName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 58
    const-string v20, "ClientSessionHandler"

    const-string v21, "cred parameter must not be null"

    invoke-static/range {v20 .. v21}, Lcom/asus/dmlib/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string v21, "cred parameter must not be null"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 64
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/asus/dmlib/syncml/message/common/Cred;->getMeta()Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    move-result-object v20

    if-eqz v20, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/asus/dmlib/syncml/message/common/Cred;->getData()Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_2

    .line 65
    :cond_1
    const-string v20, "ClientSessionHandler"

    const-string v21, "meta-inf in <Cred> must not be null"

    invoke-static/range {v20 .. v21}, Lcom/asus/dmlib/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string v21, "meta-inf in <Cred> must not be null"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 71
    :cond_2
    const/4 v5, 0x0

    .line 73
    .local v5, authResult:Z
    invoke-virtual/range {p1 .. p1}, Lcom/asus/dmlib/syncml/message/common/Cred;->getMeta()Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->getType()Ljava/lang/String;

    move-result-object v6

    .line 74
    .local v6, authType:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/asus/dmlib/syncml/message/common/Cred;->getMeta()Lcom/asus/dmlib/syncml/dm/message/description/Meta;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/asus/dmlib/syncml/dm/message/description/Meta;->getFormat()Ljava/lang/String;

    move-result-object v13

    .line 75
    .local v13, format:Ljava/lang/String;
    const/4 v15, 0x0

    .line 76
    .local v15, md:Ljava/security/MessageDigest;
    const/4 v11, 0x0

    .line 77
    .local v11, dmAcc:Lcom/asus/dmlib/mo/DMAcc;
    invoke-static {}, Lcom/asus/dmlib/mo/DMAcc;->getInstances()Ljava/util/HashMap;

    move-result-object v4

    .line 78
    .local v4, accMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/asus/dmlib/mo/DMAcc;>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 80
    .local v3, accIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 81
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #dmAcc:Lcom/asus/dmlib/mo/DMAcc;
    check-cast v11, Lcom/asus/dmlib/mo/DMAcc;

    .line 84
    .restart local v11       #dmAcc:Lcom/asus/dmlib/mo/DMAcc;
    :cond_3
    invoke-virtual {v11}, Lcom/asus/dmlib/mo/DMAcc;->getServerID()Ljava/lang/String;

    move-result-object v19

    .line 85
    .local v19, serverID:Ljava/lang/String;
    invoke-virtual {v11}, Lcom/asus/dmlib/mo/DMAcc;->getServerPassword()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    .line 86
    .local v18, servPwd:[B
    invoke-virtual {v11}, Lcom/asus/dmlib/mo/DMAcc;->getServerNonce()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    .line 88
    .local v17, servNonce:[B
    const-string v20, "syncml:auth-md5"

    move-object/from16 v0, v20

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 89
    const-string v20, "ClientSessionHandler"

    const-string v21, "Checking credentials using auth-md5."

    invoke-static/range {v20 .. v21}, Lcom/asus/dmlib/util/DMLog;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :try_start_0
    const-string v20, "MD5"

    invoke-static/range {v20 .. v20}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 99
    :goto_0
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v20

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 100
    const-string v20, ":"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v20

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 101
    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 102
    invoke-virtual {v15}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v14

    .line 104
    .local v14, hash1:[B
    move-object v0, v14

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/asus/dmlib/util/Base64;->encode([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 106
    .local v7, b64:[B
    invoke-virtual {v15}, Ljava/security/MessageDigest;->reset()V

    .line 107
    invoke-virtual {v15, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 108
    const-string v20, ":"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v20

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 109
    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 110
    invoke-virtual {v15}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v10

    .line 112
    .local v10, digest:[B
    const-string v20, "ClientSessionHandler"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Received: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Lcom/asus/dmlib/syncml/message/common/Cred;->getData()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v20, "ClientSessionHandler"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Calculated: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object v0, v10

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/asus/dmlib/util/Base64;->encode([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", Nonce: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/asus/dmlib/util/Base64;->encode([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual/range {p1 .. p1}, Lcom/asus/dmlib/syncml/message/common/Cred;->getData()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/asus/dmlib/util/Base64;->decode([B)[B

    move-result-object v20

    move-object v0, v10

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 116
    const/4 v5, 0x1

    .line 139
    .end local v7           #b64:[B
    .end local v10           #digest:[B
    .end local v14           #hash1:[B
    :cond_4
    :goto_1
    return v5

    .line 93
    :catch_0
    move-exception v20

    move-object/from16 v12, v20

    .line 95
    .local v12, e:Ljava/security/NoSuchAlgorithmException;
    const-string v20, "ClientSessionHandler"

    const-string v21, "NoSuchAlgorithmException"

    invoke-static/range {v20 .. v21}, Lcom/asus/dmlib/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 118
    .end local v12           #e:Ljava/security/NoSuchAlgorithmException;
    :cond_5
    const-string v20, "syncml:auth-basic"

    move-object/from16 v0, v20

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 119
    const-string v20, "ClientSessionHandler"

    const-string v21, "Checking credentials using auth-basic."

    invoke-static/range {v20 .. v21}, Lcom/asus/dmlib/util/DMLog;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 124
    .local v16, servCred:Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 125
    .local v8, byteServCred:[B
    invoke-virtual/range {p1 .. p1}, Lcom/asus/dmlib/syncml/message/common/Cred;->getData()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 127
    .local v9, credData:[B
    if-eqz v13, :cond_6

    const-string v20, "b64"

    move-object v0, v13

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 128
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/asus/dmlib/syncml/message/common/Cred;->getData()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/asus/dmlib/util/Base64;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 131
    :cond_7
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Received: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object v1, v9

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;)V

    .line 132
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Calculated: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object v1, v8

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;)V

    .line 134
    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 135
    const/4 v5, 0x1

    goto/16 :goto_1
.end method

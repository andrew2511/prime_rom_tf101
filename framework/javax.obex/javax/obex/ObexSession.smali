.class public Ljavax/obex/ObexSession;
.super Ljava/lang/Object;
.source "ObexSession.java"


# instance fields
.field protected mAuthenticator:Ljavax/obex/Authenticator;

.field protected mChallengeDigest:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleAuthChall(Ljavax/obex/HeaderSet;)Z
    .registers 24
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ObexSession;->mAuthenticator:Ljavax/obex/Authenticator;

    move-object/from16 v17, v0

    if-nez v17, :cond_b

    .line 64
    const/16 v17, 0x0

    .line 180
    :goto_a
    return v17

    .line 76
    :cond_b
    const/16 v17, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthChall:[B

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljavax/obex/ObexHelper;->getTagValue(B[B)[B

    move-result-object v5

    .line 77
    .local v5, challenge:[B
    const/16 v17, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthChall:[B

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljavax/obex/ObexHelper;->getTagValue(B[B)[B

    move-result-object v11

    .line 78
    .local v11, option:[B
    const/16 v17, 0x2

    move-object/from16 v0, p1

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthChall:[B

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljavax/obex/ObexHelper;->getTagValue(B[B)[B

    move-result-object v6

    .line 80
    .local v6, description:[B
    const/4 v13, 0x0

    .line 81
    .local v13, realm:Ljava/lang/String;
    if-eqz v6, :cond_72

    .line 82
    move-object v0, v6

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    sub-int v17, v17, v18

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object v14, v0

    .line 83
    .local v14, realmString:[B
    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object v0, v14

    array-length v0, v0

    move/from16 v19, v0

    move-object v0, v6

    move/from16 v1, v17

    move-object v2, v14

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    const/16 v17, 0x0

    aget-byte v17, v6, v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    sparse-switch v17, :sswitch_data_1ca

    .line 105
    new-instance v17, Ljava/io/IOException;

    const-string v18, "Unsupported Encoding Scheme"

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 93
    :sswitch_67
    :try_start_67
    new-instance v13, Ljava/lang/String;

    .end local v13           #realm:Ljava/lang/String;
    const-string v17, "ISO8859_1"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_72} :catch_a6

    .line 109
    .end local v14           #realmString:[B
    .restart local v13       #realm:Ljava/lang/String;
    :cond_72
    :goto_72
    const/4 v10, 0x0

    .line 110
    .local v10, isUserIDRequired:Z
    const/4 v9, 0x1

    .line 111
    .local v9, isFullAccess:Z
    if-eqz v11, :cond_88

    .line 112
    const/16 v17, 0x0

    aget-byte v17, v11, v17

    and-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_7f

    .line 113
    const/4 v10, 0x1

    .line 116
    :cond_7f
    const/16 v17, 0x0

    aget-byte v17, v11, v17

    and-int/lit8 v17, v17, 0x2

    if-eqz v17, :cond_88

    .line 117
    const/4 v9, 0x0

    .line 121
    :cond_88
    const/4 v15, 0x0

    .line 122
    .local v15, result:Ljavax/obex/PasswordAuthentication;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Ljavax/obex/HeaderSet;->mAuthChall:[B

    .line 125
    :try_start_91
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ObexSession;->mAuthenticator:Ljavax/obex/Authenticator;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v13

    move v2, v10

    move v3, v9

    invoke-interface {v0, v1, v2, v3}, Ljavax/obex/Authenticator;->onAuthenticationChallenge(Ljava/lang/String;ZZ)Ljavax/obex/PasswordAuthentication;
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_9f} :catch_bb

    move-result-object v15

    .line 134
    if-nez v15, :cond_c2

    .line 135
    const/16 v17, 0x0

    goto/16 :goto_a

    .line 94
    .end local v9           #isFullAccess:Z
    .end local v10           #isUserIDRequired:Z
    .end local v13           #realm:Ljava/lang/String;
    .end local v15           #result:Ljavax/obex/PasswordAuthentication;
    .restart local v14       #realmString:[B
    :catch_a6
    move-exception v17

    move-object/from16 v8, v17

    .line 95
    .local v8, e:Ljava/lang/Exception;
    new-instance v17, Ljava/io/IOException;

    const-string v18, "Unsupported Encoding Scheme"

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 101
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v13       #realm:Ljava/lang/String;
    :sswitch_b1
    const/16 v17, 0x0

    move-object v0, v14

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljavax/obex/ObexHelper;->convertToUnicode([BZ)Ljava/lang/String;

    move-result-object v13

    .line 102
    goto :goto_72

    .line 127
    .end local v14           #realmString:[B
    .restart local v9       #isFullAccess:Z
    .restart local v10       #isUserIDRequired:Z
    .restart local v15       #result:Ljavax/obex/PasswordAuthentication;
    :catch_bb
    move-exception v17

    move-object/from16 v8, v17

    .line 128
    .restart local v8       #e:Ljava/lang/Exception;
    const/16 v17, 0x0

    goto/16 :goto_a

    .line 138
    .end local v8           #e:Ljava/lang/Exception;
    :cond_c2
    invoke-virtual {v15}, Ljavax/obex/PasswordAuthentication;->getPassword()[B

    move-result-object v12

    .line 139
    .local v12, password:[B
    if-nez v12, :cond_cc

    .line 140
    const/16 v17, 0x0

    goto/16 :goto_a

    .line 143
    :cond_cc
    invoke-virtual {v15}, Ljavax/obex/PasswordAuthentication;->getUserName()[B

    move-result-object v16

    .line 153
    .local v16, userName:[B
    if-eqz v16, :cond_1b9

    .line 154
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x26

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Ljavax/obex/HeaderSet;->mAuthResp:[B

    .line 155
    move-object/from16 v0, p1

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v17, v0

    const/16 v18, 0x24

    const/16 v19, 0x1

    aput-byte v19, v17, v18

    .line 156
    move-object/from16 v0, p1

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v17, v0

    const/16 v18, 0x25

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v17, v18

    .line 157
    const/16 v17, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v18, v0

    const/16 v19, 0x26

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    invoke-static/range {v16 .. v20}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    :goto_117
    move-object v0, v5

    array-length v0, v0

    move/from16 v17, v0

    move-object v0, v12

    array-length v0, v0

    move/from16 v18, v0

    add-int v17, v17, v18

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object v7, v0

    .line 164
    .local v7, digest:[B
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v0, v5

    array-length v0, v0

    move/from16 v19, v0

    move-object v0, v5

    move/from16 v1, v17

    move-object v2, v7

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    move-object v0, v5

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x3a

    aput-byte v18, v7, v17

    .line 167
    const/16 v17, 0x0

    move-object v0, v5

    array-length v0, v0

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move-object v0, v12

    array-length v0, v0

    move/from16 v19, v0

    move-object v0, v12

    move/from16 v1, v17

    move-object v2, v7

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    move-object/from16 v0, p1

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    aput-byte v19, v17, v18

    .line 171
    move-object/from16 v0, p1

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const/16 v19, 0x10

    aput-byte v19, v17, v18

    .line 173
    invoke-static {v7}, Ljavax/obex/ObexHelper;->computeMd5Hash([B)[B

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v19, v0

    const/16 v20, 0x2

    const/16 v21, 0x10

    invoke-static/range {v17 .. v21}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    move-object/from16 v0, p1

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v17, v0

    const/16 v18, 0x12

    const/16 v19, 0x2

    aput-byte v19, v17, v18

    .line 177
    move-object/from16 v0, p1

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v17, v0

    const/16 v18, 0x13

    const/16 v19, 0x10

    aput-byte v19, v17, v18

    .line 178
    const/16 v17, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v18, v0

    const/16 v19, 0x14

    const/16 v20, 0x10

    move-object v0, v5

    move/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    const/16 v17, 0x1

    goto/16 :goto_a

    .line 159
    .end local v7           #digest:[B
    :cond_1b9
    const/16 v17, 0x24

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Ljavax/obex/HeaderSet;->mAuthResp:[B

    goto/16 :goto_117

    .line 85
    nop

    :sswitch_data_1ca
    .sparse-switch
        0x0 -> :sswitch_67
        0x1 -> :sswitch_67
        0xff -> :sswitch_b1
    .end sparse-switch
.end method

.method public handleAuthResp([B)Z
    .registers 12
    .parameter "authResp"

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x10

    const/4 v7, 0x0

    .line 191
    iget-object v5, p0, Ljavax/obex/ObexSession;->mAuthenticator:Ljavax/obex/Authenticator;

    if-nez v5, :cond_a

    move v5, v7

    .line 216
    :goto_9
    return v5

    .line 195
    :cond_a
    iget-object v5, p0, Ljavax/obex/ObexSession;->mAuthenticator:Ljavax/obex/Authenticator;

    invoke-static {v9, p1}, Ljavax/obex/ObexHelper;->getTagValue(B[B)[B

    move-result-object v6

    invoke-interface {v5, v6}, Ljavax/obex/Authenticator;->onAuthenticationResponse([B)[B

    move-result-object v1

    .line 197
    .local v1, correctPassword:[B
    if-nez v1, :cond_18

    move v5, v7

    .line 198
    goto :goto_9

    .line 201
    :cond_18
    array-length v5, v1

    add-int/lit8 v5, v5, 0x10

    new-array v4, v5, [B

    .line 203
    .local v4, temp:[B
    iget-object v5, p0, Ljavax/obex/ObexSession;->mChallengeDigest:[B

    invoke-static {v5, v7, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    array-length v5, v1

    invoke-static {v1, v7, v4, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 206
    invoke-static {v4}, Ljavax/obex/ObexHelper;->computeMd5Hash([B)[B

    move-result-object v2

    .line 207
    .local v2, correctResponse:[B
    invoke-static {v7, p1}, Ljavax/obex/ObexHelper;->getTagValue(B[B)[B

    move-result-object v0

    .line 210
    .local v0, actualResponse:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2f
    if-ge v3, v8, :cond_3c

    .line 211
    aget-byte v5, v2, v3

    aget-byte v6, v0, v3

    if-eq v5, v6, :cond_39

    move v5, v7

    .line 212
    goto :goto_9

    .line 210
    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    :cond_3c
    move v5, v9

    .line 216
    goto :goto_9
.end method

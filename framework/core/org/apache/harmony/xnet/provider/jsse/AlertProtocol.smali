.class public Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;
.super Ljava/lang/Object;
.source "AlertProtocol.java"


# static fields
.field protected static final ACCESS_DENIED:B = 0x31t

.field protected static final BAD_CERTIFICATE:B = 0x2at

.field protected static final BAD_RECORD_MAC:B = 0x14t

.field protected static final CERTIFICATE_EXPIRED:B = 0x2dt

.field protected static final CERTIFICATE_REVOKED:B = 0x2ct

.field protected static final CERTIFICATE_UNKNOWN:B = 0x2et

.field protected static final CLOSE_NOTIFY:B = 0x0t

.field protected static final DECODE_ERROR:B = 0x32t

.field protected static final DECOMPRESSION_FAILURE:B = 0x1et

.field protected static final DECRYPTION_FAILED:B = 0x15t

.field protected static final DECRYPT_ERROR:B = 0x33t

.field protected static final EXPORT_RESTRICTION:B = 0x3ct

.field protected static final FATAL:B = 0x2t

.field protected static final HANDSHAKE_FAILURE:B = 0x28t

.field protected static final ILLEGAL_PARAMETER:B = 0x2ft

.field protected static final INSUFFICIENT_SECURITY:B = 0x47t

.field protected static final INTERNAL_ERROR:B = 0x50t

.field protected static final NO_RENEGOTIATION:B = 0x64t

.field protected static final PROTOCOL_VERSION:B = 0x46t

.field protected static final RECORD_OVERFLOW:B = 0x16t

.field protected static final UNEXPECTED_MESSAGE:B = 0xat

.field protected static final UNKNOWN_CA:B = 0x30t

.field protected static final UNSUPPORTED_CERTIFICATE:B = 0x2bt

.field protected static final USER_CANCELED:B = 0x5at

.field protected static final WARNING:B = 0x1t


# instance fields
.field private final alert:[B

.field private logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

.field private recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert:[B

    .line 135
    const-string v0, "alert"

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger;->getStream(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    .line 143
    return-void
.end method


# virtual methods
.method protected alert(BB)V
    .registers 6
    .parameter "level"
    .parameter "description"

    .prologue
    .line 163
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v0, :cond_26

    .line 164
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alert.alert: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 166
    :cond_26
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 167
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert:[B

    const/4 v1, 0x1

    aput-byte p2, v0, v1

    .line 168
    return-void
.end method

.method protected getAlertDescription()Ljava/lang/String;
    .registers 3

    .prologue
    .line 209
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    sparse-switch v0, :sswitch_data_50

    .line 257
    const/4 v0, 0x0

    :goto_9
    return-object v0

    .line 211
    :sswitch_a
    const-string v0, "close_notify"

    goto :goto_9

    .line 213
    :sswitch_d
    const-string v0, "unexpected_message"

    goto :goto_9

    .line 215
    :sswitch_10
    const-string v0, "bad_record_mac"

    goto :goto_9

    .line 217
    :sswitch_13
    const-string v0, "decryption_failed"

    goto :goto_9

    .line 219
    :sswitch_16
    const-string v0, "record_overflow"

    goto :goto_9

    .line 221
    :sswitch_19
    const-string v0, "decompression_failure"

    goto :goto_9

    .line 223
    :sswitch_1c
    const-string v0, "handshake_failure"

    goto :goto_9

    .line 225
    :sswitch_1f
    const-string v0, "bad_certificate"

    goto :goto_9

    .line 227
    :sswitch_22
    const-string v0, "unsupported_certificate"

    goto :goto_9

    .line 229
    :sswitch_25
    const-string v0, "certificate_revoked"

    goto :goto_9

    .line 231
    :sswitch_28
    const-string v0, "certificate_expired"

    goto :goto_9

    .line 233
    :sswitch_2b
    const-string v0, "certificate_unknown"

    goto :goto_9

    .line 235
    :sswitch_2e
    const-string v0, "illegal_parameter"

    goto :goto_9

    .line 237
    :sswitch_31
    const-string v0, "unknown_ca"

    goto :goto_9

    .line 239
    :sswitch_34
    const-string v0, "access_denied"

    goto :goto_9

    .line 241
    :sswitch_37
    const-string v0, "decode_error"

    goto :goto_9

    .line 243
    :sswitch_3a
    const-string v0, "decrypt_error"

    goto :goto_9

    .line 245
    :sswitch_3d
    const-string v0, "export_restriction"

    goto :goto_9

    .line 247
    :sswitch_40
    const-string v0, "protocol_version"

    goto :goto_9

    .line 249
    :sswitch_43
    const-string v0, "insufficient_security"

    goto :goto_9

    .line 251
    :sswitch_46
    const-string v0, "internal_error"

    goto :goto_9

    .line 253
    :sswitch_49
    const-string v0, "user_canceled"

    goto :goto_9

    .line 255
    :sswitch_4c
    const-string v0, "no_renegotiation"

    goto :goto_9

    .line 209
    nop

    :sswitch_data_50
    .sparse-switch
        0x0 -> :sswitch_a
        0xa -> :sswitch_d
        0x14 -> :sswitch_10
        0x15 -> :sswitch_13
        0x16 -> :sswitch_16
        0x1e -> :sswitch_19
        0x28 -> :sswitch_1c
        0x2a -> :sswitch_1f
        0x2b -> :sswitch_22
        0x2c -> :sswitch_25
        0x2d -> :sswitch_28
        0x2e -> :sswitch_2b
        0x2f -> :sswitch_2e
        0x30 -> :sswitch_31
        0x31 -> :sswitch_34
        0x32 -> :sswitch_37
        0x33 -> :sswitch_3a
        0x3c -> :sswitch_3d
        0x46 -> :sswitch_40
        0x47 -> :sswitch_43
        0x50 -> :sswitch_46
        0x5a -> :sswitch_49
        0x64 -> :sswitch_4c
    .end sparse-switch
.end method

.method protected getDescriptionCode()B
    .registers 3

    .prologue
    .line 175
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    :goto_c
    return v0

    :cond_d
    const/16 v0, -0x64

    goto :goto_c
.end method

.method protected hasAlert()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 194
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert:[B

    aget-byte v0, v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    move v0, v1

    goto :goto_8
.end method

.method protected isFatalAlert()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 201
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert:[B

    aget-byte v0, v0, v2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    move v0, v2

    goto :goto_9
.end method

.method protected setProcessed()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 184
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v0, :cond_c

    .line 185
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v1, "Alert.setProcessed"

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 187
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert:[B

    aput-byte v2, v0, v2

    .line 188
    return-void
.end method

.method protected setRecordProtocol(Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;)V
    .registers 2
    .parameter "recordProtocol"

    .prologue
    .line 149
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    .line 150
    return-void
.end method

.method protected shutdown()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 277
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert:[B

    aput-byte v2, v0, v2

    .line 278
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert:[B

    const/4 v1, 0x1

    aput-byte v2, v0, v1

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    .line 280
    return-void
.end method

.method protected wrap()[B
    .registers 7

    .prologue
    .line 268
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    const/16 v2, 0x15

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert:[B

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->wrap(B[BII)[B

    move-result-object v0

    .line 269
    .local v0, res:[B
    return-object v0
.end method

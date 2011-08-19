.class public Lcom/android/email/mail/transport/SmtpSender;
.super Lcom/android/email/mail/Sender;
.source "SmtpSender.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPassword:Ljava/lang/String;

.field private mTransport:Lcom/android/email/mail/Transport;

.field private mUsername:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "uriString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 69
    invoke-direct {p0}, Lcom/android/email/mail/Sender;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/email/mail/transport/SmtpSender;->mContext:Landroid/content/Context;

    .line 73
    :try_start_0
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .local v4, uri:Ljava/net/URI;
    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, scheme:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v7, "smtp"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 80
    :cond_0
    new-instance v7, Lcom/android/emailcommon/mail/MessagingException;

    const-string v8, "Unsupported protocol"

    invoke-direct {v7, v8}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 74
    .end local v2           #scheme:Ljava/lang/String;
    .end local v4           #uri:Ljava/net/URI;
    :catch_0
    move-exception v7

    move-object v5, v7

    .line 75
    .local v5, use:Ljava/net/URISyntaxException;
    new-instance v7, Lcom/android/emailcommon/mail/MessagingException;

    const-string v8, "Invalid SmtpTransport URI"

    invoke-direct {v7, v8, v5}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 83
    .end local v5           #use:Ljava/net/URISyntaxException;
    .restart local v2       #scheme:Ljava/lang/String;
    .restart local v4       #uri:Ljava/net/URI;
    :cond_1
    const/4 v0, 0x0

    .line 84
    .local v0, connectionSecurity:I
    const/16 v1, 0x24b

    .line 86
    .local v1, defaultPort:I
    const-string v7, "+ssl"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 87
    const/4 v0, 0x1

    .line 88
    const/16 v1, 0x1d1

    .line 92
    :cond_2
    :goto_0
    const-string v7, "+trustallcerts"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 94
    .local v3, trustCertificates:Z
    new-instance v7, Lcom/android/email/mail/transport/MailTransport;

    const-string v8, "SMTP"

    invoke-direct {v7, v8}, Lcom/android/email/mail/transport/MailTransport;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    .line 95
    iget-object v7, p0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v7, v4, v1}, Lcom/android/email/mail/Transport;->setUri(Ljava/net/URI;I)V

    .line 96
    iget-object v7, p0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v7, v0, v3}, Lcom/android/email/mail/Transport;->setSecurity(IZ)V

    .line 98
    iget-object v7, p0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v7}, Lcom/android/email/mail/Transport;->getUserInfoParts()[Ljava/lang/String;

    move-result-object v6

    .line 99
    .local v6, userInfoParts:[Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 100
    const/4 v7, 0x0

    aget-object v7, v6, v7

    iput-object v7, p0, Lcom/android/email/mail/transport/SmtpSender;->mUsername:Ljava/lang/String;

    .line 101
    array-length v7, v6

    if-le v7, v9, :cond_3

    .line 102
    aget-object v7, v6, v9

    iput-object v7, p0, Lcom/android/email/mail/transport/SmtpSender;->mPassword:Ljava/lang/String;

    .line 105
    :cond_3
    return-void

    .line 89
    .end local v3           #trustCertificates:Z
    .end local v6           #userInfoParts:[Ljava/lang/String;
    :cond_4
    const-string v7, "+tls"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 90
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private executeSensitiveCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "command"
    .parameter "sensitiveReplacement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    .line 262
    if-eqz p1, :cond_0

    .line 263
    iget-object v3, p0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v3, p1, p2}, Lcom/android/email/mail/Transport;->writeLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_0
    iget-object v3, p0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v3}, Lcom/android/email/mail/Transport;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, line:Ljava/lang/String;
    move-object v2, v1

    .line 270
    .local v2, result:Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_1

    .line 271
    iget-object v3, p0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v3}, Lcom/android/email/mail/Transport;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 272
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 275
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 276
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 277
    .local v0, c:C
    const/16 v3, 0x34

    if-eq v0, v3, :cond_2

    const/16 v3, 0x35

    if-ne v0, v3, :cond_3

    .line 278
    :cond_2
    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v3, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 282
    .end local v0           #c:C
    :cond_3
    return-object v2
.end method

.method private executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 248
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/email/mail/transport/SmtpSender;->executeSensitiveCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/mail/Sender;
    .locals 1
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lcom/android/email/mail/transport/SmtpSender;

    invoke-direct {v0, p0, p1}, Lcom/android/email/mail/transport/SmtpSender;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method private saslAuthLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "username"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Lcom/android/emailcommon/mail/AuthenticationFailedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 306
    :try_start_0
    const-string v1, "AUTH LOGIN"

    invoke-direct {p0, v1}, Lcom/android/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 307
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/username redacted/"

    invoke-direct {p0, v1, v2}, Lcom/android/email/mail/transport/SmtpSender;->executeSensitiveCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 310
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/password redacted/"

    invoke-direct {p0, v1, v2}, Lcom/android/email/mail/transport/SmtpSender;->executeSensitiveCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    return-void

    .line 314
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 315
    .local v0, me:Lcom/android/emailcommon/mail/MessagingException;
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x33

    if-ne v1, v2, :cond_0

    .line 316
    new-instance v1, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 318
    :cond_0
    throw v0
.end method

.method private saslAuthPlain(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "username"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Lcom/android/emailcommon/mail/AuthenticationFailedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u0000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 325
    .local v0, data:[B
    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    .line 327
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AUTH PLAIN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AUTH PLAIN /redacted/"

    invoke-direct {p0, v2, v3}, Lcom/android/email/mail/transport/SmtpSender;->executeSensitiveCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    return-void

    .line 329
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 330
    .local v1, me:Lcom/android/emailcommon/mail/MessagingException;
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_0

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x33

    if-ne v2, v3, :cond_0

    .line 331
    new-instance v2, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 333
    :cond_0
    throw v1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v0}, Lcom/android/email/mail/Transport;->close()V

    .line 237
    return-void
.end method

.method public open()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 119
    :try_start_0
    iget-object v7, p0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v7}, Lcom/android/email/mail/Transport;->open()V

    .line 122
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    const-string v5, "localhost"

    .line 126
    .local v5, localHost:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v7}, Lcom/android/email/mail/Transport;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v4

    .line 127
    .local v4, localAddress:Ljava/net/InetAddress;
    if-eqz v4, :cond_0

    .line 128
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .line 130
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EHLO "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 140
    .local v6, result:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v7}, Lcom/android/email/mail/Transport;->canTryTlsSecurity()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 141
    const-string v7, "-STARTTLS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 142
    const-string v7, "STARTTLS"

    invoke-direct {p0, v7}, Lcom/android/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 143
    iget-object v7, p0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v7}, Lcom/android/email/mail/Transport;->reopenTls()V

    .line 148
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EHLO "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 160
    :cond_1
    const-string v7, ".*AUTH.*LOGIN.*$"

    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    .line 161
    .local v0, authLoginSupported:Z
    const-string v7, ".*AUTH.*PLAIN.*$"

    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    .line 163
    .local v1, authPlainSupported:Z
    iget-object v7, p0, Lcom/android/email/mail/transport/SmtpSender;->mUsername:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/email/mail/transport/SmtpSender;->mUsername:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    iget-object v7, p0, Lcom/android/email/mail/transport/SmtpSender;->mPassword:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/email/mail/transport/SmtpSender;->mPassword:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 165
    if-eqz v1, :cond_6

    .line 166
    iget-object v7, p0, Lcom/android/email/mail/transport/SmtpSender;->mUsername:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/email/mail/transport/SmtpSender;->mPassword:Ljava/lang/String;

    invoke-direct {p0, v7, v8}, Lcom/android/email/mail/transport/SmtpSender;->saslAuthPlain(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_2
    :goto_0
    return-void

    .line 150
    .end local v0           #authLoginSupported:Z
    .end local v1           #authPlainSupported:Z
    :cond_3
    sget-boolean v7, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v7, :cond_4

    .line 151
    const-string v7, "Email"

    const-string v8, "TLS not supported but required"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_4
    new-instance v7, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v8, 0x2

    invoke-direct {v7, v8}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v7
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 178
    .end local v4           #localAddress:Ljava/net/InetAddress;
    .end local v5           #localHost:Ljava/lang/String;
    .end local v6           #result:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 179
    .local v2, e:Ljavax/net/ssl/SSLException;
    sget-boolean v7, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v7, :cond_5

    .line 180
    const-string v7, "Email"

    invoke-virtual {v2}, Ljavax/net/ssl/SSLException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_5
    new-instance v7, Lcom/android/emailcommon/mail/CertificateValidationException;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v2}, Lcom/android/emailcommon/mail/CertificateValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 168
    .end local v2           #e:Ljavax/net/ssl/SSLException;
    .restart local v0       #authLoginSupported:Z
    .restart local v1       #authPlainSupported:Z
    .restart local v4       #localAddress:Ljava/net/InetAddress;
    .restart local v5       #localHost:Ljava/lang/String;
    .restart local v6       #result:Ljava/lang/String;
    :cond_6
    if-eqz v0, :cond_8

    .line 169
    :try_start_1
    iget-object v7, p0, Lcom/android/email/mail/transport/SmtpSender;->mUsername:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/email/mail/transport/SmtpSender;->mPassword:Ljava/lang/String;

    invoke-direct {p0, v7, v8}, Lcom/android/email/mail/transport/SmtpSender;->saslAuthLogin(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 183
    .end local v0           #authLoginSupported:Z
    .end local v1           #authPlainSupported:Z
    .end local v4           #localAddress:Ljava/net/InetAddress;
    .end local v5           #localHost:Ljava/lang/String;
    .end local v6           #result:Ljava/lang/String;
    :catch_1
    move-exception v7

    move-object v3, v7

    .line 184
    .local v3, ioe:Ljava/io/IOException;
    sget-boolean v7, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v7, :cond_7

    .line 185
    const-string v7, "Email"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_7
    new-instance v7, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v8, 0x1

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 172
    .end local v3           #ioe:Ljava/io/IOException;
    .restart local v0       #authLoginSupported:Z
    .restart local v1       #authPlainSupported:Z
    .restart local v4       #localAddress:Ljava/net/InetAddress;
    .restart local v5       #localHost:Ljava/lang/String;
    .restart local v6       #result:Ljava/lang/String;
    :cond_8
    :try_start_2
    sget-boolean v7, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v7, :cond_9

    .line 173
    const-string v7, "Email"

    const-string v8, "No valid authentication mechanism found."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_9
    new-instance v7, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v8, 0x3

    invoke-direct {v7, v8}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v7
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
.end method

.method public sendMessage(J)V
    .locals 19
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/mail/transport/SmtpSender;->close()V

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/mail/transport/SmtpSender;->open()V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/transport/SmtpSender;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object v0, v3

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v17

    .line 197
    .local v17, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v17, :cond_0

    .line 198
    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to send non-existent message id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 201
    :cond_0
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/emailcommon/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;

    move-result-object v13

    .line 202
    .local v13, from:Lcom/android/emailcommon/mail/Address;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v18

    .line 203
    .local v18, to:[Lcom/android/emailcommon/mail/Address;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v12

    .line 204
    .local v12, cc:[Lcom/android/emailcommon/mail/Address;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v11

    .line 207
    .local v11, bcc:[Lcom/android/emailcommon/mail/Address;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MAIL FROM: <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 208
    move-object/from16 v10, v18

    .local v10, arr$:[Lcom/android/emailcommon/mail/Address;
    move-object v0, v10

    array-length v0, v0

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_0
    move v0, v14

    move/from16 v1, v16

    if-ge v0, v1, :cond_1

    aget-object v9, v10, v14

    .line 209
    .local v9, address:Lcom/android/emailcommon/mail/Address;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RCPT TO: <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 208
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 211
    .end local v9           #address:Lcom/android/emailcommon/mail/Address;
    :cond_1
    move-object v10, v12

    move-object v0, v10

    array-length v0, v0

    move/from16 v16, v0

    const/4 v14, 0x0

    :goto_1
    move v0, v14

    move/from16 v1, v16

    if-ge v0, v1, :cond_2

    aget-object v9, v10, v14

    .line 212
    .restart local v9       #address:Lcom/android/emailcommon/mail/Address;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RCPT TO: <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 211
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 214
    .end local v9           #address:Lcom/android/emailcommon/mail/Address;
    :cond_2
    move-object v10, v11

    move-object v0, v10

    array-length v0, v0

    move/from16 v16, v0

    const/4 v14, 0x0

    :goto_2
    move v0, v14

    move/from16 v1, v16

    if-ge v0, v1, :cond_3

    aget-object v9, v10, v14

    .line 215
    .restart local v9       #address:Lcom/android/emailcommon/mail/Address;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RCPT TO: <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 214
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 217
    .end local v9           #address:Lcom/android/emailcommon/mail/Address;
    :cond_3
    const-string v3, "DATA"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/transport/SmtpSender;->mContext:Landroid/content/Context;

    move-object v3, v0

    new-instance v6, Lcom/android/email/mail/transport/EOLConvertingOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    move-object v4, v0

    invoke-interface {v4}, Lcom/android/email/mail/Transport;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v6, v4}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide/from16 v4, p1

    invoke-static/range {v3 .. v8}, Lcom/android/emailcommon/internet/Rfc822Output;->writeTo(Landroid/content/Context;JLjava/io/OutputStream;ZZ)V

    .line 223
    const-string v3, "\r\n."

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    return-void

    .line 224
    .end local v10           #arr$:[Lcom/android/emailcommon/mail/Address;
    .end local v14           #i$:I
    .end local v16           #len$:I
    :catch_0
    move-exception v3

    move-object v15, v3

    .line 225
    .local v15, ioe:Ljava/io/IOException;
    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    const-string v4, "Unable to send message"

    invoke-direct {v3, v4, v15}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method setTransport(Lcom/android/email/mail/Transport;)V
    .locals 0
    .parameter "testTransport"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    .line 114
    return-void
.end method

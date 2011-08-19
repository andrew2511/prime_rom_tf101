.class public Lcom/android/email/mail/transport/MailTransport;
.super Ljava/lang/Object;
.source "MailTransport.java"

# interfaces
.implements Lcom/android/email/mail/Transport;


# static fields
.field private static final HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field private mConnectionSecurity:I

.field private mDebugLabel:Ljava/lang/String;

.field private mHost:Ljava/lang/String;

.field private mIn:Ljava/io/InputStream;

.field private mOut:Ljava/io/OutputStream;

.field private mPort:I

.field private mSocket:Ljava/net/Socket;

.field private mTrustCertificates:Z

.field private mUserInfoParts:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    sput-object v0, Lcom/android/email/mail/transport/MailTransport;->HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "debugLabel"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/android/email/mail/transport/MailTransport;->mDebugLabel:Ljava/lang/String;

    .line 81
    return-void
.end method

.method private verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V
    .locals 6
    .parameter "socket"
    .parameter "hostname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object v2, v0

    .line 238
    .local v2, ssl:Ljavax/net/ssl/SSLSocket;
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 240
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    .line 241
    .local v1, session:Ljavax/net/ssl/SSLSession;
    if-nez v1, :cond_0

    .line 242
    new-instance v3, Ljavax/net/ssl/SSLException;

    const-string v4, "Cannot verify SSL socket without session"

    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 248
    :cond_0
    sget-object v3, Lcom/android/email/mail/transport/MailTransport;->HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    invoke-interface {v3, p2, v1}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 249
    new-instance v3, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Certificate hostname not useable for server: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 252
    :cond_1
    return-void
.end method


# virtual methods
.method public canTrustAllCertificates()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/email/mail/transport/MailTransport;->mTrustCertificates:Z

    return v0
.end method

.method public canTrySslSecurity()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 138
    iget v0, p0, Lcom/android/email/mail/transport/MailTransport;->mConnectionSecurity:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canTryTlsSecurity()Z
    .locals 2

    .prologue
    .line 142
    iget v0, p0, Lcom/android/email/mail/transport/MailTransport;->mConnectionSecurity:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 278
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 283
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 287
    :goto_2
    iput-object v1, p0, Lcom/android/email/mail/transport/MailTransport;->mIn:Ljava/io/InputStream;

    .line 288
    iput-object v1, p0, Lcom/android/email/mail/transport/MailTransport;->mOut:Ljava/io/OutputStream;

    .line 289
    iput-object v1, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    .line 290
    return-void

    .line 284
    :catch_0
    move-exception v0

    goto :goto_2

    .line 279
    :catch_1
    move-exception v0

    goto :goto_1

    .line 274
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mIn:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 350
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mOut:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/android/email/mail/transport/MailTransport;->mPort:I

    return v0
.end method

.method public getUserInfoParts()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mUserInfoParts:[Ljava/lang/String;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mIn:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mOut:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newInstanceWithConfiguration()Lcom/android/email/mail/Transport;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lcom/android/email/mail/transport/MailTransport;

    iget-object v1, p0, Lcom/android/email/mail/transport/MailTransport;->mDebugLabel:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/email/mail/transport/MailTransport;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, newObject:Lcom/android/email/mail/transport/MailTransport;
    iget-object v1, p0, Lcom/android/email/mail/transport/MailTransport;->mDebugLabel:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/email/mail/transport/MailTransport;->mDebugLabel:Ljava/lang/String;

    .line 92
    iget-object v1, p0, Lcom/android/email/mail/transport/MailTransport;->mHost:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/email/mail/transport/MailTransport;->mHost:Ljava/lang/String;

    .line 93
    iget v1, p0, Lcom/android/email/mail/transport/MailTransport;->mPort:I

    iput v1, v0, Lcom/android/email/mail/transport/MailTransport;->mPort:I

    .line 94
    iget-object v1, p0, Lcom/android/email/mail/transport/MailTransport;->mUserInfoParts:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/android/email/mail/transport/MailTransport;->mUserInfoParts:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/android/email/mail/transport/MailTransport;->mUserInfoParts:[Ljava/lang/String;

    .line 97
    :cond_0
    iget v1, p0, Lcom/android/email/mail/transport/MailTransport;->mConnectionSecurity:I

    iput v1, v0, Lcom/android/email/mail/transport/MailTransport;->mConnectionSecurity:I

    .line 98
    iget-boolean v1, p0, Lcom/android/email/mail/transport/MailTransport;->mTrustCertificates:Z

    iput-boolean v1, v0, Lcom/android/email/mail/transport/MailTransport;->mTrustCertificates:Z

    .line 99
    return-object v0
.end method

.method public open()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Lcom/android/emailcommon/mail/CertificateValidationException;
        }
    .end annotation

    .prologue
    .line 154
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 155
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*** "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/mail/transport/MailTransport;->mDebugLabel:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " open "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getPort()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    :try_start_0
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getPort()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 161
    .local v2, socketAddress:Ljava/net/SocketAddress;
    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->canTrySslSecurity()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 162
    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->canTrustAllCertificates()Z

    move-result v3

    invoke-static {v3}, Lcom/android/emailcommon/utility/SSLUtils;->getSSLSocketFactory(Z)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    .line 166
    :goto_0
    iget-object v3, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    const/16 v4, 0x2710

    invoke-virtual {v3, v2, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 168
    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->canTrySslSecurity()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->canTrustAllCertificates()Z

    move-result v3

    if-nez v3, :cond_1

    .line 169
    iget-object v3, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/email/mail/transport/MailTransport;->verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V

    .line 171
    :cond_1
    new-instance v3, Ljava/io/BufferedInputStream;

    iget-object v4, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const/16 v5, 0x400

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v3, p0, Lcom/android/email/mail/transport/MailTransport;->mIn:Ljava/io/InputStream;

    .line 172
    new-instance v3, Ljava/io/BufferedOutputStream;

    iget-object v4, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    const/16 v5, 0x200

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v3, p0, Lcom/android/email/mail/transport/MailTransport;->mOut:Ljava/io/OutputStream;

    .line 185
    return-void

    .line 164
    :cond_2
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V

    iput-object v3, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 174
    .end local v2           #socketAddress:Ljava/net/SocketAddress;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 175
    .local v0, e:Ljavax/net/ssl/SSLException;
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 176
    const-string v3, "Email"

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_3
    new-instance v3, Lcom/android/emailcommon/mail/CertificateValidationException;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/android/emailcommon/mail/CertificateValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 179
    .end local v0           #e:Ljavax/net/ssl/SSLException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 180
    .local v1, ioe:Ljava/io/IOException;
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 181
    const-string v3, "Email"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_4
    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v4, 0x1

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public readLine()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 324
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 325
    .local v3, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 327
    .local v1, in:Ljava/io/InputStream;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, d:I
    if-eq v0, v6, :cond_1

    .line 328
    int-to-char v4, v0

    const/16 v5, 0xd

    if-eq v4, v5, :cond_0

    .line 330
    int-to-char v4, v0

    const/16 v5, 0xa

    if-ne v4, v5, :cond_4

    .line 336
    :cond_1
    if-ne v0, v6, :cond_2

    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 337
    const-string v4, "Email"

    const-string v5, "End of stream reached while trying to read line."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 340
    .local v2, ret:Ljava/lang/String;
    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 341
    const-string v4, "Email"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<<< "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_3
    return-object v2

    .line 333
    .end local v2           #ret:Ljava/lang/String;
    :cond_4
    int-to-char v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public reopenTls()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 197
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->canTrustAllCertificates()Z

    move-result v2

    invoke-static {v2}, Lcom/android/emailcommon/utility/SSLUtils;->getSSLSocketFactory(Z)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getPort()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    .line 199
    iget-object v2, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    const v3, 0xea60

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 200
    new-instance v2, Ljava/io/BufferedInputStream;

    iget-object v3, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const/16 v4, 0x400

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v2, p0, Lcom/android/email/mail/transport/MailTransport;->mIn:Ljava/io/InputStream;

    .line 201
    new-instance v2, Ljava/io/BufferedOutputStream;

    iget-object v3, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    const/16 v4, 0x200

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v2, p0, Lcom/android/email/mail/transport/MailTransport;->mOut:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 214
    return-void

    .line 203
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 204
    .local v0, e:Ljavax/net/ssl/SSLException;
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 205
    const-string v2, "Email"

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    new-instance v2, Lcom/android/emailcommon/mail/CertificateValidationException;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/android/emailcommon/mail/CertificateValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 208
    .end local v0           #e:Ljavax/net/ssl/SSLException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 209
    .local v1, ioe:Ljava/io/IOException;
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 210
    const-string v2, "Email"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_1
    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v7, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method public setSecurity(IZ)V
    .locals 0
    .parameter "connectionSecurity"
    .parameter "trustAllCertificates"

    .prologue
    .line 129
    iput p1, p0, Lcom/android/email/mail/transport/MailTransport;->mConnectionSecurity:I

    .line 130
    iput-boolean p2, p0, Lcom/android/email/mail/transport/MailTransport;->mTrustCertificates:Z

    .line 131
    return-void
.end method

.method public setSoTimeout(I)V
    .locals 1
    .parameter "timeoutMilliseconds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 261
    return-void
.end method

.method public setUri(Ljava/net/URI;I)V
    .locals 3
    .parameter "uri"
    .parameter "defaultPort"

    .prologue
    .line 103
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mHost:Ljava/lang/String;

    .line 105
    iput p2, p0, Lcom/android/email/mail/transport/MailTransport;->mPort:I

    .line 106
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 107
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v0

    iput v0, p0, Lcom/android/email/mail/transport/MailTransport;->mPort:I

    .line 110
    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {p1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mUserInfoParts:[Ljava/lang/String;

    .line 114
    :cond_1
    return-void
.end method

.method public writeLine(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "s"
    .parameter "sensitiveReplacement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 305
    if-eqz p2, :cond_1

    .line 306
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 313
    .local v0, out:Ljava/io/OutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 314
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 315
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 316
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 317
    return-void

    .line 308
    .end local v0           #out:Ljava/io/OutputStream;
    :cond_1
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

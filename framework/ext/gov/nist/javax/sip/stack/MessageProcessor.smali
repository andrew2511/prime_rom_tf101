.class public abstract Lgov/nist/javax/sip/stack/MessageProcessor;
.super Ljava/lang/Object;
.source "MessageProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final IN6_ADDR_ANY:Ljava/lang/String; = "::0"

.field protected static final IN_ADDR_ANY:Ljava/lang/String; = "0.0.0.0"


# instance fields
.field private ipAddress:Ljava/net/InetAddress;

.field private listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

.field private port:I

.field private savedIpAddress:Ljava/lang/String;

.field private sentBy:Ljava/lang/String;

.field private sentByHostPort:Lgov/nist/core/HostPort;

.field private sentBySet:Z

.field protected sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

.field protected transport:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "transport"

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->transport:Ljava/lang/String;

    .line 104
    return-void
.end method

.method protected constructor <init>(Ljava/net/InetAddress;ILjava/lang/String;Lgov/nist/javax/sip/stack/SIPTransactionStack;)V
    .registers 5
    .parameter "ipAddress"
    .parameter "port"
    .parameter "transport"
    .parameter "transactionStack"

    .prologue
    .line 115
    invoke-direct {p0, p3}, Lgov/nist/javax/sip/stack/MessageProcessor;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, p1, p2, p4}, Lgov/nist/javax/sip/stack/MessageProcessor;->initialize(Ljava/net/InetAddress;ILgov/nist/javax/sip/stack/SIPTransactionStack;)V

    .line 117
    return-void
.end method

.method public static getDefaultPort(Ljava/lang/String;)I
    .registers 2
    .parameter "transport"

    .prologue
    .line 351
    const-string v0, "TLS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x13c5

    :goto_a
    return v0

    :cond_b
    const/16 v0, 0x13c4

    goto :goto_a
.end method


# virtual methods
.method public abstract createMessageChannel(Lgov/nist/core/HostPort;)Lgov/nist/javax/sip/stack/MessageChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createMessageChannel(Ljava/net/InetAddress;I)Lgov/nist/javax/sip/stack/MessageChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getDefaultTargetPort()I
.end method

.method public getIpAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->ipAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getListeningPoint()Lgov/nist/javax/sip/ListeningPointImpl;
    .registers 4

    .prologue
    .line 187
    iget-object v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    if-nez v0, :cond_32

    .line 188
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 189
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getListeningPoint"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returning null listeningpoint"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 194
    :cond_32
    iget-object v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    return-object v0
.end method

.method public abstract getMaximumMessageSize()I
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 155
    iget v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->port:I

    return v0
.end method

.method public abstract getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;
.end method

.method public getSavedIpAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->savedIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSentBy()Ljava/lang/String;
    .registers 2

    .prologue
    .line 263
    iget-object v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentBy:Ljava/lang/String;

    if-nez v0, :cond_10

    iget-object v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentByHostPort:Lgov/nist/core/HostPort;

    if-eqz v0, :cond_10

    .line 264
    iget-object v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentByHostPort:Lgov/nist/core/HostPort;

    invoke-virtual {v0}, Lgov/nist/core/HostPort;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentBy:Ljava/lang/String;

    .line 266
    :cond_10
    iget-object v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentBy:Ljava/lang/String;

    return-object v0
.end method

.method public getTransport()Ljava/lang/String;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->transport:Ljava/lang/String;

    return-object v0
.end method

.method public getViaHeader()Lgov/nist/javax/sip/header/Via;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 166
    :try_start_1
    new-instance v2, Lgov/nist/javax/sip/header/Via;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/Via;-><init>()V

    .line 167
    .local v2, via:Lgov/nist/javax/sip/header/Via;
    iget-object v3, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentByHostPort:Lgov/nist/core/HostPort;

    if-eqz v3, :cond_18

    .line 168
    iget-object v3, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentByHostPort:Lgov/nist/core/HostPort;

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/header/Via;->setSentBy(Lgov/nist/core/HostPort;)V

    .line 169
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getTransport()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/header/Via;->setTransport(Ljava/lang/String;)V

    :goto_16
    move-object v3, v2

    .line 183
    .end local v2           #via:Lgov/nist/javax/sip/header/Via;
    :goto_17
    return-object v3

    .line 171
    .restart local v2       #via:Lgov/nist/javax/sip/header/Via;
    :cond_18
    new-instance v1, Lgov/nist/core/Host;

    invoke-direct {v1}, Lgov/nist/core/Host;-><init>()V

    .line 172
    .local v1, host:Lgov/nist/core/Host;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lgov/nist/core/Host;->setHostname(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/header/Via;->setHost(Lgov/nist/core/Host;)V

    .line 174
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/header/Via;->setPort(I)V

    .line 175
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getTransport()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/header/Via;->setTransport(Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_39} :catch_3a
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1 .. :try_end_39} :catch_41

    goto :goto_16

    .line 178
    .end local v1           #host:Lgov/nist/core/Host;
    .end local v2           #via:Lgov/nist/javax/sip/header/Via;
    :catch_3a
    move-exception v3

    move-object v0, v3

    .line 179
    .local v0, ex:Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    move-object v3, v4

    .line 180
    goto :goto_17

    .line 181
    .end local v0           #ex:Ljava/text/ParseException;
    :catch_41
    move-exception v3

    move-object v0, v3

    .line 182
    .local v0, ex:Ljavax/sip/InvalidArgumentException;
    invoke-virtual {v0}, Ljavax/sip/InvalidArgumentException;->printStackTrace()V

    move-object v3, v4

    .line 183
    goto :goto_17
.end method

.method public abstract inUse()Z
.end method

.method public final initialize(Ljava/net/InetAddress;ILgov/nist/javax/sip/stack/SIPTransactionStack;)V
    .registers 7
    .parameter "ipAddress"
    .parameter "port"
    .parameter "transactionStack"

    .prologue
    .line 130
    iput-object p3, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 131
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->savedIpAddress:Ljava/lang/String;

    .line 132
    iput-object p1, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->ipAddress:Ljava/net/InetAddress;

    .line 133
    iput p2, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->port:I

    .line 134
    new-instance v0, Lgov/nist/core/HostPort;

    invoke-direct {v0}, Lgov/nist/core/HostPort;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentByHostPort:Lgov/nist/core/HostPort;

    .line 135
    iget-object v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentByHostPort:Lgov/nist/core/HostPort;

    new-instance v1, Lgov/nist/core/Host;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lgov/nist/core/Host;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgov/nist/core/HostPort;->setHost(Lgov/nist/core/Host;)V

    .line 136
    iget-object v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentByHostPort:Lgov/nist/core/HostPort;

    invoke-virtual {v0, p2}, Lgov/nist/core/HostPort;->setPort(I)V

    .line 137
    return-void
.end method

.method public abstract isSecure()Z
.end method

.method public isSentBySet()Z
    .registers 2

    .prologue
    .line 338
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentBySet:Z

    return v0
.end method

.method public abstract run()V
.end method

.method protected setIpAddress(Ljava/net/InetAddress;)V
    .registers 5
    .parameter "ipAddress"

    .prologue
    .line 226
    iget-object v0, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentByHostPort:Lgov/nist/core/HostPort;

    new-instance v1, Lgov/nist/core/Host;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lgov/nist/core/Host;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgov/nist/core/HostPort;->setHost(Lgov/nist/core/Host;)V

    .line 227
    iput-object p1, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->ipAddress:Ljava/net/InetAddress;

    .line 228
    return-void
.end method

.method public setListeningPoint(Lgov/nist/javax/sip/ListeningPointImpl;)V
    .registers 5
    .parameter "lp"

    .prologue
    .line 198
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 199
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setListeningPoint"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " listeningPoint = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 203
    :cond_32
    invoke-virtual {p1}, Lgov/nist/javax/sip/ListeningPointImpl;->getPort()I

    move-result v0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getPort()I

    move-result v1

    if-eq v0, v1, :cond_49

    .line 204
    const-string v0, "lp mismatch with provider"

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    invoke-static {v0, v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/String;Lgov/nist/core/StackLogger;)V

    .line 206
    :cond_49
    iput-object p1, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    .line 208
    return-void
.end method

.method public setSentBy(Ljava/lang/String;)V
    .registers 9
    .parameter "sentBy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 238
    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 239
    .local v1, ind:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_20

    .line 240
    new-instance v4, Lgov/nist/core/HostPort;

    invoke-direct {v4}, Lgov/nist/core/HostPort;-><init>()V

    iput-object v4, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentByHostPort:Lgov/nist/core/HostPort;

    .line 241
    iget-object v4, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentByHostPort:Lgov/nist/core/HostPort;

    new-instance v5, Lgov/nist/core/Host;

    invoke-direct {v5, p1}, Lgov/nist/core/Host;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lgov/nist/core/HostPort;->setHost(Lgov/nist/core/Host;)V

    .line 253
    :goto_1a
    const/4 v4, 0x1

    iput-boolean v4, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentBySet:Z

    .line 254
    iput-object p1, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentBy:Ljava/lang/String;

    .line 256
    return-void

    .line 243
    :cond_20
    new-instance v4, Lgov/nist/core/HostPort;

    invoke-direct {v4}, Lgov/nist/core/HostPort;-><init>()V

    iput-object v4, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentByHostPort:Lgov/nist/core/HostPort;

    .line 244
    iget-object v4, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentByHostPort:Lgov/nist/core/HostPort;

    new-instance v5, Lgov/nist/core/Host;

    const/4 v6, 0x0

    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lgov/nist/core/Host;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lgov/nist/core/HostPort;->setHost(Lgov/nist/core/Host;)V

    .line 245
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 247
    .local v3, portStr:Ljava/lang/String;
    :try_start_3c
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 248
    .local v2, port:I
    iget-object v4, p0, Lgov/nist/javax/sip/stack/MessageProcessor;->sentByHostPort:Lgov/nist/core/HostPort;

    invoke-virtual {v4, v2}, Lgov/nist/core/HostPort;->setPort(I)V
    :try_end_45
    .catch Ljava/lang/NumberFormatException; {:try_start_3c .. :try_end_45} :catch_46

    goto :goto_1a

    .line 249
    .end local v2           #port:I
    :catch_46
    move-exception v4

    move-object v0, v4

    .line 250
    .local v0, ex:Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/text/ParseException;

    const-string v5, "Bad format encountered at "

    invoke-direct {v4, v5, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4
.end method

.method public abstract start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract stop()V
.end method

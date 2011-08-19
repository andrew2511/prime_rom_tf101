.class public final Lgov/nist/javax/sip/stack/HopImpl;
.super Ljava/lang/Object;
.source "HopImpl.java"

# interfaces
.implements Ljavax/sip/address/Hop;
.implements Ljava/io/Serializable;


# instance fields
.field protected defaultRoute:Z

.field protected host:Ljava/lang/String;

.field protected port:I

.field protected transport:Ljava/lang/String;

.field protected uriRoute:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 11
    .parameter "hop"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x13c4

    const/4 v7, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    if-nez p1, :cond_10

    .line 96
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Null arg!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 99
    :cond_10
    const/16 v5, 0x5d

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 100
    .local v0, brack:I
    const/16 v5, 0x3a

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 101
    .local v1, colon:I
    const/16 v5, 0x2f

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 103
    .local v4, slash:I
    if-lez v1, :cond_69

    .line 104
    invoke-virtual {p1, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    .line 106
    if-lez v4, :cond_54

    .line 107
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, portstr:Ljava/lang/String;
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    .line 114
    :goto_3a
    :try_start_3a
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->port:I
    :try_end_40
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_40} :catch_5f

    .line 131
    .end local v3           #portstr:Ljava/lang/String;
    :goto_40
    iget-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    if-eqz v5, :cond_4c

    iget-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_93

    .line 132
    :cond_4c
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "no host!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 110
    :cond_54
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 111
    .restart local v3       #portstr:Ljava/lang/String;
    const-string v5, "UDP"

    iput-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    goto :goto_3a

    .line 115
    :catch_5f
    move-exception v5

    move-object v2, v5

    .line 116
    .local v2, ex:Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Bad port spec"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 119
    .end local v2           #ex:Ljava/lang/NumberFormatException;
    .end local v3           #portstr:Ljava/lang/String;
    :cond_69
    if-lez v4, :cond_8a

    .line 120
    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    .line 121
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    .line 122
    iget-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    const-string v6, "TLS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_88

    const/16 v5, 0x13c5

    :goto_85
    iput v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->port:I

    goto :goto_40

    :cond_88
    move v5, v8

    goto :goto_85

    .line 124
    :cond_8a
    iput-object p1, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    .line 125
    const-string v5, "UDP"

    iput-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    .line 126
    iput v8, p0, Lgov/nist/javax/sip/stack/HopImpl;->port:I

    goto :goto_40

    .line 135
    :cond_93
    iget-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    .line 136
    iget-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    .line 138
    if-lez v0, :cond_b7

    iget-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5b

    if-eq v5, v6, :cond_b7

    .line 139
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Bad IPv6 reference spec"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 142
    :cond_b7
    iget-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    const-string v6, "UDP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_f5

    iget-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    const-string v6, "TLS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_f5

    iget-object v5, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    const-string v6, "TCP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_f5

    .line 145
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad transport string "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 146
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 148
    :cond_f5
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6
    .parameter "hostName"
    .parameter "portNumber"
    .parameter "trans"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_36

    .line 80
    iget-object v0, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_36

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    .line 83
    :cond_36
    iput p2, p0, Lgov/nist/javax/sip/stack/HopImpl;->port:I

    .line 84
    iput-object p3, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    .line 85
    return-void
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 163
    iget v0, p0, Lgov/nist/javax/sip/stack/HopImpl;->port:I

    return v0
.end method

.method public getTransport()Ljava/lang/String;
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    return-object v0
.end method

.method public isURIRoute()Z
    .registers 2

    .prologue
    .line 177
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/HopImpl;->uriRoute:Z

    return v0
.end method

.method public setURIRouteFlag()V
    .registers 2

    .prologue
    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/HopImpl;->uriRoute:Z

    .line 184
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/javax/sip/stack/HopImpl;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lgov/nist/javax/sip/stack/HopImpl;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/HopImpl;->transport:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

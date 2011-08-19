.class public Lorg/jivesoftware/smack/packet/LoginResponse;
.super Lorg/jivesoftware/smack/packet/Packet;
.source "LoginResponse.java"


# instance fields
.field private heartbeatConfig:Lorg/jivesoftware/smack/packet/HeartbeatConfig;

.field private jid:Ljava/lang/String;

.field private settings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/Packet;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public getHeartbeatConfig()Lorg/jivesoftware/smack/packet/HeartbeatConfig;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/LoginResponse;->heartbeatConfig:Lorg/jivesoftware/smack/packet/HeartbeatConfig;

    return-object v0
.end method

.method public getJid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/LoginResponse;->jid:Ljava/lang/String;

    return-object v0
.end method

.method public getSettings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/LoginResponse;->settings:Ljava/util/Map;

    return-object v0
.end method

.method public setHeartbeatConfig(Lorg/jivesoftware/smack/packet/HeartbeatConfig;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 50
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/LoginResponse;->heartbeatConfig:Lorg/jivesoftware/smack/packet/HeartbeatConfig;

    .line 51
    return-void
.end method

.method public setJid(Ljava/lang/String;)V
    .locals 0
    .parameter "jid"

    .prologue
    .line 58
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/LoginResponse;->jid:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setSettings(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, settings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/LoginResponse;->settings:Ljava/util/Map;

    .line 43
    return-void
.end method

.method public toProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "LoginResponse.toProtoBuf() should not be called!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toXML()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v8, -0x1

    .line 64
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 65
    .local v4, sb:Ljava/lang/StringBuffer;
    const-string v6, "<login-response id=\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/LoginResponse;->getPacketID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    iget-object v6, p0, Lorg/jivesoftware/smack/packet/LoginResponse;->jid:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 68
    const-string v6, "\" jid=\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    iget-object v6, p0, Lorg/jivesoftware/smack/packet/LoginResponse;->jid:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    const-string v6, "\" "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/LoginResponse;->getLastStreamId()I

    move-result v3

    .line 73
    .local v3, lastStreamId:I
    if-eq v3, v8, :cond_0

    .line 74
    const-string v6, "last_stream_id=\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\" "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/LoginResponse;->getStreamId()I

    move-result v5

    .line 79
    .local v5, streamId:I
    if-eq v5, v8, :cond_1

    .line 80
    const-string v6, "stream_id=\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\" "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    :cond_1
    const-string v6, ">"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    iget-object v6, p0, Lorg/jivesoftware/smack/packet/LoginResponse;->heartbeatConfig:Lorg/jivesoftware/smack/packet/HeartbeatConfig;

    if-eqz v6, :cond_5

    .line 86
    const-string v6, "<config"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    iget-object v6, p0, Lorg/jivesoftware/smack/packet/LoginResponse;->heartbeatConfig:Lorg/jivesoftware/smack/packet/HeartbeatConfig;

    iget-object v6, v6, Lorg/jivesoftware/smack/packet/HeartbeatConfig;->uploadStat:Ljava/lang/Boolean;

    if-eqz v6, :cond_2

    .line 88
    const-string v6, " upload-stat=\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    iget-object v6, p0, Lorg/jivesoftware/smack/packet/LoginResponse;->heartbeatConfig:Lorg/jivesoftware/smack/packet/HeartbeatConfig;

    iget-object v6, v6, Lorg/jivesoftware/smack/packet/HeartbeatConfig;->uploadStat:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "enabled"

    :goto_0
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    :cond_2
    iget-object v6, p0, Lorg/jivesoftware/smack/packet/LoginResponse;->heartbeatConfig:Lorg/jivesoftware/smack/packet/HeartbeatConfig;

    iget-wide v6, v6, Lorg/jivesoftware/smack/packet/HeartbeatConfig;->interval:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    .line 93
    const-string v6, " interval-ms=\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    iget-object v6, p0, Lorg/jivesoftware/smack/packet/LoginResponse;->heartbeatConfig:Lorg/jivesoftware/smack/packet/HeartbeatConfig;

    iget-wide v6, v6, Lorg/jivesoftware/smack/packet/HeartbeatConfig;->interval:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 95
    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    :cond_3
    iget-object v6, p0, Lorg/jivesoftware/smack/packet/LoginResponse;->heartbeatConfig:Lorg/jivesoftware/smack/packet/HeartbeatConfig;

    iget-object v6, v6, Lorg/jivesoftware/smack/packet/HeartbeatConfig;->ip:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 98
    const-string v6, " ip=\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    iget-object v6, p0, Lorg/jivesoftware/smack/packet/LoginResponse;->heartbeatConfig:Lorg/jivesoftware/smack/packet/HeartbeatConfig;

    iget-object v6, v6, Lorg/jivesoftware/smack/packet/HeartbeatConfig;->ip:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    :cond_4
    const-string v6, " />"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    :cond_5
    iget-object v6, p0, Lorg/jivesoftware/smack/packet/LoginResponse;->settings:Ljava/util/Map;

    if-eqz v6, :cond_8

    .line 107
    iget-object v6, p0, Lorg/jivesoftware/smack/packet/LoginResponse;->settings:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0
    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 108
    .local v2, kv:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "<setting name=\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\" value=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\" />"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 89
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #kv:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p0
    :cond_6
    const-string v6, "disabled"

    goto/16 :goto_0

    .line 113
    .end local v3           #lastStreamId:I
    .end local v5           #streamId:I
    :cond_7
    const-string v6, "\">"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/LoginResponse;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    .line 115
    .local v0, error:Lorg/jivesoftware/smack/packet/XMPPError;
    if-eqz v0, :cond_8

    .line 116
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/XMPPError;->toXML()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    .end local v0           #error:Lorg/jivesoftware/smack/packet/XMPPError;
    .end local p0
    :cond_8
    const-string v6, "</login-response>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.class public Lcom/ecareme/utils/jms/JMSUtils;
.super Ljava/lang/Object;
.source "JMSUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Lcom/ecareme/utils/jms/JMSComponent;)V
    .locals 0
    .parameter "component"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 233
    if-eqz p0, :cond_0

    .line 235
    invoke-interface {p0}, Lcom/ecareme/utils/jms/JMSComponent;->close()V

    .line 237
    :cond_0
    return-void
.end method

.method public static close(Ljavax/jms/Connection;)V
    .locals 0
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 118
    if-eqz p0, :cond_0

    .line 120
    invoke-interface {p0}, Ljavax/jms/Connection;->close()V

    .line 122
    :cond_0
    return-void
.end method

.method public static close(Ljavax/jms/Connection;Ljavax/jms/Session;Ljavax/jms/MessageConsumer;)V
    .locals 0
    .parameter "conn"
    .parameter "session"
    .parameter "consumer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {p2}, Lcom/ecareme/utils/jms/JMSUtils;->close(Ljavax/jms/MessageConsumer;)V

    .line 93
    invoke-static {p1}, Lcom/ecareme/utils/jms/JMSUtils;->close(Ljavax/jms/Session;)V

    .line 94
    invoke-static {p0}, Lcom/ecareme/utils/jms/JMSUtils;->close(Ljavax/jms/Connection;)V

    .line 95
    return-void
.end method

.method public static close(Ljavax/jms/Connection;Ljavax/jms/Session;Ljavax/jms/MessageProducer;)V
    .locals 0
    .parameter "conn"
    .parameter "session"
    .parameter "producer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-static {p2}, Lcom/ecareme/utils/jms/JMSUtils;->close(Ljavax/jms/MessageProducer;)V

    .line 100
    invoke-static {p1}, Lcom/ecareme/utils/jms/JMSUtils;->close(Ljavax/jms/Session;)V

    .line 101
    invoke-static {p0}, Lcom/ecareme/utils/jms/JMSUtils;->close(Ljavax/jms/Connection;)V

    .line 102
    return-void
.end method

.method public static close(Ljavax/jms/MessageConsumer;)V
    .locals 0
    .parameter "consumer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 142
    if-eqz p0, :cond_0

    .line 144
    invoke-interface {p0}, Ljavax/jms/MessageConsumer;->close()V

    .line 146
    :cond_0
    return-void
.end method

.method public static close(Ljavax/jms/MessageProducer;)V
    .locals 0
    .parameter "producer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 134
    if-eqz p0, :cond_0

    .line 136
    invoke-interface {p0}, Ljavax/jms/MessageProducer;->close()V

    .line 138
    :cond_0
    return-void
.end method

.method public static close(Ljavax/jms/QueueBrowser;)V
    .locals 0
    .parameter "browser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 150
    if-eqz p0, :cond_0

    .line 152
    invoke-interface {p0}, Ljavax/jms/QueueBrowser;->close()V

    .line 154
    :cond_0
    return-void
.end method

.method public static close(Ljavax/jms/QueueConnection;Ljavax/jms/QueueSession;Ljavax/jms/QueueBrowser;)V
    .locals 0
    .parameter "conn"
    .parameter "session"
    .parameter "browser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {p2}, Lcom/ecareme/utils/jms/JMSUtils;->close(Ljavax/jms/QueueBrowser;)V

    .line 60
    invoke-static {p1}, Lcom/ecareme/utils/jms/JMSUtils;->close(Ljavax/jms/Session;)V

    .line 61
    invoke-static {p0}, Lcom/ecareme/utils/jms/JMSUtils;->close(Ljavax/jms/Connection;)V

    .line 62
    return-void
.end method

.method public static close(Ljavax/jms/Session;)V
    .locals 0
    .parameter "session"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 126
    if-eqz p0, :cond_0

    .line 128
    invoke-interface {p0}, Ljavax/jms/Session;->close()V

    .line 130
    :cond_0
    return-void
.end method

.method public static close(Ljavax/jms/Session;Ljavax/jms/MessageConsumer;)V
    .locals 0
    .parameter "session"
    .parameter "consumer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-static {p1}, Lcom/ecareme/utils/jms/JMSUtils;->close(Ljavax/jms/MessageConsumer;)V

    .line 107
    invoke-static {p0}, Lcom/ecareme/utils/jms/JMSUtils;->close(Ljavax/jms/Session;)V

    .line 108
    return-void
.end method

.method public static close(Ljavax/jms/Session;Ljavax/jms/MessageProducer;)V
    .locals 0
    .parameter "session"
    .parameter "producer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-static {p1}, Lcom/ecareme/utils/jms/JMSUtils;->close(Ljavax/jms/MessageProducer;)V

    .line 113
    invoke-static {p0}, Lcom/ecareme/utils/jms/JMSUtils;->close(Ljavax/jms/Session;)V

    .line 114
    return-void
.end method

.method public static closeQuietly(Lcom/ecareme/utils/jms/JMSComponent;)V
    .locals 1
    .parameter "component"

    .prologue
    .line 241
    if-eqz p0, :cond_0

    .line 245
    :try_start_0
    invoke-interface {p0}, Lcom/ecareme/utils/jms/JMSComponent;->close()V
    :try_end_0
    .catch Ljavax/jms/JMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v0

    .line 249
    .local v0, e:Ljavax/jms/JMSException;
    invoke-virtual {v0}, Ljavax/jms/JMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public static closeQuietly(Ljavax/jms/Connection;)V
    .locals 1
    .parameter "conn"

    .prologue
    .line 158
    if-eqz p0, :cond_0

    .line 162
    :try_start_0
    invoke-interface {p0}, Ljavax/jms/Connection;->close()V
    :try_end_0
    .catch Ljavax/jms/JMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 166
    .local v0, e:Ljavax/jms/JMSException;
    invoke-virtual {v0}, Ljavax/jms/JMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public static closeQuietly(Ljavax/jms/Connection;Ljavax/jms/Session;Ljavax/jms/MessageConsumer;)V
    .locals 0
    .parameter "conn"
    .parameter "session"
    .parameter "consumer"

    .prologue
    .line 66
    invoke-static {p2}, Lcom/ecareme/utils/jms/JMSUtils;->closeQuietly(Ljavax/jms/MessageConsumer;)V

    .line 67
    invoke-static {p1}, Lcom/ecareme/utils/jms/JMSUtils;->closeQuietly(Ljavax/jms/Session;)V

    .line 68
    invoke-static {p0}, Lcom/ecareme/utils/jms/JMSUtils;->closeQuietly(Ljavax/jms/Connection;)V

    .line 69
    return-void
.end method

.method public static closeQuietly(Ljavax/jms/Connection;Ljavax/jms/Session;Ljavax/jms/MessageProducer;)V
    .locals 0
    .parameter "conn"
    .parameter "session"
    .parameter "producer"

    .prologue
    .line 73
    invoke-static {p2}, Lcom/ecareme/utils/jms/JMSUtils;->closeQuietly(Ljavax/jms/MessageProducer;)V

    .line 74
    invoke-static {p1}, Lcom/ecareme/utils/jms/JMSUtils;->closeQuietly(Ljavax/jms/Session;)V

    .line 75
    invoke-static {p0}, Lcom/ecareme/utils/jms/JMSUtils;->closeQuietly(Ljavax/jms/Connection;)V

    .line 76
    return-void
.end method

.method public static closeQuietly(Ljavax/jms/MessageConsumer;)V
    .locals 1
    .parameter "consumer"

    .prologue
    .line 203
    if-eqz p0, :cond_0

    .line 207
    :try_start_0
    invoke-interface {p0}, Ljavax/jms/MessageConsumer;->close()V
    :try_end_0
    .catch Ljavax/jms/JMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 211
    .local v0, e:Ljavax/jms/JMSException;
    invoke-virtual {v0}, Ljavax/jms/JMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public static closeQuietly(Ljavax/jms/MessageProducer;)V
    .locals 1
    .parameter "producer"

    .prologue
    .line 188
    if-eqz p0, :cond_0

    .line 192
    :try_start_0
    invoke-interface {p0}, Ljavax/jms/MessageProducer;->close()V
    :try_end_0
    .catch Ljavax/jms/JMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 196
    .local v0, e:Ljavax/jms/JMSException;
    invoke-virtual {v0}, Ljavax/jms/JMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public static closeQuietly(Ljavax/jms/QueueBrowser;)V
    .locals 1
    .parameter "browser"

    .prologue
    .line 218
    if-eqz p0, :cond_0

    .line 222
    :try_start_0
    invoke-interface {p0}, Ljavax/jms/QueueBrowser;->close()V
    :try_end_0
    .catch Ljavax/jms/JMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 226
    .local v0, e:Ljavax/jms/JMSException;
    invoke-virtual {v0}, Ljavax/jms/JMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public static closeQuietly(Ljavax/jms/QueueConnection;Ljavax/jms/QueueSession;Ljavax/jms/QueueBrowser;)V
    .locals 0
    .parameter "conn"
    .parameter "session"
    .parameter "browser"

    .prologue
    .line 52
    invoke-static {p2}, Lcom/ecareme/utils/jms/JMSUtils;->closeQuietly(Ljavax/jms/QueueBrowser;)V

    .line 53
    invoke-static {p1}, Lcom/ecareme/utils/jms/JMSUtils;->closeQuietly(Ljavax/jms/Session;)V

    .line 54
    invoke-static {p0}, Lcom/ecareme/utils/jms/JMSUtils;->closeQuietly(Ljavax/jms/Connection;)V

    .line 55
    return-void
.end method

.method public static closeQuietly(Ljavax/jms/Session;)V
    .locals 1
    .parameter "session"

    .prologue
    .line 173
    if-eqz p0, :cond_0

    .line 177
    :try_start_0
    invoke-interface {p0}, Ljavax/jms/Session;->close()V
    :try_end_0
    .catch Ljavax/jms/JMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 181
    .local v0, e:Ljavax/jms/JMSException;
    invoke-virtual {v0}, Ljavax/jms/JMSException;->printStackTrace()V

    goto :goto_0
.end method

.method public static closeQuietly(Ljavax/jms/Session;Ljavax/jms/MessageConsumer;)V
    .locals 0
    .parameter "session"
    .parameter "consumer"

    .prologue
    .line 80
    invoke-static {p1}, Lcom/ecareme/utils/jms/JMSUtils;->closeQuietly(Ljavax/jms/MessageConsumer;)V

    .line 81
    invoke-static {p0}, Lcom/ecareme/utils/jms/JMSUtils;->closeQuietly(Ljavax/jms/Session;)V

    .line 82
    return-void
.end method

.method public static closeQuietly(Ljavax/jms/Session;Ljavax/jms/MessageProducer;)V
    .locals 0
    .parameter "session"
    .parameter "producer"

    .prologue
    .line 86
    invoke-static {p1}, Lcom/ecareme/utils/jms/JMSUtils;->closeQuietly(Ljavax/jms/MessageProducer;)V

    .line 87
    invoke-static {p0}, Lcom/ecareme/utils/jms/JMSUtils;->closeQuietly(Ljavax/jms/Session;)V

    .line 88
    return-void
.end method

.method public static commit(Ljavax/jms/Session;)V
    .locals 1
    .parameter "session"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-interface {p0}, Ljavax/jms/Session;->getTransacted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-interface {p0}, Ljavax/jms/Session;->commit()V

    .line 25
    :cond_0
    return-void
.end method

.method public static rollback(Ljavax/jms/Session;)V
    .locals 1
    .parameter "session"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-interface {p0}, Ljavax/jms/Session;->getTransacted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-interface {p0}, Ljavax/jms/Session;->rollback()V

    .line 33
    :cond_0
    return-void
.end method

.method public static rollbackQuietly(Ljavax/jms/Session;)V
    .locals 2
    .parameter "session"

    .prologue
    .line 39
    :try_start_0
    invoke-interface {p0}, Ljavax/jms/Session;->getTransacted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    invoke-interface {p0}, Ljavax/jms/Session;->rollback()V
    :try_end_0
    .catch Ljavax/jms/JMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 46
    .local v0, e:Ljavax/jms/JMSException;
    invoke-virtual {v0}, Ljavax/jms/JMSException;->printStackTrace()V

    goto :goto_0
.end method

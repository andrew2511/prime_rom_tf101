.class public Lcom/ecareme/utils/jms/JMSQueueSender;
.super Ljava/lang/Object;
.source "JMSQueueSender.java"

# interfaces
.implements Lcom/ecareme/utils/jms/JMSComponent;


# instance fields
.field closed:Z

.field conn:Ljavax/jms/QueueConnection;

.field sender:Ljavax/jms/QueueSender;

.field sess:Ljavax/jms/QueueSession;


# direct methods
.method constructor <init>(Ljavax/jms/QueueConnectionFactory;Ljava/lang/String;)V
    .locals 6
    .parameter "connfactory"
    .parameter "queue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 55
    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/ecareme/utils/jms/JMSQueueSender;-><init>(Ljavax/jms/QueueConnectionFactory;Ljava/lang/String;ZII)V

    .line 56
    return-void
.end method

.method constructor <init>(Ljavax/jms/QueueConnectionFactory;Ljava/lang/String;ZII)V
    .locals 2
    .parameter "connfactory"
    .parameter "queue"
    .parameter "transacted"
    .parameter "acknowledgeMode"
    .parameter "deliveryMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-interface {p1}, Ljavax/jms/QueueConnectionFactory;->createQueueConnection()Ljavax/jms/QueueConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueSender;->conn:Ljavax/jms/QueueConnection;

    .line 61
    iget-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueSender;->conn:Ljavax/jms/QueueConnection;

    invoke-interface {v0}, Ljavax/jms/QueueConnection;->start()V

    .line 62
    iget-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueSender;->conn:Ljavax/jms/QueueConnection;

    invoke-interface {v0, p3, p4}, Ljavax/jms/QueueConnection;->createQueueSession(ZI)Ljavax/jms/QueueSession;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueSender;->sess:Ljavax/jms/QueueSession;

    .line 63
    iget-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueSender;->sess:Ljavax/jms/QueueSession;

    iget-object v1, p0, Lcom/ecareme/utils/jms/JMSQueueSender;->sess:Ljavax/jms/QueueSession;

    invoke-interface {v1, p2}, Ljavax/jms/QueueSession;->createQueue(Ljava/lang/String;)Ljavax/jms/Queue;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/jms/QueueSession;->createSender(Ljavax/jms/Queue;)Ljavax/jms/QueueSender;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueSender;->sender:Ljavax/jms/QueueSender;

    .line 64
    iget-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueSender;->sender:Ljavax/jms/QueueSender;

    invoke-interface {v0, p5}, Ljavax/jms/QueueSender;->setDeliveryMode(I)V

    .line 65
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/ecareme/utils/jms/JMSQueueSender;->closed:Z

    if-nez v0, :cond_0

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ecareme/utils/jms/JMSQueueSender;->closed:Z

    .line 147
    iget-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueSender;->conn:Ljavax/jms/QueueConnection;

    iget-object v1, p0, Lcom/ecareme/utils/jms/JMSQueueSender;->sess:Ljavax/jms/QueueSession;

    iget-object v2, p0, Lcom/ecareme/utils/jms/JMSQueueSender;->sender:Ljavax/jms/QueueSender;

    invoke-static {v0, v1, v2}, Lcom/ecareme/utils/jms/JMSUtils;->closeQuietly(Ljavax/jms/Connection;Ljavax/jms/Session;Ljavax/jms/MessageProducer;)V

    .line 149
    :cond_0
    return-void
.end method

.method public commit()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueSender;->sess:Ljavax/jms/QueueSession;

    invoke-static {v0}, Lcom/ecareme/utils/jms/JMSUtils;->commit(Ljavax/jms/Session;)V

    .line 110
    return-void
.end method

.method public createBytesMessage()Ljavax/jms/BytesMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueSender;->sess:Ljavax/jms/QueueSession;

    invoke-interface {v0}, Ljavax/jms/QueueSession;->createBytesMessage()Ljavax/jms/BytesMessage;

    move-result-object v0

    return-object v0
.end method

.method public createMapMessage()Ljavax/jms/MapMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueSender;->sess:Ljavax/jms/QueueSession;

    invoke-interface {v0}, Ljavax/jms/QueueSession;->createMapMessage()Ljavax/jms/MapMessage;

    move-result-object v0

    return-object v0
.end method

.method public createMessage()Ljavax/jms/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueSender;->sess:Ljavax/jms/QueueSession;

    invoke-interface {v0}, Ljavax/jms/QueueSession;->createMessage()Ljavax/jms/Message;

    move-result-object v0

    return-object v0
.end method

.method public createObjectMessage()Ljavax/jms/ObjectMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueSender;->sess:Ljavax/jms/QueueSession;

    invoke-interface {v0}, Ljavax/jms/QueueSession;->createObjectMessage()Ljavax/jms/ObjectMessage;

    move-result-object v0

    return-object v0
.end method

.method public createStreamMessage()Ljavax/jms/StreamMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueSender;->sess:Ljavax/jms/QueueSession;

    invoke-interface {v0}, Ljavax/jms/QueueSession;->createStreamMessage()Ljavax/jms/StreamMessage;

    move-result-object v0

    return-object v0
.end method

.method public createTextMessage()Ljavax/jms/TextMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueSender;->sess:Ljavax/jms/QueueSession;

    invoke-interface {v0}, Ljavax/jms/QueueSession;->createTextMessage()Ljavax/jms/TextMessage;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueSender;->sender:Ljavax/jms/QueueSender;

    invoke-interface {v0}, Ljavax/jms/QueueSender;->getPriority()I

    move-result v0

    return v0
.end method

.method public getQueue()Ljavax/jms/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueSender;->sender:Ljavax/jms/QueueSender;

    invoke-interface {v0}, Ljavax/jms/QueueSender;->getQueue()Ljavax/jms/Queue;

    move-result-object v0

    return-object v0
.end method

.method public getQueueSession()Ljavax/jms/QueueSession;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueSender;->sess:Ljavax/jms/QueueSession;

    return-object v0
.end method

.method public getTimeToLive()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueSender;->sender:Ljavax/jms/QueueSender;

    invoke-interface {v0}, Ljavax/jms/QueueSender;->getTimeToLive()J

    move-result-wide v0

    return-wide v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/ecareme/utils/jms/JMSQueueSender;->closed:Z

    return v0
.end method

.method public rollback()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueSender;->sess:Ljavax/jms/QueueSession;

    invoke-static {v0}, Lcom/ecareme/utils/jms/JMSUtils;->rollbackQuietly(Ljavax/jms/Session;)V

    .line 140
    return-void
.end method

.method public send(Ljavax/jms/Message;)V
    .locals 1
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueSender;->sender:Ljavax/jms/QueueSender;

    invoke-interface {v0, p1}, Ljavax/jms/QueueSender;->send(Ljavax/jms/Message;)V

    .line 105
    return-void
.end method

.method public setPriority(I)V
    .locals 1
    .parameter "defaultPriority"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueSender;->sender:Ljavax/jms/QueueSender;

    invoke-interface {v0, p1}, Ljavax/jms/QueueSender;->setPriority(I)V

    .line 130
    return-void
.end method

.method public setTimeToLive(J)V
    .locals 1
    .parameter "timeToLive"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueSender;->sender:Ljavax/jms/QueueSender;

    invoke-interface {v0, p1, p2}, Ljavax/jms/QueueSender;->setTimeToLive(J)V

    .line 135
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 158
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 159
    .local v0, sw:Ljava/io/StringWriter;
    const-string v1, "QueueConnection:"

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/ecareme/utils/jms/JMSQueueSender;->conn:Ljavax/jms/QueueConnection;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0, v2}, Ljava/io/StringWriter;->write(I)V

    .line 162
    const-string v1, "QueueSession:"

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/ecareme/utils/jms/JMSQueueSender;->sess:Ljavax/jms/QueueSession;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0, v2}, Ljava/io/StringWriter;->write(I)V

    .line 165
    const-string v1, "QueueSender:"

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/ecareme/utils/jms/JMSQueueSender;->sender:Ljavax/jms/QueueSender;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

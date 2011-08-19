.class public Lcom/ecareme/utils/jms/JMSQueueReceiver;
.super Ljava/lang/Object;
.source "JMSQueueReceiver.java"

# interfaces
.implements Lcom/ecareme/utils/jms/JMSComponent;


# instance fields
.field private isConnected:Z

.field qs:Lcom/ecareme/utils/jms/JMSQueueSession;

.field receiver:Ljavax/jms/QueueReceiver;


# direct methods
.method constructor <init>(Lcom/ecareme/utils/jms/JMSQueueSession;Ljava/lang/String;)V
    .locals 2
    .parameter "qs"
    .parameter "queuename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ecareme/utils/jms/JMSQueueReceiver;->isConnected:Z

    .line 24
    iput-object p1, p0, Lcom/ecareme/utils/jms/JMSQueueReceiver;->qs:Lcom/ecareme/utils/jms/JMSQueueSession;

    .line 25
    invoke-virtual {p1}, Lcom/ecareme/utils/jms/JMSQueueSession;->getQueueSession()Ljavax/jms/QueueSession;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ecareme/utils/jms/JMSQueueSession;->getQueueSession()Ljavax/jms/QueueSession;

    move-result-object v1

    invoke-interface {v1, p2}, Ljavax/jms/QueueSession;->createQueue(Ljava/lang/String;)Ljavax/jms/Queue;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/jms/QueueSession;->createReceiver(Ljavax/jms/Queue;)Ljavax/jms/QueueReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueReceiver;->receiver:Ljavax/jms/QueueReceiver;

    .line 26
    return-void
.end method

.method constructor <init>(Lcom/ecareme/utils/jms/JMSQueueSession;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "qs"
    .parameter "queuename"
    .parameter "messageSelector"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ecareme/utils/jms/JMSQueueReceiver;->isConnected:Z

    .line 30
    iput-object p1, p0, Lcom/ecareme/utils/jms/JMSQueueReceiver;->qs:Lcom/ecareme/utils/jms/JMSQueueSession;

    .line 31
    invoke-virtual {p1}, Lcom/ecareme/utils/jms/JMSQueueSession;->getQueueSession()Ljavax/jms/QueueSession;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ecareme/utils/jms/JMSQueueSession;->getQueueSession()Ljavax/jms/QueueSession;

    move-result-object v1

    invoke-interface {v1, p2}, Ljavax/jms/QueueSession;->createQueue(Ljava/lang/String;)Ljavax/jms/Queue;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljavax/jms/QueueSession;->createReceiver(Ljavax/jms/Queue;Ljava/lang/String;)Ljavax/jms/QueueReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueReceiver;->receiver:Ljavax/jms/QueueReceiver;

    .line 32
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/ecareme/utils/jms/JMSQueueReceiver;->isConnected:Z

    if-eqz v0, :cond_0

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ecareme/utils/jms/JMSQueueReceiver;->isConnected:Z

    .line 76
    iget-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueReceiver;->receiver:Ljavax/jms/QueueReceiver;

    invoke-static {v0}, Lcom/ecareme/utils/jms/JMSUtils;->closeQuietly(Ljavax/jms/MessageConsumer;)V

    .line 78
    :cond_0
    return-void
.end method

.method public closeAll()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ecareme/utils/jms/JMSQueueReceiver;->isConnected:Z

    .line 67
    iget-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueReceiver;->receiver:Ljavax/jms/QueueReceiver;

    invoke-static {v0}, Lcom/ecareme/utils/jms/JMSUtils;->closeQuietly(Ljavax/jms/MessageConsumer;)V

    .line 69
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
    .line 51
    iget-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueReceiver;->qs:Lcom/ecareme/utils/jms/JMSQueueSession;

    invoke-virtual {v0}, Lcom/ecareme/utils/jms/JMSQueueSession;->getQueueSession()Ljavax/jms/QueueSession;

    move-result-object v0

    invoke-static {v0}, Lcom/ecareme/utils/jms/JMSUtils;->commit(Ljavax/jms/Session;)V

    .line 52
    return-void
.end method

.method public getJMSQueueSession()Lcom/ecareme/utils/jms/JMSQueueSession;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueReceiver;->qs:Lcom/ecareme/utils/jms/JMSQueueSession;

    return-object v0
.end method

.method public getQueue()Ljavax/jms/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueReceiver;->receiver:Ljavax/jms/QueueReceiver;

    invoke-interface {v0}, Ljavax/jms/QueueReceiver;->getQueue()Ljavax/jms/Queue;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/ecareme/utils/jms/JMSQueueReceiver;->isConnected:Z

    return v0
.end method

.method public receive()Ljavax/jms/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueReceiver;->receiver:Ljavax/jms/QueueReceiver;

    invoke-interface {v0}, Ljavax/jms/QueueReceiver;->receive()Ljavax/jms/Message;

    move-result-object v0

    return-object v0
.end method

.method public receive(J)Ljavax/jms/Message;
    .locals 1
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueReceiver;->receiver:Ljavax/jms/QueueReceiver;

    invoke-interface {v0, p1, p2}, Ljavax/jms/QueueReceiver;->receive(J)Ljavax/jms/Message;

    move-result-object v0

    return-object v0
.end method

.method public rollback()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueReceiver;->qs:Lcom/ecareme/utils/jms/JMSQueueSession;

    invoke-virtual {v0}, Lcom/ecareme/utils/jms/JMSQueueSession;->getQueueSession()Ljavax/jms/QueueSession;

    move-result-object v0

    invoke-static {v0}, Lcom/ecareme/utils/jms/JMSUtils;->rollbackQuietly(Ljavax/jms/Session;)V

    .line 62
    return-void
.end method

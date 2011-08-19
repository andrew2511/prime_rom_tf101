.class public Lcom/ecareme/utils/jms/JMSQueueSession;
.super Ljava/lang/Object;
.source "JMSQueueSession.java"


# instance fields
.field conn:Ljavax/jms/QueueConnection;

.field isConnected:Z

.field session:Ljavax/jms/QueueSession;


# direct methods
.method constructor <init>(Ljavax/jms/QueueConnectionFactory;)V
    .locals 1
    .parameter "connfactory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 30
    invoke-direct {p0, p1, v0, v0}, Lcom/ecareme/utils/jms/JMSQueueSession;-><init>(Ljavax/jms/QueueConnectionFactory;ZI)V

    .line 31
    return-void
.end method

.method constructor <init>(Ljavax/jms/QueueConnectionFactory;ZI)V
    .locals 1
    .parameter "connfactory"
    .parameter "transacted"
    .parameter "acknowledgeMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ecareme/utils/jms/JMSQueueSession;->isConnected:Z

    .line 22
    invoke-interface {p1}, Ljavax/jms/QueueConnectionFactory;->createQueueConnection()Ljavax/jms/QueueConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueSession;->conn:Ljavax/jms/QueueConnection;

    .line 23
    iget-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueSession;->conn:Ljavax/jms/QueueConnection;

    invoke-interface {v0}, Ljavax/jms/QueueConnection;->start()V

    .line 24
    iget-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueSession;->conn:Ljavax/jms/QueueConnection;

    invoke-interface {v0, p2, p3}, Ljavax/jms/QueueConnection;->createQueueSession(ZI)Ljavax/jms/QueueSession;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueSession;->session:Ljavax/jms/QueueSession;

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ecareme/utils/jms/JMSQueueSession;->isConnected:Z

    .line 26
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/ecareme/utils/jms/JMSQueueSession;->isConnected:Z

    if-eqz v0, :cond_0

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ecareme/utils/jms/JMSQueueSession;->isConnected:Z

    .line 53
    iget-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueSession;->session:Ljavax/jms/QueueSession;

    invoke-static {v0}, Lcom/ecareme/utils/jms/JMSUtils;->closeQuietly(Ljavax/jms/Session;)V

    .line 54
    iget-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueSession;->conn:Ljavax/jms/QueueConnection;

    invoke-static {v0}, Lcom/ecareme/utils/jms/JMSUtils;->closeQuietly(Ljavax/jms/Connection;)V

    .line 56
    :cond_0
    return-void
.end method

.method public createReceiver(Ljava/lang/String;)Lcom/ecareme/utils/jms/JMSQueueReceiver;
    .locals 1
    .parameter "queuename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lcom/ecareme/utils/jms/JMSQueueReceiver;

    invoke-direct {v0, p0, p1}, Lcom/ecareme/utils/jms/JMSQueueReceiver;-><init>(Lcom/ecareme/utils/jms/JMSQueueSession;Ljava/lang/String;)V

    return-object v0
.end method

.method public createReceiver(Ljava/lang/String;Ljava/lang/String;)Lcom/ecareme/utils/jms/JMSQueueReceiver;
    .locals 1
    .parameter "queuename"
    .parameter "messageSelector"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Lcom/ecareme/utils/jms/JMSQueueReceiver;

    invoke-direct {v0, p0, p1, p2}, Lcom/ecareme/utils/jms/JMSQueueReceiver;-><init>(Lcom/ecareme/utils/jms/JMSQueueSession;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getQueueSession()Ljavax/jms/QueueSession;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueSession;->session:Ljavax/jms/QueueSession;

    return-object v0
.end method

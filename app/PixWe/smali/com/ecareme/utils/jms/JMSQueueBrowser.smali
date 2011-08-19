.class public Lcom/ecareme/utils/jms/JMSQueueBrowser;
.super Ljava/lang/Object;
.source "JMSQueueBrowser.java"

# interfaces
.implements Lcom/ecareme/utils/jms/JMSComponent;


# instance fields
.field browser:Ljavax/jms/QueueBrowser;

.field closed:Z

.field conn:Ljavax/jms/QueueConnection;

.field session:Ljavax/jms/QueueSession;


# direct methods
.method constructor <init>(Ljavax/jms/QueueConnectionFactory;Ljava/lang/String;)V
    .locals 1
    .parameter "connfactory"
    .parameter "queue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ecareme/utils/jms/JMSQueueBrowser;-><init>(Ljavax/jms/QueueConnectionFactory;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method constructor <init>(Ljavax/jms/QueueConnectionFactory;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "connfactory"
    .parameter "queue"
    .parameter "messageSelector"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-interface {p1}, Ljavax/jms/QueueConnectionFactory;->createQueueConnection()Ljavax/jms/QueueConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueBrowser;->conn:Ljavax/jms/QueueConnection;

    .line 28
    iget-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueBrowser;->conn:Ljavax/jms/QueueConnection;

    invoke-interface {v0}, Ljavax/jms/QueueConnection;->start()V

    .line 29
    iget-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueBrowser;->conn:Ljavax/jms/QueueConnection;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Ljavax/jms/QueueConnection;->createQueueSession(ZI)Ljavax/jms/QueueSession;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueBrowser;->session:Ljavax/jms/QueueSession;

    .line 30
    iget-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueBrowser;->session:Ljavax/jms/QueueSession;

    iget-object v1, p0, Lcom/ecareme/utils/jms/JMSQueueBrowser;->session:Ljavax/jms/QueueSession;

    invoke-interface {v1, p2}, Ljavax/jms/QueueSession;->createQueue(Ljava/lang/String;)Ljavax/jms/Queue;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljavax/jms/QueueSession;->createBrowser(Ljavax/jms/Queue;Ljava/lang/String;)Ljavax/jms/QueueBrowser;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueBrowser;->browser:Ljavax/jms/QueueBrowser;

    .line 31
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/ecareme/utils/jms/JMSQueueBrowser;->closed:Z

    if-nez v0, :cond_0

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ecareme/utils/jms/JMSQueueBrowser;->closed:Z

    .line 43
    iget-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueBrowser;->conn:Ljavax/jms/QueueConnection;

    iget-object v1, p0, Lcom/ecareme/utils/jms/JMSQueueBrowser;->session:Ljavax/jms/QueueSession;

    iget-object v2, p0, Lcom/ecareme/utils/jms/JMSQueueBrowser;->browser:Ljavax/jms/QueueBrowser;

    invoke-static {v0, v1, v2}, Lcom/ecareme/utils/jms/JMSUtils;->closeQuietly(Ljavax/jms/QueueConnection;Ljavax/jms/QueueSession;Ljavax/jms/QueueBrowser;)V

    .line 45
    :cond_0
    return-void
.end method

.method public getEnumeration()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueBrowser;->browser:Ljavax/jms/QueueBrowser;

    invoke-interface {v0}, Ljavax/jms/QueueBrowser;->getEnumeration()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getMessageSelector()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueBrowser;->browser:Ljavax/jms/QueueBrowser;

    invoke-interface {v0}, Ljavax/jms/QueueBrowser;->getMessageSelector()Ljava/lang/String;

    move-result-object v0

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
    .line 64
    iget-object v0, p0, Lcom/ecareme/utils/jms/JMSQueueBrowser;->browser:Ljavax/jms/QueueBrowser;

    invoke-interface {v0}, Ljavax/jms/QueueBrowser;->getQueue()Ljavax/jms/Queue;

    move-result-object v0

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/ecareme/utils/jms/JMSQueueBrowser;->closed:Z

    return v0
.end method

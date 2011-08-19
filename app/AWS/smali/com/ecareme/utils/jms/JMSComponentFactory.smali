.class public Lcom/ecareme/utils/jms/JMSComponentFactory;
.super Ljava/lang/Object;
.source "JMSComponentFactory.java"


# instance fields
.field private acknowledgeMode:I

.field private deliveryMode:I

.field private qcf:Ljavax/jms/QueueConnectionFactory;

.field private tcf:Ljavax/jms/TopicConnectionFactory;

.field private transacted:Z


# direct methods
.method private constructor <init>(Ljavax/jms/QueueConnectionFactory;Ljavax/jms/TopicConnectionFactory;ZII)V
    .locals 0
    .parameter "qcf"
    .parameter "tcf"
    .parameter "transacted"
    .parameter "acknowledgeMode"
    .parameter "deliveryMode"

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/ecareme/utils/jms/JMSComponentFactory;->qcf:Ljavax/jms/QueueConnectionFactory;

    .line 118
    iput-object p2, p0, Lcom/ecareme/utils/jms/JMSComponentFactory;->tcf:Ljavax/jms/TopicConnectionFactory;

    .line 119
    iput-boolean p3, p0, Lcom/ecareme/utils/jms/JMSComponentFactory;->transacted:Z

    .line 120
    iput p4, p0, Lcom/ecareme/utils/jms/JMSComponentFactory;->acknowledgeMode:I

    .line 121
    iput p5, p0, Lcom/ecareme/utils/jms/JMSComponentFactory;->deliveryMode:I

    .line 122
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ecareme/utils/jms/JMSComponentFactory;
    .locals 7
    .parameter "initialContextFactory"
    .parameter "providerURI"
    .parameter "queueConnFactoryName"
    .parameter "topicConnFactoryName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 78
    const/4 v6, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-static/range {v0 .. v6}, Lcom/ecareme/utils/jms/JMSComponentFactory;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)Lcom/ecareme/utils/jms/JMSComponentFactory;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)Lcom/ecareme/utils/jms/JMSComponentFactory;
    .locals 10
    .parameter "initialContextFactory"
    .parameter "providerURI"
    .parameter "queueConnFactoryName"
    .parameter "topicConnFactoryName"
    .parameter "transacted"
    .parameter "acknowledgeMode"
    .parameter "deliveryMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 83
    new-instance v9, Ljava/util/Properties;

    invoke-direct {v9}, Ljava/util/Properties;-><init>()V

    .line 84
    .local v9, props:Ljava/util/Properties;
    const-string v1, "java.naming.factory.initial"

    invoke-virtual {v9, v1, p0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    const-string v1, "java.naming.provider.url"

    invoke-virtual {v9, v1, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    const/4 v2, 0x0

    .line 90
    .local v2, qcf:Ljavax/jms/QueueConnectionFactory;
    const/4 v3, 0x0

    .line 91
    .local v3, tcf:Ljavax/jms/TopicConnectionFactory;
    if-eqz p2, :cond_0

    .line 93
    :try_start_0
    new-instance v1, Ljavax/naming/InitialContext;

    invoke-direct {v1, v9}, Ljavax/naming/InitialContext;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v1, p2}, Ljavax/naming/InitialContext;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljavax/jms/QueueConnectionFactory;

    move-object v2, v0

    .line 95
    :cond_0
    if-eqz p3, :cond_1

    .line 97
    new-instance v1, Ljavax/naming/InitialContext;

    invoke-direct {v1, v9}, Ljavax/naming/InitialContext;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v1, p3}, Ljavax/naming/InitialContext;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljavax/jms/TopicConnectionFactory;

    move-object v3, v0

    .line 99
    :cond_1
    new-instance v1, Lcom/ecareme/utils/jms/JMSComponentFactory;

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/ecareme/utils/jms/JMSComponentFactory;-><init>(Ljavax/jms/QueueConnectionFactory;Ljavax/jms/TopicConnectionFactory;ZII)V
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 101
    :catch_0
    move-exception v1

    move-object v7, v1

    .line 103
    .local v7, e:Ljavax/naming/NamingException;
    new-instance v8, Ljavax/jms/JMSException;

    invoke-virtual {v7}, Ljavax/naming/NamingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Ljavax/jms/JMSException;-><init>(Ljava/lang/String;)V

    .line 104
    .local v8, jmse:Ljavax/jms/JMSException;
    invoke-virtual {v8, v7}, Ljavax/jms/JMSException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 105
    throw v8
.end method

.method public static newInstance(Ljavax/jms/QueueConnectionFactory;Ljavax/jms/TopicConnectionFactory;)Lcom/ecareme/utils/jms/JMSComponentFactory;
    .locals 6
    .parameter "qcf"
    .parameter "tcf"

    .prologue
    const/4 v3, 0x1

    .line 64
    new-instance v0, Lcom/ecareme/utils/jms/JMSComponentFactory;

    const/4 v5, 0x2

    move-object v1, p0

    move-object v2, p1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/ecareme/utils/jms/JMSComponentFactory;-><init>(Ljavax/jms/QueueConnectionFactory;Ljavax/jms/TopicConnectionFactory;ZII)V

    return-object v0
.end method

.method public static newInstance(Ljavax/jms/QueueConnectionFactory;Ljavax/jms/TopicConnectionFactory;ZII)Lcom/ecareme/utils/jms/JMSComponentFactory;
    .locals 6
    .parameter "qcf"
    .parameter "tcf"
    .parameter "transacted"
    .parameter "acknowledgeMode"
    .parameter "deliveryMode"

    .prologue
    .line 69
    new-instance v0, Lcom/ecareme/utils/jms/JMSComponentFactory;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ecareme/utils/jms/JMSComponentFactory;-><init>(Ljavax/jms/QueueConnectionFactory;Ljavax/jms/TopicConnectionFactory;ZII)V

    return-object v0
.end method

.method public static newInstance(Lorg/apache/commons/configuration/Configuration;)Lcom/ecareme/utils/jms/JMSComponentFactory;
    .locals 8
    .parameter "conf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 49
    const-string v0, "jms.config.initialcontextfactory"

    invoke-interface {p0, v0}, Lorg/apache/commons/configuration/Configuration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    const-string v1, "jms.config.providerurl"

    invoke-interface {p0, v1}, Lorg/apache/commons/configuration/Configuration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    const-string v2, "jms.config.queueconnectionfactory"

    invoke-interface {p0, v2}, Lorg/apache/commons/configuration/Configuration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    const-string v3, "jms.config.topicconnectionfactory"

    invoke-interface {p0, v3}, Lorg/apache/commons/configuration/Configuration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 53
    const-string v4, "jms.config.transacted"

    invoke-interface {p0, v4, v6}, Lorg/apache/commons/configuration/Configuration;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 54
    const-string v5, "jms.config.acknowledge_mode"

    invoke-interface {p0, v5, v6}, Lorg/apache/commons/configuration/Configuration;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 55
    const-string v6, "jms.config.delivery_mode"

    const/4 v7, 0x2

    invoke-interface {p0, v6, v7}, Lorg/apache/commons/configuration/Configuration;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 49
    invoke-static/range {v0 .. v6}, Lcom/ecareme/utils/jms/JMSComponentFactory;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)Lcom/ecareme/utils/jms/JMSComponentFactory;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public newQueueBrowser(Ljava/lang/String;)Lcom/ecareme/utils/jms/JMSQueueBrowser;
    .locals 2
    .parameter "queuename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 180
    new-instance v0, Lcom/ecareme/utils/jms/JMSQueueBrowser;

    iget-object v1, p0, Lcom/ecareme/utils/jms/JMSComponentFactory;->qcf:Ljavax/jms/QueueConnectionFactory;

    invoke-direct {v0, v1, p1}, Lcom/ecareme/utils/jms/JMSQueueBrowser;-><init>(Ljavax/jms/QueueConnectionFactory;Ljava/lang/String;)V

    return-object v0
.end method

.method public newQueueBrowser(Ljava/lang/String;Ljava/lang/String;)Lcom/ecareme/utils/jms/JMSQueueBrowser;
    .locals 2
    .parameter "queuename"
    .parameter "messageSelector"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 185
    new-instance v0, Lcom/ecareme/utils/jms/JMSQueueBrowser;

    iget-object v1, p0, Lcom/ecareme/utils/jms/JMSComponentFactory;->qcf:Ljavax/jms/QueueConnectionFactory;

    invoke-direct {v0, v1, p1, p2}, Lcom/ecareme/utils/jms/JMSQueueBrowser;-><init>(Ljavax/jms/QueueConnectionFactory;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public newQueueConnection()Ljavax/jms/QueueConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/ecareme/utils/jms/JMSComponentFactory;->qcf:Ljavax/jms/QueueConnectionFactory;

    invoke-interface {v0}, Ljavax/jms/QueueConnectionFactory;->createQueueConnection()Ljavax/jms/QueueConnection;

    move-result-object v0

    return-object v0
.end method

.method public newQueueReceiver(Ljava/lang/String;)Lcom/ecareme/utils/jms/JMSQueueReceiver;
    .locals 4
    .parameter "queuename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Lcom/ecareme/utils/jms/JMSQueueSession;

    iget-object v1, p0, Lcom/ecareme/utils/jms/JMSComponentFactory;->qcf:Ljavax/jms/QueueConnectionFactory;

    iget-boolean v2, p0, Lcom/ecareme/utils/jms/JMSComponentFactory;->transacted:Z

    iget v3, p0, Lcom/ecareme/utils/jms/JMSComponentFactory;->acknowledgeMode:I

    invoke-direct {v0, v1, v2, v3}, Lcom/ecareme/utils/jms/JMSQueueSession;-><init>(Ljavax/jms/QueueConnectionFactory;ZI)V

    .line 157
    .local v0, qs:Lcom/ecareme/utils/jms/JMSQueueSession;
    new-instance v1, Lcom/ecareme/utils/jms/JMSQueueReceiver;

    invoke-direct {v1, v0, p1}, Lcom/ecareme/utils/jms/JMSQueueReceiver;-><init>(Lcom/ecareme/utils/jms/JMSQueueSession;Ljava/lang/String;)V

    return-object v1
.end method

.method public newQueueReceiver(Ljava/lang/String;Ljava/lang/String;)Lcom/ecareme/utils/jms/JMSQueueReceiver;
    .locals 4
    .parameter "queuename"
    .parameter "messageSelector"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 162
    new-instance v0, Lcom/ecareme/utils/jms/JMSQueueSession;

    iget-object v1, p0, Lcom/ecareme/utils/jms/JMSComponentFactory;->qcf:Ljavax/jms/QueueConnectionFactory;

    iget-boolean v2, p0, Lcom/ecareme/utils/jms/JMSComponentFactory;->transacted:Z

    iget v3, p0, Lcom/ecareme/utils/jms/JMSComponentFactory;->acknowledgeMode:I

    invoke-direct {v0, v1, v2, v3}, Lcom/ecareme/utils/jms/JMSQueueSession;-><init>(Ljavax/jms/QueueConnectionFactory;ZI)V

    .line 163
    .local v0, qs:Lcom/ecareme/utils/jms/JMSQueueSession;
    new-instance v1, Lcom/ecareme/utils/jms/JMSQueueReceiver;

    invoke-direct {v1, v0, p1, p2}, Lcom/ecareme/utils/jms/JMSQueueReceiver;-><init>(Lcom/ecareme/utils/jms/JMSQueueSession;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public newQueueReceiver(Ljava/lang/String;ZI)Lcom/ecareme/utils/jms/JMSQueueReceiver;
    .locals 2
    .parameter "queuename"
    .parameter "transacted"
    .parameter "acknowledgeMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 168
    new-instance v0, Lcom/ecareme/utils/jms/JMSQueueSession;

    iget-object v1, p0, Lcom/ecareme/utils/jms/JMSComponentFactory;->qcf:Ljavax/jms/QueueConnectionFactory;

    invoke-direct {v0, v1, p2, p3}, Lcom/ecareme/utils/jms/JMSQueueSession;-><init>(Ljavax/jms/QueueConnectionFactory;ZI)V

    .line 169
    .local v0, qs:Lcom/ecareme/utils/jms/JMSQueueSession;
    new-instance v1, Lcom/ecareme/utils/jms/JMSQueueReceiver;

    invoke-direct {v1, v0, p1}, Lcom/ecareme/utils/jms/JMSQueueReceiver;-><init>(Lcom/ecareme/utils/jms/JMSQueueSession;Ljava/lang/String;)V

    return-object v1
.end method

.method public newQueueReceiver(Ljava/lang/String;ZILjava/lang/String;)Lcom/ecareme/utils/jms/JMSQueueReceiver;
    .locals 2
    .parameter "queuename"
    .parameter "transacted"
    .parameter "acknowledgeMode"
    .parameter "messageSelector"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 174
    new-instance v0, Lcom/ecareme/utils/jms/JMSQueueSession;

    iget-object v1, p0, Lcom/ecareme/utils/jms/JMSComponentFactory;->qcf:Ljavax/jms/QueueConnectionFactory;

    invoke-direct {v0, v1, p2, p3}, Lcom/ecareme/utils/jms/JMSQueueSession;-><init>(Ljavax/jms/QueueConnectionFactory;ZI)V

    .line 175
    .local v0, qs:Lcom/ecareme/utils/jms/JMSQueueSession;
    new-instance v1, Lcom/ecareme/utils/jms/JMSQueueReceiver;

    invoke-direct {v1, v0, p1, p4}, Lcom/ecareme/utils/jms/JMSQueueReceiver;-><init>(Lcom/ecareme/utils/jms/JMSQueueSession;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public newQueueSender(Ljava/lang/String;)Lcom/ecareme/utils/jms/JMSQueueSender;
    .locals 6
    .parameter "queuename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Lcom/ecareme/utils/jms/JMSQueueSender;

    iget-object v1, p0, Lcom/ecareme/utils/jms/JMSComponentFactory;->qcf:Ljavax/jms/QueueConnectionFactory;

    iget-boolean v3, p0, Lcom/ecareme/utils/jms/JMSComponentFactory;->transacted:Z

    iget v4, p0, Lcom/ecareme/utils/jms/JMSComponentFactory;->acknowledgeMode:I

    iget v5, p0, Lcom/ecareme/utils/jms/JMSComponentFactory;->deliveryMode:I

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/ecareme/utils/jms/JMSQueueSender;-><init>(Ljavax/jms/QueueConnectionFactory;Ljava/lang/String;ZII)V

    return-object v0
.end method

.method public newQueueSender(Ljava/lang/String;ZII)Lcom/ecareme/utils/jms/JMSQueueSender;
    .locals 6
    .parameter "queuename"
    .parameter "transacted"
    .parameter "acknowledgeMode"
    .parameter "deliveryMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 151
    new-instance v0, Lcom/ecareme/utils/jms/JMSQueueSender;

    iget-object v1, p0, Lcom/ecareme/utils/jms/JMSComponentFactory;->qcf:Ljavax/jms/QueueConnectionFactory;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ecareme/utils/jms/JMSQueueSender;-><init>(Ljavax/jms/QueueConnectionFactory;Ljava/lang/String;ZII)V

    return-object v0
.end method

.method public newQueueSession()Lcom/ecareme/utils/jms/JMSQueueSession;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 136
    new-instance v0, Lcom/ecareme/utils/jms/JMSQueueSession;

    iget-object v1, p0, Lcom/ecareme/utils/jms/JMSComponentFactory;->qcf:Ljavax/jms/QueueConnectionFactory;

    iget-boolean v2, p0, Lcom/ecareme/utils/jms/JMSComponentFactory;->transacted:Z

    iget v3, p0, Lcom/ecareme/utils/jms/JMSComponentFactory;->acknowledgeMode:I

    invoke-direct {v0, v1, v2, v3}, Lcom/ecareme/utils/jms/JMSQueueSession;-><init>(Ljavax/jms/QueueConnectionFactory;ZI)V

    return-object v0
.end method

.method public newQueueSession(ZI)Lcom/ecareme/utils/jms/JMSQueueSession;
    .locals 2
    .parameter "transacted"
    .parameter "acknowledgeMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 141
    new-instance v0, Lcom/ecareme/utils/jms/JMSQueueSession;

    iget-object v1, p0, Lcom/ecareme/utils/jms/JMSComponentFactory;->qcf:Ljavax/jms/QueueConnectionFactory;

    invoke-direct {v0, v1, p1, p2}, Lcom/ecareme/utils/jms/JMSQueueSession;-><init>(Ljavax/jms/QueueConnectionFactory;ZI)V

    return-object v0
.end method

.method public newTopicConnection()Ljavax/jms/TopicConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/jms/JMSException;
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/ecareme/utils/jms/JMSComponentFactory;->tcf:Ljavax/jms/TopicConnectionFactory;

    invoke-interface {v0}, Ljavax/jms/TopicConnectionFactory;->createTopicConnection()Ljavax/jms/TopicConnection;

    move-result-object v0

    return-object v0
.end method

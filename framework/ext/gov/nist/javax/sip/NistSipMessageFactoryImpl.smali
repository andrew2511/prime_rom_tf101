.class Lgov/nist/javax/sip/NistSipMessageFactoryImpl;
.super Ljava/lang/Object;
.source "NistSipMessageFactoryImpl.java"

# interfaces
.implements Lgov/nist/javax/sip/stack/StackMessageFactory;


# instance fields
.field private sipStack:Lgov/nist/javax/sip/SipStackImpl;


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/SipStackImpl;)V
    .registers 2
    .parameter "sipStackImpl"

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lgov/nist/javax/sip/NistSipMessageFactoryImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 145
    return-void
.end method


# virtual methods
.method public newSIPServerRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerRequestInterface;
    .registers 9
    .parameter "sipRequest"
    .parameter "messageChannel"

    .prologue
    .line 67
    if-eqz p2, :cond_4

    if-nez p1, :cond_c

    .line 68
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Null Arg!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 71
    :cond_c
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/MessageChannel;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/SipStackImpl;

    .line 72
    .local v2, theStack:Lgov/nist/javax/sip/SipStackImpl;
    new-instance v1, Lgov/nist/javax/sip/DialogFilter;

    invoke-direct {v1, v2}, Lgov/nist/javax/sip/DialogFilter;-><init>(Lgov/nist/javax/sip/SipStackImpl;)V

    .line 74
    .local v1, retval:Lgov/nist/javax/sip/DialogFilter;
    instance-of v3, p2, Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v3, :cond_21

    .line 77
    move-object v0, p2

    check-cast v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object v3, v0

    iput-object v3, v1, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 79
    :cond_21
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/MessageChannel;->getMessageProcessor()Lgov/nist/javax/sip/stack/MessageProcessor;

    move-result-object v3

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/MessageProcessor;->getListeningPoint()Lgov/nist/javax/sip/ListeningPointImpl;

    move-result-object v3

    iput-object v3, v1, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    .line 81
    iget-object v3, v1, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    if-nez v3, :cond_31

    .line 82
    const/4 v3, 0x0

    .line 88
    :goto_30
    return-object v3

    .line 83
    :cond_31
    iget-object v3, p0, Lgov/nist/javax/sip/NistSipMessageFactoryImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 84
    iget-object v3, p0, Lgov/nist/javax/sip/NistSipMessageFactoryImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Returning request interface for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " messageChannel = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_6d
    move-object v3, v1

    .line 88
    goto :goto_30
.end method

.method public newSIPServerResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerResponseInterface;
    .registers 10
    .parameter "sipResponse"
    .parameter "messageChannel"

    .prologue
    const/4 v6, 0x0

    .line 102
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/MessageChannel;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v1

    .line 105
    .local v1, theStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->findTransaction(Lgov/nist/javax/sip/message/SIPMessage;Z)Lgov/nist/javax/sip/stack/SIPTransaction;

    move-result-object v2

    .line 107
    .local v2, tr:Lgov/nist/javax/sip/stack/SIPTransaction;
    iget-object v3, p0, Lgov/nist/javax/sip/NistSipMessageFactoryImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 108
    iget-object v3, p0, Lgov/nist/javax/sip/NistSipMessageFactoryImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found Transaction "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 111
    :cond_38
    if-eqz v2, :cond_90

    .line 116
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v3

    if-nez v3, :cond_55

    .line 117
    iget-object v3, p0, Lgov/nist/javax/sip/NistSipMessageFactoryImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 118
    iget-object v3, p0, Lgov/nist/javax/sip/NistSipMessageFactoryImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, "Dropping response - null transaction state"

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_53
    move-object v3, v6

    .line 139
    :goto_54
    return-object v3

    .line 122
    :cond_55
    sget-object v3, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v4

    if-ne v3, v4, :cond_90

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v3

    div-int/lit8 v3, v3, 0x64

    const/4 v4, 0x1

    if-ne v3, v4, :cond_90

    .line 124
    iget-object v3, p0, Lgov/nist/javax/sip/NistSipMessageFactoryImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 125
    iget-object v3, p0, Lgov/nist/javax/sip/NistSipMessageFactoryImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dropping response - late arriving "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_8e
    move-object v3, v6

    .line 128
    goto :goto_54

    .line 132
    :cond_90
    new-instance v0, Lgov/nist/javax/sip/DialogFilter;

    iget-object v3, p0, Lgov/nist/javax/sip/NistSipMessageFactoryImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-direct {v0, v3}, Lgov/nist/javax/sip/DialogFilter;-><init>(Lgov/nist/javax/sip/SipStackImpl;)V

    .line 135
    .local v0, retval:Lgov/nist/javax/sip/DialogFilter;
    iput-object v2, v0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 137
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/MessageChannel;->getMessageProcessor()Lgov/nist/javax/sip/stack/MessageProcessor;

    move-result-object v3

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/MessageProcessor;->getListeningPoint()Lgov/nist/javax/sip/ListeningPointImpl;

    move-result-object v3

    iput-object v3, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    move-object v3, v0

    .line 139
    goto :goto_54
.end method

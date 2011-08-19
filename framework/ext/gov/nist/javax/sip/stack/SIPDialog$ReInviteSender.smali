.class public Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;
.super Ljava/lang/Object;
.source "SIPDialog.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov/nist/javax/sip/stack/SIPDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReInviteSender"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xe2571ebeadfbf2bL


# instance fields
.field ctx:Ljavax/sip/ClientTransaction;

.field final synthetic this$0:Lgov/nist/javax/sip/stack/SIPDialog;


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/stack/SIPDialog;Ljavax/sip/ClientTransaction;)V
    .registers 3
    .parameter
    .parameter "ctx"

    .prologue
    .line 300
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput-object p2, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->ctx:Ljavax/sip/ClientTransaction;

    .line 302
    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 306
    const-wide/16 v6, 0x0

    .line 307
    .local v6, timeToWait:J
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 309
    .local v4, startTime:J
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v8}, Lgov/nist/javax/sip/stack/SIPDialog;->takeAckSem()Z

    move-result v8

    if-nez v8, :cond_51

    .line 313
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #getter for: Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;
    invoke-static {v8}, Lgov/nist/javax/sip/stack/SIPDialog;->access$000(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v8

    invoke-virtual {v8}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_2a

    .line 314
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #getter for: Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;
    invoke-static {v8}, Lgov/nist/javax/sip/stack/SIPDialog;->access$000(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v8

    invoke-virtual {v8}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    const-string v9, "Could not send re-INVITE time out ClientTransaction"

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 316
    :cond_2a
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->ctx:Ljavax/sip/ClientTransaction;

    check-cast v8, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-virtual {v8}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->fireTimeoutTimer()V

    .line 320
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #getter for: Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;
    invoke-static {v8}, Lgov/nist/javax/sip/stack/SIPDialog;->access$100(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v8

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    move-result-object v8

    if-eqz v8, :cond_a1

    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #getter for: Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;
    invoke-static {v8}, Lgov/nist/javax/sip/stack/SIPDialog;->access$100(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v8

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    move-result-object v8

    instance-of v8, v8, Lgov/nist/javax/sip/SipListenerExt;

    if-eqz v8, :cond_a1

    .line 321
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    const/4 v9, 0x3

    #calls: Lgov/nist/javax/sip/stack/SIPDialog;->raiseErrorEvent(I)V
    invoke-static {v8, v9}, Lgov/nist/javax/sip/stack/SIPDialog;->access$200(Lgov/nist/javax/sip/stack/SIPDialog;I)V

    .line 336
    :cond_51
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v8}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v8

    sget-object v9, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    if-eq v8, v9, :cond_61

    .line 338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_5e
    .catchall {:try_start_3 .. :try_end_5e} :catchall_ea
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_5e} :catch_d8

    move-result-wide v8

    sub-long v6, v8, v4

    .line 348
    :cond_61
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_71

    .line 349
    :try_start_67
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #getter for: Lgov/nist/javax/sip/stack/SIPDialog;->reInviteWaitTime:I
    invoke-static {v8}, Lgov/nist/javax/sip/stack/SIPDialog;->access$300(Lgov/nist/javax/sip/stack/SIPDialog;)I

    move-result v8

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_71
    .catchall {:try_start_67 .. :try_end_71} :catchall_ea
    .catch Ljava/lang/InterruptedException; {:try_start_67 .. :try_end_71} :catch_ee
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_71} :catch_d8

    .line 356
    :cond_71
    :try_start_71
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v8}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v8

    sget-object v9, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    if-eq v8, v9, :cond_83

    .line 357
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->ctx:Ljavax/sip/ClientTransaction;

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lgov/nist/javax/sip/stack/SIPDialog;->sendRequest(Ljavax/sip/ClientTransaction;Z)V

    .line 359
    :cond_83
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #getter for: Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;
    invoke-static {v8}, Lgov/nist/javax/sip/stack/SIPDialog;->access$000(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v8

    invoke-virtual {v8}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_9e

    .line 360
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #getter for: Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;
    invoke-static {v8}, Lgov/nist/javax/sip/stack/SIPDialog;->access$000(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v8

    invoke-virtual {v8}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    const-string v9, "re-INVITE successfully sent"

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_9e
    .catchall {:try_start_71 .. :try_end_9e} :catchall_ea
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_9e} :catch_d8

    .line 364
    .end local v4           #startTime:J
    :cond_9e
    :goto_9e
    iput-object v11, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->ctx:Ljavax/sip/ClientTransaction;

    .line 366
    return-void

    .line 323
    .restart local v4       #startTime:J
    :cond_a1
    :try_start_a1
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    const-string v9, "BYE"

    invoke-virtual {v8, v9}, Lgov/nist/javax/sip/stack/SIPDialog;->createRequest(Ljava/lang/String;)Ljavax/sip/message/Request;

    move-result-object v1

    .line 324
    .local v1, byeRequest:Ljavax/sip/message/Request;
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    move-result-object v8

    if-eqz v8, :cond_b6

    .line 325
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    move-result-object v8

    invoke-interface {v1, v8}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 327
    :cond_b6
    new-instance v3, Lgov/nist/javax/sip/header/Reason;

    invoke-direct {v3}, Lgov/nist/javax/sip/header/Reason;-><init>()V

    .line 328
    .local v3, reasonHeader:Ljavax/sip/header/ReasonHeader;
    const/16 v8, 0x400

    invoke-interface {v3, v8}, Ljavax/sip/header/ReasonHeader;->setCause(I)V

    .line 329
    const-string v8, "Timed out waiting to re-INVITE"

    invoke-interface {v3, v8}, Ljavax/sip/header/ReasonHeader;->setText(Ljava/lang/String;)V

    .line 330
    invoke-interface {v1, v3}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    .line 331
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v8}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v8

    invoke-virtual {v8, v1}, Lgov/nist/javax/sip/SipProviderImpl;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    move-result-object v0

    .line 332
    .local v0, byeCtx:Ljavax/sip/ClientTransaction;
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v8, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->sendRequest(Ljavax/sip/ClientTransaction;)V
    :try_end_d7
    .catchall {:try_start_a1 .. :try_end_d7} :catchall_ea
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_d7} :catch_d8

    goto :goto_9e

    .line 361
    .end local v0           #byeCtx:Ljavax/sip/ClientTransaction;
    .end local v1           #byeRequest:Ljavax/sip/message/Request;
    .end local v3           #reasonHeader:Ljavax/sip/header/ReasonHeader;
    .end local v4           #startTime:J
    :catch_d8
    move-exception v8

    move-object v2, v8

    .line 362
    .local v2, ex:Ljava/lang/Exception;
    :try_start_da
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #getter for: Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;
    invoke-static {v8}, Lgov/nist/javax/sip/stack/SIPDialog;->access$000(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v8

    invoke-virtual {v8}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    const-string v9, "Error sending re-INVITE"

    invoke-interface {v8, v9, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_e9
    .catchall {:try_start_da .. :try_end_e9} :catchall_ea

    goto :goto_9e

    .line 364
    .end local v2           #ex:Ljava/lang/Exception;
    :catchall_ea
    move-exception v8

    iput-object v11, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->ctx:Ljavax/sip/ClientTransaction;

    throw v8

    .line 351
    .restart local v4       #startTime:J
    :catch_ee
    move-exception v8

    move-object v2, v8

    .line 352
    .local v2, ex:Ljava/lang/InterruptedException;
    :try_start_f0
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #getter for: Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;
    invoke-static {v8}, Lgov/nist/javax/sip/stack/SIPDialog;->access$000(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v8

    invoke-virtual {v8}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_9e

    .line 353
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #getter for: Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;
    invoke-static {v8}, Lgov/nist/javax/sip/stack/SIPDialog;->access$000(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v8

    invoke-virtual {v8}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    const-string v9, "Interrupted sleep"

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_10b
    .catchall {:try_start_f0 .. :try_end_10b} :catchall_ea
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_10b} :catch_d8

    goto :goto_9e
.end method

.method public terminate()V
    .registers 4

    .prologue
    .line 293
    :try_start_0
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->ctx:Ljavax/sip/ClientTransaction;

    invoke-interface {v1}, Ljavax/sip/ClientTransaction;->terminate()V

    .line 294
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_c
    .catch Ljavax/sip/ObjectInUseException; {:try_start_0 .. :try_end_c} :catch_d

    .line 298
    :goto_c
    return-void

    .line 295
    :catch_d
    move-exception v1

    move-object v0, v1

    .line 296
    .local v0, e:Ljavax/sip/ObjectInUseException;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #getter for: Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;
    invoke-static {v1}, Lgov/nist/javax/sip/stack/SIPDialog;->access$000(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v2, "unexpected error"

    invoke-interface {v1, v2, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_c
.end method

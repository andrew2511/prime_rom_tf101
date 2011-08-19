.class Lcom/google/android/gsf/gtalkservice/VCardMgr$VCardLoader;
.super Ljava/lang/Object;
.source "VCardMgr.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/IQPacketHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/VCardMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VCardLoader"
.end annotation


# instance fields
.field private mAvatarHash:Ljava/lang/String;

.field private mContact:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/VCardMgr;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/VCardMgr;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "contact"
    .parameter "avatarHash"

    .prologue
    .line 425
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/VCardMgr$VCardLoader;->this$0:Lcom/google/android/gsf/gtalkservice/VCardMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/VCardMgr$VCardLoader;->mContact:Ljava/lang/String;

    .line 427
    iput-object p3, p0, Lcom/google/android/gsf/gtalkservice/VCardMgr$VCardLoader;->mAvatarHash:Ljava/lang/String;

    .line 428
    return-void
.end method


# virtual methods
.method public handlePacket(Lorg/jivesoftware/smack/packet/IQ;)V
    .locals 9
    .parameter "packet"

    .prologue
    .line 455
    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/VCardMgr$VCardLoader;->this$0:Lcom/google/android/gsf/gtalkservice/VCardMgr;

    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/VCardMgr$VCardLoader;->mContact:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/android/gsf/gtalkservice/VCardMgr;->access$400(Lcom/google/android/gsf/gtalkservice/VCardMgr;Ljava/lang/String;)V

    .line 457
    instance-of v6, p1, Lorg/jivesoftware/smackx/packet/VCard;

    if-nez v6, :cond_1

    .line 458
    sget-boolean v6, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v6, :cond_0

    .line 459
    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/VCardMgr$VCardLoader;->this$0:Lcom/google/android/gsf/gtalkservice/VCardMgr;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VCardLoader.handlePacket: got packet of class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ignore"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/gsf/gtalkservice/VCardMgr;->access$100(Lcom/google/android/gsf/gtalkservice/VCardMgr;Ljava/lang/String;)V

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smackx/packet/VCard;

    move-object v5, v0

    .line 469
    .local v5, vcard:Lorg/jivesoftware/smackx/packet/VCard;
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/packet/VCard;->hasModified()Z

    move-result v2

    .line 470
    .local v2, hasModified:Z
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/packet/VCard;->isModified()Z

    move-result v4

    .line 472
    .local v4, isModified:Z
    if-eqz v2, :cond_2

    if-eqz v4, :cond_0

    .line 475
    :cond_2
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/packet/VCard;->getAvatar()[B

    move-result-object v1

    .line 476
    .local v1, data:[B
    if-nez v1, :cond_3

    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    .line 477
    :cond_3
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/packet/VCard;->getAvatarHash()Ljava/lang/String;

    move-result-object v3

    .line 478
    .local v3, hash:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/VCardMgr$VCardLoader;->this$0:Lcom/google/android/gsf/gtalkservice/VCardMgr;

    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/VCardMgr$VCardLoader;->mContact:Ljava/lang/String;

    invoke-virtual {v6, v7, v1, v3}, Lcom/google/android/gsf/gtalkservice/VCardMgr;->storeAvatarData(Ljava/lang/String;[BLjava/lang/String;)V

    goto :goto_0
.end method

.method sendLoadRequest()V
    .locals 5

    .prologue
    .line 434
    sget-boolean v2, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v2, :cond_0

    .line 435
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/VCardMgr$VCardLoader;->this$0:Lcom/google/android/gsf/gtalkservice/VCardMgr;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load vcard for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/VCardMgr$VCardLoader;->mContact:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/VCardMgr;->access$100(Lcom/google/android/gsf/gtalkservice/VCardMgr;Ljava/lang/String;)V

    .line 437
    :cond_0
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/VCardMgr$VCardLoader;->this$0:Lcom/google/android/gsf/gtalkservice/VCardMgr;

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/VCardMgr$VCardLoader;->mContact:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/VCardMgr;->access$200(Lcom/google/android/gsf/gtalkservice/VCardMgr;Ljava/lang/String;)V

    .line 439
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/VCardMgr$VCardLoader;->this$0:Lcom/google/android/gsf/gtalkservice/VCardMgr;

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/VCardMgr;->access$300(Lcom/google/android/gsf/gtalkservice/VCardMgr;)Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getIQPacketManager()Lcom/google/android/gsf/gtalkservice/IQPacketManager;

    move-result-object v0

    .line 440
    .local v0, iqMgr:Lcom/google/android/gsf/gtalkservice/IQPacketManager;
    new-instance v1, Lorg/jivesoftware/smackx/packet/VCard;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/packet/VCard;-><init>()V

    .line 441
    .local v1, vcard:Lorg/jivesoftware/smackx/packet/VCard;
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/VCardMgr$VCardLoader;->mContact:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/packet/VCard;->setTo(Ljava/lang/String;)V

    .line 442
    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/packet/VCard;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 443
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/VCardMgr$VCardLoader;->mAvatarHash:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/packet/VCard;->setLocalAvatarHash(Ljava/lang/String;)V

    .line 447
    invoke-virtual {v0, v1, p0}, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->sendPacket(Lorg/jivesoftware/smack/packet/IQ;Lcom/google/android/gsf/gtalkservice/IQPacketHandler;)Z

    .line 448
    return-void
.end method

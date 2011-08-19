.class Lcom/google/android/gsf/gtalkservice/VCardMgr$VCardUploader;
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
    name = "VCardUploader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/VCardMgr;


# direct methods
.method private constructor <init>(Lcom/google/android/gsf/gtalkservice/VCardMgr;)V
    .locals 0
    .parameter

    .prologue
    .line 484
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/VCardMgr$VCardUploader;->this$0:Lcom/google/android/gsf/gtalkservice/VCardMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gsf/gtalkservice/VCardMgr;Lcom/google/android/gsf/gtalkservice/VCardMgr$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 484
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/VCardMgr$VCardUploader;-><init>(Lcom/google/android/gsf/gtalkservice/VCardMgr;)V

    return-void
.end method


# virtual methods
.method public handlePacket(Lorg/jivesoftware/smack/packet/IQ;)V
    .locals 3
    .parameter "packet"

    .prologue
    .line 500
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v0

    .line 502
    .local v0, type:Lorg/jivesoftware/smack/packet/IQ$Type;
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v0, v1, :cond_1

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v0, v1, :cond_0

    .line 505
    const-string v1, "GTalkService"

    const-string v2, "VCardUploader: upload avatar failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method uploadToServer([B)V
    .locals 4
    .parameter "avatarData"

    .prologue
    .line 486
    sget-boolean v2, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/VCardMgr$VCardUploader;->this$0:Lcom/google/android/gsf/gtalkservice/VCardMgr;

    const-string v3, "upload vcard for user"

    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/VCardMgr;->access$100(Lcom/google/android/gsf/gtalkservice/VCardMgr;Ljava/lang/String;)V

    .line 488
    :cond_0
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/VCardMgr$VCardUploader;->this$0:Lcom/google/android/gsf/gtalkservice/VCardMgr;

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/VCardMgr;->access$300(Lcom/google/android/gsf/gtalkservice/VCardMgr;)Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getIQPacketManager()Lcom/google/android/gsf/gtalkservice/IQPacketManager;

    move-result-object v0

    .line 489
    .local v0, iqMgr:Lcom/google/android/gsf/gtalkservice/IQPacketManager;
    new-instance v1, Lorg/jivesoftware/smackx/packet/VCard;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/packet/VCard;-><init>()V

    .line 490
    .local v1, vcard:Lorg/jivesoftware/smackx/packet/VCard;
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/VCardMgr$VCardUploader;->this$0:Lcom/google/android/gsf/gtalkservice/VCardMgr;

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/VCardMgr;->access$500(Lcom/google/android/gsf/gtalkservice/VCardMgr;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/packet/VCard;->setFrom(Ljava/lang/String;)V

    .line 491
    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/packet/VCard;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 492
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smackx/packet/VCard;->setAvatarForUpload([B)V

    .line 496
    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->sendPacket(Lorg/jivesoftware/smack/packet/IQ;Lcom/google/android/gsf/gtalkservice/IQPacketHandler;Z)Z

    .line 497
    return-void
.end method

.class Lcom/google/android/gsf/gtalkservice/GTalkConnection$2;
.super Ljava/lang/Object;
.source "GTalkConnection.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/IQPacketHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/GTalkConnection;->requestBatchQuery(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

.field final synthetic val$username:Ljava/lang/String;

.field final synthetic val$vcardMgr:Lcom/google/android/gsf/gtalkservice/VCardMgr;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/GTalkConnection;Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/VCardMgr;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1351
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$2;->this$0:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$2;->val$username:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$2;->val$vcardMgr:Lcom/google/android/gsf/gtalkservice/VCardMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handlePacket(Lorg/jivesoftware/smack/packet/IQ;)V
    .locals 9
    .parameter "packet"

    .prologue
    .line 1353
    instance-of v6, p1, Lorg/jivesoftware/smackx/packet/VCard;

    if-nez v6, :cond_1

    .line 1354
    sget-boolean v6, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v6, :cond_0

    .line 1355
    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$2;->this$0:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "requestBatchQuery handlePacket: got packet of class "

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

    invoke-static {v6, v7}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->access$500(Lcom/google/android/gsf/gtalkservice/GTalkConnection;Ljava/lang/String;)V

    .line 1379
    :cond_0
    :goto_0
    return-void

    .line 1364
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smackx/packet/VCard;

    move-object v5, v0

    .line 1365
    .local v5, vcard:Lorg/jivesoftware/smackx/packet/VCard;
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/packet/VCard;->hasModified()Z

    move-result v2

    .line 1366
    .local v2, hasModified:Z
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/packet/VCard;->isModified()Z

    move-result v4

    .line 1368
    .local v4, isModified:Z
    sget-boolean v6, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$2;->this$0:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "requestBatchQuery.handlePacket: received "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->access$500(Lcom/google/android/gsf/gtalkservice/GTalkConnection;Ljava/lang/String;)V

    .line 1370
    :cond_2
    if-eqz v2, :cond_3

    if-nez v4, :cond_3

    .line 1371
    sget-boolean v6, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$2;->this$0:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "avatar for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$2;->val$username:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isn\'t modified"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->access$500(Lcom/google/android/gsf/gtalkservice/GTalkConnection;Ljava/lang/String;)V

    goto :goto_0

    .line 1373
    :cond_3
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/packet/VCard;->getAvatar()[B

    move-result-object v1

    .line 1374
    .local v1, data:[B
    if-nez v1, :cond_4

    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    .line 1375
    :cond_4
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/packet/VCard;->getAvatarHash()Ljava/lang/String;

    move-result-object v3

    .line 1376
    .local v3, hash:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$2;->val$vcardMgr:Lcom/google/android/gsf/gtalkservice/VCardMgr;

    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$2;->val$username:Ljava/lang/String;

    invoke-virtual {v6, v7, v1, v3}, Lcom/google/android/gsf/gtalkservice/VCardMgr;->storeAvatarData(Ljava/lang/String;[BLjava/lang/String;)V

    goto :goto_0
.end method

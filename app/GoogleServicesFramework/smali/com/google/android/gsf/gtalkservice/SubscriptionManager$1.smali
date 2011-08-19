.class Lcom/google/android/gsf/gtalkservice/SubscriptionManager$1;
.super Ljava/lang/Object;
.source "SubscriptionManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/SubscriptionManager;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/SubscriptionManager;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/SubscriptionManager$1;->this$0:Lcom/google/android/gsf/gtalkservice/SubscriptionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 8
    .parameter "packet"

    .prologue
    .line 76
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/SubscriptionManager$1;->this$0:Lcom/google/android/gsf/gtalkservice/SubscriptionManager;

    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->access$000(Lcom/google/android/gsf/gtalkservice/SubscriptionManager;)Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getDefaultImSessionImpl()Lcom/google/android/gsf/gtalkservice/ImSession;

    move-result-object v4

    .line 78
    .local v4, session:Lcom/google/android/gsf/gtalkservice/ImSession;
    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/ImSession;->isLoggedIn()Z

    move-result v5

    if-nez v5, :cond_1

    .line 79
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/SubscriptionManager$1;->this$0:Lcom/google/android/gsf/gtalkservice/SubscriptionManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processPacket: not logged in! drop "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->access$100(Lcom/google/android/gsf/gtalkservice/SubscriptionManager;Ljava/lang/String;)V

    .line 91
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 83
    .restart local p1
    :cond_1
    instance-of v5, p1, Lorg/jivesoftware/smack/packet/Presence;

    if-eqz v5, :cond_2

    .line 84
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/SubscriptionManager$1;->this$0:Lcom/google/android/gsf/gtalkservice/SubscriptionManager;

    check-cast p1, Lorg/jivesoftware/smack/packet/Presence;

    .end local p1
    invoke-static {v5, p1}, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->access$200(Lcom/google/android/gsf/gtalkservice/SubscriptionManager;Lorg/jivesoftware/smack/packet/Presence;)V

    goto :goto_0

    .line 85
    .restart local p1
    :cond_2
    instance-of v5, p1, Lorg/jivesoftware/smack/packet/BatchPresence;

    if-eqz v5, :cond_0

    .line 86
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smack/packet/BatchPresence;

    move-object v1, v0

    .line 87
    .local v1, batchPresence:Lorg/jivesoftware/smack/packet/BatchPresence;
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/BatchPresence;->getPresenceStanzaList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/packet/Presence;

    .line 88
    .local v3, presence:Lorg/jivesoftware/smack/packet/Presence;
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/SubscriptionManager$1;->this$0:Lcom/google/android/gsf/gtalkservice/SubscriptionManager;

    invoke-static {v5, v3}, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->access$200(Lcom/google/android/gsf/gtalkservice/SubscriptionManager;Lorg/jivesoftware/smack/packet/Presence;)V

    goto :goto_1
.end method

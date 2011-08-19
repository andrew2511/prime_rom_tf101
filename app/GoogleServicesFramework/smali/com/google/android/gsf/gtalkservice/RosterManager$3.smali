.class Lcom/google/android/gsf/gtalkservice/RosterManager$3;
.super Ljava/lang/Object;
.source "RosterManager.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/IQPacketHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/RosterManager;->editContactInfo(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/RosterPacket$Item$G_STATUS;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/RosterManager;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/RosterManager;)V
    .locals 0
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/RosterManager$3;->this$0:Lcom/google/android/gsf/gtalkservice/RosterManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handlePacket(Lorg/jivesoftware/smack/packet/IQ;)V
    .locals 8
    .parameter "packet"

    .prologue
    .line 288
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v5

    sget-object v6, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v5, v6, :cond_0

    .line 289
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smack/packet/RosterPacket;

    move-object v4, v0

    .line 290
    .local v4, rosterPacket:Lorg/jivesoftware/smack/packet/RosterPacket;
    invoke-virtual {v4}, Lorg/jivesoftware/smack/packet/RosterPacket;->getRosterItems()Ljava/util/Iterator;

    move-result-object v3

    .line 291
    .local v3, itor:Ljava/util/Iterator;
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 292
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    .line 293
    .local v2, item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getUser()Ljava/lang/String;

    move-result-object v1

    .line 296
    .local v1, contact:Ljava/lang/String;
    const-string v5, "GTalkService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set roster for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .end local v1           #contact:Ljava/lang/String;
    .end local v2           #item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    .end local v3           #itor:Ljava/util/Iterator;
    .end local v4           #rosterPacket:Lorg/jivesoftware/smack/packet/RosterPacket;
    :cond_0
    return-void
.end method

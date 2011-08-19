.class Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$3;
.super Ljava/lang/Object;
.source "VideoChatSessionManager.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/IQPacketHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->sendSessionStanza(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;

.field final synthetic val$iqStanza:Lorg/jivesoftware/smack/packet/IQ;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;Lorg/jivesoftware/smack/packet/IQ;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$3;->this$0:Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;

    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$3;->val$iqStanza:Lorg/jivesoftware/smack/packet/IQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handlePacket(Lorg/jivesoftware/smack/packet/IQ;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$3;->this$0:Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$3;->val$iqStanza:Lorg/jivesoftware/smack/packet/IQ;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->processResponse(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/IQ;)V

    .line 263
    return-void
.end method

.class Lcom/google/android/talk/videochat/VideoChatSession$1;
.super Lcom/google/android/gtalkservice/ISessionStanzaListener$Stub;
.source "VideoChatSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/VideoChatSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/VideoChatSession;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/VideoChatSession;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatSession$1;->this$0:Lcom/google/android/talk/videochat/VideoChatSession;

    invoke-direct {p0}, Lcom/google/android/gtalkservice/ISessionStanzaListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountId()J
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatSession$1;->this$0:Lcom/google/android/talk/videochat/VideoChatSession;

    iget-wide v0, v0, Lcom/google/android/talk/videochat/VideoChatSession;->mAccountId:J

    return-wide v0
.end method

.method public onStanzaReceived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "remoteJid"
    .parameter "sessionXml"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatSession$1;->this$0:Lcom/google/android/talk/videochat/VideoChatSession;

    new-instance v1, Lcom/google/android/talk/util/SessionStanzaParser;

    invoke-direct {v1, p2}, Lcom/google/android/talk/util/SessionStanzaParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/talk/videochat/VideoChatSession;->handleIncomingMessage(Ljava/lang/String;Lcom/google/android/talk/util/SessionStanzaParser;)V

    .line 38
    return-void
.end method

.method public onStanzaResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "remoteJid"
    .parameter "original"
    .parameter "response"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatSession$1;->this$0:Lcom/google/android/talk/videochat/VideoChatSession;

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoChatSession;->mCallManager:Lcom/google/android/talk/videochat/CallManager;

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatSession$1;->this$0:Lcom/google/android/talk/videochat/VideoChatSession;

    iget-wide v2, v1, Lcom/google/android/talk/videochat/VideoChatSession;->mAccountId:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/talk/videochat/CallManager;->handleMessageResponse(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

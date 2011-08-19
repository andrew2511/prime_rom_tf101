.class Lcom/google/android/talk/videochat/VideoChatSession$2;
.super Lcom/google/android/gtalkservice/IJingleInfoStanzaListener$Stub;
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
    .line 55
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatSession$2;->this$0:Lcom/google/android/talk/videochat/VideoChatSession;

    invoke-direct {p0}, Lcom/google/android/gtalkservice/IJingleInfoStanzaListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountId()J
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatSession$2;->this$0:Lcom/google/android/talk/videochat/VideoChatSession;

    iget-wide v0, v0, Lcom/google/android/talk/videochat/VideoChatSession;->mAccountId:J

    return-wide v0
.end method

.method public onStanzaReceived(Ljava/lang/String;)V
    .locals 1
    .parameter "stanza"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatSession$2;->this$0:Lcom/google/android/talk/videochat/VideoChatSession;

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoChatSession;->mCallManager:Lcom/google/android/talk/videochat/CallManager;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/videochat/CallManager;->handleJingleInfoStanza(Ljava/lang/String;)V

    .line 59
    return-void
.end method

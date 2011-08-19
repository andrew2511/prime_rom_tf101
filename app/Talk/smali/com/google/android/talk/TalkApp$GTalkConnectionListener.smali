.class Lcom/google/android/talk/TalkApp$GTalkConnectionListener;
.super Lcom/google/android/gtalkservice/IGTalkConnectionListener$Stub;
.source "TalkApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/TalkApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GTalkConnectionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/TalkApp;


# direct methods
.method private constructor <init>(Lcom/google/android/talk/TalkApp;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/google/android/talk/TalkApp$GTalkConnectionListener;->this$0:Lcom/google/android/talk/TalkApp;

    invoke-direct {p0}, Lcom/google/android/gtalkservice/IGTalkConnectionListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/talk/TalkApp;Lcom/google/android/talk/TalkApp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/google/android/talk/TalkApp$GTalkConnectionListener;-><init>(Lcom/google/android/talk/TalkApp;)V

    return-void
.end method


# virtual methods
.method public onConnectionCreated(Lcom/google/android/gtalkservice/IGTalkConnection;)V
    .locals 1
    .parameter "conn"

    .prologue
    .line 183
    const-string v0, "GTalkConnectionListener: onConnectionCreated"

    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->access$000(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/google/android/talk/TalkApp$GTalkConnectionListener;->this$0:Lcom/google/android/talk/TalkApp;

    invoke-static {v0, p1}, Lcom/google/android/talk/TalkApp;->access$102(Lcom/google/android/talk/TalkApp;Lcom/google/android/gtalkservice/IGTalkConnection;)Lcom/google/android/gtalkservice/IGTalkConnection;

    .line 185
    iget-object v0, p0, Lcom/google/android/talk/TalkApp$GTalkConnectionListener;->this$0:Lcom/google/android/talk/TalkApp;

    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->access$500(Lcom/google/android/talk/TalkApp;)V

    .line 187
    iget-object v0, p0, Lcom/google/android/talk/TalkApp$GTalkConnectionListener;->this$0:Lcom/google/android/talk/TalkApp;

    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->access$600(Lcom/google/android/talk/TalkApp;)V

    .line 188
    return-void
.end method

.method public onConnectionCreationFailed(Ljava/lang/String;)V
    .locals 2
    .parameter "username"

    .prologue
    .line 191
    const-string v0, "GTalkConnectionListener: onConnectionCreationFailed"

    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->access$000(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/google/android/talk/TalkApp$GTalkConnectionListener;->this$0:Lcom/google/android/talk/TalkApp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->access$102(Lcom/google/android/talk/TalkApp;Lcom/google/android/gtalkservice/IGTalkConnection;)Lcom/google/android/gtalkservice/IGTalkConnection;

    .line 193
    iget-object v0, p0, Lcom/google/android/talk/TalkApp$GTalkConnectionListener;->this$0:Lcom/google/android/talk/TalkApp;

    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->access$500(Lcom/google/android/talk/TalkApp;)V

    .line 194
    return-void
.end method

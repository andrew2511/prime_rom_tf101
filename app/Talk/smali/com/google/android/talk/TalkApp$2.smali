.class Lcom/google/android/talk/TalkApp$2;
.super Ljava/lang/Object;
.source "TalkApp.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/TalkApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/TalkApp;


# direct methods
.method constructor <init>(Lcom/google/android/talk/TalkApp;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/google/android/talk/TalkApp$2;->this$0:Lcom/google/android/talk/TalkApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/talk/TalkApp$2;->this$0:Lcom/google/android/talk/TalkApp;

    invoke-static {p2}, Lcom/google/android/gtalkservice/IGTalkService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->access$302(Lcom/google/android/talk/TalkApp;Lcom/google/android/gtalkservice/IGTalkService;)Lcom/google/android/gtalkservice/IGTalkService;

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "service connected: mService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/TalkApp$2;->this$0:Lcom/google/android/talk/TalkApp;

    invoke-static {v1}, Lcom/google/android/talk/TalkApp;->access$300(Lcom/google/android/talk/TalkApp;)Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->access$000(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/google/android/talk/TalkApp$2;->this$0:Lcom/google/android/talk/TalkApp;

    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->access$400(Lcom/google/android/talk/TalkApp;)V

    .line 170
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 173
    const-string v0, "service disconnected..."

    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->access$000(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/google/android/talk/TalkApp$2;->this$0:Lcom/google/android/talk/TalkApp;

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->access$302(Lcom/google/android/talk/TalkApp;Lcom/google/android/gtalkservice/IGTalkService;)Lcom/google/android/gtalkservice/IGTalkService;

    .line 175
    iget-object v0, p0, Lcom/google/android/talk/TalkApp$2;->this$0:Lcom/google/android/talk/TalkApp;

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->access$102(Lcom/google/android/talk/TalkApp;Lcom/google/android/gtalkservice/IGTalkConnection;)Lcom/google/android/gtalkservice/IGTalkConnection;

    .line 176
    iget-object v0, p0, Lcom/google/android/talk/TalkApp$2;->this$0:Lcom/google/android/talk/TalkApp;

    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->access$500(Lcom/google/android/talk/TalkApp;)V

    .line 178
    return-void
.end method

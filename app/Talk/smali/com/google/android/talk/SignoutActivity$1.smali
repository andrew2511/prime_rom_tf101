.class Lcom/google/android/talk/SignoutActivity$1;
.super Ljava/lang/Object;
.source "SignoutActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/SignoutActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/SignoutActivity;

.field final synthetic val$app:Lcom/google/android/talk/TalkApp;


# direct methods
.method constructor <init>(Lcom/google/android/talk/SignoutActivity;Lcom/google/android/talk/TalkApp;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/google/android/talk/SignoutActivity$1;->this$0:Lcom/google/android/talk/SignoutActivity;

    iput-object p2, p0, Lcom/google/android/talk/SignoutActivity$1;->val$app:Lcom/google/android/talk/TalkApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/talk/SignoutActivity$1;->this$0:Lcom/google/android/talk/SignoutActivity;

    iget-object v1, p0, Lcom/google/android/talk/SignoutActivity$1;->val$app:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v1}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/SignoutActivity;->access$002(Lcom/google/android/talk/SignoutActivity;Lcom/google/android/gtalkservice/IGTalkService;)Lcom/google/android/gtalkservice/IGTalkService;

    .line 84
    iget-object v0, p0, Lcom/google/android/talk/SignoutActivity$1;->this$0:Lcom/google/android/talk/SignoutActivity;

    invoke-static {v0}, Lcom/google/android/talk/SignoutActivity;->access$000(Lcom/google/android/talk/SignoutActivity;)Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/google/android/talk/SignoutActivity$1;->this$0:Lcom/google/android/talk/SignoutActivity;

    invoke-static {v0}, Lcom/google/android/talk/SignoutActivity;->access$100(Lcom/google/android/talk/SignoutActivity;)V

    .line 92
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/SignoutActivity$1;->this$0:Lcom/google/android/talk/SignoutActivity;

    invoke-static {v0}, Lcom/google/android/talk/SignoutActivity;->access$200(Lcom/google/android/talk/SignoutActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 88
    const-string v0, "service disconnected, finish"

    invoke-static {v0}, Lcom/google/android/talk/SignoutActivity;->log(Ljava/lang/String;)V

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/SignoutActivity$1;->this$0:Lcom/google/android/talk/SignoutActivity;

    invoke-virtual {v0}, Lcom/google/android/talk/SignoutActivity;->finish()V

    goto :goto_0
.end method

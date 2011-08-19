.class Lcom/google/android/gsf/login/BrowserAddAccountActivity$1;
.super Ljava/lang/Object;
.source "BrowserAddAccountActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/BrowserAddAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/BrowserAddAccountActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/BrowserAddAccountActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity$1;->this$0:Lcom/google/android/gsf/login/BrowserAddAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 103
    const-string v0, "GoogleLoginService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const-string v0, "GoogleLoginService"

    const-string v1, "mTimeOutWaitingForNetwork.run()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity$1;->this$0:Lcom/google/android/gsf/login/BrowserAddAccountActivity;

    invoke-static {v0}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->access$000(Lcom/google/android/gsf/login/BrowserAddAccountActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity$1;->this$0:Lcom/google/android/gsf/login/BrowserAddAccountActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->access$002(Lcom/google/android/gsf/login/BrowserAddAccountActivity;Z)Z

    .line 110
    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity$1;->this$0:Lcom/google/android/gsf/login/BrowserAddAccountActivity;

    invoke-virtual {v0}, Lcom/google/android/gsf/login/BrowserAddAccountActivity;->startWebLogin()V

    .line 112
    :cond_1
    return-void
.end method

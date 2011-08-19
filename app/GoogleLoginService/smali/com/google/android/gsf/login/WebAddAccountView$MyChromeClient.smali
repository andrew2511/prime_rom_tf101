.class Lcom/google/android/gsf/login/WebAddAccountView$MyChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "WebAddAccountView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/WebAddAccountView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/WebAddAccountView;


# direct methods
.method private constructor <init>(Lcom/google/android/gsf/login/WebAddAccountView;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/google/android/gsf/login/WebAddAccountView$MyChromeClient;->this$0:Lcom/google/android/gsf/login/WebAddAccountView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gsf/login/WebAddAccountView;Lcom/google/android/gsf/login/WebAddAccountView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/google/android/gsf/login/WebAddAccountView$MyChromeClient;-><init>(Lcom/google/android/gsf/login/WebAddAccountView;)V

    return-void
.end method


# virtual methods
.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 2
    .parameter "view"
    .parameter "dialog"
    .parameter "userGesture"
    .parameter "resultMsg"

    .prologue
    .line 133
    const-string v0, "GoogleLoginService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const-string v0, "GoogleLoginService"

    const-string v1, "onCreateWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/login/WebAddAccountView$MyChromeClient;->this$0:Lcom/google/android/gsf/login/WebAddAccountView;

    invoke-static {v0}, Lcom/google/android/gsf/login/WebAddAccountView;->access$200(Lcom/google/android/gsf/login/WebAddAccountView;)Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 137
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1
    .parameter "view"
    .parameter "newProgress"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/gsf/login/WebAddAccountView$MyChromeClient;->this$0:Lcom/google/android/gsf/login/WebAddAccountView;

    invoke-static {v0}, Lcom/google/android/gsf/login/WebAddAccountView;->access$300(Lcom/google/android/gsf/login/WebAddAccountView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 143
    return-void
.end method

.class Lcom/google/android/gsf/login/BackendStub$2;
.super Ljava/lang/Object;
.source "BackendStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/login/BackendStub;->login(Ljava/util/HashMap;Landroid/os/Message;)Lcom/google/android/gsf/login/CancelableCallbackThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/BackendStub;

.field final synthetic val$resultMessage:Landroid/os/Message;

.field final synthetic val$userData:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/BackendStub;Ljava/util/HashMap;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 582
    iput-object p1, p0, Lcom/google/android/gsf/login/BackendStub$2;->this$0:Lcom/google/android/gsf/login/BackendStub;

    iput-object p2, p0, Lcom/google/android/gsf/login/BackendStub$2;->val$userData:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/google/android/gsf/login/BackendStub$2;->val$resultMessage:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 584
    new-instance v1, Lcom/google/android/gsf/LoginData;

    invoke-direct {v1}, Lcom/google/android/gsf/LoginData;-><init>()V

    .line 585
    .local v1, loginData:Lcom/google/android/gsf/LoginData;
    iget-object v3, p0, Lcom/google/android/gsf/login/BackendStub$2;->this$0:Lcom/google/android/gsf/login/BackendStub;

    iget-object v4, p0, Lcom/google/android/gsf/login/BackendStub$2;->val$userData:Ljava/util/HashMap;

    invoke-virtual {v3, v4, v1}, Lcom/google/android/gsf/login/BackendStub;->loginSync(Ljava/util/HashMap;Lcom/google/android/gsf/LoginData;)Lcom/google/android/gsf/LoginData$Status;

    move-result-object v2

    .line 586
    .local v2, status:Lcom/google/android/gsf/LoginData$Status;
    if-eqz v2, :cond_0

    .line 587
    iget-object v3, p0, Lcom/google/android/gsf/login/BackendStub$2;->val$resultMessage:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 588
    .local v0, b:Landroid/os/Bundle;
    sget-object v3, Lcom/google/android/gsf/login/BackendStub$Key;->STATUS:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v3}, Lcom/google/android/gsf/login/BackendStub$Key;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gsf/LoginData$Status;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gsf/login/BackendStub$Status;->valueOf(Ljava/lang/String;)Lcom/google/android/gsf/login/BackendStub$Status;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gsf/login/BackendStub$Status;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-string v3, "loginData"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 590
    const-string v3, "GoogleLoginService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gsf/LoginData$Status;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    .end local v0           #b:Landroid/os/Bundle;
    :cond_0
    return-void
.end method

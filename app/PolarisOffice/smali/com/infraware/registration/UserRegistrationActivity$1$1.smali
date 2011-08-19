.class Lcom/infraware/registration/UserRegistrationActivity$1$1;
.super Ljava/lang/Object;
.source "UserRegistrationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/registration/UserRegistrationActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/infraware/registration/UserRegistrationActivity$1;


# direct methods
.method constructor <init>(Lcom/infraware/registration/UserRegistrationActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/registration/UserRegistrationActivity$1$1;->this$1:Lcom/infraware/registration/UserRegistrationActivity$1;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 144
    const-string v1, "http://www.google.com"

    .line 145
    .local v1, url:Ljava/lang/String;
    new-instance v0, Lcom/infraware/registration/RegisterNetworkConnect;

    invoke-direct {v0}, Lcom/infraware/registration/RegisterNetworkConnect;-><init>()V

    .line 146
    .local v0, network:Lcom/infraware/registration/RegisterNetworkConnect;
    invoke-virtual {v0, v1}, Lcom/infraware/registration/RegisterNetworkConnect;->SyncConnectNetworkCheck(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0}, Lcom/infraware/registration/RegisterNetworkConnect;->getConnectNetwork()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/infraware/registration/UserRegistrationActivity$1$1;->this$1:Lcom/infraware/registration/UserRegistrationActivity$1;

    invoke-static {v2}, Lcom/infraware/registration/UserRegistrationActivity$1;->access$0(Lcom/infraware/registration/UserRegistrationActivity$1;)Lcom/infraware/registration/UserRegistrationActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/infraware/registration/UserRegistrationActivity;->mEventHandler:Landroid/os/Handler;

    .line 150
    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 159
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v2, p0, Lcom/infraware/registration/UserRegistrationActivity$1$1;->this$1:Lcom/infraware/registration/UserRegistrationActivity$1;

    invoke-static {v2}, Lcom/infraware/registration/UserRegistrationActivity$1;->access$0(Lcom/infraware/registration/UserRegistrationActivity$1;)Lcom/infraware/registration/UserRegistrationActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/infraware/registration/UserRegistrationActivity;->access$0(Lcom/infraware/registration/UserRegistrationActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 153
    iget-object v2, p0, Lcom/infraware/registration/UserRegistrationActivity$1$1;->this$1:Lcom/infraware/registration/UserRegistrationActivity$1;

    invoke-static {v2}, Lcom/infraware/registration/UserRegistrationActivity$1;->access$0(Lcom/infraware/registration/UserRegistrationActivity$1;)Lcom/infraware/registration/UserRegistrationActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/infraware/registration/UserRegistrationActivity;->access$0(Lcom/infraware/registration/UserRegistrationActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    iget-object v2, p0, Lcom/infraware/registration/UserRegistrationActivity$1$1;->this$1:Lcom/infraware/registration/UserRegistrationActivity$1;

    invoke-static {v2}, Lcom/infraware/registration/UserRegistrationActivity$1;->access$0(Lcom/infraware/registration/UserRegistrationActivity$1;)Lcom/infraware/registration/UserRegistrationActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/infraware/registration/UserRegistrationActivity;->access$0(Lcom/infraware/registration/UserRegistrationActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->cancel()V

    .line 156
    :cond_1
    iget-object v2, p0, Lcom/infraware/registration/UserRegistrationActivity$1$1;->this$1:Lcom/infraware/registration/UserRegistrationActivity$1;

    invoke-static {v2}, Lcom/infraware/registration/UserRegistrationActivity$1;->access$0(Lcom/infraware/registration/UserRegistrationActivity$1;)Lcom/infraware/registration/UserRegistrationActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/infraware/registration/UserRegistrationActivity;->mEventHandler:Landroid/os/Handler;

    .line 157
    const/16 v3, 0x514

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

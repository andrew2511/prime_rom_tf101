.class Lcom/layar/ActivityHelper$1;
.super Ljava/lang/Object;
.source "ActivityHelper.java"

# interfaces
.implements Lcom/layar/data/user/UserManager$LoginHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/ActivityHelper;->loginHandler()Lcom/layar/data/user/UserManager$LoginHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/ActivityHelper;


# direct methods
.method constructor <init>(Lcom/layar/ActivityHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/ActivityHelper$1;->this$0:Lcom/layar/ActivityHelper;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lcom/layar/data/user/LoginResponse;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/layar/ActivityHelper$1;->this$0:Lcom/layar/ActivityHelper;

    invoke-static {v0}, Lcom/layar/ActivityHelper;->access$0(Lcom/layar/ActivityHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    invoke-virtual {p1}, Lcom/layar/data/user/LoginResponse;->getResponseCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 78
    :sswitch_0
    iget-object v0, p0, Lcom/layar/ActivityHelper$1;->this$0:Lcom/layar/ActivityHelper;

    invoke-static {v0}, Lcom/layar/ActivityHelper;->access$1(Lcom/layar/ActivityHelper;)Lcom/layar/ActivityHelper$LayarActivityEvents;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/layar/ActivityHelper$1;->this$0:Lcom/layar/ActivityHelper;

    invoke-static {v0}, Lcom/layar/ActivityHelper;->access$1(Lcom/layar/ActivityHelper;)Lcom/layar/ActivityHelper$LayarActivityEvents;

    move-result-object v0

    invoke-interface {v0}, Lcom/layar/ActivityHelper$LayarActivityEvents;->onLoggedIn()V

    goto :goto_0

    .line 82
    :sswitch_1
    iget-object v0, p0, Lcom/layar/ActivityHelper$1;->this$0:Lcom/layar/ActivityHelper;

    invoke-virtual {v0}, Lcom/layar/ActivityHelper;->getUserManager()Lcom/layar/data/user/UserManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/layar/data/user/UserManager;->setToken(Ljava/lang/String;)V

    .line 85
    :sswitch_2
    iget-object v0, p0, Lcom/layar/ActivityHelper$1;->this$0:Lcom/layar/ActivityHelper;

    invoke-static {v0}, Lcom/layar/ActivityHelper;->access$0(Lcom/layar/ActivityHelper;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/layar/ActivityHelper;->manualLogin(Landroid/content/Context;Z)V

    goto :goto_0

    .line 75
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2a -> :sswitch_2
        0x2d -> :sswitch_1
        0x2e -> :sswitch_2
    .end sparse-switch
.end method

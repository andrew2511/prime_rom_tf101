.class Lcom/layar/ActivityHelper$2;
.super Ljava/lang/Object;
.source "ActivityHelper.java"

# interfaces
.implements Lcom/layar/data/user/UserManager$LoginHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/ActivityHelper;->loginStaticHandler(Landroid/content/Context;)Lcom/layar/data/user/UserManager$LoginHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/ActivityHelper$2;->val$context:Landroid/content/Context;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lcom/layar/data/user/LoginResponse;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 95
    invoke-virtual {p1}, Lcom/layar/data/user/LoginResponse;->getResponseCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 106
    :goto_0
    :sswitch_0
    return-void

    .line 100
    :sswitch_1
    invoke-static {}, Lcom/layar/App;->getUserManager()Lcom/layar/data/user/UserManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/layar/data/user/UserManager;->setToken(Ljava/lang/String;)V

    .line 103
    :sswitch_2
    iget-object v0, p0, Lcom/layar/ActivityHelper$2;->val$context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/layar/ActivityHelper$2;->val$context:Landroid/content/Context;

    const-class v3, Lcom/layar/UserLoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 95
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2a -> :sswitch_2
        0x2d -> :sswitch_1
        0x2e -> :sswitch_2
    .end sparse-switch
.end method

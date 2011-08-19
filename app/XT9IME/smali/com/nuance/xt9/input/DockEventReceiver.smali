.class public Lcom/nuance/xt9/input/DockEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DockEventReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private isXT9CurrentInputMethod(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 36
    const-string v0, "com.nuance.xt9.input"

    .line 37
    .local v0, XT9_PACKAGE_NAME:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_input_method"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, inputMethodId:Ljava/lang/String;
    const-string v2, "com.nuance.xt9.input"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    return v2
.end method

.method private showWarningMessage(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 43
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nuance/xt9/input/DockWarningActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 45
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 46
    return-void
.end method


# virtual methods
.method public isHardwareKeyboardPresented(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 29
    .local v0, currConf:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v2, v4, :cond_0

    iget v2, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move v1, v4

    .line 32
    .local v1, presented:Z
    :goto_0
    return v1

    .line 29
    .end local v1           #presented:Z
    :cond_0
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 13
    if-nez p2, :cond_1

    .line 25
    :cond_0
    :goto_0
    return-void

    .line 15
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 16
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.INPUT_METHOD_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 17
    :cond_2
    invoke-virtual {p0, p1}, Lcom/nuance/xt9/input/DockEventReceiver;->isHardwareKeyboardPresented(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/DockEventReceiver;->isXT9CurrentInputMethod(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 18
    const-string v3, "dockwarning.pref"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 19
    .local v1, preference:Landroid/content/SharedPreferences;
    const-string v3, "show_dockwarning"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 20
    .local v2, showWarning:Z
    if-eqz v2, :cond_0

    .line 21
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/DockEventReceiver;->showWarningMessage(Landroid/content/Context;)V

    goto :goto_0
.end method

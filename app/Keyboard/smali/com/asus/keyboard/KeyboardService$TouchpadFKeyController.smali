.class Lcom/asus/keyboard/KeyboardService$TouchpadFKeyController;
.super Lcom/asus/keyboard/KeyboardService$FKeyController;
.source "KeyboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/keyboard/KeyboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchpadFKeyController"
.end annotation


# instance fields
.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTouchpadEnabled:Z

.field final synthetic this$0:Lcom/asus/keyboard/KeyboardService;


# direct methods
.method public constructor <init>(Lcom/asus/keyboard/KeyboardService;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 380
    iput-object p1, p0, Lcom/asus/keyboard/KeyboardService$TouchpadFKeyController;->this$0:Lcom/asus/keyboard/KeyboardService;

    invoke-direct {p0, p1}, Lcom/asus/keyboard/KeyboardService$FKeyController;-><init>(Lcom/asus/keyboard/KeyboardService;)V

    .line 425
    new-instance v0, Lcom/asus/keyboard/KeyboardService$TouchpadFKeyController$1;

    invoke-direct {v0, p0}, Lcom/asus/keyboard/KeyboardService$TouchpadFKeyController$1;-><init>(Lcom/asus/keyboard/KeyboardService$TouchpadFKeyController;)V

    iput-object v0, p0, Lcom/asus/keyboard/KeyboardService$TouchpadFKeyController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 381
    iput-object p2, p0, Lcom/asus/keyboard/KeyboardService$TouchpadFKeyController;->mContext:Landroid/content/Context;

    .line 383
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/asus/keyboard/KeyboardService$TouchpadFKeyController;->mIntentFilter:Landroid/content/IntentFilter;

    .line 384
    iget-object v0, p0, Lcom/asus/keyboard/KeyboardService$TouchpadFKeyController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/asus/keyboard/KeyboardService$TouchpadFKeyController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/asus/keyboard/KeyboardService$TouchpadFKeyController;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 386
    invoke-direct {p0}, Lcom/asus/keyboard/KeyboardService$TouchpadFKeyController;->getTouchpadPref()Z

    move-result v0

    iput-boolean v0, p0, Lcom/asus/keyboard/KeyboardService$TouchpadFKeyController;->mTouchpadEnabled:Z

    .line 387
    iget-boolean v0, p0, Lcom/asus/keyboard/KeyboardService$TouchpadFKeyController;->mTouchpadEnabled:Z

    invoke-direct {p0, v0}, Lcom/asus/keyboard/KeyboardService$TouchpadFKeyController;->setTouchpadEnabled(Z)V

    .line 388
    return-void
.end method

.method static synthetic access$1600(Lcom/asus/keyboard/KeyboardService$TouchpadFKeyController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 374
    iget-boolean v0, p0, Lcom/asus/keyboard/KeyboardService$TouchpadFKeyController;->mTouchpadEnabled:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/asus/keyboard/KeyboardService$TouchpadFKeyController;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 374
    invoke-direct {p0, p1}, Lcom/asus/keyboard/KeyboardService$TouchpadFKeyController;->setTouchpadEnabled(Z)V

    return-void
.end method

.method private getTouchpadPref()Z
    .locals 4

    .prologue
    .line 412
    iget-object v1, p0, Lcom/asus/keyboard/KeyboardService$TouchpadFKeyController;->this$0:Lcom/asus/keyboard/KeyboardService;

    const-string v2, "prefsFile"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/asus/keyboard/KeyboardService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 413
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "touchpadEnabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private setTouchpadEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 408
    invoke-static {p1}, Lcom/asus/keyboard/KeyboardService;->access$1500(Z)V

    .line 409
    return-void
.end method

.method private setTouchpadPref(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    .line 417
    iget-boolean v2, p0, Lcom/asus/keyboard/KeyboardService$TouchpadFKeyController;->mTouchpadEnabled:Z

    if-eq v2, p1, :cond_0

    .line 418
    iget-object v2, p0, Lcom/asus/keyboard/KeyboardService$TouchpadFKeyController;->this$0:Lcom/asus/keyboard/KeyboardService;

    const-string v3, "prefsFile"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/asus/keyboard/KeyboardService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 419
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 420
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "touchpadEnabled"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 421
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 423
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #settings:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method


# virtual methods
.method public process(I)V
    .locals 4
    .parameter "keyCode"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 391
    iget-boolean v0, p0, Lcom/asus/keyboard/KeyboardService$TouchpadFKeyController;->mTouchpadEnabled:Z

    if-eqz v0, :cond_0

    .line 392
    invoke-direct {p0, v2}, Lcom/asus/keyboard/KeyboardService$TouchpadFKeyController;->setTouchpadEnabled(Z)V

    .line 393
    invoke-direct {p0, v2}, Lcom/asus/keyboard/KeyboardService$TouchpadFKeyController;->setTouchpadPref(Z)V

    .line 395
    iget-object v0, p0, Lcom/asus/keyboard/KeyboardService$TouchpadFKeyController;->this$0:Lcom/asus/keyboard/KeyboardService;

    const v1, 0x7f020007

    invoke-static {v0, v1}, Lcom/asus/keyboard/KeyboardService;->access$902(Lcom/asus/keyboard/KeyboardService;I)I

    .line 402
    :goto_0
    iget-boolean v0, p0, Lcom/asus/keyboard/KeyboardService$TouchpadFKeyController;->mTouchpadEnabled:Z

    if-nez v0, :cond_1

    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/asus/keyboard/KeyboardService$TouchpadFKeyController;->mTouchpadEnabled:Z

    .line 404
    iget-object v0, p0, Lcom/asus/keyboard/KeyboardService$TouchpadFKeyController;->this$0:Lcom/asus/keyboard/KeyboardService;

    invoke-static {v0}, Lcom/asus/keyboard/KeyboardService;->access$1200(Lcom/asus/keyboard/KeyboardService;)V

    .line 405
    return-void

    .line 397
    :cond_0
    invoke-direct {p0, v3}, Lcom/asus/keyboard/KeyboardService$TouchpadFKeyController;->setTouchpadEnabled(Z)V

    .line 398
    invoke-direct {p0, v3}, Lcom/asus/keyboard/KeyboardService$TouchpadFKeyController;->setTouchpadPref(Z)V

    .line 400
    iget-object v0, p0, Lcom/asus/keyboard/KeyboardService$TouchpadFKeyController;->this$0:Lcom/asus/keyboard/KeyboardService;

    const v1, 0x7f020008

    invoke-static {v0, v1}, Lcom/asus/keyboard/KeyboardService;->access$902(Lcom/asus/keyboard/KeyboardService;I)I

    goto :goto_0

    :cond_1
    move v0, v2

    .line 402
    goto :goto_1
.end method

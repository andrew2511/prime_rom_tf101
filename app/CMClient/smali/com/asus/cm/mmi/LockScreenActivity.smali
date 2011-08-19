.class public Lcom/asus/cm/mmi/LockScreenActivity;
.super Landroid/app/Activity;
.source "LockScreenActivity.java"


# instance fields
.field mStatusBarMgr:Landroid/app/StatusBarManager;

.field mWinMgr:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private lockDevice()V
    .locals 9

    .prologue
    .line 85
    const-string v6, "keyguard"

    invoke-virtual {p0, v6}, Lcom/asus/cm/mmi/LockScreenActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    .line 86
    .local v4, keyguardManager:Landroid/app/KeyguardManager;
    const-string v6, "keyguard"

    invoke-virtual {v4, v6}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v3

    .line 87
    .local v3, keyLock:Landroid/app/KeyguardManager$KeyguardLock;
    invoke-virtual {v3}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 89
    const-string v6, "statusbar"

    invoke-virtual {p0, v6}, Lcom/asus/cm/mmi/LockScreenActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/StatusBarManager;

    .line 99
    .local v5, statusBarMgr:Landroid/app/StatusBarManager;
    new-instance v0, Landroid/app/Dialog;

    const v6, 0x103000a

    invoke-direct {v0, p0, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 102
    .local v0, dialog:Landroid/app/Dialog;
    const/high16 v6, 0x7f03

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setContentView(I)V

    .line 103
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 104
    const-string v6, "window"

    invoke-virtual {p0, v6}, Lcom/asus/cm/mmi/LockScreenActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 106
    .local v1, display:Landroid/view/Display;
    const v2, 0x10100400

    .line 111
    .local v2, flags:I
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d3

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 113
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/view/Window;->setLayout(II)V

    .line 114
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "width: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", height: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 115
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 116
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 117
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/asus/cm/mmi/LockScreenActivity;->requestWindowFeature(I)Z

    .line 31
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/asus/cm/mmi/LockScreenActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/asus/cm/mmi/LockScreenActivity;->mWinMgr:Landroid/view/WindowManager;

    .line 33
    const v0, 0x10100400

    .line 38
    .local v0, flags:I
    invoke-direct {p0}, Lcom/asus/cm/mmi/LockScreenActivity;->lockDevice()V

    .line 41
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 71
    packed-switch p1, :pswitch_data_0

    .line 80
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :pswitch_0
    return v0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 67
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    const/high16 v3, 0x10

    .line 45
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 47
    const-string v2, "keyguard"

    invoke-virtual {p0, v2}, Lcom/asus/cm/mmi/LockScreenActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 48
    .local v0, keyguardManager:Landroid/app/KeyguardManager;
    const-string v2, "keyguard"

    invoke-virtual {v0, v2}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v1

    .line 49
    .local v1, keylock:Landroid/app/KeyguardManager$KeyguardLock;
    invoke-virtual {v1}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 51
    const-string v2, "statusbar"

    invoke-virtual {p0, v2}, Lcom/asus/cm/mmi/LockScreenActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/asus/cm/mmi/LockScreenActivity;->mStatusBarMgr:Landroid/app/StatusBarManager;

    .line 60
    invoke-virtual {p0}, Lcom/asus/cm/mmi/LockScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 62
    return-void
.end method

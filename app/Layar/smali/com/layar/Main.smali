.class public Lcom/layar/Main;
.super Lcom/layar/DestroyInformerHelper;
.source "Main.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/Main$CheckUpdateTask;,
        Lcom/layar/Main$InitMainTask;,
        Lcom/layar/Main$LoadLayerTask;,
        Lcom/layar/Main$TermsLoader;
    }
.end annotation


# static fields
.field private static final SUBACTIVITY_LOGIN:I = 0x1

.field private static final SUBACTIVITY_WELCOME_SEQUENCE:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private gotoNextActivityOnResume:Z

.field private isRunning:Z

.field private mCurrentDialog:Landroid/app/Dialog;

.field private mLayerManager:Lcom/layar/data/layer/LayerManager;

.field private mStartProfile:Lcom/layar/util/Profiler$TimeProfile;

.field private mUpdateHelper:Lcom/layar/util/UpdateHelper;

.field private mUserManager:Lcom/layar/data/user/UserManager;

.field private showWelcomeSequence:Z

.field private viewMessage:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/layar/Main;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/Main;->TAG:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lcom/layar/DestroyInformerHelper;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/Main;->mCurrentDialog:Landroid/app/Dialog;

    .line 66
    iput-boolean v1, p0, Lcom/layar/Main;->showWelcomeSequence:Z

    .line 67
    iput-boolean v1, p0, Lcom/layar/Main;->isRunning:Z

    .line 70
    iput-boolean v1, p0, Lcom/layar/Main;->gotoNextActivityOnResume:Z

    .line 50
    return-void
.end method

.method static synthetic access$0(Lcom/layar/Main;Lcom/layar/data/layer/LayerManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/layar/Main;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    return-void
.end method

.method static synthetic access$1(Lcom/layar/Main;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/layar/Main;->showWelcomeSequence:Z

    return-void
.end method

.method static synthetic access$10(Lcom/layar/Main;)V
    .locals 0
    .parameter

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/layar/Main;->startLayerDetails()V

    return-void
.end method

.method static synthetic access$11()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/layar/Main;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lcom/layar/Main;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/layar/Main;->startApplication()V

    return-void
.end method

.method static synthetic access$13(Lcom/layar/Main;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/layar/Main;->manualLogin()V

    return-void
.end method

.method static synthetic access$14(Lcom/layar/Main;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/layar/Main;->viewMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/layar/Main;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/layar/Main;->login()V

    return-void
.end method

.method static synthetic access$3(Lcom/layar/Main;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/layar/Main;->startAr()V

    return-void
.end method

.method static synthetic access$4(Lcom/layar/Main;)Lcom/layar/util/UpdateHelper;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/layar/Main;->mUpdateHelper:Lcom/layar/util/UpdateHelper;

    return-object v0
.end method

.method static synthetic access$5(Lcom/layar/Main;)Lcom/layar/data/layer/LayerManager;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/layar/Main;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    return-object v0
.end method

.method static synthetic access$6(Lcom/layar/Main;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/layar/Main;->startNextActivity()V

    return-void
.end method

.method static synthetic access$7(Lcom/layar/Main;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/layar/Main;->mCurrentDialog:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$8(Lcom/layar/Main;)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/layar/Main;->mCurrentDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$9(Lcom/layar/Main;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/layar/Main;->gotoNextActivityOnResume:Z

    return-void
.end method

.method private getUserManager()Lcom/layar/data/user/UserManager;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/layar/Main;->mUserManager:Lcom/layar/data/user/UserManager;

    if-nez v0, :cond_0

    .line 616
    new-instance v0, Lcom/layar/data/user/UserManager;

    invoke-direct {v0, p0}, Lcom/layar/data/user/UserManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/layar/Main;->mUserManager:Lcom/layar/data/user/UserManager;

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/layar/Main;->mUserManager:Lcom/layar/data/user/UserManager;

    return-object v0
.end method

.method private login()V
    .locals 2

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/layar/Main;->getUserManager()Lcom/layar/data/user/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layar/data/user/UserManager;->isUserSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const v0, 0x7f090155

    invoke-virtual {p0, v0}, Lcom/layar/Main;->updateMessageText(I)V

    .line 147
    invoke-direct {p0}, Lcom/layar/Main;->getUserManager()Lcom/layar/data/user/UserManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/layar/Main;->loginHandler()Lcom/layar/data/user/UserManager$LoginHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layar/data/user/UserManager;->login(Lcom/layar/data/user/UserManager$LoginHandler;)V

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/layar/Main;->startApplication()V

    goto :goto_0
.end method

.method private loginHandler()Lcom/layar/data/user/UserManager$LoginHandler;
    .locals 1

    .prologue
    .line 183
    new-instance v0, Lcom/layar/Main$1;

    invoke-direct {v0, p0}, Lcom/layar/Main$1;-><init>(Lcom/layar/Main;)V

    return-object v0
.end method

.method private manualLogin()V
    .locals 2

    .prologue
    .line 158
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/layar/UserLoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/layar/Main;->startActivityForResult(Landroid/content/Intent;I)V

    .line 159
    return-void
.end method

.method private showWelcomeSequence()V
    .locals 3

    .prologue
    .line 130
    const v1, 0x7f0900f3

    invoke-virtual {p0, v1}, Lcom/layar/Main;->updateMessageText(I)V

    .line 131
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/layar/Main;->showWelcomeSequence:Z

    .line 132
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/layar/WelcomeSequenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    .local v0, i:Landroid/content/Intent;
    const-string v1, "extras:on_start"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 134
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/layar/Main;->startActivityForResult(Landroid/content/Intent;I)V

    .line 135
    return-void
.end method

.method private startApplication()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 162
    invoke-virtual {p0}, Lcom/layar/Main;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 163
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 164
    .local v0, data:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 165
    new-instance v2, Lcom/layar/Main$LoadLayerTask;

    invoke-direct {v2, p0, v3}, Lcom/layar/Main$LoadLayerTask;-><init>(Lcom/layar/Main;Lcom/layar/Main$LoadLayerTask;)V

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/net/Uri;

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lcom/layar/Main$LoadLayerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 173
    :goto_0
    return-void

    .line 170
    :cond_0
    new-instance v2, Lcom/layar/Main$CheckUpdateTask;

    invoke-direct {v2, p0, v3}, Lcom/layar/Main$CheckUpdateTask;-><init>(Lcom/layar/Main;Lcom/layar/Main$CheckUpdateTask;)V

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/layar/Main$CheckUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private startAr()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 252
    iget-boolean v0, p0, Lcom/layar/Main;->isRunning:Z

    if-eqz v0, :cond_0

    invoke-static {p0, v1, v1, v1}, Lcom/layar/data/layer/LayerHelper;->forceOpenLayer(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Lcom/layar/data/layer/Layer20;)V

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/layar/Main;->finish()V

    .line 254
    return-void
.end method

.method private startLayerDetails()V
    .locals 3

    .prologue
    .line 258
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/layar/LayerInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 259
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "useCurrentLayer"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 260
    iget-boolean v1, p0, Lcom/layar/Main;->isRunning:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/layar/Main;->startActivity(Landroid/content/Intent;)V

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/layar/Main;->finish()V

    .line 262
    return-void
.end method

.method private startNextActivity()V
    .locals 2

    .prologue
    .line 239
    iget-boolean v1, p0, Lcom/layar/Main;->showWelcomeSequence:Z

    if-eqz v1, :cond_0

    .line 240
    invoke-direct {p0}, Lcom/layar/Main;->showWelcomeSequence()V

    .line 248
    :goto_0
    return-void

    .line 245
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/layar/MyLayersActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 246
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/layar/Main;->startActivity(Landroid/content/Intent;)V

    .line 247
    invoke-virtual {p0}, Lcom/layar/Main;->finish()V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 224
    invoke-super {p0, p1, p2, p3}, Lcom/layar/DestroyInformerHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 226
    invoke-virtual {p0, p1}, Lcom/layar/Main;->finishActivity(I)V

    .line 227
    packed-switch p1, :pswitch_data_0

    .line 233
    invoke-direct {p0}, Lcom/layar/Main;->startApplication()V

    .line 235
    :goto_0
    return-void

    .line 229
    :pswitch_0
    invoke-direct {p0}, Lcom/layar/Main;->startNextActivity()V

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/layar/DestroyInformerHelper;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v1, 0x7f030066

    invoke-virtual {p0, v1}, Lcom/layar/Main;->setContentView(I)V

    .line 76
    invoke-static {}, Lcom/layar/App;->getProfiler()Lcom/layar/util/Profiler;

    move-result-object v0

    .line 77
    .local v0, profiler:Lcom/layar/util/Profiler;
    if-eqz v0, :cond_0

    .line 78
    sget-object v1, Lcom/layar/Main;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/layar/util/Profiler;->addTimeProfile(Ljava/lang/String;)Lcom/layar/util/Profiler$TimeProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/layar/Main;->mStartProfile:Lcom/layar/util/Profiler$TimeProfile;

    .line 79
    iget-object v1, p0, Lcom/layar/Main;->mStartProfile:Lcom/layar/util/Profiler$TimeProfile;

    invoke-virtual {v1}, Lcom/layar/util/Profiler$TimeProfile;->start()V

    .line 82
    :cond_0
    const v1, 0x7f07001f

    invoke-virtual {p0, v1}, Lcom/layar/Main;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/layar/Main;->viewMessage:Landroid/widget/TextView;

    .line 84
    new-instance v1, Lcom/layar/util/UpdateHelper;

    invoke-direct {v1, p0}, Lcom/layar/util/UpdateHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/layar/Main;->mUpdateHelper:Lcom/layar/util/UpdateHelper;

    .line 86
    new-instance v1, Lcom/layar/Main$InitMainTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/layar/Main$InitMainTask;-><init>(Lcom/layar/Main;Lcom/layar/Main$InitMainTask;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/layar/Main$InitMainTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 87
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/layar/Main;->mCurrentDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/layar/Main;->mCurrentDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 626
    :cond_0
    invoke-super {p0}, Lcom/layar/DestroyInformerHelper;->onDestroy()V

    .line 627
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 119
    const/16 v0, 0x54

    if-ne p1, v0, :cond_0

    .line 120
    const/4 v0, 0x1

    .line 122
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/layar/DestroyInformerHelper;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layar/Main;->isRunning:Z

    .line 114
    invoke-super {p0}, Lcom/layar/DestroyInformerHelper;->onPause()V

    .line 115
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Lcom/layar/DestroyInformerHelper;->onResume()V

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/layar/Main;->isRunning:Z

    .line 103
    iget-boolean v0, p0, Lcom/layar/Main;->gotoNextActivityOnResume:Z

    if-eqz v0, :cond_0

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layar/Main;->gotoNextActivityOnResume:Z

    .line 107
    invoke-direct {p0}, Lcom/layar/Main;->startNextActivity()V

    .line 109
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/layar/DestroyInformerHelper;->onWindowFocusChanged(Z)V

    .line 92
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/layar/Main;->mStartProfile:Lcom/layar/util/Profiler$TimeProfile;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/layar/Main;->mStartProfile:Lcom/layar/util/Profiler$TimeProfile;

    invoke-virtual {v0}, Lcom/layar/util/Profiler$TimeProfile;->stop()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/Main;->mStartProfile:Lcom/layar/util/Profiler$TimeProfile;

    .line 96
    :cond_0
    return-void
.end method

.method public updateMessageText(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 418
    new-instance v0, Lcom/layar/Main$2;

    invoke-direct {v0, p0, p1}, Lcom/layar/Main$2;-><init>(Lcom/layar/Main;I)V

    invoke-virtual {p0, v0}, Lcom/layar/Main;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 424
    return-void
.end method

.method public updateMessageText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 427
    new-instance v0, Lcom/layar/Main$3;

    invoke-direct {v0, p0, p1}, Lcom/layar/Main$3;-><init>(Lcom/layar/Main;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/layar/Main;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 433
    return-void
.end method

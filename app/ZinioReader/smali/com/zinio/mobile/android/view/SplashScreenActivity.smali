.class public final Lcom/zinio/mobile/android/view/SplashScreenActivity;
.super Lcom/zinio/mobile/android/view/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/zinio/mobile/android/resources/StorageChangeReceiver;

.field private b:Z

.field private c:Z

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Ljava/lang/Runnable;

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/BaseActivity;-><init>()V

    .line 34
    iput-boolean v0, p0, Lcom/zinio/mobile/android/view/SplashScreenActivity;->b:Z

    .line 35
    iput-boolean v0, p0, Lcom/zinio/mobile/android/view/SplashScreenActivity;->c:Z

    .line 41
    new-instance v0, Lcom/zinio/mobile/android/view/da;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/da;-><init>(Lcom/zinio/mobile/android/view/SplashScreenActivity;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/SplashScreenActivity;->f:Ljava/lang/Runnable;

    .line 47
    new-instance v0, Lcom/zinio/mobile/android/view/db;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/db;-><init>(Lcom/zinio/mobile/android/view/SplashScreenActivity;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/SplashScreenActivity;->g:Landroid/os/Handler;

    .line 112
    return-void
.end method

.method static synthetic a(Lcom/zinio/mobile/android/view/SplashScreenActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/zinio/mobile/android/view/SplashScreenActivity;->f:Ljava/lang/Runnable;

    return-object v0
.end method

.method private a(I)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 250
    packed-switch p1, :pswitch_data_0

    .line 262
    iget-object v0, p0, Lcom/zinio/mobile/android/view/SplashScreenActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/zinio/mobile/android/view/SplashScreenActivity;->d:Landroid/widget/ImageView;

    const v1, 0x7f020043

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/SplashScreenActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/zinio/mobile/android/view/SplashScreenActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 269
    :goto_0
    return-void

    .line 252
    :pswitch_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/SplashScreenActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/zinio/mobile/android/view/SplashScreenActivity;->e:Landroid/widget/ImageView;

    const v1, 0x7f020042

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/SplashScreenActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/zinio/mobile/android/view/SplashScreenActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 250
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/zinio/mobile/android/view/SplashScreenActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/zinio/mobile/android/view/SplashScreenActivity;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/zinio/mobile/android/view/SplashScreenActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/zinio/mobile/android/view/SplashScreenActivity;->g:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method final b()V
    .locals 2

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/zinio/mobile/android/view/SplashScreenActivity;->c:Z

    if-nez v0, :cond_0

    .line 190
    invoke-static {}, Lcom/zinio/mobile/android/resources/a/b;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 191
    const v0, 0x7f080067

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/SplashScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f080068

    invoke-virtual {p0, v1}, Lcom/zinio/mobile/android/view/SplashScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zinio/mobile/android/a;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/SplashScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    invoke-static {}, Lcom/zinio/mobile/android/resources/a/b;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 201
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/e;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/dialogs/e;->a()Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 209
    :cond_2
    invoke-static {}, Lcom/zinio/mobile/android/DeviceInfo;->k()Z

    move-result v0

    if-nez v0, :cond_3

    .line 210
    const v0, 0x7f08007b

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/SplashScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f08007c

    invoke-virtual {p0, v1}, Lcom/zinio/mobile/android/view/SplashScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zinio/mobile/android/a;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/SplashScreenActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 216
    :cond_3
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/SplashScreenActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_5

    .line 220
    :cond_4
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/SplashScreenActivity;->g:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/c/e;->b(Landroid/os/Handler;)Z

    goto :goto_0

    .line 222
    :cond_5
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/SplashScreenActivity;->g:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/c/e;->c(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method final c()V
    .locals 2

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/zinio/mobile/android/view/SplashScreenActivity;->b:Z

    if-nez v0, :cond_0

    .line 231
    sget-object v0, Lcom/zinio/mobile/android/a;->c:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/SplashScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 237
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->a()V

    .line 235
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/SplashScreenActivity;->g:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/c/e;->a(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 273
    invoke-super {p0, p1}, Lcom/zinio/mobile/android/view/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 275
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/zinio/mobile/android/view/SplashScreenActivity;->a(I)V

    .line 276
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/zinio/mobile/android/view/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 132
    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/SplashScreenActivity;->setContentView(I)V

    .line 135
    new-instance v0, Lcom/zinio/mobile/android/resources/StorageChangeReceiver;

    invoke-direct {v0}, Lcom/zinio/mobile/android/resources/StorageChangeReceiver;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/SplashScreenActivity;->a:Lcom/zinio/mobile/android/resources/StorageChangeReceiver;

    .line 136
    invoke-static {}, Lcom/zinio/mobile/android/App;->f()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/SplashScreenActivity;->a:Lcom/zinio/mobile/android/resources/StorageChangeReceiver;

    invoke-static {}, Lcom/zinio/mobile/android/resources/StorageChangeReceiver;->a()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 139
    const v0, 0x7f0c007d

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/SplashScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/SplashScreenActivity;->d:Landroid/widget/ImageView;

    .line 140
    const v0, 0x7f0c007c

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/SplashScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/SplashScreenActivity;->e:Landroid/widget/ImageView;

    .line 141
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/SplashScreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/zinio/mobile/android/view/SplashScreenActivity;->a(I)V

    .line 142
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 179
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 180
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zinio/mobile/android/view/SplashScreenActivity;->c:Z

    .line 185
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/zinio/mobile/android/view/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected final onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/zinio/mobile/android/view/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 126
    invoke-virtual {p0, p1}, Lcom/zinio/mobile/android/view/SplashScreenActivity;->setIntent(Landroid/content/Intent;)V

    .line 127
    return-void
.end method

.method protected final onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 146
    invoke-super {p0}, Lcom/zinio/mobile/android/view/BaseActivity;->onResume()V

    .line 148
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/SplashScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "kill"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 149
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/SplashScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x10

    and-int/2addr v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 152
    :goto_0
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/SplashScreenActivity;->finish()V

    .line 164
    :goto_1
    return-void

    :cond_0
    move v1, v3

    .line 149
    goto :goto_0

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/SplashScreenActivity;->g:Landroid/os/Handler;

    new-instance v1, Lcom/zinio/mobile/android/view/cz;

    invoke-direct {v1, p0}, Lcom/zinio/mobile/android/view/cz;-><init>(Lcom/zinio/mobile/android/view/SplashScreenActivity;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 3
    .parameter

    .prologue
    .line 168
    if-eqz p1, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/SplashScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "kill"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 170
    if-eqz v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-super {p0, p1}, Lcom/zinio/mobile/android/view/BaseActivity;->onWindowFocusChanged(Z)V

    goto :goto_0
.end method

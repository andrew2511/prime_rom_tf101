.class public Lcom/infraware/splash/SplashActivity;
.super Landroid/app/Activity;
.source "SplashActivity.java"


# static fields
.field private static final REQUEST_USER_REGISTRATION:I = 0x1


# instance fields
.field m_oMainLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/splash/SplashActivity;->m_oMainLayout:Landroid/widget/LinearLayout;

    .line 25
    return-void
.end method

.method private getStateUserRegisterAdded()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 122
    const-string v2, "user_registration"

    invoke-virtual {p0, v2, v3}, Lcom/infraware/splash/SplashActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 124
    .local v1, pref:Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .line 125
    .local v0, bRegister:Z
    const-string v2, "UserRegisterSuccess"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 127
    return v0
.end method

.method private isExpirationWeek()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 132
    const-string v5, "user_registration"

    invoke-virtual {p0, v5, v7}, Lcom/infraware/splash/SplashActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 134
    .local v3, pref:Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .line 135
    .local v0, bCheck:Z
    const-string v5, "UserRegisterShowAfterWeek"

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 137
    if-eqz v0, :cond_0

    .line 139
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 141
    .local v1, cCurTime:Ljava/util/Calendar;
    const-string v5, "UserRegisterCurTime"

    const-string v6, "0"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 142
    .local v4, strOldTime:Ljava/lang/String;
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 143
    .local v2, cOldTime:Ljava/util/Calendar;
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 144
    const/4 v5, 0x5

    const/4 v6, 0x7

    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 146
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v5

    if-lez v5, :cond_0

    .line 147
    const/4 v5, 0x1

    .line 150
    .end local v1           #cCurTime:Ljava/util/Calendar;
    .end local v2           #cOldTime:Ljava/util/Calendar;
    .end local v4           #strOldTime:Ljava/lang/String;
    :goto_0
    return v5

    :cond_0
    move v5, v7

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 107
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 108
    packed-switch p1, :pswitch_data_0

    .line 118
    :goto_0
    return-void

    .line 111
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/infraware/filemanager/FmAccountListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    .local v0, oIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/infraware/splash/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 113
    invoke-virtual {p0}, Lcom/infraware/splash/SplashActivity;->finish()V

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 97
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/infraware/splash/SplashActivity;->m_oMainLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0202cf

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 102
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 103
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/infraware/splash/SplashActivity;->m_oMainLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0202d0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/infraware/splash/SplashActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 35
    const v1, 0x7f030005

    invoke-virtual {p0, v1}, Lcom/infraware/splash/SplashActivity;->setContentView(I)V

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v1, 0x7f0c0025

    invoke-virtual {p0, v1}, Lcom/infraware/splash/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/infraware/splash/SplashActivity;->m_oMainLayout:Landroid/widget/LinearLayout;

    .line 40
    const v1, 0x7f040005

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 42
    .local v0, oAnimation:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/infraware/splash/SplashActivity;->m_oMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 44
    new-instance v1, Lcom/infraware/splash/SplashActivity$1;

    invoke-direct {v1, p0}, Lcom/infraware/splash/SplashActivity$1;-><init>(Lcom/infraware/splash/SplashActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 75
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 80
    invoke-static {p0}, Lcom/infraware/filemanager/FmSettingActivity;->getFmSetting_PivotLock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    invoke-static {p0}, Lcom/infraware/filemanager/FmSettingActivity;->getFmSetting_IsLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/infraware/splash/SplashActivity;->setRequestedOrientation(I)V

    .line 91
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 92
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/infraware/splash/SplashActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 89
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/infraware/splash/SplashActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.class public Lcom/aws/mycloud/view/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field private static final FIRST_TIME:Ljava/lang/String; = "FirstTime"

.field private static final TAG:Ljava/lang/String; = "MainActivity"


# instance fields
.field apicfg:Lnet/yostore/aws/api/ApiConfig;

.field awsacc:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/aws/mycloud/view/MainActivity;->awsacc:Ljava/io/File;

    .line 21
    iput-object v0, p0, Lcom/aws/mycloud/view/MainActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 17
    return-void
.end method

.method private loadBooleanPreferences(Ljava/lang/String;)Z
    .locals 4
    .parameter "key"

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/aws/mycloud/view/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "MyCloud"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 56
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private saveBooleanPref(Ljava/lang/String;Z)V
    .locals 5
    .parameter "key"
    .parameter "isFirstTime"

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/aws/mycloud/view/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "MyCloud"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 62
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 63
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 64
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 65
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 26
    iput-object v1, p0, Lcom/aws/mycloud/view/MainActivity;->awsacc:Ljava/io/File;

    .line 27
    iput-object v1, p0, Lcom/aws/mycloud/view/MainActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 28
    const-string v1, "FirstTime"

    invoke-direct {p0, v1}, Lcom/aws/mycloud/view/MainActivity;->loadBooleanPreferences(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    const-string v1, "MainActivity"

    const-string v2, "FIRST_TIME"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 31
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/aws/mycloud/view/tutorial/Tutorial1;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 32
    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 40
    :goto_0
    invoke-virtual {p0}, Lcom/aws/mycloud/view/MainActivity;->finish()V

    .line 41
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 42
    return-void

    .line 35
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const-string v1, "MainActivity"

    const-string v2, "NOT FIRST_TIME"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 37
    .restart local v0       #intent:Landroid/content/Intent;
    const-class v1, Lcom/aws/mycloud/view/MyCloudActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 38
    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

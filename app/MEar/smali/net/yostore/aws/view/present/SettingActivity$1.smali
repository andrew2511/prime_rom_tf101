.class Lnet/yostore/aws/view/present/SettingActivity$1;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/present/SettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/present/SettingActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/present/SettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/present/SettingActivity$1;->this$0:Lnet/yostore/aws/view/present/SettingActivity;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 120
    iget-object v0, p0, Lnet/yostore/aws/view/present/SettingActivity$1;->this$0:Lnet/yostore/aws/view/present/SettingActivity;

    iget-object v1, p0, Lnet/yostore/aws/view/present/SettingActivity$1;->this$0:Lnet/yostore/aws/view/present/SettingActivity;

    const-string v2, "MearPrefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lnet/yostore/aws/view/present/SettingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, v0, Lnet/yostore/aws/view/present/SettingActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 121
    iget-object v0, p0, Lnet/yostore/aws/view/present/SettingActivity$1;->this$0:Lnet/yostore/aws/view/present/SettingActivity;

    iget-object v1, p0, Lnet/yostore/aws/view/present/SettingActivity$1;->this$0:Lnet/yostore/aws/view/present/SettingActivity;

    iget-object v1, v1, Lnet/yostore/aws/view/present/SettingActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1}, Lnet/yostore/aws/preferences/Ap;->pref2ApiCfg(Landroid/content/SharedPreferences;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/yostore/aws/view/present/SettingActivity;->access$0(Lnet/yostore/aws/view/present/SettingActivity;Lnet/yostore/aws/api/ApiConfig;)V

    .line 122
    iget-object v0, p0, Lnet/yostore/aws/view/present/SettingActivity$1;->this$0:Lnet/yostore/aws/view/present/SettingActivity;

    iget-object v0, v0, Lnet/yostore/aws/view/present/SettingActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lnet/yostore/aws/preferences/Ap;->pref2ApiCfg(Landroid/content/SharedPreferences;)Lnet/yostore/aws/api/ApiConfig;

    .line 158
    iget-object v0, p0, Lnet/yostore/aws/view/present/SettingActivity$1;->this$0:Lnet/yostore/aws/view/present/SettingActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/SettingActivity;->access$1(Lnet/yostore/aws/view/present/SettingActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/present/SettingActivity$1;->this$0:Lnet/yostore/aws/view/present/SettingActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/present/SettingActivity;->access$2(Lnet/yostore/aws/view/present/SettingActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    return-void
.end method

.class Lnet/yostore/aws/view/present/OffLineSettingActivity$1;
.super Ljava/lang/Object;
.source "OffLineSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/present/OffLineSettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/present/OffLineSettingActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/present/OffLineSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/present/OffLineSettingActivity$1;->this$0:Lnet/yostore/aws/view/present/OffLineSettingActivity;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 105
    iget-object v0, p0, Lnet/yostore/aws/view/present/OffLineSettingActivity$1;->this$0:Lnet/yostore/aws/view/present/OffLineSettingActivity;

    iget-object v1, p0, Lnet/yostore/aws/view/present/OffLineSettingActivity$1;->this$0:Lnet/yostore/aws/view/present/OffLineSettingActivity;

    const-string v2, "MearPrefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lnet/yostore/aws/view/present/OffLineSettingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, v0, Lnet/yostore/aws/view/present/OffLineSettingActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 106
    iget-object v0, p0, Lnet/yostore/aws/view/present/OffLineSettingActivity$1;->this$0:Lnet/yostore/aws/view/present/OffLineSettingActivity;

    iget-object v1, p0, Lnet/yostore/aws/view/present/OffLineSettingActivity$1;->this$0:Lnet/yostore/aws/view/present/OffLineSettingActivity;

    iget-object v1, v1, Lnet/yostore/aws/view/present/OffLineSettingActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1}, Lnet/yostore/aws/preferences/Ap;->pref2ApiCfg(Landroid/content/SharedPreferences;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/yostore/aws/view/present/OffLineSettingActivity;->access$0(Lnet/yostore/aws/view/present/OffLineSettingActivity;Lnet/yostore/aws/api/ApiConfig;)V

    .line 107
    iget-object v0, p0, Lnet/yostore/aws/view/present/OffLineSettingActivity$1;->this$0:Lnet/yostore/aws/view/present/OffLineSettingActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/OffLineSettingActivity;->access$1(Lnet/yostore/aws/view/present/OffLineSettingActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/present/OffLineSettingActivity$1;->this$0:Lnet/yostore/aws/view/present/OffLineSettingActivity;

    iget-object v1, v1, Lnet/yostore/aws/view/present/OffLineSettingActivity;->uid:Ljava/lang/String;

    iput-object v1, v0, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lnet/yostore/aws/view/present/OffLineSettingActivity$1;->this$0:Lnet/yostore/aws/view/present/OffLineSettingActivity;

    iget-object v0, v0, Lnet/yostore/aws/view/present/OffLineSettingActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lnet/yostore/aws/preferences/Ap;->pref2ApiCfg(Landroid/content/SharedPreferences;)Lnet/yostore/aws/api/ApiConfig;

    .line 144
    iget-object v0, p0, Lnet/yostore/aws/view/present/OffLineSettingActivity$1;->this$0:Lnet/yostore/aws/view/present/OffLineSettingActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/present/OffLineSettingActivity;->access$2(Lnet/yostore/aws/view/present/OffLineSettingActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/present/OffLineSettingActivity$1;->this$0:Lnet/yostore/aws/view/present/OffLineSettingActivity;

    iget-object v1, v1, Lnet/yostore/aws/view/present/OffLineSettingActivity;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    return-void
.end method

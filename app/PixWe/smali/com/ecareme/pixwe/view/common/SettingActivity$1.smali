.class Lcom/ecareme/pixwe/view/common/SettingActivity$1;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/view/common/SettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/view/common/SettingActivity;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/view/common/SettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/view/common/SettingActivity$1;->this$0:Lcom/ecareme/pixwe/view/common/SettingActivity;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 121
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/SettingActivity$1;->this$0:Lcom/ecareme/pixwe/view/common/SettingActivity;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/SettingActivity$1;->this$0:Lcom/ecareme/pixwe/view/common/SettingActivity;

    const-string v2, "PixWePrefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/ecareme/pixwe/view/common/SettingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, v0, Lcom/ecareme/pixwe/view/common/SettingActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 122
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/SettingActivity$1;->this$0:Lcom/ecareme/pixwe/view/common/SettingActivity;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/SettingActivity$1;->this$0:Lcom/ecareme/pixwe/view/common/SettingActivity;

    iget-object v1, v1, Lcom/ecareme/pixwe/view/common/SettingActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1}, Lnet/yostore/aws/preferences/Ap;->pref2ApiCfg(Landroid/content/SharedPreferences;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/view/common/SettingActivity;->access$0(Lcom/ecareme/pixwe/view/common/SettingActivity;Lnet/yostore/aws/api/ApiConfig;)V

    .line 123
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/SettingActivity$1;->this$0:Lcom/ecareme/pixwe/view/common/SettingActivity;

    iget-object v0, v0, Lcom/ecareme/pixwe/view/common/SettingActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lnet/yostore/aws/preferences/Ap;->pref2ApiCfg(Landroid/content/SharedPreferences;)Lnet/yostore/aws/api/ApiConfig;

    .line 159
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/SettingActivity$1;->this$0:Lcom/ecareme/pixwe/view/common/SettingActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/SettingActivity;->access$1(Lcom/ecareme/pixwe/view/common/SettingActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/SettingActivity$1;->this$0:Lcom/ecareme/pixwe/view/common/SettingActivity;

    invoke-static {v1}, Lcom/ecareme/pixwe/view/common/SettingActivity;->access$2(Lcom/ecareme/pixwe/view/common/SettingActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    return-void
.end method

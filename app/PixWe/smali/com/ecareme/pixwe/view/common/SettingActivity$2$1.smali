.class Lcom/ecareme/pixwe/view/common/SettingActivity$2$1;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/view/common/SettingActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ecareme/pixwe/view/common/SettingActivity$2;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/view/common/SettingActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/view/common/SettingActivity$2$1;->this$1:Lcom/ecareme/pixwe/view/common/SettingActivity$2;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/SettingActivity$2$1;->this$1:Lcom/ecareme/pixwe/view/common/SettingActivity$2;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/SettingActivity$2;->access$0(Lcom/ecareme/pixwe/view/common/SettingActivity$2;)Lcom/ecareme/pixwe/view/common/SettingActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/ecareme/pixwe/view/common/SettingActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lnet/yostore/aws/preferences/Ap;->clearApiCfg(Landroid/content/SharedPreferences;)V

    .line 177
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/SettingActivity$2$1;->this$1:Lcom/ecareme/pixwe/view/common/SettingActivity$2;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/SettingActivity$2;->access$0(Lcom/ecareme/pixwe/view/common/SettingActivity$2;)Lcom/ecareme/pixwe/view/common/SettingActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/SettingActivity;->access$3(Lcom/ecareme/pixwe/view/common/SettingActivity;)V

    .line 178
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/SettingActivity$2$1;->this$1:Lcom/ecareme/pixwe/view/common/SettingActivity$2;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/SettingActivity$2;->access$0(Lcom/ecareme/pixwe/view/common/SettingActivity$2;)Lcom/ecareme/pixwe/view/common/SettingActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/ecareme/pixwe/PixWe;->logout(Landroid/content/Context;)V

    .line 179
    return-void
.end method

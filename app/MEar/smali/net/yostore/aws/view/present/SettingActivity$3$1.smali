.class Lnet/yostore/aws/view/present/SettingActivity$3$1;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/present/SettingActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/yostore/aws/view/present/SettingActivity$3;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/present/SettingActivity$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/present/SettingActivity$3$1;->this$1:Lnet/yostore/aws/view/present/SettingActivity$3;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 183
    iget-object v0, p0, Lnet/yostore/aws/view/present/SettingActivity$3$1;->this$1:Lnet/yostore/aws/view/present/SettingActivity$3;

    invoke-static {v0}, Lnet/yostore/aws/view/present/SettingActivity$3;->access$0(Lnet/yostore/aws/view/present/SettingActivity$3;)Lnet/yostore/aws/view/present/SettingActivity;

    move-result-object v0

    iget-object v0, v0, Lnet/yostore/aws/view/present/SettingActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lnet/yostore/aws/preferences/Ap;->clearApiCfg(Landroid/content/SharedPreferences;)V

    .line 184
    iget-object v0, p0, Lnet/yostore/aws/view/present/SettingActivity$3$1;->this$1:Lnet/yostore/aws/view/present/SettingActivity$3;

    invoke-static {v0}, Lnet/yostore/aws/view/present/SettingActivity$3;->access$0(Lnet/yostore/aws/view/present/SettingActivity$3;)Lnet/yostore/aws/view/present/SettingActivity;

    move-result-object v0

    invoke-static {v0}, Lnet/yostore/aws/view/present/SettingActivity;->access$3(Lnet/yostore/aws/view/present/SettingActivity;)V

    .line 185
    iget-object v0, p0, Lnet/yostore/aws/view/present/SettingActivity$3$1;->this$1:Lnet/yostore/aws/view/present/SettingActivity$3;

    invoke-static {v0}, Lnet/yostore/aws/view/present/SettingActivity$3;->access$0(Lnet/yostore/aws/view/present/SettingActivity$3;)Lnet/yostore/aws/view/present/SettingActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/ecareme/mear/Mear;->logout(Landroid/content/Context;)V

    .line 186
    return-void
.end method

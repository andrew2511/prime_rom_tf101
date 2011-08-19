.class Lnet/yostore/aws/view/common/SettingActivity$1;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/common/SettingActivity;->logoutFunction(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/common/SettingActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/common/SettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/common/SettingActivity$1;->this$0:Lnet/yostore/aws/view/common/SettingActivity;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 168
    iget-object v0, p0, Lnet/yostore/aws/view/common/SettingActivity$1;->this$0:Lnet/yostore/aws/view/common/SettingActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/common/SettingActivity;->access$8(Lnet/yostore/aws/view/common/SettingActivity;)V

    .line 169
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->logoutflg:Z

    .line 170
    iget-object v0, p0, Lnet/yostore/aws/view/common/SettingActivity$1;->this$0:Lnet/yostore/aws/view/common/SettingActivity;

    iget-object v0, v0, Lnet/yostore/aws/view/common/SettingActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->logout(Landroid/content/Context;)V

    .line 172
    return-void
.end method

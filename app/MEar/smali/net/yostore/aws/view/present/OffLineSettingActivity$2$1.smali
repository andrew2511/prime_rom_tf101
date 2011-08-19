.class Lnet/yostore/aws/view/present/OffLineSettingActivity$2$1;
.super Ljava/lang/Object;
.source "OffLineSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/present/OffLineSettingActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/yostore/aws/view/present/OffLineSettingActivity$2;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/present/OffLineSettingActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/present/OffLineSettingActivity$2$1;->this$1:Lnet/yostore/aws/view/present/OffLineSettingActivity$2;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 159
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lnet/yostore/aws/view/present/OffLineSettingActivity$2$1;->this$1:Lnet/yostore/aws/view/present/OffLineSettingActivity$2;

    invoke-static {v2}, Lnet/yostore/aws/view/present/OffLineSettingActivity$2;->access$0(Lnet/yostore/aws/view/present/OffLineSettingActivity$2;)Lnet/yostore/aws/view/present/OffLineSettingActivity;

    move-result-object v2

    const-class v3, Lnet/yostore/aws/service/PlayerService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    .local v1, intent:Landroid/content/Intent;
    sget-object v2, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    if-eqz v2, :cond_0

    .line 163
    :try_start_0
    sget-object v2, Lcom/ecareme/mear/Mear;->mpInterface:Lnet/yostore/aws/service/PlayerServiceInterface;

    invoke-interface {v2}, Lnet/yostore/aws/service/PlayerServiceInterface;->resetService()V

    .line 165
    iget-object v2, p0, Lnet/yostore/aws/view/present/OffLineSettingActivity$2$1;->this$1:Lnet/yostore/aws/view/present/OffLineSettingActivity$2;

    invoke-static {v2}, Lnet/yostore/aws/view/present/OffLineSettingActivity$2;->access$0(Lnet/yostore/aws/view/present/OffLineSettingActivity$2;)Lnet/yostore/aws/view/present/OffLineSettingActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Lnet/yostore/aws/view/present/OffLineSettingActivity;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 179
    :cond_0
    :goto_0
    iget-object v2, p0, Lnet/yostore/aws/view/present/OffLineSettingActivity$2$1;->this$1:Lnet/yostore/aws/view/present/OffLineSettingActivity$2;

    invoke-static {v2}, Lnet/yostore/aws/view/present/OffLineSettingActivity$2;->access$0(Lnet/yostore/aws/view/present/OffLineSettingActivity$2;)Lnet/yostore/aws/view/present/OffLineSettingActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/ecareme/mear/Mear;->goSplash(Landroid/content/Context;)V

    .line 180
    iget-object v2, p0, Lnet/yostore/aws/view/present/OffLineSettingActivity$2$1;->this$1:Lnet/yostore/aws/view/present/OffLineSettingActivity$2;

    invoke-static {v2}, Lnet/yostore/aws/view/present/OffLineSettingActivity$2;->access$0(Lnet/yostore/aws/view/present/OffLineSettingActivity$2;)Lnet/yostore/aws/view/present/OffLineSettingActivity;

    move-result-object v2

    invoke-virtual {v2}, Lnet/yostore/aws/view/present/OffLineSettingActivity;->finish()V

    .line 181
    return-void

    .line 167
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 170
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 171
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 174
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

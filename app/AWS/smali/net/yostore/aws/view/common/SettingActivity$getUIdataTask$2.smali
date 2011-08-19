.class Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask$2;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->onProgressUpdate([Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask$2;->this$1:Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 293
    iget-object v0, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask$2;->this$1:Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;

    invoke-static {v0}, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->access$4(Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;)Lnet/yostore/aws/view/common/SettingActivity;

    move-result-object v0

    iget-object p0, v0, Lnet/yostore/aws/view/common/SettingActivity;->ctx:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 294
    return-void
.end method

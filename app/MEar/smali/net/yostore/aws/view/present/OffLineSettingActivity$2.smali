.class Lnet/yostore/aws/view/present/OffLineSettingActivity$2;
.super Ljava/lang/Object;
.source "OffLineSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lnet/yostore/aws/view/present/OffLineSettingActivity$2;->this$0:Lnet/yostore/aws/view/present/OffLineSettingActivity;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lnet/yostore/aws/view/present/OffLineSettingActivity$2;)Lnet/yostore/aws/view/present/OffLineSettingActivity;
    .locals 1
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lnet/yostore/aws/view/present/OffLineSettingActivity$2;->this$0:Lnet/yostore/aws/view/present/OffLineSettingActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 151
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lnet/yostore/aws/view/present/OffLineSettingActivity$2;->this$0:Lnet/yostore/aws/view/present/OffLineSettingActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 152
    const v2, 0x7f0600a7

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 153
    const v2, 0x7f060007

    new-instance v3, Lnet/yostore/aws/view/present/OffLineSettingActivity$2$1;

    invoke-direct {v3, p0}, Lnet/yostore/aws/view/present/OffLineSettingActivity$2$1;-><init>(Lnet/yostore/aws/view/present/OffLineSettingActivity$2;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 184
    const v2, 0x7f060008

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 185
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 186
    .local v0, show:Landroid/app/AlertDialog;
    return-void
.end method

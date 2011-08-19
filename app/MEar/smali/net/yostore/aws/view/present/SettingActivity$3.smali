.class Lnet/yostore/aws/view/present/SettingActivity$3;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lnet/yostore/aws/view/present/SettingActivity$3;->this$0:Lnet/yostore/aws/view/present/SettingActivity;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lnet/yostore/aws/view/present/SettingActivity$3;)Lnet/yostore/aws/view/present/SettingActivity;
    .locals 1
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lnet/yostore/aws/view/present/SettingActivity$3;->this$0:Lnet/yostore/aws/view/present/SettingActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 175
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lnet/yostore/aws/view/present/SettingActivity$3;->this$0:Lnet/yostore/aws/view/present/SettingActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 176
    const v2, 0x7f06001c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 177
    const v2, 0x7f06001e

    new-instance v3, Lnet/yostore/aws/view/present/SettingActivity$3$1;

    invoke-direct {v3, p0}, Lnet/yostore/aws/view/present/SettingActivity$3$1;-><init>(Lnet/yostore/aws/view/present/SettingActivity$3;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 189
    const v2, 0x7f06001f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 190
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 191
    .local v0, show:Landroid/app/AlertDialog;
    return-void
.end method

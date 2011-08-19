.class Lcom/ecareme/pixwe/view/common/SettingActivity$2;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/ecareme/pixwe/view/common/SettingActivity$2;->this$0:Lcom/ecareme/pixwe/view/common/SettingActivity;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ecareme/pixwe/view/common/SettingActivity$2;)Lcom/ecareme/pixwe/view/common/SettingActivity;
    .locals 1
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/SettingActivity$2;->this$0:Lcom/ecareme/pixwe/view/common/SettingActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 168
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/ecareme/pixwe/view/common/SettingActivity$2;->this$0:Lcom/ecareme/pixwe/view/common/SettingActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 169
    const v2, 0x7f06009c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 170
    const v2, 0x7f06009d

    new-instance v3, Lcom/ecareme/pixwe/view/common/SettingActivity$2$1;

    invoke-direct {v3, p0}, Lcom/ecareme/pixwe/view/common/SettingActivity$2$1;-><init>(Lcom/ecareme/pixwe/view/common/SettingActivity$2;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 182
    const v2, 0x7f06009e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 183
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 184
    .local v0, show:Landroid/app/AlertDialog;
    return-void
.end method

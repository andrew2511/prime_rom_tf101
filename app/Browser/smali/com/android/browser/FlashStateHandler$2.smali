.class final Lcom/android/browser/FlashStateHandler$2;
.super Ljava/lang/Object;
.source "FlashStateHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/FlashStateHandler;->showInstallrAlert(ZLandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$textEntryView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/browser/FlashStateHandler$2;->val$textEntryView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 147
    invoke-static {}, Lcom/android/browser/FlashStateHandler;->access$200()Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/android/browser/FlashStateHandler$2;->val$textEntryView:Landroid/view/View;

    const v2, 0x7f100041

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 149
    .local v0, NOTShowBX:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/browser/FlashStateHandler;->access$002(Z)Z

    .line 154
    :goto_0
    invoke-static {}, Lcom/android/browser/FlashStateHandler;->access$200()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 156
    .end local v0           #NOTShowBX:Landroid/widget/CheckBox;
    :cond_0
    return-void

    .line 152
    .restart local v0       #NOTShowBX:Landroid/widget/CheckBox;
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/browser/FlashStateHandler;->access$002(Z)Z

    goto :goto_0
.end method

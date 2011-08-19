.class public Lcom/android/vending/BaseActivity$ProgressDialogAccessor;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/android/vending/controller/DialogAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProgressDialogAccessor"
.end annotation


# instance fields
.field private mMessage:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/vending/BaseActivity;


# direct methods
.method public constructor <init>(Lcom/android/vending/BaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2095
    iput-object p1, p0, Lcom/android/vending/BaseActivity$ProgressDialogAccessor;->this$0:Lcom/android/vending/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2096
    return-void
.end method

.method public constructor <init>(Lcom/android/vending/BaseActivity;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter "message"

    .prologue
    .line 2098
    iput-object p1, p0, Lcom/android/vending/BaseActivity$ProgressDialogAccessor;->this$0:Lcom/android/vending/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2099
    iput-object p2, p0, Lcom/android/vending/BaseActivity$ProgressDialogAccessor;->mMessage:Ljava/lang/CharSequence;

    .line 2100
    return-void
.end method


# virtual methods
.method public create()Landroid/app/Dialog;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2103
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/vending/BaseActivity$ProgressDialogAccessor;->this$0:Lcom/android/vending/BaseActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 2104
    .local v0, dialog:Landroid/app/ProgressDialog;
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2105
    iget-object v1, p0, Lcom/android/vending/BaseActivity$ProgressDialogAccessor;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2106
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 2107
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 2108
    return-object v0
.end method

.method public prepare(Landroid/app/Dialog;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 2116
    check-cast p1, Landroid/app/ProgressDialog;

    .end local p1
    iget-object v0, p0, Lcom/android/vending/BaseActivity$ProgressDialogAccessor;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2117
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;I)V
    .locals 3
    .parameter "icicle"
    .parameter "id"

    .prologue
    .line 2125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "progress_dialog_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2126
    .local v0, key:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/BaseActivity$ProgressDialogAccessor;->mMessage:Ljava/lang/CharSequence;

    .line 2127
    return-void
.end method

.method public saveState(Landroid/os/Bundle;I)V
    .locals 3
    .parameter "icicle"
    .parameter "id"

    .prologue
    .line 2120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "progress_dialog_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2121
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/vending/BaseActivity$ProgressDialogAccessor;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2122
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 2112
    iput-object p1, p0, Lcom/android/vending/BaseActivity$ProgressDialogAccessor;->mMessage:Ljava/lang/CharSequence;

    .line 2113
    return-void
.end method

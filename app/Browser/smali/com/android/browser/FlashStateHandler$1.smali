.class final Lcom/android/browser/FlashStateHandler$1;
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
.field final synthetic val$closeActivity:Z

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$textEntryView:Landroid/view/View;


# direct methods
.method constructor <init>(ZLandroid/view/View;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/browser/FlashStateHandler$1;->val$closeActivity:Z

    iput-object p2, p0, Lcom/android/browser/FlashStateHandler$1;->val$textEntryView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/browser/FlashStateHandler$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 129
    iget-boolean v2, p0, Lcom/android/browser/FlashStateHandler$1;->val$closeActivity:Z

    if-eqz v2, :cond_0

    .line 130
    iget-object v2, p0, Lcom/android/browser/FlashStateHandler$1;->val$textEntryView:Landroid/view/View;

    const v3, 0x7f100041

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 131
    .local v0, NOTShowBX:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/browser/FlashStateHandler;->access$002(Z)Z

    .line 137
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/android/browser/FlashStateHandler;->access$100()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/FlashStateHandler$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v0           #NOTShowBX:Landroid/widget/CheckBox;
    :cond_0
    :goto_1
    return-void

    .line 134
    .restart local v0       #NOTShowBX:Landroid/widget/CheckBox;
    :cond_1
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/browser/FlashStateHandler;->access$002(Z)Z

    goto :goto_0

    .line 138
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 139
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "TestFlashPlugin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showErrorAlertIntent: ActivityNotFoundException:{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/browser/FlashStateHandler$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

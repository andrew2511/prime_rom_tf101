.class final Lcom/asus/vibe2/VibeErr$1;
.super Ljava/lang/Object;
.source "VibeErr.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/vibe2/VibeErr;->showErrorAlert(Landroid/app/Activity;ZLandroid/content/Intent;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$closeActivity:Z

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/app/Activity;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/asus/vibe2/VibeErr$1;->val$intent:Landroid/content/Intent;

    iput-object p2, p0, Lcom/asus/vibe2/VibeErr$1;->val$activity:Landroid/app/Activity;

    iput-boolean p3, p0, Lcom/asus/vibe2/VibeErr$1;->val$closeActivity:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 61
    iget-object v1, p0, Lcom/asus/vibe2/VibeErr$1;->val$intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/asus/vibe2/VibeErr$1;->val$activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/asus/vibe2/VibeErr$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/asus/vibe2/VibeErr$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/asus/vibe2/VibeErr$1;->val$closeActivity:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/asus/vibe2/VibeErr$1;->val$activity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/asus/vibe2/VibeErr$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 71
    :cond_1
    return-void

    .line 64
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 65
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v1, "ASUS@Vibe"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not start activity for"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/vibe2/VibeErr$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

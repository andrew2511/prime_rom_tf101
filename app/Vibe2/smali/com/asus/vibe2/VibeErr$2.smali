.class final Lcom/asus/vibe2/VibeErr$2;
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


# direct methods
.method constructor <init>(ZLandroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/asus/vibe2/VibeErr$2;->val$closeActivity:Z

    iput-object p2, p0, Lcom/asus/vibe2/VibeErr$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/asus/vibe2/VibeErr$2;->val$closeActivity:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/vibe2/VibeErr$2;->val$activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/asus/vibe2/VibeErr$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 79
    :cond_0
    return-void
.end method

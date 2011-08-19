.class Lcom/android/setupwizard/ActivationActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "ActivationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/setupwizard/ActivationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/setupwizard/ActivationActivity;


# direct methods
.method constructor <init>(Lcom/android/setupwizard/ActivationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/setupwizard/ActivationActivity$3;->this$0:Lcom/android/setupwizard/ActivationActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity$3;->this$0:Lcom/android/setupwizard/ActivationActivity;

    invoke-static {p2}, Lcom/android/setupwizard/ActivationActivity;->access$500(Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/setupwizard/ActivationActivity;->access$402(Lcom/android/setupwizard/ActivationActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 332
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity$3;->this$0:Lcom/android/setupwizard/ActivationActivity;

    invoke-static {v0}, Lcom/android/setupwizard/ActivationActivity;->access$600(Lcom/android/setupwizard/ActivationActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity$3;->this$0:Lcom/android/setupwizard/ActivationActivity;

    invoke-static {v0}, Lcom/android/setupwizard/ActivationActivity;->access$700(Lcom/android/setupwizard/ActivationActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/setupwizard/ActivationActivity$3;->this$0:Lcom/android/setupwizard/ActivationActivity;

    const v2, 0x7f0a0032

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/setupwizard/ActivationActivity$3;->this$0:Lcom/android/setupwizard/ActivationActivity;

    invoke-static {v5}, Lcom/android/setupwizard/ActivationActivity;->access$400(Lcom/android/setupwizard/ActivationActivity;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/setupwizard/ActivationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    :cond_0
    return-void
.end method

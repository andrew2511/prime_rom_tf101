.class Lcom/android/setupwizard/SetupWizardActivity$2;
.super Ljava/lang/Object;
.source "SetupWizardActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/setupwizard/SetupWizardActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/setupwizard/SetupWizardActivity;


# direct methods
.method constructor <init>(Lcom/android/setupwizard/SetupWizardActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/android/setupwizard/SetupWizardActivity$2;->this$0:Lcom/android/setupwizard/SetupWizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/setupwizard/SetupWizardActivity$2;->this$0:Lcom/android/setupwizard/SetupWizardActivity;

    invoke-static {v0}, Lcom/android/setupwizard/SetupWizardActivity;->access$100(Lcom/android/setupwizard/SetupWizardActivity;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/setupwizard/SetupWizardActivity$2;->this$0:Lcom/android/setupwizard/SetupWizardActivity;

    invoke-static {v0}, Lcom/android/setupwizard/SetupWizardActivity;->access$100(Lcom/android/setupwizard/SetupWizardActivity;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->run()V

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/android/setupwizard/SetupWizardActivity$2;->this$0:Lcom/android/setupwizard/SetupWizardActivity;

    invoke-static {v0}, Lcom/android/setupwizard/SetupWizardActivity;->access$300(Lcom/android/setupwizard/SetupWizardActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/setupwizard/SetupWizardActivity$2;->this$0:Lcom/android/setupwizard/SetupWizardActivity;

    invoke-static {v1}, Lcom/android/setupwizard/SetupWizardActivity;->access$200(Lcom/android/setupwizard/SetupWizardActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 405
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 410
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/setupwizard/SetupWizardActivity$2;->this$0:Lcom/android/setupwizard/SetupWizardActivity;

    invoke-static {v0}, Lcom/android/setupwizard/SetupWizardActivity;->access$400(Lcom/android/setupwizard/SetupWizardActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/android/setupwizard/SetupWizardActivity$2;->this$0:Lcom/android/setupwizard/SetupWizardActivity;

    invoke-static {v0}, Lcom/android/setupwizard/SetupWizardActivity;->access$400(Lcom/android/setupwizard/SetupWizardActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 418
    :cond_0
    return-void
.end method

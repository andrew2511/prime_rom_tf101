.class Lcom/android/setupwizard/SetupWizardActivity$4;
.super Ljava/lang/Object;
.source "SetupWizardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/setupwizard/SetupWizardActivity;->stopAnimation(Landroid/graphics/drawable/AnimationDrawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/setupwizard/SetupWizardActivity;

.field final synthetic val$animation:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method constructor <init>(Lcom/android/setupwizard/SetupWizardActivity;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 495
    iput-object p1, p0, Lcom/android/setupwizard/SetupWizardActivity$4;->this$0:Lcom/android/setupwizard/SetupWizardActivity;

    iput-object p2, p0, Lcom/android/setupwizard/SetupWizardActivity$4;->val$animation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/setupwizard/SetupWizardActivity$4;->val$animation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/setupwizard/SetupWizardActivity$4;->val$animation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 499
    :cond_0
    return-void
.end method

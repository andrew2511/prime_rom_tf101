.class Lcom/android/setupwizard/SetupWizardActivity$1;
.super Ljava/lang/Object;
.source "SetupWizardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/setupwizard/SetupWizardActivity;
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
    .line 110
    iput-object p1, p0, Lcom/android/setupwizard/SetupWizardActivity$1;->this$0:Lcom/android/setupwizard/SetupWizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 113
    iget-object v1, p0, Lcom/android/setupwizard/SetupWizardActivity$1;->this$0:Lcom/android/setupwizard/SetupWizardActivity;

    invoke-static {v1}, Lcom/android/setupwizard/SetupWizardActivity;->access$000(Lcom/android/setupwizard/SetupWizardActivity;)V

    .line 116
    iget-object v1, p0, Lcom/android/setupwizard/SetupWizardActivity$1;->this$0:Lcom/android/setupwizard/SetupWizardActivity;

    invoke-virtual {v1}, Lcom/android/setupwizard/SetupWizardActivity;->getActivityContentView()Landroid/view/View;

    move-result-object v0

    .line 117
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 118
    :cond_0
    return-void
.end method

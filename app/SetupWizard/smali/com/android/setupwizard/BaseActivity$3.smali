.class Lcom/android/setupwizard/BaseActivity$3;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/setupwizard/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/setupwizard/BaseActivity;


# direct methods
.method constructor <init>(Lcom/android/setupwizard/BaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 394
    iput-object p1, p0, Lcom/android/setupwizard/BaseActivity$3;->this$0:Lcom/android/setupwizard/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/setupwizard/BaseActivity$3;->this$0:Lcom/android/setupwizard/BaseActivity;

    invoke-static {v0}, Lcom/android/setupwizard/BaseActivity;->access$200(Lcom/android/setupwizard/BaseActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/setupwizard/BaseActivity$3;->this$0:Lcom/android/setupwizard/BaseActivity;

    invoke-static {v0}, Lcom/android/setupwizard/BaseActivity;->access$200(Lcom/android/setupwizard/BaseActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/setupwizard/BaseActivity$3;->this$0:Lcom/android/setupwizard/BaseActivity;

    invoke-virtual {v0}, Lcom/android/setupwizard/BaseActivity;->start()V

    .line 405
    :cond_0
    return-void
.end method

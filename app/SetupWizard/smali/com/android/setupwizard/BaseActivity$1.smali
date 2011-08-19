.class Lcom/android/setupwizard/BaseActivity$1;
.super Landroid/telephony/PhoneStateListener;
.source "BaseActivity.java"


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
    .line 284
    iput-object p1, p0, Lcom/android/setupwizard/BaseActivity$1;->this$0:Lcom/android/setupwizard/BaseActivity;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onOtaspChanged(I)V
    .locals 1
    .parameter "otaspMode"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/setupwizard/BaseActivity$1;->this$0:Lcom/android/setupwizard/BaseActivity;

    invoke-static {v0, p1}, Lcom/android/setupwizard/BaseActivity;->access$102(Lcom/android/setupwizard/BaseActivity;I)I

    .line 293
    iget-object v0, p0, Lcom/android/setupwizard/BaseActivity$1;->this$0:Lcom/android/setupwizard/BaseActivity;

    invoke-virtual {v0}, Lcom/android/setupwizard/BaseActivity;->onOtaspChanged()V

    .line 294
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .parameter "serviceState"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/setupwizard/BaseActivity$1;->this$0:Lcom/android/setupwizard/BaseActivity;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/setupwizard/BaseActivity;->access$002(Lcom/android/setupwizard/BaseActivity;I)I

    .line 288
    iget-object v0, p0, Lcom/android/setupwizard/BaseActivity$1;->this$0:Lcom/android/setupwizard/BaseActivity;

    invoke-virtual {v0}, Lcom/android/setupwizard/BaseActivity;->onServiceStateChanged()V

    .line 289
    return-void
.end method

.class Lcom/android/setupwizard/ActivationActivity$1;
.super Landroid/telephony/PhoneStateListener;
.source "ActivationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/setupwizard/ActivationActivity;
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
    .line 145
    iput-object p1, p0, Lcom/android/setupwizard/ActivationActivity$1;->this$0:Lcom/android/setupwizard/ActivationActivity;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity$1;->this$0:Lcom/android/setupwizard/ActivationActivity;

    invoke-static {v0, p1}, Lcom/android/setupwizard/ActivationActivity;->access$202(Lcom/android/setupwizard/ActivationActivity;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 155
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity$1;->this$0:Lcom/android/setupwizard/ActivationActivity;

    invoke-static {v0}, Lcom/android/setupwizard/ActivationActivity;->access$100(Lcom/android/setupwizard/ActivationActivity;)V

    .line 156
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1
    .parameter "signalStrength"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity$1;->this$0:Lcom/android/setupwizard/ActivationActivity;

    invoke-static {v0, p1}, Lcom/android/setupwizard/ActivationActivity;->access$002(Lcom/android/setupwizard/ActivationActivity;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    .line 149
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity$1;->this$0:Lcom/android/setupwizard/ActivationActivity;

    invoke-static {v0}, Lcom/android/setupwizard/ActivationActivity;->access$100(Lcom/android/setupwizard/ActivationActivity;)V

    .line 150
    return-void
.end method

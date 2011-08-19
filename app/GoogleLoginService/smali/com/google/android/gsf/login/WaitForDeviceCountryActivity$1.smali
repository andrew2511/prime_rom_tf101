.class Lcom/google/android/gsf/login/WaitForDeviceCountryActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "WaitForDeviceCountryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity$1;->this$0:Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity$1;->this$0:Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;

    invoke-virtual {v0}, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->getDeviceCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity$1;->this$0:Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->returnResult(I)V

    .line 55
    :cond_0
    return-void
.end method

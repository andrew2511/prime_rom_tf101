.class Lcom/layar/util/SensorHelper$4;
.super Ljava/lang/Object;
.source "SensorHelper.java"

# interfaces
.implements Lcom/skyhookwireless/wps/RegistrationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/util/SensorHelper;->registerDeviceWithSkyhook()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/util/SensorHelper;

.field private final synthetic val$newUsername:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/layar/util/SensorHelper;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/util/SensorHelper$4;->this$0:Lcom/layar/util/SensorHelper;

    iput-object p2, p0, Lcom/layar/util/SensorHelper$4;->val$newUsername:Ljava/lang/String;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/layar/util/SensorHelper$4;->this$0:Lcom/layar/util/SensorHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/layar/util/SensorHelper;->access$11(Lcom/layar/util/SensorHelper;Z)V

    .line 206
    return-void
.end method

.method public handleError(Lcom/skyhookwireless/wps/WPSReturnCode;)Lcom/skyhookwireless/wps/WPSContinuation;
    .locals 2
    .parameter "error"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/layar/util/SensorHelper$4;->this$0:Lcom/layar/util/SensorHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/layar/util/SensorHelper;->access$11(Lcom/layar/util/SensorHelper;Z)V

    .line 199
    sget-object v0, Lcom/skyhookwireless/wps/WPSContinuation;->WPS_CONTINUE:Lcom/skyhookwireless/wps/WPSContinuation;

    return-object v0
.end method

.method public handleSuccess()V
    .locals 5

    .prologue
    .line 211
    iget-object v0, p0, Lcom/layar/util/SensorHelper$4;->this$0:Lcom/layar/util/SensorHelper;

    invoke-static {v0}, Lcom/layar/util/SensorHelper;->access$12(Lcom/layar/util/SensorHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "skyhook.username"

    iget-object v2, p0, Lcom/layar/util/SensorHelper$4;->val$newUsername:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 212
    iget-object v0, p0, Lcom/layar/util/SensorHelper$4;->this$0:Lcom/layar/util/SensorHelper;

    new-instance v1, Lcom/skyhookwireless/wps/WPSAuthentication;

    iget-object v2, p0, Lcom/layar/util/SensorHelper$4;->val$newUsername:Ljava/lang/String;

    const-string v3, "layar"

    invoke-direct {v1, v2, v3}, Lcom/skyhookwireless/wps/WPSAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/layar/util/SensorHelper;->access$13(Lcom/layar/util/SensorHelper;Lcom/skyhookwireless/wps/WPSAuthentication;)V

    .line 213
    iget-object v0, p0, Lcom/layar/util/SensorHelper$4;->this$0:Lcom/layar/util/SensorHelper;

    invoke-static {v0}, Lcom/layar/util/SensorHelper;->access$0(Lcom/layar/util/SensorHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/layar/util/SensorHelper$4;->this$0:Lcom/layar/util/SensorHelper;

    invoke-static {v0}, Lcom/layar/util/SensorHelper;->access$14(Lcom/layar/util/SensorHelper;)Lcom/skyhookwireless/wps/XPS;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/layar/util/SensorHelper$4;->this$0:Lcom/layar/util/SensorHelper;

    invoke-static {v1}, Lcom/layar/util/SensorHelper;->access$15(Lcom/layar/util/SensorHelper;)Lcom/skyhookwireless/wps/WPSAuthentication;

    move-result-object v1

    .line 216
    invoke-static {}, Lcom/layar/util/SensorHelper;->access$16()[I

    move-result-object v2

    iget-object v3, p0, Lcom/layar/util/SensorHelper$4;->this$0:Lcom/layar/util/SensorHelper;

    invoke-static {v3}, Lcom/layar/util/SensorHelper;->access$17(Lcom/layar/util/SensorHelper;)I

    move-result v3

    aget v2, v2, v3

    .line 217
    const/16 v3, 0x32

    .line 218
    iget-object v4, p0, Lcom/layar/util/SensorHelper$4;->this$0:Lcom/layar/util/SensorHelper;

    invoke-static {v4}, Lcom/layar/util/SensorHelper;->access$18(Lcom/layar/util/SensorHelper;)Lcom/skyhookwireless/wps/WPSPeriodicLocationCallback;

    move-result-object v4

    .line 214
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/skyhookwireless/wps/XPS;->getXPSLocation(Lcom/skyhookwireless/wps/WPSAuthentication;IILcom/skyhookwireless/wps/WPSPeriodicLocationCallback;)V

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/layar/util/SensorHelper$4;->this$0:Lcom/layar/util/SensorHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/layar/util/SensorHelper;->access$11(Lcom/layar/util/SensorHelper;Z)V

    .line 221
    return-void
.end method

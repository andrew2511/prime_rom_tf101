.class Lcom/infraware/registration/UserRegistrationActivity$1$2;
.super Ljava/lang/Object;
.source "UserRegistrationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/registration/UserRegistrationActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/infraware/registration/UserRegistrationActivity$1;


# direct methods
.method constructor <init>(Lcom/infraware/registration/UserRegistrationActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/registration/UserRegistrationActivity$1$2;->this$1:Lcom/infraware/registration/UserRegistrationActivity$1;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 167
    const-string v11, "http://polarisoffice.infraware.co.kr/dmweb/AddUserInfo.aspx?"

    .line 168
    .local v11, url:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, locale:Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    .line 170
    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v10

    .line 172
    .local v10, timezone:Ljava/lang/String;
    iget-object v12, p0, Lcom/infraware/registration/UserRegistrationActivity$1$2;->this$1:Lcom/infraware/registration/UserRegistrationActivity$1;

    invoke-static {v12}, Lcom/infraware/registration/UserRegistrationActivity$1;->access$0(Lcom/infraware/registration/UserRegistrationActivity$1;)Lcom/infraware/registration/UserRegistrationActivity;

    move-result-object v12

    const-string v13, "phone"

    invoke-virtual {v12, v13}, Lcom/infraware/registration/UserRegistrationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 173
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, imei:Ljava/lang/String;
    iget-object v12, p0, Lcom/infraware/registration/UserRegistrationActivity$1$2;->this$1:Lcom/infraware/registration/UserRegistrationActivity$1;

    invoke-static {v12}, Lcom/infraware/registration/UserRegistrationActivity$1;->access$0(Lcom/infraware/registration/UserRegistrationActivity$1;)Lcom/infraware/registration/UserRegistrationActivity;

    move-result-object v12

    invoke-static {v12, v2}, Lcom/infraware/registration/UserRegistrationActivity;->access$1(Lcom/infraware/registration/UserRegistrationActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 175
    .local v4, makeMD5:Ljava/lang/String;
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 176
    .local v0, brand:Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 177
    .local v1, device:Ljava/lang/String;
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 178
    .local v5, model:Ljava/lang/String;
    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 180
    .local v9, osVer:Ljava/lang/String;
    new-instance v7, Lcom/infraware/registration/SyncNetworkingStep;

    invoke-direct {v7}, Lcom/infraware/registration/SyncNetworkingStep;-><init>()V

    .line 181
    .local v7, netSync:Lcom/infraware/registration/SyncNetworkingStep;
    new-instance v8, Lcom/infraware/registration/RegisterNetworkConnect;

    invoke-direct {v8}, Lcom/infraware/registration/RegisterNetworkConnect;-><init>()V

    .line 183
    .local v8, network:Lcom/infraware/registration/RegisterNetworkConnect;
    iget-object v12, p0, Lcom/infraware/registration/UserRegistrationActivity$1$2;->this$1:Lcom/infraware/registration/UserRegistrationActivity$1;

    invoke-static {v12}, Lcom/infraware/registration/UserRegistrationActivity$1;->access$0(Lcom/infraware/registration/UserRegistrationActivity$1;)Lcom/infraware/registration/UserRegistrationActivity;

    move-result-object v12

    invoke-static {v12}, Lcom/infraware/registration/UserRegistrationActivity;->access$2(Lcom/infraware/registration/UserRegistrationActivity;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/infraware/registration/RegisterNetworkConnect;->setUserName(Ljava/lang/String;)V

    .line 184
    iget-object v12, p0, Lcom/infraware/registration/UserRegistrationActivity$1$2;->this$1:Lcom/infraware/registration/UserRegistrationActivity$1;

    invoke-static {v12}, Lcom/infraware/registration/UserRegistrationActivity$1;->access$0(Lcom/infraware/registration/UserRegistrationActivity$1;)Lcom/infraware/registration/UserRegistrationActivity;

    move-result-object v12

    invoke-static {v12}, Lcom/infraware/registration/UserRegistrationActivity;->access$3(Lcom/infraware/registration/UserRegistrationActivity;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/infraware/registration/RegisterNetworkConnect;->setEmail(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v8, v3}, Lcom/infraware/registration/RegisterNetworkConnect;->setLocale(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v8, v10}, Lcom/infraware/registration/RegisterNetworkConnect;->setTimeZone(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v8, v4}, Lcom/infraware/registration/RegisterNetworkConnect;->setIMEI(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v8, v0}, Lcom/infraware/registration/RegisterNetworkConnect;->setBrand(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v8, v1}, Lcom/infraware/registration/RegisterNetworkConnect;->setDevice(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v8, v5}, Lcom/infraware/registration/RegisterNetworkConnect;->setModel(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v8, v9}, Lcom/infraware/registration/RegisterNetworkConnect;->setOSVer(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v8, v7}, Lcom/infraware/registration/RegisterNetworkConnect;->setSyncher(Lcom/infraware/registration/SyncNetworkingStep;)V

    .line 194
    invoke-virtual {v8, v11}, Lcom/infraware/registration/RegisterNetworkConnect;->connectNetwork(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v7}, Lcom/infraware/registration/SyncNetworkingStep;->waitTurn()V

    .line 197
    invoke-virtual {v8}, Lcom/infraware/registration/RegisterNetworkConnect;->getResult()I

    move-result v6

    .line 199
    .local v6, nResult:I
    iget-object v12, p0, Lcom/infraware/registration/UserRegistrationActivity$1$2;->this$1:Lcom/infraware/registration/UserRegistrationActivity$1;

    invoke-static {v12}, Lcom/infraware/registration/UserRegistrationActivity$1;->access$0(Lcom/infraware/registration/UserRegistrationActivity$1;)Lcom/infraware/registration/UserRegistrationActivity;

    move-result-object v12

    invoke-static {v12}, Lcom/infraware/registration/UserRegistrationActivity;->access$0(Lcom/infraware/registration/UserRegistrationActivity;)Landroid/app/AlertDialog;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 200
    iget-object v12, p0, Lcom/infraware/registration/UserRegistrationActivity$1$2;->this$1:Lcom/infraware/registration/UserRegistrationActivity$1;

    invoke-static {v12}, Lcom/infraware/registration/UserRegistrationActivity$1;->access$0(Lcom/infraware/registration/UserRegistrationActivity$1;)Lcom/infraware/registration/UserRegistrationActivity;

    move-result-object v12

    invoke-static {v12}, Lcom/infraware/registration/UserRegistrationActivity;->access$0(Lcom/infraware/registration/UserRegistrationActivity;)Landroid/app/AlertDialog;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 201
    iget-object v12, p0, Lcom/infraware/registration/UserRegistrationActivity$1$2;->this$1:Lcom/infraware/registration/UserRegistrationActivity$1;

    invoke-static {v12}, Lcom/infraware/registration/UserRegistrationActivity$1;->access$0(Lcom/infraware/registration/UserRegistrationActivity$1;)Lcom/infraware/registration/UserRegistrationActivity;

    move-result-object v12

    invoke-static {v12}, Lcom/infraware/registration/UserRegistrationActivity;->access$0(Lcom/infraware/registration/UserRegistrationActivity;)Landroid/app/AlertDialog;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/AlertDialog;->cancel()V

    .line 203
    :cond_0
    const/4 v12, 0x1

    if-ne v6, v12, :cond_1

    .line 204
    iget-object v12, p0, Lcom/infraware/registration/UserRegistrationActivity$1$2;->this$1:Lcom/infraware/registration/UserRegistrationActivity$1;

    invoke-static {v12}, Lcom/infraware/registration/UserRegistrationActivity$1;->access$0(Lcom/infraware/registration/UserRegistrationActivity$1;)Lcom/infraware/registration/UserRegistrationActivity;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/infraware/registration/UserRegistrationActivity;->access$4(Lcom/infraware/registration/UserRegistrationActivity;Z)V

    .line 205
    iget-object v12, p0, Lcom/infraware/registration/UserRegistrationActivity$1$2;->this$1:Lcom/infraware/registration/UserRegistrationActivity$1;

    invoke-static {v12}, Lcom/infraware/registration/UserRegistrationActivity$1;->access$0(Lcom/infraware/registration/UserRegistrationActivity$1;)Lcom/infraware/registration/UserRegistrationActivity;

    move-result-object v12

    iget-object v12, v12, Lcom/infraware/registration/UserRegistrationActivity;->mEventHandler:Landroid/os/Handler;

    .line 206
    const/16 v13, 0x44c

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 218
    :goto_0
    return-void

    .line 207
    :cond_1
    const/16 v12, 0x11

    if-ne v6, v12, :cond_2

    .line 208
    iget-object v12, p0, Lcom/infraware/registration/UserRegistrationActivity$1$2;->this$1:Lcom/infraware/registration/UserRegistrationActivity$1;

    invoke-static {v12}, Lcom/infraware/registration/UserRegistrationActivity$1;->access$0(Lcom/infraware/registration/UserRegistrationActivity$1;)Lcom/infraware/registration/UserRegistrationActivity;

    move-result-object v12

    invoke-static {v12, v6}, Lcom/infraware/registration/UserRegistrationActivity;->access$5(Lcom/infraware/registration/UserRegistrationActivity;I)V

    .line 209
    iget-object v12, p0, Lcom/infraware/registration/UserRegistrationActivity$1$2;->this$1:Lcom/infraware/registration/UserRegistrationActivity$1;

    invoke-static {v12}, Lcom/infraware/registration/UserRegistrationActivity$1;->access$0(Lcom/infraware/registration/UserRegistrationActivity$1;)Lcom/infraware/registration/UserRegistrationActivity;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/infraware/registration/UserRegistrationActivity;->access$4(Lcom/infraware/registration/UserRegistrationActivity;Z)V

    .line 210
    iget-object v12, p0, Lcom/infraware/registration/UserRegistrationActivity$1$2;->this$1:Lcom/infraware/registration/UserRegistrationActivity$1;

    invoke-static {v12}, Lcom/infraware/registration/UserRegistrationActivity$1;->access$0(Lcom/infraware/registration/UserRegistrationActivity$1;)Lcom/infraware/registration/UserRegistrationActivity;

    move-result-object v12

    iget-object v12, v12, Lcom/infraware/registration/UserRegistrationActivity;->mEventHandler:Landroid/os/Handler;

    .line 211
    const/16 v13, 0x578

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 213
    :cond_2
    iget-object v12, p0, Lcom/infraware/registration/UserRegistrationActivity$1$2;->this$1:Lcom/infraware/registration/UserRegistrationActivity$1;

    invoke-static {v12}, Lcom/infraware/registration/UserRegistrationActivity$1;->access$0(Lcom/infraware/registration/UserRegistrationActivity$1;)Lcom/infraware/registration/UserRegistrationActivity;

    move-result-object v12

    invoke-static {v12, v6}, Lcom/infraware/registration/UserRegistrationActivity;->access$5(Lcom/infraware/registration/UserRegistrationActivity;I)V

    .line 214
    iget-object v12, p0, Lcom/infraware/registration/UserRegistrationActivity$1$2;->this$1:Lcom/infraware/registration/UserRegistrationActivity$1;

    invoke-static {v12}, Lcom/infraware/registration/UserRegistrationActivity$1;->access$0(Lcom/infraware/registration/UserRegistrationActivity$1;)Lcom/infraware/registration/UserRegistrationActivity;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/infraware/registration/UserRegistrationActivity;->access$4(Lcom/infraware/registration/UserRegistrationActivity;Z)V

    .line 215
    iget-object v12, p0, Lcom/infraware/registration/UserRegistrationActivity$1$2;->this$1:Lcom/infraware/registration/UserRegistrationActivity$1;

    invoke-static {v12}, Lcom/infraware/registration/UserRegistrationActivity$1;->access$0(Lcom/infraware/registration/UserRegistrationActivity$1;)Lcom/infraware/registration/UserRegistrationActivity;

    move-result-object v12

    iget-object v12, v12, Lcom/infraware/registration/UserRegistrationActivity;->mEventHandler:Landroid/os/Handler;

    .line 216
    const/16 v13, 0x4b0

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

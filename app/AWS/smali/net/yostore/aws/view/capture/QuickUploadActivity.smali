.class public Lnet/yostore/aws/view/capture/QuickUploadActivity;
.super Landroid/app/Activity;
.source "QuickUploadActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/view/capture/QuickUploadActivity$MearBroadcastRecv;,
        Lnet/yostore/aws/view/capture/QuickUploadActivity$MyOnItemSelectedListener;,
        Lnet/yostore/aws/view/capture/QuickUploadActivity$NGListener;,
        Lnet/yostore/aws/view/capture/QuickUploadActivity$OKListener;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$net$yostore$aws$handler$LoginHandler$AAAStatus:[I = null

.field private static final GB:J = 0x40000000L

.field private static final KB:J = 0x400L

.field private static final MB:J = 0x100000L

.field private static final ROOT:Ljava/lang/String; = "/MyCollection/"

.field private static final ROOT_ID:J = 0x0L

.field private static final SYNC_ROOT:Ljava/lang/String; = "/MySyncFolder/"

.field private static final TAG:Ljava/lang/String; = "QuickUploadActivity"


# instance fields
.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private auxFile:Ljava/io/File;

.field private bBind:Z

.field private ctx:Landroid/content/Context;

.field private errmsg:Ljava/lang/String;

.field private errrun:Ljava/lang/Runnable;

.field private filePath:Ljava/lang/String;

.field private isUploading:Z

.field private mBrocastRecv:Landroid/content/BroadcastReceiver;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mNetworkStateChangedFilter:Landroid/content/IntentFilter;

.field mPrefs:Landroid/content/SharedPreferences;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProgressHandler:Landroid/os/Handler;

.field private position:I

.field private postDisp:Ljava/lang/String;

.field private saveBt:Landroid/widget/Button;


# direct methods
.method static synthetic $SWITCH_TABLE$net$yostore$aws$handler$LoginHandler$AAAStatus()[I
    .locals 3

    .prologue
    .line 63
    sget-object v0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->$SWITCH_TABLE$net$yostore$aws$handler$LoginHandler$AAAStatus:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->values()[Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->Err:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    :try_start_1
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->FREEZE:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->GO_CAPTCHA:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    :try_start_5
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OTP_LOCK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->SHOW_OTP:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_7
    sput-object v0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->$SWITCH_TABLE$net$yostore$aws$handler$LoginHandler$AAAStatus:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 82
    iput-boolean v1, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->isUploading:Z

    .line 94
    iput-boolean v1, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->bBind:Z

    .line 342
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->postDisp:Ljava/lang/String;

    .line 410
    iput v1, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->position:I

    .line 775
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->errmsg:Ljava/lang/String;

    .line 776
    new-instance v0, Lnet/yostore/aws/view/capture/QuickUploadActivity$1;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/capture/QuickUploadActivity$1;-><init>(Lnet/yostore/aws/view/capture/QuickUploadActivity;)V

    iput-object v0, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->errrun:Ljava/lang/Runnable;

    .line 837
    new-instance v0, Lnet/yostore/aws/view/capture/QuickUploadActivity$2;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/capture/QuickUploadActivity$2;-><init>(Lnet/yostore/aws/view/capture/QuickUploadActivity;)V

    iput-object v0, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 63
    return-void
.end method

.method private CheckServiceExit()Z
    .locals 7

    .prologue
    .line 821
    const/4 v2, 0x0

    .line 822
    .local v2, mReturn:Z
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 824
    .local v0, mActivityMag:Landroid/app/ActivityManager;
    const/16 v4, 0x64

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 826
    .local v3, mServiceList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 834
    :cond_1
    :goto_0
    return v2

    .line 826
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 827
    .local v1, mInfo:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v5, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "net.yostore.aws.service.AWSService"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 828
    iget-boolean v4, v1, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-eqz v4, :cond_1

    .line 829
    const/4 v2, 0x1

    .line 831
    goto :goto_0
.end method

.method private UploadFile(JLjava/io/File;Ljava/lang/String;)Z
    .locals 6
    .parameter "pfid"
    .parameter "file"
    .parameter "attr"

    .prologue
    const/4 v5, 0x0

    .line 734
    new-instance v2, Lnet/yostore/aws/api/helper/DirectUploadHelper;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, p3}, Lnet/yostore/aws/api/helper/DirectUploadHelper;-><init>(Ljava/lang/String;Ljava/io/File;)V

    .line 735
    .local v2, helper:Lnet/yostore/aws/api/helper/DirectUploadHelper;
    const/4 v3, 0x0

    .line 739
    .local v3, response:Lnet/yostore/aws/api/entity/DirectUploadResponse;
    :try_start_0
    iget-object v4, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v2, v4}, Lnet/yostore/aws/api/helper/DirectUploadHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lnet/yostore/aws/api/entity/DirectUploadResponse;

    move-object v3, v0

    .line 740
    if-nez v3, :cond_0

    move v4, v5

    .line 755
    :goto_0
    return v4

    .line 744
    :cond_0
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/DirectUploadResponse;->getStatus()I
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_1

    .line 746
    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v5

    .line 750
    goto :goto_0

    .line 753
    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, e1:Lnet/yostore/aws/api/exception/APIException;
    move v4, v5

    .line 755
    goto :goto_0
.end method

.method static synthetic access$0(Lnet/yostore/aws/view/capture/QuickUploadActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 775
    iget-object v0, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->errmsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lnet/yostore/aws/view/capture/QuickUploadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    invoke-direct {p0}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->checkToken()V

    return-void
.end method

.method static synthetic access$10(Lnet/yostore/aws/view/capture/QuickUploadActivity;J)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 573
    invoke-direct {p0, p1, p2}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->getUploadRoot(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$11(Lnet/yostore/aws/view/capture/QuickUploadActivity;)Lnet/yostore/aws/api/ApiConfig;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-object v0
.end method

.method static synthetic access$12(Lnet/yostore/aws/view/capture/QuickUploadActivity;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->auxFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$13(Lnet/yostore/aws/view/capture/QuickUploadActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 775
    iput-object p1, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->errmsg:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lnet/yostore/aws/view/capture/QuickUploadActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->postDisp:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lnet/yostore/aws/view/capture/QuickUploadActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 410
    iput p1, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->position:I

    return-void
.end method

.method static synthetic access$4(Lnet/yostore/aws/view/capture/QuickUploadActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 342
    iget-object v0, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->postDisp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lnet/yostore/aws/view/capture/QuickUploadActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-boolean p1, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->isUploading:Z

    return-void
.end method

.method static synthetic access$6(Lnet/yostore/aws/view/capture/QuickUploadActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$8(Lnet/yostore/aws/view/capture/QuickUploadActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-boolean v0, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->isUploading:Z

    return v0
.end method

.method static synthetic access$9(Lnet/yostore/aws/view/capture/QuickUploadActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 410
    iget v0, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->position:I

    return v0
.end method

.method private checkToken()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 177
    sget-object v2, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->awsInterface:Lnet/yostore/aws/service/AWSServiceInterface;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v2, v2, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v2, v2, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 181
    :cond_0
    :try_start_0
    invoke-static {p0}, Lnet/yostore/aws/handler/LoginHandler;->doBackgroundLogin(Landroid/content/Context;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v0

    .line 182
    .local v0, as:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    invoke-static {}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->$SWITCH_TABLE$net$yostore$aws$handler$LoginHandler$AAAStatus()[I

    move-result-object v2

    invoke-virtual {v0}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 188
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f06002d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f060037

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 189
    const v3, 0x7f060028

    new-instance v4, Lnet/yostore/aws/view/capture/QuickUploadActivity$4;

    invoke-direct {v4, p0}, Lnet/yostore/aws/view/capture/QuickUploadActivity$4;-><init>(Lnet/yostore/aws/view/capture/QuickUploadActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 196
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 212
    .end local v0           #as:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    :goto_0
    return-void

    .line 185
    .restart local v0       #as:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    :pswitch_0
    iget-object v2, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->saveBt:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    .end local v0           #as:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 205
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 210
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v2, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->saveBt:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 182
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private createFolder(JLjava/lang/String;Ljava/lang/String;)J
    .locals 8
    .parameter "pfid"
    .parameter "fname"
    .parameter "attr"

    .prologue
    .line 703
    const-wide/32 v2, -0x5f5e0ff

    .line 705
    .local v2, fid:J
    iget-object v5, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-static {v5}, Lnet/yostore/aws/handler/LoginHandler;->validateApiCfg(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v5

    sget-object v6, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v5, v6, :cond_0

    .line 707
    iget-object v5, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-static {v5}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->saveApiCfg(Lnet/yostore/aws/api/ApiConfig;)V

    .line 710
    :try_start_0
    new-instance v0, Lnet/yostore/aws/api/helper/FolderCreateHelper;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-direct {v0, v5, p3, v6}, Lnet/yostore/aws/api/helper/FolderCreateHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    .local v0, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    const/4 v4, 0x0

    .line 712
    .local v4, response:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    iget-object v5, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v0, v5}, Lnet/yostore/aws/api/helper/FolderCreateHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v4

    .end local v4           #response:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    check-cast v4, Lnet/yostore/aws/api/entity/FolderCreateResponse;

    .line 713
    .restart local v4       #response:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/FolderCreateResponse;->getStatus()I

    move-result v5

    if-nez v5, :cond_1

    .line 715
    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/FolderCreateResponse;->getId()J

    move-result-wide v2

    .line 716
    const-string v5, "QuickUploadActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "FolderCreate "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Got ID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    .end local v0           #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .end local v4           #response:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    :cond_0
    :goto_0
    return-wide v2

    .line 721
    .restart local v0       #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .restart local v4       #response:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    :cond_1
    const-string v5, "QuickUploadActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "FolderCreate Exception status:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/FolderCreateResponse;->getStatus()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 724
    .end local v0           #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .end local v4           #response:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 726
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "QuickUploadActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "FolderCreate folder Exception:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getInputData(Landroid/content/Intent;)V
    .locals 14
    .parameter "intent"

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 216
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 217
    .local v7, action:Ljava/lang/String;
    if-eqz p1, :cond_2

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 225
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v5, "content"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 235
    move-object v0, v4

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0

    .line 237
    .local v3, projection:[Ljava/lang/String;
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "content://media/external/images/media/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 239
    new-array v11, v6, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v11, v13

    .line 240
    const-string v1, "_display_name"

    aput-object v1, v11, v12

    .line 241
    .local v11, projection_tmp:[Ljava/lang/String;
    move-object v3, v11

    .line 255
    .end local v11           #projection_tmp:[Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    .line 257
    invoke-virtual/range {v1 .. v6}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 258
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 261
    .local v9, column0Value:Ljava/lang/String;
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 262
    .local v10, column1Value:Ljava/lang/String;
    const-string v1, "Data"

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const-string v1, "Display name"

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "file:/"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->filePath:Ljava/lang/String;

    .line 302
    .end local v3           #projection:[Ljava/lang/String;
    .end local v8           #c:Landroid/database/Cursor;
    .end local v9           #column0Value:Ljava/lang/String;
    .end local v10           #column1Value:Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v1, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->filePath:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 304
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->filePath:Ljava/lang/String;

    const-string v5, "file://"

    const-string v6, "/"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->auxFile:Ljava/io/File;

    .line 305
    iget-object v1, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->auxFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 319
    .end local v2           #uri:Landroid/net/Uri;
    :cond_2
    return-void

    .line 243
    .restart local v2       #uri:Landroid/net/Uri;
    .restart local v3       #projection:[Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "content://media/external/video/media/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 245
    new-array v11, v6, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v11, v13

    .line 246
    const-string v1, "_display_name"

    aput-object v1, v11, v12

    .line 247
    .restart local v11       #projection_tmp:[Ljava/lang/String;
    move-object v3, v11

    goto :goto_0

    .line 249
    .end local v11           #projection_tmp:[Ljava/lang/String;
    :cond_4
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "content://media/external/video/media/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    new-array v11, v6, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v11, v13

    .line 252
    const-string v1, "_display_name"

    aput-object v1, v11, v12

    .line 253
    .restart local v11       #projection_tmp:[Ljava/lang/String;
    move-object v3, v11

    goto :goto_0

    .line 268
    .end local v3           #projection:[Ljava/lang/String;
    .end local v11           #projection_tmp:[Ljava/lang/String;
    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v4, "file"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 270
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->filePath:Ljava/lang/String;

    goto :goto_1

    .line 272
    :cond_6
    if-nez v2, :cond_7

    .line 288
    invoke-virtual {p0}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->finish()V

    goto :goto_1

    .line 292
    :cond_7
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0600b1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 293
    const v4, 0x7f0600b4

    .line 292
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 293
    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v4, 0x7f060026

    new-instance v5, Lnet/yostore/aws/view/capture/QuickUploadActivity$5;

    invoke-direct {v5, p0}, Lnet/yostore/aws/view/capture/QuickUploadActivity$5;-><init>(Lnet/yostore/aws/view/capture/QuickUploadActivity;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 300
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1
.end method

.method private getMySyncFolderId()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 641
    iget-object v7, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-static {v7}, Lnet/yostore/aws/handler/LoginHandler;->validateApiCfg(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v7

    sget-object v8, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v7, v8, :cond_5

    .line 643
    iget-object v7, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-static {v7}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->saveApiCfg(Lnet/yostore/aws/api/ApiConfig;)V

    .line 645
    iget-object v7, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v7, v7, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v7, v7, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_4

    .line 647
    :cond_0
    new-instance v1, Lnet/yostore/aws/api/helper/FindPropfindHelper;

    const-string v7, "-5"

    const-string v8, "MySyncFolder"

    const-string v9, "system.folder"

    invoke-direct {v1, v7, v8, v9}, Lnet/yostore/aws/api/helper/FindPropfindHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    .local v1, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    const/4 v6, 0x0

    .line 651
    .local v6, response:Lnet/yostore/aws/api/entity/FindPropfindResponse;
    :try_start_0
    iget-object v7, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v1, v7}, Lnet/yostore/aws/api/helper/FindPropfindHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lnet/yostore/aws/api/entity/FindPropfindResponse;

    move-object v6, v0

    .line 652
    invoke-virtual {v6}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getStatus()I

    move-result v7

    if-nez v7, :cond_3

    .line 654
    iget-object v7, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v6}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getId()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    .line 655
    iget-object v7, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v7, v7, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 657
    new-instance v4, Lnet/yostore/aws/api/helper/FolderCreateHelper;

    const-string v7, "-5"

    const-string v8, "MySyncFolder"

    const-string v9, ""

    invoke-direct {v4, v7, v8, v9}, Lnet/yostore/aws/api/helper/FolderCreateHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    .local v4, fcapihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    const/4 v5, 0x0

    .line 659
    .local v5, fcresponse:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    iget-object v7, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v4, v7}, Lnet/yostore/aws/api/helper/FolderCreateHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v5

    .end local v5           #fcresponse:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    check-cast v5, Lnet/yostore/aws/api/entity/FolderCreateResponse;

    .line 660
    .restart local v5       #fcresponse:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    invoke-virtual {v5}, Lnet/yostore/aws/api/entity/FolderCreateResponse;->getStatus()I

    move-result v7

    if-nez v7, :cond_1

    .line 662
    iget-object v7, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v5}, Lnet/yostore/aws/api/entity/FolderCreateResponse;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    .line 665
    .end local v4           #fcapihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .end local v5           #fcresponse:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    :cond_1
    iget-object v7, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 666
    .local v3, ed:Landroid/content/SharedPreferences$Editor;
    const-string v7, "MySyncFolderId"

    iget-object v8, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v8, v8, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 667
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    .end local v3           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_2
    :goto_0
    iget-object v7, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v7, v7, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    .line 696
    .end local v1           #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .end local v6           #response:Lnet/yostore/aws/api/entity/FindPropfindResponse;
    :goto_1
    return-object v7

    .line 669
    .restart local v1       #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .restart local v6       #response:Lnet/yostore/aws/api/entity/FindPropfindResponse;
    :cond_3
    :try_start_1
    invoke-virtual {v6}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getStatus()I

    move-result v7

    const/16 v8, 0xda

    if-ne v7, v8, :cond_2

    .line 671
    new-instance v4, Lnet/yostore/aws/api/helper/FolderCreateHelper;

    const-string v7, "-5"

    const-string v8, "MySyncFolder"

    const-string v9, ""

    invoke-direct {v4, v7, v8, v9}, Lnet/yostore/aws/api/helper/FolderCreateHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    .restart local v4       #fcapihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    const/4 v5, 0x0

    .line 673
    .restart local v5       #fcresponse:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    iget-object v7, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v4, v7}, Lnet/yostore/aws/api/helper/FolderCreateHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v5

    .end local v5           #fcresponse:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    check-cast v5, Lnet/yostore/aws/api/entity/FolderCreateResponse;

    .line 674
    .restart local v5       #fcresponse:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    invoke-virtual {v5}, Lnet/yostore/aws/api/entity/FolderCreateResponse;->getStatus()I

    move-result v7

    if-nez v7, :cond_2

    .line 676
    iget-object v7, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v5}, Lnet/yostore/aws/api/entity/FolderCreateResponse;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    .line 677
    iget-object v7, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 678
    .restart local v3       #ed:Landroid/content/SharedPreferences$Editor;
    const-string v7, "MySyncFolderId"

    iget-object v8, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v8, v8, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 679
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 683
    .end local v3           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v4           #fcapihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .end local v5           #fcresponse:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 685
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->errmsg:Ljava/lang/String;

    move-object v7, v10

    .line 686
    goto :goto_1

    .line 692
    .end local v1           #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v6           #response:Lnet/yostore/aws/api/entity/FindPropfindResponse;
    :cond_4
    iget-object v7, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v7, v7, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    goto :goto_1

    :cond_5
    move-object v7, v10

    .line 696
    goto :goto_1
.end method

.method private getSizeDisplay(J)Ljava/lang/String;
    .locals 7
    .parameter "size"

    .prologue
    const-wide/32 v5, 0x40000000

    const-wide/32 v3, 0x100000

    const-wide/16 v1, 0x400

    .line 765
    cmp-long v0, p1, v5

    if-lez v0, :cond_0

    .line 766
    new-instance v0, Ljava/lang/StringBuilder;

    div-long v1, p1, v5

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "GB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 772
    :goto_0
    return-object v0

    .line 767
    :cond_0
    cmp-long v0, p1, v3

    if-lez v0, :cond_1

    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    div-long v1, p1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 769
    :cond_1
    cmp-long v0, p1, v1

    if-lez v0, :cond_2

    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    div-long v1, p1, v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 772
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getUploadRoot(J)J
    .locals 5
    .parameter "tp"

    .prologue
    .line 576
    const-wide/16 v1, -0x3e7

    .line 577
    .local v1, fid:J
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-nez v3, :cond_1

    .line 578
    const-wide/16 v1, 0x0

    .line 588
    :cond_0
    :goto_0
    return-wide v1

    .line 581
    :cond_1
    invoke-direct {p0}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->getMySyncFolderId()Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, ffid:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 584
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0
.end method

.method private initHeader()V
    .locals 2

    .prologue
    .line 324
    const v0, 0x7f09001d

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lnet/yostore/aws/view/capture/QuickUploadActivity$6;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/capture/QuickUploadActivity$6;-><init>(Lnet/yostore/aws/view/capture/QuickUploadActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    const v0, 0x7f09001e

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lnet/yostore/aws/view/capture/QuickUploadActivity$7;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/capture/QuickUploadActivity$7;-><init>(Lnet/yostore/aws/view/capture/QuickUploadActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    return-void
.end method

.method private initUpload(ILjava/lang/String;)J
    .locals 5
    .parameter "tp"
    .parameter "postFolder"

    .prologue
    .line 618
    const-wide/16 v1, -0x3e7

    .line 619
    .local v1, fid:J
    if-nez p1, :cond_2

    .line 620
    const-wide/16 v1, 0x0

    .line 630
    :cond_0
    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_1

    .line 632
    const-string v3, ""

    invoke-direct {p0, v1, v2, p2, v3}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->createFolder(JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    .line 635
    :cond_1
    return-wide v1

    .line 623
    :cond_2
    invoke-direct {p0}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->getMySyncFolderId()Ljava/lang/String;

    move-result-object v0

    .line 624
    .local v0, ffid:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 626
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0
.end method

.method private uploadUploadTablePath(Ljava/lang/String;J)Z
    .locals 4
    .parameter "path"
    .parameter "folderid"

    .prologue
    .line 593
    const/4 v0, 0x1

    .line 596
    .local v0, rtn:Z
    iget-object v2, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->auxFile:Ljava/io/File;

    if-nez v2, :cond_0

    move v1, v0

    .line 607
    .end local v0           #rtn:Z
    .local v1, rtn:I
    :goto_0
    return v1

    .line 599
    .end local v1           #rtn:I
    .restart local v0       #rtn:Z
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_1

    .line 602
    iget-object v2, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->auxFile:Ljava/io/File;

    if-eqz v2, :cond_1

    .line 604
    iget-object v2, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->auxFile:Ljava/io/File;

    const-string v3, ""

    invoke-direct {p0, p2, p3, v2, v3}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->UploadFile(JLjava/io/File;Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v0, v2

    :cond_1
    move v1, v0

    .line 607
    .restart local v1       #rtn:I
    goto :goto_0
.end method


# virtual methods
.method public okClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 417
    new-instance v0, Lnet/yostore/aws/view/capture/QuickUploadActivity$8;

    invoke-direct {v0, p0, p0}, Lnet/yostore/aws/view/capture/QuickUploadActivity$8;-><init>(Lnet/yostore/aws/view/capture/QuickUploadActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 460
    iget-object v0, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0600d2

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 464
    iget-object v0, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 468
    iget-object v0, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 470
    new-instance v0, Lnet/yostore/aws/view/capture/QuickUploadActivity$9;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/capture/QuickUploadActivity$9;-><init>(Lnet/yostore/aws/view/capture/QuickUploadActivity;)V

    .line 550
    invoke-virtual {v0}, Lnet/yostore/aws/view/capture/QuickUploadActivity$9;->start()V

    .line 551
    iput-boolean v2, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->isUploading:Z

    .line 553
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "bundle"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 100
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    const v7, 0x7f03001a

    invoke-virtual {p0, v7}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->setContentView(I)V

    .line 102
    iput-object p0, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->ctx:Landroid/content/Context;

    .line 103
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v7

    iput-object v7, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 104
    iget-object v7, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v7, v7, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v7, v7, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v7, v7, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v7, v7, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->awsInterface:Lnet/yostore/aws/service/AWSServiceInterface;

    if-eqz v7, :cond_0

    sget-object v7, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->downloadInterface:Lnet/yostore/aws/service/DownloadServiceInterface;

    if-nez v7, :cond_1

    .line 105
    :cond_0
    iget-object v7, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->ctx:Landroid/content/Context;

    invoke-static {v7}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->goSplash(Landroid/content/Context;)V

    .line 106
    :cond_1
    invoke-virtual {p0}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-direct {p0, v7}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->getInputData(Landroid/content/Intent;)V

    .line 108
    invoke-direct {p0}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->initHeader()V

    .line 110
    const v7, 0x7f090060

    invoke-virtual {p0, v7}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 111
    .local v6, tv1:Landroid/widget/TextView;
    const v7, 0x7f090061

    invoke-virtual {p0, v7}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 113
    .local v4, malert:Landroid/widget/TextView;
    const v7, 0x7f09005f

    invoke-virtual {p0, v7}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    .line 114
    .local v5, s1:Landroid/widget/Spinner;
    const/4 v7, 0x2

    new-array v3, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const v8, 0x7f060095

    invoke-virtual {p0, v8}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v7

    const v7, 0x7f060094

    invoke-virtual {p0, v7}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v9

    .line 115
    .local v3, mStrings:[Ljava/lang/String;
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v7, 0x1090008

    invoke-direct {v0, p0, v7, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 116
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v7, 0x1090009

    invoke-virtual {v0, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 117
    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 118
    new-instance v7, Lnet/yostore/aws/view/capture/QuickUploadActivity$MyOnItemSelectedListener;

    invoke-direct {v7, p0, v6}, Lnet/yostore/aws/view/capture/QuickUploadActivity$MyOnItemSelectedListener;-><init>(Lnet/yostore/aws/view/capture/QuickUploadActivity;Landroid/widget/TextView;)V

    invoke-virtual {v5, v7}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 120
    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    const v7, 0x7f09000d

    invoke-virtual {p0, v7}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->saveBt:Landroid/widget/Button;

    .line 123
    iget-object v7, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->saveBt:Landroid/widget/Button;

    new-instance v8, Lnet/yostore/aws/view/capture/QuickUploadActivity$OKListener;

    invoke-direct {v8, p0, v10}, Lnet/yostore/aws/view/capture/QuickUploadActivity$OKListener;-><init>(Lnet/yostore/aws/view/capture/QuickUploadActivity;Lnet/yostore/aws/view/capture/QuickUploadActivity$OKListener;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v7, 0x7f09003f

    invoke-virtual {p0, v7}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    new-instance v8, Lnet/yostore/aws/view/capture/QuickUploadActivity$NGListener;

    invoke-direct {v8, p0, v10}, Lnet/yostore/aws/view/capture/QuickUploadActivity$NGListener;-><init>(Lnet/yostore/aws/view/capture/QuickUploadActivity;Lnet/yostore/aws/view/capture/QuickUploadActivity$NGListener;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v7, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->saveBt:Landroid/widget/Button;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 127
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    iput-object v7, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    .line 128
    iget-object v7, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    const-string v8, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    new-instance v7, Lnet/yostore/aws/view/capture/QuickUploadActivity$MearBroadcastRecv;

    invoke-direct {v7, p0}, Lnet/yostore/aws/view/capture/QuickUploadActivity$MearBroadcastRecv;-><init>(Lnet/yostore/aws/view/capture/QuickUploadActivity;)V

    iput-object v7, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->mBrocastRecv:Landroid/content/BroadcastReceiver;

    .line 130
    iget-object v7, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->mBrocastRecv:Landroid/content/BroadcastReceiver;

    iget-object v8, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v7, v8}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 131
    new-instance v2, Landroid/content/Intent;

    const-class v7, Lnet/yostore/aws/service/AWSService;

    invoke-direct {v2, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    .local v2, intent:Landroid/content/Intent;
    sget-object v7, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->awsInterface:Lnet/yostore/aws/service/AWSServiceInterface;

    if-eqz v7, :cond_2

    invoke-direct {p0}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->CheckServiceExit()Z

    move-result v7

    if-nez v7, :cond_4

    .line 133
    :cond_2
    invoke-virtual {p0, v2}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 137
    :try_start_0
    iget-object v7, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->mConnection:Landroid/content/ServiceConnection;

    const/4 v8, 0x1

    invoke-virtual {p0, v2, v7, v8}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v7

    iput-boolean v7, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->bBind:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :cond_3
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 139
    .local v1, e:Ljava/lang/Exception;
    iget-boolean v7, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->bBind:Z

    if-nez v7, :cond_3

    .line 140
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->ctx:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 141
    const v8, 0x7f06002d

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 142
    const v8, 0x7f060031

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 143
    const v8, 0x7f060028

    new-instance v9, Lnet/yostore/aws/view/capture/QuickUploadActivity$3;

    invoke-direct {v9, p0}, Lnet/yostore/aws/view/capture/QuickUploadActivity$3;-><init>(Lnet/yostore/aws/view/capture/QuickUploadActivity;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 149
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 153
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    invoke-direct {p0}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->checkToken()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lnet/yostore/aws/view/capture/QuickUploadActivity;->mBrocastRecv:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/capture/QuickUploadActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 164
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 166
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 172
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 174
    return-void
.end method

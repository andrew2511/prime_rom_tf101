.class public Lnet/yostore/aws/view/test/TestActivity;
.super Landroid/app/Activity;
.source "TestActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TestActivity"

.field public static mpInterface:Lnet/yostore/aws/service/PlayListServiceInterface;


# instance fields
.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private chkservice:Ljava/lang/Runnable;

.field ctx:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private ic:I

.field private mConnection:Landroid/content/ServiceConnection;

.field mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/view/test/TestActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/view/test/TestActivity;->handler:Landroid/os/Handler;

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/view/test/TestActivity;->ic:I

    .line 172
    new-instance v0, Lnet/yostore/aws/view/test/TestActivity$1;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/test/TestActivity$1;-><init>(Lnet/yostore/aws/view/test/TestActivity;)V

    iput-object v0, p0, Lnet/yostore/aws/view/test/TestActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 202
    new-instance v0, Lnet/yostore/aws/view/test/TestActivity$2;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/test/TestActivity$2;-><init>(Lnet/yostore/aws/view/test/TestActivity;)V

    iput-object v0, p0, Lnet/yostore/aws/view/test/TestActivity;->chkservice:Ljava/lang/Runnable;

    .line 40
    return-void
.end method

.method private CheckServiceExit()Z
    .locals 7

    .prologue
    .line 156
    const/4 v2, 0x0

    .line 157
    .local v2, mReturn:Z
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Lnet/yostore/aws/view/test/TestActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 159
    .local v0, mActivityMag:Landroid/app/ActivityManager;
    const/16 v4, 0x64

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 161
    .local v3, mServiceList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 169
    :cond_1
    :goto_0
    return v2

    .line 161
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 162
    .local v1, mInfo:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v5, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "net.yostore.aws.service.PlayListService"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 163
    iget-boolean v4, v1, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-eqz v4, :cond_1

    .line 164
    const/4 v2, 0x1

    .line 166
    goto :goto_0
.end method

.method static synthetic access$0(Lnet/yostore/aws/view/test/TestActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    invoke-direct {p0}, Lnet/yostore/aws/view/test/TestActivity;->bindservice()V

    return-void
.end method

.method static synthetic access$1(Lnet/yostore/aws/view/test/TestActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 133
    invoke-direct {p0}, Lnet/yostore/aws/view/test/TestActivity;->doGetChangeSeq()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2(Lnet/yostore/aws/view/test/TestActivity;J)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lnet/yostore/aws/view/test/TestActivity;->compareChangeSeq(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lnet/yostore/aws/view/test/TestActivity;)Lnet/yostore/aws/api/ApiConfig;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lnet/yostore/aws/view/test/TestActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-object v0
.end method

.method static synthetic access$4(Lnet/yostore/aws/view/test/TestActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 155
    invoke-direct {p0}, Lnet/yostore/aws/view/test/TestActivity;->CheckServiceExit()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lnet/yostore/aws/view/test/TestActivity;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lnet/yostore/aws/view/test/TestActivity;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method private bindservice()V
    .locals 1

    .prologue
    .line 184
    new-instance v0, Lnet/yostore/aws/view/test/TestActivity$6;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/test/TestActivity$6;-><init>(Lnet/yostore/aws/view/test/TestActivity;)V

    .line 199
    invoke-virtual {v0}, Lnet/yostore/aws/view/test/TestActivity$6;->start()V

    .line 200
    return-void
.end method

.method private compareChangeSeq(J)Z
    .locals 5
    .parameter "chgseq"

    .prologue
    .line 119
    iget-object v1, p0, Lnet/yostore/aws/view/test/TestActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnet/yostore/aws/view/test/TestActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v2, v2, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-static {v1, v2}, Lnet/yostore/aws/sqlite/helper/MetaMetaHelper;->getMetaMeta(Landroid/content/Context;Ljava/lang/String;)Lnet/yostore/aws/sqlite/entity/MetaMeta;

    move-result-object v0

    .line 121
    .local v0, meta:Lnet/yostore/aws/sqlite/entity/MetaMeta;
    const-string v1, "TestActivity"

    const-string v2, "\r--------------------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-wide v1, v0, Lnet/yostore/aws/sqlite/entity/MetaMeta;->changeSeq:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_0

    .line 123
    const-string v1, "TestActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\tGet Change CHANGED from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v0, Lnet/yostore/aws/sqlite/entity/MetaMeta;->changeSeq:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v1, 0x0

    .line 128
    :goto_0
    return v1

    .line 127
    :cond_0
    const-string v1, "TestActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\tGet Change Same as "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v0, Lnet/yostore/aws/sqlite/entity/MetaMeta;->changeSeq:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private doGetChangeSeq()J
    .locals 9

    .prologue
    const-wide/16 v7, -0x64

    .line 134
    new-instance v1, Lnet/yostore/aws/api/InfoRelayApi;

    iget-object v4, p0, Lnet/yostore/aws/view/test/TestActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v4, v4, Lnet/yostore/aws/api/ApiConfig;->infoRelay:Ljava/lang/String;

    const-string v5, "https://approxy.asuswebstorage.com/api/"

    invoke-direct {v1, v4, v5}, Lnet/yostore/aws/api/InfoRelayApi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .local v1, ir:Lnet/yostore/aws/api/InfoRelayApi;
    new-instance v2, Lnet/yostore/aws/api/entity/GetChangeSeqRequest;

    iget-object v4, p0, Lnet/yostore/aws/view/test/TestActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v4, v4, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    iget-object v5, p0, Lnet/yostore/aws/view/test/TestActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-wide v5, v5, Lnet/yostore/aws/api/ApiConfig;->meta_folder_id:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lnet/yostore/aws/api/entity/GetChangeSeqRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .local v2, request:Lnet/yostore/aws/api/entity/GetChangeSeqRequest;
    :try_start_0
    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/InfoRelayApi;->folderGetChangeSeq(Lnet/yostore/aws/api/entity/GetChangeSeqRequest;)Lnet/yostore/aws/api/entity/GetChangeSeqResponse;

    move-result-object v3

    .line 138
    .local v3, response:Lnet/yostore/aws/api/entity/GetChangeSeqResponse;
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/GetChangeSeqResponse;->getChangeSeq()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v4

    .line 144
    .end local v3           #response:Lnet/yostore/aws/api/entity/GetChangeSeqResponse;
    :goto_0
    return-wide v4

    .line 139
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 140
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-wide v4, v7

    .line 141
    goto :goto_0

    .line 142
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 143
    .local v0, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    move-wide v4, v7

    .line 144
    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/test/TestActivity;->setContentView(I)V

    .line 55
    const-string v0, "MearPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/yostore/aws/view/test/TestActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/test/TestActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 56
    iget-object v0, p0, Lnet/yostore/aws/view/test/TestActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lnet/yostore/aws/preferences/Ap;->pref2ApiCfg(Landroid/content/SharedPreferences;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/test/TestActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 57
    iget-object v0, p0, Lnet/yostore/aws/view/test/TestActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lnet/yostore/aws/preferences/Ap;->pref2ApiCfg(Landroid/content/SharedPreferences;)Lnet/yostore/aws/api/ApiConfig;

    .line 59
    invoke-virtual {p0}, Lnet/yostore/aws/view/test/TestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/test/TestActivity;->ctx:Landroid/content/Context;

    .line 60
    iget-object v0, p0, Lnet/yostore/aws/view/test/TestActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lnet/yostore/aws/view/test/TestActivity;->chkservice:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/test/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lnet/yostore/aws/view/test/TestActivity$3;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/test/TestActivity$3;-><init>(Lnet/yostore/aws/view/test/TestActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const v0, 0x7f080008

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/test/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lnet/yostore/aws/view/test/TestActivity$4;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/test/TestActivity$4;-><init>(Lnet/yostore/aws/view/test/TestActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/test/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lnet/yostore/aws/view/test/TestActivity$5;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/test/TestActivity$5;-><init>(Lnet/yostore/aws/view/test/TestActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method

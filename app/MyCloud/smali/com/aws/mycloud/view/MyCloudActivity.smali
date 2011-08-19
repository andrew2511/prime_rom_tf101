.class public Lcom/aws/mycloud/view/MyCloudActivity;
.super Landroid/app/Activity;
.source "MyCloudActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aws/mycloud/view/MyCloudActivity$MainType;,
        Lcom/aws/mycloud/view/MyCloudActivity$VibeIntent;,
        Lcom/aws/mycloud/view/MyCloudActivity$initCheckVibeServiceTask;,
        Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;
    }
.end annotation


# static fields
.field private static final FIRST_TIME:Ljava/lang/String; = "FirstTime"

.field private static final LOGIN:I = 0x1

.field private static final REGISTER:I = 0x2

.field private static TAB_KEY:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "MyCloudActivity"

.field private static mConnection:Landroid/content/ServiceConnection;


# instance fields
.field apicfg:Lnet/yostore/aws/api/ApiConfig;

.field awsacc:Ljava/io/File;

.field builder:Landroid/app/AlertDialog$Builder;

.field dialogClickListener:Landroid/content/DialogInterface$OnClickListener;

.field hiUser:Landroid/widget/TextView;

.field ifiles:[Landroid/widget/ImageView;

.field imusics:[Landroid/widget/ImageView;

.field iphotos:[Landroid/widget/ImageView;

.field logout:Landroid/widget/Button;

.field mEarFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/api/entity/EntryInfo;",
            ">;"
        }
    .end annotation
.end field

.field mEarList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/api/entity/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field mPixWeFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/api/entity/EntryInfo;",
            ">;"
        }
    .end annotation
.end field

.field mPixWeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/api/entity/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field mcb:Landroid/view/View;

.field mvDialog:Landroid/app/ProgressDialog;

.field myContentMain:Landroid/view/View;

.field myContentTabBtn:Landroid/widget/Button;

.field myDeviceMain:Landroid/view/View;

.field myDeviceTabBtn:Landroid/widget/Button;

.field mySyncList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/api/entity/EntryInfo;",
            ">;"
        }
    .end annotation
.end field

.field naws:Landroid/view/View;

.field nb:Landroid/view/View;

.field sr:Landroid/widget/LinearLayout;

.field tfiles:[Landroid/widget/TextView;

.field tmusics:[Landroid/widget/TextView;

.field tphotos:[Landroid/widget/TextView;

.field vibeMain:Landroid/view/View;

.field vibeRetryDialog:Landroid/app/AlertDialog;

.field vibeTabBtn:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/aws/mycloud/view/MyCloudActivity$1;

    invoke-direct {v0}, Lcom/aws/mycloud/view/MyCloudActivity$1;-><init>()V

    sput-object v0, Lcom/aws/mycloud/view/MyCloudActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 694
    const-string v0, "tabkey"

    sput-object v0, Lcom/aws/mycloud/view/MyCloudActivity;->TAB_KEY:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 77
    iput-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->vibeRetryDialog:Landroid/app/AlertDialog;

    .line 78
    iput-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->builder:Landroid/app/AlertDialog$Builder;

    .line 79
    new-instance v0, Lcom/aws/mycloud/view/MyCloudActivity$2;

    invoke-direct {v0, p0}, Lcom/aws/mycloud/view/MyCloudActivity$2;-><init>(Lcom/aws/mycloud/view/MyCloudActivity;)V

    iput-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 283
    iput-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->awsacc:Ljava/io/File;

    .line 284
    iput-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 285
    iput-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->sr:Landroid/widget/LinearLayout;

    .line 286
    iput-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->nb:Landroid/view/View;

    .line 287
    iput-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->naws:Landroid/view/View;

    .line 356
    iput-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->myContentTabBtn:Landroid/widget/Button;

    .line 357
    iput-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->myDeviceTabBtn:Landroid/widget/Button;

    .line 358
    iput-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->vibeTabBtn:Landroid/widget/Button;

    .line 359
    iput-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->myContentMain:Landroid/view/View;

    .line 360
    iput-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->myDeviceMain:Landroid/view/View;

    .line 361
    iput-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->vibeMain:Landroid/view/View;

    .line 488
    iput-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->mcb:Landroid/view/View;

    .line 531
    new-array v0, v2, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->imusics:[Landroid/widget/ImageView;

    .line 532
    new-array v0, v2, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->iphotos:[Landroid/widget/ImageView;

    .line 533
    new-array v0, v2, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->ifiles:[Landroid/widget/ImageView;

    .line 534
    new-array v0, v2, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->tmusics:[Landroid/widget/TextView;

    .line 535
    new-array v0, v2, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->tphotos:[Landroid/widget/TextView;

    .line 536
    new-array v0, v2, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->tfiles:[Landroid/widget/TextView;

    .line 830
    iput-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->mEarList:Ljava/util/List;

    .line 831
    iput-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->mEarFileList:Ljava/util/List;

    .line 832
    iput-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->mySyncList:Ljava/util/List;

    .line 833
    iput-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->mPixWeList:Ljava/util/List;

    .line 834
    iput-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->mPixWeFileList:Ljava/util/List;

    .line 980
    new-instance v0, Lcom/aws/mycloud/view/MyCloudActivity$3;

    invoke-direct {v0, p0}, Lcom/aws/mycloud/view/MyCloudActivity$3;-><init>(Lcom/aws/mycloud/view/MyCloudActivity;)V

    iput-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->dialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 46
    return-void
.end method

.method private _startVibe(Ljava/lang/String;)V
    .locals 5
    .parameter "appid"

    .prologue
    .line 764
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 765
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/aws/mycloud/view/MyCloudActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    if-eqz v2, :cond_0

    .line 766
    const-string v2, "MyCloudActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MyCloud Sending "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/aws/mycloud/view/MyCloudActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v4}, Lnet/yostore/aws/api/ApiConfig;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    const-string v2, "AccountInfo"

    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v3}, Lnet/yostore/aws/api/ApiConfig;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/yostore/utility/SimpleAES;->encodeFromString(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 770
    :cond_0
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/aws/mycloud/view/MyCloudActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    :goto_0
    return-void

    .line 771
    :catch_0
    move-exception v0

    .line 772
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "Log"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_startVibe: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$0()Landroid/content/ServiceConnection;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/aws/mycloud/view/MyCloudActivity;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$1(Lcom/aws/mycloud/view/MyCloudActivity;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$2(Lcom/aws/mycloud/view/MyCloudActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1014
    invoke-direct {p0}, Lcom/aws/mycloud/view/MyCloudActivity;->showVibeErrorAlert()V

    return-void
.end method

.method static synthetic access$3(Lcom/aws/mycloud/view/MyCloudActivity;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 687
    invoke-direct {p0, p1, p2}, Lcom/aws/mycloud/view/MyCloudActivity;->saveBooleanPref(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$4(Lcom/aws/mycloud/view/MyCloudActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 588
    invoke-direct {p0}, Lcom/aws/mycloud/view/MyCloudActivity;->showContents()V

    return-void
.end method

.method static synthetic access$5(Lcom/aws/mycloud/view/MyCloudActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 438
    invoke-direct {p0}, Lcom/aws/mycloud/view/MyCloudActivity;->showMyContent()V

    return-void
.end method

.method static synthetic access$6(Lcom/aws/mycloud/view/MyCloudActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 454
    invoke-direct {p0}, Lcom/aws/mycloud/view/MyCloudActivity;->showMyDevice()V

    return-void
.end method

.method static synthetic access$7(Lcom/aws/mycloud/view/MyCloudActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 467
    invoke-direct {p0}, Lcom/aws/mycloud/view/MyCloudActivity;->showVibe()V

    return-void
.end method

.method static synthetic access$8(Lcom/aws/mycloud/view/MyCloudActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 670
    invoke-direct {p0, p1, p2}, Lcom/aws/mycloud/view/MyCloudActivity;->broadcastMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9(Lcom/aws/mycloud/view/MyCloudActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 575
    invoke-direct {p0}, Lcom/aws/mycloud/view/MyCloudActivity;->resetContents()V

    return-void
.end method

.method private broadcastMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 671
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 672
    const-string v2, "com.asus.webstorage.id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 673
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 675
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 676
    return-void
.end method

.method private hideUserId()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 522
    const v0, 0x7f060047

    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->hiUser:Landroid/widget/TextView;

    .line 523
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->hiUser:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 524
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->hiUser:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    const v0, 0x7f060048

    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->logout:Landroid/widget/Button;

    .line 527
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->logout:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 529
    return-void
.end method

.method private hideVibeApp()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 163
    const/4 v1, 0x0

    .line 164
    .local v1, id:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    .line 185
    const v2, 0x7f06005e

    invoke-virtual {p0, v2}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 186
    return-void

    .line 165
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 183
    :goto_1
    invoke-virtual {p0, v1}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :pswitch_0
    const v1, 0x7f060054

    .line 168
    goto :goto_1

    .line 170
    :pswitch_1
    const v1, 0x7f060056

    .line 171
    goto :goto_1

    .line 173
    :pswitch_2
    const v1, 0x7f060058

    .line 174
    goto :goto_1

    .line 176
    :pswitch_3
    const v1, 0x7f06005a

    .line 177
    goto :goto_1

    .line 179
    :pswitch_4
    const v1, 0x7f06005c

    goto :goto_1

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private initApiCfg()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 315
    iput-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->awsacc:Ljava/io/File;

    .line 316
    iput-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 317
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->awsacc:Ljava/io/File;

    const-string v2, "/asus/webstorage/"

    const-string v3, "/account.info"

    invoke-static {v1, v2, v3}, Lcom/aws/mycloud/view/Utility;->initFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->awsacc:Ljava/io/File;

    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, isng:Z
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->awsacc:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->awsacc:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_6

    .line 321
    :cond_0
    const-string v1, "MyCloudActivity"

    const-string v2, "awsacc empty, needlogin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const/4 v0, 0x1

    .line 338
    :cond_1
    :goto_0
    if-eqz v0, :cond_5

    .line 339
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->mPixWeList:Ljava/util/List;

    .line 340
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->mPixWeFileList:Ljava/util/List;

    .line 341
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->mEarFileList:Ljava/util/List;

    .line 342
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->mySyncList:Ljava/util/List;

    .line 343
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->mEarList:Ljava/util/List;

    .line 344
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->naws:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->naws:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 345
    :cond_2
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->logout:Landroid/widget/Button;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->logout:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 346
    :cond_3
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->hiUser:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->hiUser:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 347
    :cond_4
    invoke-direct {p0}, Lcom/aws/mycloud/view/MyCloudActivity;->resetContents()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :cond_5
    :goto_1
    if-eqz v0, :cond_9

    move v1, v5

    :goto_2
    return v1

    .line 325
    :cond_6
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->awsacc:Ljava/io/File;

    invoke-static {v1}, Lnet/yostore/aws/api/ApiConfig;->getFromFile(Ljava/io/File;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 326
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    if-nez v1, :cond_7

    .line 327
    const/4 v0, 0x1

    .line 328
    const-string v1, "MyCloudActivity"

    const-string v2, "apicfg empty, needlogin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 331
    :cond_7
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 332
    :cond_8
    const/4 v0, 0x1

    .line 333
    const-string v1, "MyCloudActivity"

    const-string v2, "apicfg uid empty, needlogin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 351
    :cond_9
    const/4 v1, 0x1

    goto :goto_2

    .line 350
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private initCells()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 539
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->imusics:[Landroid/widget/ImageView;

    const v0, 0x7f06002b

    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 540
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->imusics:[Landroid/widget/ImageView;

    const v0, 0x7f06002d

    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v3

    .line 541
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->imusics:[Landroid/widget/ImageView;

    const v0, 0x7f06002f

    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v4

    .line 542
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->imusics:[Landroid/widget/ImageView;

    const v0, 0x7f060031

    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v5

    .line 543
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->imusics:[Landroid/widget/ImageView;

    const v0, 0x7f060033

    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v6

    .line 544
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->tmusics:[Landroid/widget/TextView;

    const v0, 0x7f06002c

    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 545
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->tmusics:[Landroid/widget/TextView;

    const v0, 0x7f06002e

    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v3

    .line 546
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->tmusics:[Landroid/widget/TextView;

    const v0, 0x7f060030

    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v4

    .line 547
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->tmusics:[Landroid/widget/TextView;

    const v0, 0x7f060032

    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v5

    .line 548
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->tmusics:[Landroid/widget/TextView;

    const v0, 0x7f060034

    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v6

    .line 550
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->iphotos:[Landroid/widget/ImageView;

    const v0, 0x7f060036

    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 551
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->iphotos:[Landroid/widget/ImageView;

    const v0, 0x7f060038

    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v3

    .line 552
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->iphotos:[Landroid/widget/ImageView;

    const v0, 0x7f06003a

    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v4

    .line 553
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->iphotos:[Landroid/widget/ImageView;

    const v0, 0x7f06003c

    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v5

    .line 554
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->iphotos:[Landroid/widget/ImageView;

    const v0, 0x7f06003e

    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v6

    .line 555
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->tphotos:[Landroid/widget/TextView;

    const v0, 0x7f060037

    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 556
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->tphotos:[Landroid/widget/TextView;

    const v0, 0x7f060039

    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v3

    .line 557
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->tphotos:[Landroid/widget/TextView;

    const v0, 0x7f06003b

    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v4

    .line 558
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->tphotos:[Landroid/widget/TextView;

    const v0, 0x7f06003d

    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v5

    .line 559
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->tphotos:[Landroid/widget/TextView;

    const v0, 0x7f06003f

    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v6

    .line 561
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->ifiles:[Landroid/widget/ImageView;

    const v0, 0x7f060021

    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 562
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->ifiles:[Landroid/widget/ImageView;

    const v0, 0x7f060023

    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v3

    .line 563
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->ifiles:[Landroid/widget/ImageView;

    const v0, 0x7f060025

    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v4

    .line 564
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->ifiles:[Landroid/widget/ImageView;

    const v0, 0x7f060027

    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v5

    .line 565
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->ifiles:[Landroid/widget/ImageView;

    const v0, 0x7f060029

    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v6

    .line 566
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->tfiles:[Landroid/widget/TextView;

    const v0, 0x7f060022

    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 567
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->tfiles:[Landroid/widget/TextView;

    const v0, 0x7f060024

    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v3

    .line 568
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->tfiles:[Landroid/widget/TextView;

    const v0, 0x7f060026

    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v4

    .line 569
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->tfiles:[Landroid/widget/TextView;

    const v0, 0x7f060028

    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v5

    .line 570
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->tfiles:[Landroid/widget/TextView;

    const v0, 0x7f06002a

    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v6

    .line 572
    invoke-direct {p0}, Lcom/aws/mycloud/view/MyCloudActivity;->resetContents()V

    .line 573
    return-void
.end method

.method private initMyDeviceAction()V
    .locals 2

    .prologue
    .line 420
    const v0, 0x7f060050

    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/aws/mycloud/view/MyCloudActivity$7;

    invoke-direct {v1, p0}, Lcom/aws/mycloud/view/MyCloudActivity$7;-><init>(Lcom/aws/mycloud/view/MyCloudActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    return-void
.end method

.method private initTabsAction()V
    .locals 2

    .prologue
    .line 363
    const v0, 0x7f06004b

    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->myContentTabBtn:Landroid/widget/Button;

    .line 364
    const v0, 0x7f06004c

    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->myDeviceTabBtn:Landroid/widget/Button;

    .line 365
    const v0, 0x7f06004d

    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->vibeTabBtn:Landroid/widget/Button;

    .line 366
    const v0, 0x7f060018

    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->myContentMain:Landroid/view/View;

    .line 367
    const v0, 0x7f06004e

    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->myDeviceMain:Landroid/view/View;

    .line 368
    const v0, 0x7f060052

    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->vibeMain:Landroid/view/View;

    .line 370
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->myContentTabBtn:Landroid/widget/Button;

    new-instance v1, Lcom/aws/mycloud/view/MyCloudActivity$4;

    invoke-direct {v1, p0}, Lcom/aws/mycloud/view/MyCloudActivity$4;-><init>(Lcom/aws/mycloud/view/MyCloudActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->myDeviceTabBtn:Landroid/widget/Button;

    new-instance v1, Lcom/aws/mycloud/view/MyCloudActivity$5;

    invoke-direct {v1, p0}, Lcom/aws/mycloud/view/MyCloudActivity$5;-><init>(Lcom/aws/mycloud/view/MyCloudActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->vibeTabBtn:Landroid/widget/Button;

    new-instance v1, Lcom/aws/mycloud/view/MyCloudActivity$6;

    invoke-direct {v1, p0}, Lcom/aws/mycloud/view/MyCloudActivity$6;-><init>(Lcom/aws/mycloud/view/MyCloudActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    invoke-direct {p0}, Lcom/aws/mycloud/view/MyCloudActivity;->initMyDeviceAction()V

    .line 401
    return-void
.end method

.method private loadTabPref()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 696
    invoke-virtual {p0, v2}, Lcom/aws/mycloud/view/MyCloudActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 697
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    sget-object v1, Lcom/aws/mycloud/view/MyCloudActivity;->TAB_KEY:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private resetContents()V
    .locals 3

    .prologue
    .line 577
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 587
    :goto_1
    return-void

    .line 578
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->imusics:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 579
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->tmusics:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->ifiles:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 581
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->tfiles:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->iphotos:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 583
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->tphotos:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 586
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private saveBooleanPref(Ljava/lang/String;Z)V
    .locals 5
    .parameter "key"
    .parameter "isFirstTime"

    .prologue
    .line 688
    invoke-virtual {p0}, Lcom/aws/mycloud/view/MyCloudActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "MyCloud"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 689
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 690
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 691
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 692
    return-void
.end method

.method private saveTabPref(I)V
    .locals 3
    .parameter "tabid"

    .prologue
    .line 701
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/aws/mycloud/view/MyCloudActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 702
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 703
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    sget-object v2, Lcom/aws/mycloud/view/MyCloudActivity;->TAB_KEY:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 704
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 705
    return-void
.end method

.method private showContents()V
    .locals 9

    .prologue
    const/16 v8, 0xf

    const/4 v7, 0x0

    .line 593
    const/4 v2, 0x0

    .line 594
    .local v2, i:I
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity;->mEarList:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 595
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity;->mEarList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_f

    .line 603
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity;->imusics:[Landroid/widget/ImageView;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 604
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity;->mEarFileList:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 605
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity;->mEarFileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_11

    .line 615
    :cond_3
    :goto_1
    const/4 v2, 0x0

    .line 616
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity;->mySyncList:Ljava/util/List;

    if-eqz v3, :cond_5

    .line 617
    const-string v3, "MyCloudActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<<mySyncList length>>"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/aws/mycloud/view/MyCloudActivity;->mySyncList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity;->mySyncList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_13

    .line 628
    :cond_5
    :goto_2
    const/4 v2, 0x0

    .line 629
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity;->mPixWeList:Ljava/util/List;

    if-eqz v3, :cond_7

    .line 630
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity;->mPixWeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_15

    .line 640
    :cond_7
    :goto_3
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity;->iphotos:[Landroid/widget/ImageView;

    array-length v3, v3

    if-ge v2, v3, :cond_9

    .line 641
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity;->mPixWeFileList:Ljava/util/List;

    if-eqz v3, :cond_9

    .line 642
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity;->mPixWeFileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_17

    .line 652
    :cond_9
    :goto_4
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity;->mPixWeList:Ljava/util/List;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity;->mPixWeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_19

    .line 653
    :cond_a
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity;->mPixWeFileList:Ljava/util/List;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity;->mPixWeFileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_19

    .line 654
    :cond_b
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity;->mEarFileList:Ljava/util/List;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity;->mEarFileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_19

    .line 655
    :cond_c
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity;->mySyncList:Ljava/util/List;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity;->mySyncList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_19

    .line 656
    :cond_d
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity;->mEarList:Ljava/util/List;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity;->mEarList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_19

    .line 658
    :cond_e
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity;->nb:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 659
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity;->sr:Landroid/widget/LinearLayout;

    const v4, 0x7f020031

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 665
    :goto_5
    return-void

    .line 595
    :cond_f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/yostore/aws/api/entity/FolderInfo;

    .line 596
    .local v1, fo:Lnet/yostore/aws/api/entity/FolderInfo;
    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/FolderInfo;->getDisplay()Ljava/lang/String;

    move-result-object v0

    .line 597
    .local v0, dsp:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v8, :cond_10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " ..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 598
    :cond_10
    iget-object v4, p0, Lcom/aws/mycloud/view/MyCloudActivity;->imusics:[Landroid/widget/ImageView;

    aget-object v4, v4, v2

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 599
    iget-object v4, p0, Lcom/aws/mycloud/view/MyCloudActivity;->tmusics:[Landroid/widget/TextView;

    aget-object v4, v4, v2

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 600
    add-int/lit8 v2, v2, 0x1

    iget-object v4, p0, Lcom/aws/mycloud/view/MyCloudActivity;->imusics:[Landroid/widget/ImageView;

    array-length v4, v4

    if-lt v2, v4, :cond_0

    goto/16 :goto_0

    .line 605
    .end local v0           #dsp:Ljava/lang/String;
    .end local v1           #fo:Lnet/yostore/aws/api/entity/FolderInfo;
    :cond_11
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/yostore/aws/api/entity/EntryInfo;

    .line 606
    .local v1, fo:Lnet/yostore/aws/api/entity/EntryInfo;
    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/EntryInfo;->getRawentryname()Ljava/lang/String;

    move-result-object v0

    .line 607
    .restart local v0       #dsp:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v8, :cond_12

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " ..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 608
    :cond_12
    iget-object v4, p0, Lcom/aws/mycloud/view/MyCloudActivity;->imusics:[Landroid/widget/ImageView;

    aget-object v4, v4, v2

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 609
    iget-object v4, p0, Lcom/aws/mycloud/view/MyCloudActivity;->tmusics:[Landroid/widget/TextView;

    aget-object v4, v4, v2

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    add-int/lit8 v2, v2, 0x1

    iget-object v4, p0, Lcom/aws/mycloud/view/MyCloudActivity;->imusics:[Landroid/widget/ImageView;

    array-length v4, v4

    if-lt v2, v4, :cond_2

    goto/16 :goto_1

    .line 618
    .end local v0           #dsp:Ljava/lang/String;
    .end local v1           #fo:Lnet/yostore/aws/api/entity/EntryInfo;
    :cond_13
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/yostore/aws/api/entity/EntryInfo;

    .line 619
    .restart local v1       #fo:Lnet/yostore/aws/api/entity/EntryInfo;
    const-string v4, "MyCloudActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "===>MySyncFolder Filelist :{"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/EntryInfo;->getRawentryname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/EntryInfo;->getRawentryname()Ljava/lang/String;

    move-result-object v0

    .line 621
    .restart local v0       #dsp:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v8, :cond_14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " ..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 622
    :cond_14
    iget-object v4, p0, Lcom/aws/mycloud/view/MyCloudActivity;->ifiles:[Landroid/widget/ImageView;

    aget-object v4, v4, v2

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 623
    iget-object v4, p0, Lcom/aws/mycloud/view/MyCloudActivity;->tfiles:[Landroid/widget/TextView;

    aget-object v4, v4, v2

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    add-int/lit8 v2, v2, 0x1

    iget-object v4, p0, Lcom/aws/mycloud/view/MyCloudActivity;->ifiles:[Landroid/widget/ImageView;

    array-length v4, v4

    if-lt v2, v4, :cond_4

    goto/16 :goto_2

    .line 630
    .end local v0           #dsp:Ljava/lang/String;
    .end local v1           #fo:Lnet/yostore/aws/api/entity/EntryInfo;
    :cond_15
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/yostore/aws/api/entity/FolderInfo;

    .line 632
    .local v1, fo:Lnet/yostore/aws/api/entity/FolderInfo;
    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/FolderInfo;->getDisplay()Ljava/lang/String;

    move-result-object v0

    .line 633
    .restart local v0       #dsp:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v8, :cond_16

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " ..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 634
    :cond_16
    iget-object v4, p0, Lcom/aws/mycloud/view/MyCloudActivity;->iphotos:[Landroid/widget/ImageView;

    aget-object v4, v4, v2

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 635
    iget-object v4, p0, Lcom/aws/mycloud/view/MyCloudActivity;->tphotos:[Landroid/widget/TextView;

    aget-object v4, v4, v2

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 636
    const-string v4, "MyCloudActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]--->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/FolderInfo;->getCreatedtime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    add-int/lit8 v2, v2, 0x1

    iget-object v4, p0, Lcom/aws/mycloud/view/MyCloudActivity;->iphotos:[Landroid/widget/ImageView;

    array-length v4, v4

    if-lt v2, v4, :cond_6

    goto/16 :goto_3

    .line 642
    .end local v0           #dsp:Ljava/lang/String;
    .end local v1           #fo:Lnet/yostore/aws/api/entity/FolderInfo;
    :cond_17
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/yostore/aws/api/entity/EntryInfo;

    .line 643
    .local v1, fo:Lnet/yostore/aws/api/entity/EntryInfo;
    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/EntryInfo;->getRawentryname()Ljava/lang/String;

    move-result-object v0

    .line 644
    .restart local v0       #dsp:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v8, :cond_18

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " ..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 645
    :cond_18
    iget-object v4, p0, Lcom/aws/mycloud/view/MyCloudActivity;->iphotos:[Landroid/widget/ImageView;

    aget-object v4, v4, v2

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 646
    iget-object v4, p0, Lcom/aws/mycloud/view/MyCloudActivity;->tphotos:[Landroid/widget/TextView;

    aget-object v4, v4, v2

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    add-int/lit8 v2, v2, 0x1

    iget-object v4, p0, Lcom/aws/mycloud/view/MyCloudActivity;->iphotos:[Landroid/widget/ImageView;

    array-length v4, v4

    if-lt v2, v4, :cond_8

    goto/16 :goto_4

    .line 662
    .end local v0           #dsp:Ljava/lang/String;
    .end local v1           #fo:Lnet/yostore/aws/api/entity/EntryInfo;
    :cond_19
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity;->nb:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 663
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity;->sr:Landroid/widget/LinearLayout;

    const v4, 0x7f02000e

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_5
.end method

.method private showMyContent()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 439
    invoke-direct {p0, v3}, Lcom/aws/mycloud/view/MyCloudActivity;->saveTabPref(I)V

    .line 441
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->nb:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->naws:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 442
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->sr:Landroid/widget/LinearLayout;

    const v1, 0x7f02000e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 446
    :goto_0
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->vibeMain:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 447
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->vibeTabBtn:Landroid/widget/Button;

    const v1, 0x7f02008c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 448
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->myDeviceMain:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->myDeviceTabBtn:Landroid/widget/Button;

    const v1, 0x7f020088

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 451
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->myContentMain:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 452
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->myContentTabBtn:Landroid/widget/Button;

    const v1, 0x7f020087

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 453
    return-void

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->sr:Landroid/widget/LinearLayout;

    const v1, 0x7f020031

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private showMyDevice()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 455
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->saveTabPref(I)V

    .line 457
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->sr:Landroid/widget/LinearLayout;

    const v1, 0x7f020031

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 459
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->myContentMain:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 460
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->myContentTabBtn:Landroid/widget/Button;

    const v1, 0x7f020083

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 461
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->vibeMain:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 462
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->vibeTabBtn:Landroid/widget/Button;

    const v1, 0x7f02008c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 464
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->myDeviceMain:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 465
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->myDeviceTabBtn:Landroid/widget/Button;

    const v1, 0x7f020089

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 466
    return-void
.end method

.method private showUserId()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 493
    const v0, 0x7f060047

    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->hiUser:Landroid/widget/TextView;

    .line 494
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->hiUser:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 495
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->hiUser:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Hi, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/aws/mycloud/view/MyCloudActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v2, v2, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    const v0, 0x7f060048

    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->logout:Landroid/widget/Button;

    .line 498
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->logout:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 500
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->logout:Landroid/widget/Button;

    new-instance v1, Lcom/aws/mycloud/view/MyCloudActivity$8;

    invoke-direct {v1, p0}, Lcom/aws/mycloud/view/MyCloudActivity$8;-><init>(Lcom/aws/mycloud/view/MyCloudActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 519
    return-void
.end method

.method private showVibe()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 468
    invoke-direct {p0}, Lcom/aws/mycloud/view/MyCloudActivity;->hideVibeApp()V

    .line 469
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/aws/mycloud/view/MyCloudActivity;->saveTabPref(I)V

    .line 471
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->sr:Landroid/widget/LinearLayout;

    const v2, 0x7f020031

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 473
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->myContentMain:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 474
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->myContentTabBtn:Landroid/widget/Button;

    const v2, 0x7f020083

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 475
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->myDeviceMain:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 476
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->myDeviceTabBtn:Landroid/widget/Button;

    const v2, 0x7f020088

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 478
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->vibeMain:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 479
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->vibeTabBtn:Landroid/widget/Button;

    const v2, 0x7f02008d

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 481
    new-instance v0, Lcom/aws/mycloud/view/MyCloudActivity$initCheckVibeServiceTask;

    invoke-direct {v0, p0, p0}, Lcom/aws/mycloud/view/MyCloudActivity$initCheckVibeServiceTask;-><init>(Lcom/aws/mycloud/view/MyCloudActivity;Landroid/content/Context;)V

    .line 482
    .local v0, t:Lcom/aws/mycloud/view/MyCloudActivity$initCheckVibeServiceTask;
    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aws/mycloud/view/MyCloudActivity$initCheckVibeServiceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 484
    return-void
.end method

.method private showVibeApp(IZII)V
    .locals 8
    .parameter "i"
    .parameter "ismax"
    .parameter "cnt"
    .parameter "okcnt"

    .prologue
    const/16 v7, 0x2d

    const/16 v6, 0x28

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, id:I
    packed-switch p1, :pswitch_data_0

    .line 208
    :goto_0
    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 209
    .local v1, ll:Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 211
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    if-ne p4, v5, :cond_0

    .line 212
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 219
    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 221
    return-void

    .line 192
    .end local v1           #ll:Landroid/widget/LinearLayout;
    .end local v2           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :pswitch_0
    const v0, 0x7f060054

    .line 193
    goto :goto_0

    .line 195
    :pswitch_1
    const v0, 0x7f060056

    .line 196
    goto :goto_0

    .line 198
    :pswitch_2
    const v0, 0x7f060058

    .line 199
    goto :goto_0

    .line 201
    :pswitch_3
    const v0, 0x7f06005a

    .line 202
    goto :goto_0

    .line 204
    :pswitch_4
    const v0, 0x7f06005c

    goto :goto_0

    .line 213
    .restart local v1       #ll:Landroid/widget/LinearLayout;
    .restart local v2       #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    const/4 v3, 0x4

    if-ge p4, v3, :cond_1

    if-ne p3, v5, :cond_1

    .line 214
    invoke-virtual {v2, v4, v4, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 215
    :cond_1
    if-ne p3, p4, :cond_2

    .line 216
    invoke-virtual {v2, v6, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 218
    :cond_2
    invoke-virtual {v2, v6, v4, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 190
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private showVibeErrorAlert()V
    .locals 3

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->builder:Landroid/app/AlertDialog$Builder;

    if-nez v0, :cond_0

    .line 1016
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->builder:Landroid/app/AlertDialog$Builder;

    .line 1017
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->builder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f040045

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1018
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->builder:Landroid/app/AlertDialog$Builder;

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1019
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->builder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f040046

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1020
    const v1, 0x104000a

    iget-object v2, p0, Lcom/aws/mycloud/view/MyCloudActivity;->dialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1021
    const/high16 v1, 0x104

    iget-object v2, p0, Lcom/aws/mycloud/view/MyCloudActivity;->dialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1023
    :cond_0
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->vibeRetryDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    .line 1024
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->vibeRetryDialog:Landroid/app/AlertDialog;

    .line 1026
    :cond_1
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->vibeRetryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1027
    return-void
.end method

.method private startExternalActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 776
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 777
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 778
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 779
    const/high16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 780
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 781
    iget-object v2, p0, Lcom/aws/mycloud/view/MyCloudActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    if-eqz v2, :cond_0

    .line 782
    const-string v2, "MyCloudActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MyCloud Sending "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/aws/mycloud/view/MyCloudActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v4}, Lnet/yostore/aws/api/ApiConfig;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const-string v2, "AccountInfo"

    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v3}, Lnet/yostore/aws/api/ApiConfig;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/yostore/utility/SimpleAES;->encodeFromString(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 787
    :cond_0
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/aws/mycloud/view/MyCloudActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 791
    :goto_0
    return-void

    .line 788
    :catch_0
    move-exception v0

    .line 789
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "Log"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SkeletonActivity::onClick "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public goVibeGame(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 416
    const-string v0, "com.asus.vibe.action.LIST_GAME"

    invoke-direct {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->_startVibe(Ljava/lang/String;)V

    .line 417
    return-void
.end method

.method public goVibeMusic(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 404
    const-string v0, "com.asus.vibe.action.LIST_MUSIC"

    invoke-direct {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->_startVibe(Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method public goVibeNews(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 413
    const-string v0, "com.asus.vibe.action.LIST_NEWS"

    invoke-direct {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->_startVibe(Ljava/lang/String;)V

    .line 414
    return-void
.end method

.method public goVibeRadio(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 407
    const-string v0, "com.asus.vibe.action.LIST_RADIO"

    invoke-direct {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->_startVibe(Ljava/lang/String;)V

    .line 408
    return-void
.end method

.method public goVibeVideo(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 410
    const-string v0, "com.asus.vibe.action.LIST_VIDEO"

    invoke-direct {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->_startVibe(Ljava/lang/String;)V

    .line 411
    return-void
.end method

.method public gologin(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 814
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 815
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/aws/account/view/LoginActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 817
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/aws/mycloud/view/MyCloudActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 818
    return-void
.end method

.method public goregist(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 820
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 821
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/aws/account/view/RegisterActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 823
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/aws/mycloud/view/MyCloudActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 824
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 795
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 796
    invoke-static {}, Lcom/aws/mycloud/helper/FolderRootsConfig;->reset()V

    .line 797
    invoke-direct {p0}, Lcom/aws/mycloud/view/MyCloudActivity;->initApiCfg()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 798
    iget-object v1, p0, Lcom/aws/mycloud/view/MyCloudActivity;->naws:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 808
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 809
    return-void

    .line 802
    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 803
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 804
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/aws/account/view/RegisterActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 806
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/aws/mycloud/view/MyCloudActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 276
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 277
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 292
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 294
    const v3, 0x7f030003

    invoke-virtual {p0, v3}, Lcom/aws/mycloud/view/MyCloudActivity;->setContentView(I)V

    .line 295
    invoke-direct {p0}, Lcom/aws/mycloud/view/MyCloudActivity;->initTabsAction()V

    .line 296
    invoke-direct {p0}, Lcom/aws/mycloud/view/MyCloudActivity;->initCells()V

    .line 298
    const v3, 0x7f06000a

    invoke-virtual {p0, v3}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity;->sr:Landroid/widget/LinearLayout;

    .line 299
    const v3, 0x7f06001b

    invoke-virtual {p0, v3}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity;->nb:Landroid/view/View;

    .line 300
    const v3, 0x7f060019

    invoke-virtual {p0, v3}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity;->naws:Landroid/view/View;

    .line 301
    const v3, 0x7f06001a

    invoke-virtual {p0, v3}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 302
    .local v2, tv:Landroid/widget/TextView;
    const v3, 0x7f040054

    invoke-virtual {p0, v3}, Lcom/aws/mycloud/view/MyCloudActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    const v3, 0x7f06001c

    invoke-virtual {p0, v3}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 304
    .local v1, lm:Landroid/widget/TextView;
    const v3, 0x7f040036

    invoke-virtual {p0, v3}, Lcom/aws/mycloud/view/MyCloudActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 307
    const v3, 0x7f06001d

    invoke-virtual {p0, v3}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 308
    .local v0, dlm:Landroid/widget/TextView;
    const v3, 0x7f04003a

    invoke-virtual {p0, v3}, Lcom/aws/mycloud/view/MyCloudActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 134
    :try_start_0
    sget-object v0, Lcom/aws/mycloud/view/MyCloudActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 137
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/aws/mycloud/view/MyCloudActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/aws/mycloud/view/MyCloudActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 139
    :goto_1
    return-void

    .line 138
    :catch_0
    move-exception v0

    goto :goto_1

    .line 135
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 226
    invoke-direct {p0}, Lcom/aws/mycloud/view/MyCloudActivity;->loadTabPref()I

    move-result v2

    .line 228
    .local v2, tabid:I
    invoke-direct {p0}, Lcom/aws/mycloud/view/MyCloudActivity;->initApiCfg()Z

    move-result v0

    .line 229
    .local v0, initok:Z
    if-eqz v0, :cond_1

    .line 230
    invoke-direct {p0}, Lcom/aws/mycloud/view/MyCloudActivity;->showUserId()V

    .line 238
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 262
    :cond_0
    :goto_1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 271
    return-void

    .line 233
    :cond_1
    invoke-direct {p0}, Lcom/aws/mycloud/view/MyCloudActivity;->hideUserId()V

    .line 234
    :try_start_0
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity;->awsacc:Ljava/io/File;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity;->awsacc:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 235
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity;->naws:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 240
    :pswitch_0
    invoke-direct {p0}, Lcom/aws/mycloud/view/MyCloudActivity;->showMyContent()V

    .line 241
    if-eqz v0, :cond_0

    .line 242
    invoke-direct {p0}, Lcom/aws/mycloud/view/MyCloudActivity;->showMyContent()V

    .line 244
    new-instance v1, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;

    invoke-direct {v1, p0, p0}, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;-><init>(Lcom/aws/mycloud/view/MyCloudActivity;Landroid/content/Context;)V

    .line 245
    .local v1, t:Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;
    new-array v3, v4, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 249
    .end local v1           #t:Lcom/aws/mycloud/view/MyCloudActivity$initFetchContentTask;
    :pswitch_1
    invoke-direct {p0}, Lcom/aws/mycloud/view/MyCloudActivity;->showMyDevice()V

    goto :goto_1

    .line 253
    :pswitch_2
    :try_start_1
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity;->vibeRetryDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity;->vibeRetryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 256
    :cond_3
    :goto_3
    :try_start_2
    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity;->mvDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/aws/mycloud/view/MyCloudActivity;->mvDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 259
    :cond_4
    :goto_4
    invoke-direct {p0}, Lcom/aws/mycloud/view/MyCloudActivity;->showVibe()V

    goto :goto_1

    .line 257
    :catch_0
    move-exception v3

    goto :goto_4

    .line 254
    :catch_1
    move-exception v3

    goto :goto_3

    .line 234
    :catch_2
    move-exception v3

    goto :goto_2

    .line 238
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected showVibeApps([Z)V
    .locals 8
    .parameter "isVibeAppOK"

    .prologue
    const/4 v7, 0x0

    .line 143
    const v5, 0x7f06005e

    invoke-virtual {p0, v5}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 144
    const v5, 0x7f060053

    invoke-virtual {p0, v5}, Lcom/aws/mycloud/view/MyCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 146
    const/4 v2, 0x0

    .local v2, i:I
    const/4 v3, 0x0

    .local v3, maxi:I
    const/4 v4, 0x0

    .local v4, okcnt:I
    const/4 v0, 0x1

    .line 147
    .local v0, cnt:I
    const/4 v2, 0x0

    :goto_0
    array-length v5, p1

    if-lt v2, v5, :cond_0

    .line 153
    const/4 v2, 0x0

    :goto_1
    array-length v5, p1

    if-lt v2, v5, :cond_2

    .line 158
    :try_start_0
    iget-object v5, p0, Lcom/aws/mycloud/view/MyCloudActivity;->mvDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_2
    return-void

    .line 148
    :cond_0
    aget-boolean v5, p1, v2

    if-eqz v5, :cond_1

    .line 149
    add-int/lit8 v4, v4, 0x1

    .line 150
    move v3, v2

    .line 147
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 154
    :cond_2
    aget-boolean v5, p1, v2

    if-eqz v5, :cond_3

    .line 155
    if-ne v2, v3, :cond_4

    const/4 v5, 0x1

    :goto_3
    add-int/lit8 v1, v0, 0x1

    .end local v0           #cnt:I
    .local v1, cnt:I
    invoke-direct {p0, v2, v5, v0, v4}, Lcom/aws/mycloud/view/MyCloudActivity;->showVibeApp(IZII)V

    move v0, v1

    .line 153
    .end local v1           #cnt:I
    .restart local v0       #cnt:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v5, v7

    .line 155
    goto :goto_3

    .line 159
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method public startAWS(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 718
    const-string v0, "MyCloudActivity"

    const-string v1, "startAWS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const-string v0, "com.ecareme.asuswebstorage"

    const-string v1, "net.yostore.aws.view.common.SplashActivity"

    .line 726
    invoke-direct {p0, v0, v1}, Lcom/aws/mycloud/view/MyCloudActivity;->startExternalActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    return-void
.end method

.method public startMEar(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 741
    const-string v0, "MyCloudActivity"

    const-string v1, "startMEar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const-string v0, "com.ecareme.epad.mear"

    const-string v1, "net.yostore.aws.view.common.SplashActivity"

    .line 749
    invoke-direct {p0, v0, v1}, Lcom/aws/mycloud/view/MyCloudActivity;->startExternalActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    return-void
.end method

.method public startPixWe(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 713
    const-string v0, "MyCloudActivity"

    const-string v1, "startPixWe"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const-string v0, "com.ecareme.pixwe"

    const-string v1, "com.ecareme.pixwe.view.common.SplashActivity"

    .line 714
    invoke-direct {p0, v0, v1}, Lcom/aws/mycloud/view/MyCloudActivity;->startExternalActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    return-void
.end method

.class public Lnet/yostore/aws/view/present/TextActivity;
.super Landroid/app/Activity;
.source "TextActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/view/present/TextActivity$DownloadToViewTask;,
        Lnet/yostore/aws/view/present/TextActivity$NextViewTask;,
        Lnet/yostore/aws/view/present/TextActivity$PreViewTask;,
        Lnet/yostore/aws/view/present/TextActivity$TextBigTask;,
        Lnet/yostore/aws/view/present/TextActivity$TextSmallTask;
    }
.end annotation


# static fields
.field private static final PAGESIZE:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "TextActivity"


# instance fields
.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private handler:Landroid/os/Handler;

.field private ll_dn1:Landroid/view/View;

.field private ll_dn2:Landroid/view/View;

.field private ll_up:Landroid/view/View;

.field mPrefs:Landroid/content/SharedPreferences;

.field private mScroll:Landroid/widget/ScrollView;

.field private mTview1:Landroid/widget/EditText;

.field private mdialog:Landroid/app/ProgressDialog;

.field private pageNo:I

.field sb:Ljava/lang/StringBuilder;

.field private textSize:F

.field private totalPage:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    iput v0, p0, Lnet/yostore/aws/view/present/TextActivity;->pageNo:I

    .line 41
    iput v0, p0, Lnet/yostore/aws/view/present/TextActivity;->totalPage:I

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/view/present/TextActivity;->handler:Landroid/os/Handler;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/view/present/TextActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 75
    const/high16 v0, 0x4140

    iput v0, p0, Lnet/yostore/aws/view/present/TextActivity;->textSize:F

    .line 34
    return-void
.end method

.method private CopyAllToClipboard()V
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity;->mTview1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/yostore/aws/view/present/TextActivity;->CopyToClipboard(Ljava/lang/String;)V

    .line 534
    return-void
.end method

.method private CopyToClipboard(Ljava/lang/String;)V
    .locals 2
    .parameter "copyStr"

    .prologue
    .line 528
    const-string v1, "clipboard"

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/present/TextActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 529
    .local v0, cm:Landroid/text/ClipboardManager;
    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 530
    return-void
.end method

.method private DownloadText(Ljava/lang/String;)V
    .locals 9
    .parameter "URL"

    .prologue
    .line 539
    const/16 v0, 0x7d0

    .line 540
    .local v0, BUFFER_SIZE:I
    const/4 v4, 0x0

    .line 542
    .local v4, in:Ljava/io/InputStream;
    :try_start_0
    invoke-static {p1}, Lnet/yostore/aws/view/present/TextActivity;->getInputStreamFromUrl(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 548
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 550
    .local v6, isr:Ljava/io/InputStreamReader;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v7, p0, Lnet/yostore/aws/view/present/TextActivity;->sb:Ljava/lang/StringBuilder;

    .line 551
    new-array v5, v0, [C

    .line 553
    .local v5, inputBuffer:[C
    :goto_0
    :try_start_1
    invoke-virtual {v6, v5}, Ljava/io/InputStreamReader;->read([C)I

    move-result v1

    .local v1, charRead:I
    if-gtz v1, :cond_0

    .line 560
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 565
    .end local v1           #charRead:I
    .end local v5           #inputBuffer:[C
    .end local v6           #isr:Ljava/io/InputStreamReader;
    :goto_1
    return-void

    .line 543
    :catch_0
    move-exception v3

    .line 544
    .local v3, e1:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 557
    .end local v3           #e1:Ljava/io/IOException;
    .restart local v1       #charRead:I
    .restart local v5       #inputBuffer:[C
    .restart local v6       #isr:Ljava/io/InputStreamReader;
    :cond_0
    :try_start_2
    iget-object v7, p0, Lnet/yostore/aws/view/present/TextActivity;->sb:Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    invoke-static {v5, v8, v1}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    new-array v5, v0, [C
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 561
    .end local v1           #charRead:I
    :catch_1
    move-exception v7

    move-object v2, v7

    .line 562
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic access$0(Lnet/yostore/aws/view/present/TextActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 537
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/present/TextActivity;->DownloadText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lnet/yostore/aws/view/present/TextActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput p1, p0, Lnet/yostore/aws/view/present/TextActivity;->totalPage:I

    return-void
.end method

.method static synthetic access$10(Lnet/yostore/aws/view/present/TextActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity;->ll_up:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$11(Lnet/yostore/aws/view/present/TextActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity;->ll_dn2:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$12(Lnet/yostore/aws/view/present/TextActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity;->ll_dn1:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$13(Lnet/yostore/aws/view/present/TextActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput p1, p0, Lnet/yostore/aws/view/present/TextActivity;->pageNo:I

    return-void
.end method

.method static synthetic access$14(Lnet/yostore/aws/view/present/TextActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 584
    invoke-direct {p0}, Lnet/yostore/aws/view/present/TextActivity;->initSpin()V

    return-void
.end method

.method static synthetic access$2(Lnet/yostore/aws/view/present/TextActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 40
    iget v0, p0, Lnet/yostore/aws/view/present/TextActivity;->pageNo:I

    return v0
.end method

.method static synthetic access$3(Lnet/yostore/aws/view/present/TextActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity;->mdialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$4(Lnet/yostore/aws/view/present/TextActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lnet/yostore/aws/view/present/TextActivity;->mdialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$5(Lnet/yostore/aws/view/present/TextActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 41
    iget v0, p0, Lnet/yostore/aws/view/present/TextActivity;->totalPage:I

    return v0
.end method

.method static synthetic access$6(Lnet/yostore/aws/view/present/TextActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity;->mTview1:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$7(Lnet/yostore/aws/view/present/TextActivity;)F
    .locals 1
    .parameter

    .prologue
    .line 75
    iget v0, p0, Lnet/yostore/aws/view/present/TextActivity;->textSize:F

    return v0
.end method

.method static synthetic access$8(Lnet/yostore/aws/view/present/TextActivity;)Landroid/widget/ScrollView;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity;->mScroll:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$9(Lnet/yostore/aws/view/present/TextActivity;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput p1, p0, Lnet/yostore/aws/view/present/TextActivity;->textSize:F

    return-void
.end method

.method public static getInputStreamFromUrl(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 571
    const/4 v0, 0x0

    .line 573
    .local v0, content:Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 574
    .local v2, httpGet:Lorg/apache/http/client/methods/HttpGet;
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 575
    .local v3, httpclient:Lorg/apache/http/client/HttpClient;
    invoke-interface {v3, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 576
    .local v4, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 581
    .end local v2           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v3           #httpclient:Lorg/apache/http/client/HttpClient;
    .end local v4           #response:Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v0

    .line 578
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 579
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "TextActivity"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initSpin()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 585
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/yostore/aws/view/present/TextActivity;->mdialog:Landroid/app/ProgressDialog;

    .line 586
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity;->mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 587
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity;->mdialog:Landroid/app/ProgressDialog;

    const v1, 0x7f06002f

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/present/TextActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 588
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity;->mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 589
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/TextActivity;->setContentView(I)V

    .line 114
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/present/TextActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 115
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v0, v0, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v0, v0, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v0, v0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v0, v0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->awsInterface:Lnet/yostore/aws/service/AWSServiceInterface;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->downloadInterface:Lnet/yostore/aws/service/DownloadServiceInterface;

    if-nez v0, :cond_1

    .line 116
    :cond_0
    invoke-static {p0}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->goSplash(Landroid/content/Context;)V

    .line 117
    :cond_1
    const v0, 0x7f090001

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/TextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lnet/yostore/aws/view/present/TextActivity;->mTview1:Landroid/widget/EditText;

    .line 118
    const/high16 v0, 0x7f09

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/TextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lnet/yostore/aws/view/present/TextActivity;->mScroll:Landroid/widget/ScrollView;

    .line 120
    const v0, 0x7f090002

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/TextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/present/TextActivity;->ll_up:Landroid/view/View;

    .line 121
    const v0, 0x7f090004

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/TextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/present/TextActivity;->ll_dn1:Landroid/view/View;

    .line 122
    const v0, 0x7f090006

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/TextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/present/TextActivity;->ll_dn2:Landroid/view/View;

    .line 124
    if-eqz p1, :cond_2

    .line 125
    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/present/TextActivity;->url:Ljava/lang/String;

    .line 126
    const-string v0, "textsize"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lnet/yostore/aws/view/present/TextActivity;->textSize:F

    .line 127
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity;->mTview1:Landroid/widget/EditText;

    iget v1, p0, Lnet/yostore/aws/view/present/TextActivity;->textSize:F

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 128
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity;->mTview1:Landroid/widget/EditText;

    const-string v1, "text"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 169
    :goto_0
    const v0, 0x7f090003

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/TextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 170
    new-instance v1, Lnet/yostore/aws/view/present/TextActivity$1;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/present/TextActivity$1;-><init>(Lnet/yostore/aws/view/present/TextActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    const v0, 0x7f090005

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/TextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 178
    new-instance v1, Lnet/yostore/aws/view/present/TextActivity$2;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/present/TextActivity$2;-><init>(Lnet/yostore/aws/view/present/TextActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    const v0, 0x7f090007

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/TextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 188
    new-instance v1, Lnet/yostore/aws/view/present/TextActivity$3;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/present/TextActivity$3;-><init>(Lnet/yostore/aws/view/present/TextActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    const v0, 0x7f090008

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/TextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 222
    new-instance v1, Lnet/yostore/aws/view/present/TextActivity$4;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/present/TextActivity$4;-><init>(Lnet/yostore/aws/view/present/TextActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    const v0, 0x7f090009

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/TextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 259
    new-instance v1, Lnet/yostore/aws/view/present/TextActivity$5;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/present/TextActivity$5;-><init>(Lnet/yostore/aws/view/present/TextActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    const v0, 0x7f09000a

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/TextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 266
    new-instance v1, Lnet/yostore/aws/view/present/TextActivity$6;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/present/TextActivity$6;-><init>(Lnet/yostore/aws/view/present/TextActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    return-void

    .line 132
    :cond_2
    invoke-virtual {p0}, Lnet/yostore/aws/view/present/TextActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/present/TextActivity;->url:Ljava/lang/String;

    .line 133
    const-string v0, "TextActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Load Text From URL:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/yostore/aws/view/present/TextActivity;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    new-instance v0, Lnet/yostore/aws/view/present/TextActivity$DownloadToViewTask;

    iget-object v1, p0, Lnet/yostore/aws/view/present/TextActivity;->url:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lnet/yostore/aws/view/present/TextActivity$DownloadToViewTask;-><init>(Lnet/yostore/aws/view/present/TextActivity;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/present/TextActivity$DownloadToViewTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 79
    const-string v0, "TextActivity"

    const-string v1, "onPause: Cloud Info Saved to AWSPrefs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-static {v0}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->saveApiCfg(Lnet/yostore/aws/api/ApiConfig;)V

    .line 81
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 49
    const-string v0, "TextActivity"

    const-string v1, "onRestoreInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/present/TextActivity;->url:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity;->mTview1:Landroid/widget/EditText;

    const-string v1, "textsize"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 52
    iget-object v0, p0, Lnet/yostore/aws/view/present/TextActivity;->mTview1:Landroid/widget/EditText;

    const-string v1, "text"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 53
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 57
    const-string v0, "TextActivity"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string v0, "url"

    iget-object v1, p0, Lnet/yostore/aws/view/present/TextActivity;->url:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v0, "textsize"

    iget-object v1, p0, Lnet/yostore/aws/view/present/TextActivity;->mTview1:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTextSize()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 60
    const-string v0, "text"

    iget-object v1, p0, Lnet/yostore/aws/view/present/TextActivity;->mTview1:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 63
    return-void
.end method

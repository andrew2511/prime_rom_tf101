.class public Lcom/ecareme/pixwe/view/common/TestActivity;
.super Landroid/app/Activity;
.source "TestActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecareme/pixwe/view/common/TestActivity$SaveAllDataToDB;
    }
.end annotation


# static fields
.field static ctx:Landroid/content/Context;


# instance fields
.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private folderid_edit:Landroid/widget/EditText;

.field mPrefs:Landroid/content/SharedPreferences;

.field private mdialog:Landroid/app/ProgressDialog;

.field private pwdh:Lnet/yostore/aws/handler/PixWeDataHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/ecareme/pixwe/view/common/TestActivity;->ctx:Landroid/content/Context;

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ecareme/pixwe/view/common/TestActivity;)Lnet/yostore/aws/handler/PixWeDataHandler;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/TestActivity;->pwdh:Lnet/yostore/aws/handler/PixWeDataHandler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ecareme/pixwe/view/common/TestActivity;)Lnet/yostore/aws/api/ApiConfig;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/TestActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ecareme/pixwe/view/common/TestActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/ecareme/pixwe/view/common/TestActivity;->processdialogdismiss()V

    return-void
.end method

.method static synthetic access$3(Lcom/ecareme/pixwe/view/common/TestActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/ecareme/pixwe/view/common/TestActivity;->mdialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$4(Lcom/ecareme/pixwe/view/common/TestActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/TestActivity;->folderid_edit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$5(Lcom/ecareme/pixwe/view/common/TestActivity;Ljava/lang/String;)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/ecareme/pixwe/view/common/TestActivity;->createAlbun(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private createAlbun(Ljava/lang/String;)J
    .locals 8
    .parameter "name"

    .prologue
    const v7, 0x7f060062

    const/4 v6, 0x1

    .line 180
    const-wide/16 v0, -0x3e7

    .line 183
    .local v0, albumFolder:J
    :try_start_0
    iget-object v3, p0, Lcom/ecareme/pixwe/view/common/TestActivity;->pwdh:Lnet/yostore/aws/handler/PixWeDataHandler;

    invoke-virtual {v3, p1}, Lnet/yostore/aws/handler/PixWeDataHandler;->createAlbum(Ljava/lang/String;)J

    move-result-wide v0

    .line 184
    new-instance v3, Landroid/app/AlertDialog$Builder;

    sget-object v4, Lcom/ecareme/pixwe/view/common/TestActivity;->ctx:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 185
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Album Id: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 186
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 187
    const v4, 0x7f060062

    .line 188
    new-instance v5, Lcom/ecareme/pixwe/view/common/TestActivity$4;

    invoke-direct {v5, p0}, Lcom/ecareme/pixwe/view/common/TestActivity$4;-><init>(Lcom/ecareme/pixwe/view/common/TestActivity;)V

    .line 187
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 195
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_0
    return-wide v0

    .line 197
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 202
    .local v2, e:Lnet/yostore/aws/api/exception/APIException;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    sget-object v4, Lcom/ecareme/pixwe/view/common/TestActivity;->ctx:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 203
    const-string v4, "Create Fail!!"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 204
    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 206
    new-instance v4, Lcom/ecareme/pixwe/view/common/TestActivity$5;

    invoke-direct {v4, p0}, Lcom/ecareme/pixwe/view/common/TestActivity$5;-><init>(Lcom/ecareme/pixwe/view/common/TestActivity;)V

    .line 205
    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 213
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private doGetChangeSeq()J
    .locals 9

    .prologue
    const-wide/16 v7, -0x64

    .line 164
    new-instance v1, Lnet/yostore/aws/api/InfoRelayApi;

    iget-object v4, p0, Lcom/ecareme/pixwe/view/common/TestActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v4, v4, Lnet/yostore/aws/api/ApiConfig;->infoRelay:Ljava/lang/String;

    const-string v5, "https://approxy.asuswebstorage.com/api/"

    invoke-direct {v1, v4, v5}, Lnet/yostore/aws/api/InfoRelayApi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .local v1, ir:Lnet/yostore/aws/api/InfoRelayApi;
    new-instance v2, Lnet/yostore/aws/api/entity/GetChangeSeqRequest;

    iget-object v4, p0, Lcom/ecareme/pixwe/view/common/TestActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v4, v4, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    iget-object v5, p0, Lcom/ecareme/pixwe/view/common/TestActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-wide v5, v5, Lnet/yostore/aws/api/ApiConfig;->albums_meta_folder_id:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lnet/yostore/aws/api/entity/GetChangeSeqRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .local v2, request:Lnet/yostore/aws/api/entity/GetChangeSeqRequest;
    :try_start_0
    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/InfoRelayApi;->folderGetChangeSeq(Lnet/yostore/aws/api/entity/GetChangeSeqRequest;)Lnet/yostore/aws/api/entity/GetChangeSeqResponse;

    move-result-object v3

    .line 168
    .local v3, response:Lnet/yostore/aws/api/entity/GetChangeSeqResponse;
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/GetChangeSeqResponse;->getChangeSeq()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v4

    .line 174
    .end local v3           #response:Lnet/yostore/aws/api/entity/GetChangeSeqResponse;
    :goto_0
    return-wide v4

    .line 169
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 170
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-wide v4, v7

    .line 171
    goto :goto_0

    .line 172
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 173
    .local v0, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    move-wide v4, v7

    .line 174
    goto :goto_0
.end method

.method private haveInternet()Z
    .locals 4

    .prologue
    .line 239
    const/4 v2, 0x0

    .line 240
    .local v2, result:Z
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/ecareme/pixwe/view/common/TestActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 241
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 242
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 244
    :cond_0
    const/4 v2, 0x0

    .line 258
    :goto_0
    return v2

    .line 248
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_2

    .line 250
    const/4 v2, 0x0

    goto :goto_0

    .line 254
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private processdialogdismiss()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/TestActivity;->mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 233
    return-void
.end method

.method private uploadAlbumInfo(J)J
    .locals 2
    .parameter "folderid"

    .prologue
    .line 226
    const-wide/16 v0, -0x3e7

    .line 228
    .local v0, fileid:J
    return-wide v0
.end method

.method private uploadMediaInfo(J)J
    .locals 2
    .parameter "folderid"

    .prologue
    .line 220
    const-wide/16 v0, -0x3e7

    .line 222
    .local v0, fileid:J
    return-wide v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/common/TestActivity;->setContentView(I)V

    .line 74
    sput-object p0, Lcom/ecareme/pixwe/view/common/TestActivity;->ctx:Landroid/content/Context;

    .line 75
    const v0, 0x7f090024

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/common/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ecareme/pixwe/view/common/TestActivity;->folderid_edit:Landroid/widget/EditText;

    .line 77
    const-string v0, "PixWePrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ecareme/pixwe/view/common/TestActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/view/common/TestActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 78
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/TestActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lnet/yostore/aws/preferences/Ap;->pref2ApiCfg(Landroid/content/SharedPreferences;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/view/common/TestActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 79
    new-instance v0, Lnet/yostore/aws/handler/PixWeDataHandler;

    sget-object v1, Lcom/ecareme/pixwe/view/common/TestActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/ecareme/pixwe/view/common/TestActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-direct {v0, v1, v2}, Lnet/yostore/aws/handler/PixWeDataHandler;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/view/common/TestActivity;->pwdh:Lnet/yostore/aws/handler/PixWeDataHandler;

    .line 81
    const v0, 0x7f090023

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/common/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/ecareme/pixwe/view/common/TestActivity$1;

    invoke-direct {v1, p0}, Lcom/ecareme/pixwe/view/common/TestActivity$1;-><init>(Lcom/ecareme/pixwe/view/common/TestActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v0, 0x7f090025

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/common/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/ecareme/pixwe/view/common/TestActivity$2;

    invoke-direct {v1, p0}, Lcom/ecareme/pixwe/view/common/TestActivity$2;-><init>(Lcom/ecareme/pixwe/view/common/TestActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const v0, 0x7f090026

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/common/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/ecareme/pixwe/view/common/TestActivity$3;

    invoke-direct {v1, p0}, Lcom/ecareme/pixwe/view/common/TestActivity$3;-><init>(Lcom/ecareme/pixwe/view/common/TestActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    return-void
.end method

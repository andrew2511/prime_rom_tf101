.class Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;
.super Landroid/os/AsyncTask;
.source "SettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/common/SettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "getUIdataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field _mdialog:Landroid/app/ProgressDialog;

.field cacheUsed:J

.field error:Ljava/lang/String;

.field expire:[I

.field expireDate:Ljava/util/Date;

.field nowY:I

.field task:Landroid/os/AsyncTask;

.field final synthetic this$0:Lnet/yostore/aws/view/common/SettingActivity;


# direct methods
.method private constructor <init>(Lnet/yostore/aws/view/common/SettingActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->this$0:Lnet/yostore/aws/view/common/SettingActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->error:Ljava/lang/String;

    .line 210
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->nowY:I

    .line 211
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->expire:[I

    .line 212
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->cacheUsed:J

    return-void
.end method

.method synthetic constructor <init>(Lnet/yostore/aws/view/common/SettingActivity;Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;-><init>(Lnet/yostore/aws/view/common/SettingActivity;)V

    return-void
.end method

.method static synthetic access$4(Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;)Lnet/yostore/aws/view/common/SettingActivity;
    .locals 1
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->this$0:Lnet/yostore/aws/view/common/SettingActivity;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 11
    .parameter "arg0"

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 217
    iput-object p0, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->task:Landroid/os/AsyncTask;

    .line 218
    const/4 v2, 0x0

    .line 220
    .local v2, rtn:I
    new-array v3, v7, [Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v3}, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->publishProgress([Ljava/lang/Object;)V

    .line 221
    sget-object v3, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->cacheRoot:Ljava/io/File;

    invoke-virtual {p0, v3}, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->getFileSize(Ljava/io/File;)J

    move-result-wide v3

    iput-wide v3, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->cacheUsed:J

    .line 222
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getYear()I

    move-result v3

    iput v3, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->nowY:I

    .line 223
    iget-object v4, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->this$0:Lnet/yostore/aws/view/common/SettingActivity;

    iget-object v3, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->this$0:Lnet/yostore/aws/view/common/SettingActivity;

    invoke-virtual {v3}, Lnet/yostore/aws/view/common/SettingActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/ecareme/asuswebstorage/ASUSWebstorage;

    iput-object v3, v4, Lnet/yostore/aws/view/common/SettingActivity;->application:Lcom/ecareme/asuswebstorage/ASUSWebstorage;

    .line 224
    iget-object v3, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->this$0:Lnet/yostore/aws/view/common/SettingActivity;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/yostore/aws/view/common/SettingActivity;->access$0(Lnet/yostore/aws/view/common/SettingActivity;Lnet/yostore/aws/api/ApiConfig;)V

    .line 225
    iget-object v3, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->this$0:Lnet/yostore/aws/view/common/SettingActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/common/SettingActivity;->access$1(Lnet/yostore/aws/view/common/SettingActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->this$0:Lnet/yostore/aws/view/common/SettingActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/common/SettingActivity;->access$1(Lnet/yostore/aws/view/common/SettingActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v3

    iget-object v3, v3, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->this$0:Lnet/yostore/aws/view/common/SettingActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/common/SettingActivity;->access$1(Lnet/yostore/aws/view/common/SettingActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v3

    iget-object v3, v3, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 227
    :cond_0
    new-array v3, v7, [Ljava/lang/Integer;

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v3}, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->publishProgress([Ljava/lang/Object;)V

    .line 270
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    .line 229
    :cond_1
    iget-object v3, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->this$0:Lnet/yostore/aws/view/common/SettingActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/common/SettingActivity;->access$1(Lnet/yostore/aws/view/common/SettingActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v3

    invoke-static {v3}, Lnet/yostore/aws/handler/LoginHandler;->validateApiCfg(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v0

    .line 230
    .local v0, aaastat:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    sget-object v3, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-eq v0, v3, :cond_2

    sget-object v3, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->FREEZE:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v3, :cond_5

    .line 231
    :cond_2
    iget-object v3, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->this$0:Lnet/yostore/aws/view/common/SettingActivity;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/yostore/aws/view/common/SettingActivity;->access$0(Lnet/yostore/aws/view/common/SettingActivity;Lnet/yostore/aws/api/ApiConfig;)V

    .line 234
    iget-object v3, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->this$0:Lnet/yostore/aws/view/common/SettingActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/common/SettingActivity;->access$2(Lnet/yostore/aws/view/common/SettingActivity;)Landroid/widget/RadioGroup;

    move-result-object v3

    new-instance v4, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask$1;

    invoke-direct {v4, p0}, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask$1;-><init>(Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;)V

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 247
    iget-object v3, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->this$0:Lnet/yostore/aws/view/common/SettingActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/common/SettingActivity;->access$1(Lnet/yostore/aws/view/common/SettingActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v3

    iget-object v3, v3, Lnet/yostore/aws/api/ApiConfig;->expireDate:Ljava/lang/String;

    const-string v4, " "

    const-string v5, "-"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    const-string v5, "-"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, expireStr:[Ljava/lang/String;
    array-length v3, v1

    if-lt v3, v8, :cond_3

    .line 249
    iget-object v3, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->expire:[I

    aget-object v4, v1, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x76c

    sub-int/2addr v4, v5

    aput v4, v3, v6

    .line 250
    iget-object v3, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->expire:[I

    aget-object v4, v1, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, v7

    aput v4, v3, v7

    .line 251
    iget-object v3, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->expire:[I

    const/4 v4, 0x2

    const/4 v5, 0x2

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v3, v4

    .line 252
    array-length v3, v1

    const/4 v4, 0x6

    if-ne v3, v4, :cond_4

    .line 253
    iget-object v3, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->expire:[I

    aget-object v4, v1, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v8

    .line 254
    iget-object v3, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->expire:[I

    aget-object v4, v1, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v9

    .line 255
    iget-object v3, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->expire:[I

    aget-object v4, v1, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v10

    .line 263
    :cond_3
    :goto_1
    new-array v3, v7, [Ljava/lang/Integer;

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v3}, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->publishProgress([Ljava/lang/Object;)V

    .line 264
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 257
    :cond_4
    iget-object v3, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->expire:[I

    aput v6, v3, v8

    .line 258
    iget-object v3, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->expire:[I

    aput v6, v3, v9

    .line 259
    iget-object v3, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->expire:[I

    aput v6, v3, v10

    goto :goto_1

    .line 266
    .end local v1           #expireStr:[Ljava/lang/String;
    :cond_5
    new-array v3, v7, [Ljava/lang/Integer;

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v3}, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getFileSize(Ljava/io/File;)J
    .locals 6
    .parameter "folder"

    .prologue
    .line 339
    const-wide/16 v1, 0x0

    .line 340
    .local v1, foldersize:J
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 341
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 342
    .local v0, filelist:[Ljava/io/File;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v4, v0

    if-lt v3, v4, :cond_1

    .line 352
    .end local v0           #filelist:[Ljava/io/File;
    .end local v3           #i:I
    :cond_0
    return-wide v1

    .line 343
    .restart local v0       #filelist:[Ljava/io/File;
    .restart local v3       #i:I
    :cond_1
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 344
    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->getFileSize(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v1, v4

    .line 342
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 347
    :cond_2
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v1, v4

    goto :goto_1
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 276
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 277
    iget-object v0, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 13
    .parameter "result"

    .prologue
    const/16 v12, 0x8

    const/4 v4, 0x1

    const/4 v11, 0x0

    .line 303
    iget-object v0, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->this$0:Lnet/yostore/aws/view/common/SettingActivity;

    const v1, 0x7f090051

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/common/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->this$0:Lnet/yostore/aws/view/common/SettingActivity;

    const v3, 0x7f0600ed

    invoke-virtual {v2, v3}, Lnet/yostore/aws/view/common/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->clientversion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 305
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->expire:[I

    aget v1, v1, v11

    iget-object v2, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->expire:[I

    aget v2, v2, v4

    iget-object v3, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->expire:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->expire:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    iget-object v5, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->expire:[I

    const/4 v6, 0x4

    aget v5, v5, v6

    iget-object v6, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->expire:[I

    const/4 v10, 0x5

    aget v6, v6, v10

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    iput-object v0, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->expireDate:Ljava/util/Date;

    .line 306
    iget-object v0, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->this$0:Lnet/yostore/aws/view/common/SettingActivity;

    const v1, 0x7f09004e

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/common/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->this$0:Lnet/yostore/aws/view/common/SettingActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/common/SettingActivity;->access$1(Lnet/yostore/aws/view/common/SettingActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v0, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->this$0:Lnet/yostore/aws/view/common/SettingActivity;

    const v1, 0x7f09002e

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/common/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->this$0:Lnet/yostore/aws/view/common/SettingActivity;

    iget-object v2, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->this$0:Lnet/yostore/aws/view/common/SettingActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/common/SettingActivity;->access$1(Lnet/yostore/aws/view/common/SettingActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    iget-object v2, v2, Lnet/yostore/aws/api/ApiConfig;->capacity:Ljava/lang/String;

    invoke-static {v1, v2}, Lnet/yostore/aws/view/common/SettingActivity;->access$6(Lnet/yostore/aws/view/common/SettingActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v0, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->this$0:Lnet/yostore/aws/view/common/SettingActivity;

    const v1, 0x7f090056

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/common/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->this$0:Lnet/yostore/aws/view/common/SettingActivity;

    const v3, 0x7f0600f7

    invoke-virtual {v2, v3}, Lnet/yostore/aws/view/common/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->this$0:Lnet/yostore/aws/view/common/SettingActivity;

    iget-wide v3, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->cacheUsed:J

    invoke-static {v2, v3, v4}, Lnet/yostore/aws/view/common/SettingActivity;->access$7(Lnet/yostore/aws/view/common/SettingActivity;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v0, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->this$0:Lnet/yostore/aws/view/common/SettingActivity;

    const v1, 0x7f09004f

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/common/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 311
    .local v8, expired_title:Landroid/widget/TextView;
    iget-object v0, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->this$0:Lnet/yostore/aws/view/common/SettingActivity;

    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/common/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 312
    .local v9, expired_value:Landroid/widget/TextView;
    iget-object v0, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->expire:[I

    aget v0, v0, v11

    iget v1, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->nowY:I

    sub-int/2addr v0, v1

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    .line 313
    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 314
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 337
    .end local v8           #expired_title:Landroid/widget/TextView;
    .end local v9           #expired_value:Landroid/widget/TextView;
    :goto_0
    return-void

    .line 316
    .restart local v8       #expired_title:Landroid/widget/TextView;
    .restart local v9       #expired_value:Landroid/widget/TextView;
    :cond_0
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v7

    .line 317
    .local v7, dateFormat:Ljava/text/DateFormat;
    iget-object v0, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->expireDate:Ljava/util/Date;

    invoke-virtual {v7, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 323
    .end local v7           #dateFormat:Ljava/text/DateFormat;
    .end local v8           #expired_title:Landroid/widget/TextView;
    .end local v9           #expired_value:Landroid/widget/TextView;
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->this$0:Lnet/yostore/aws/view/common/SettingActivity;

    iget-object v1, v1, Lnet/yostore/aws/view/common/SettingActivity;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 324
    const v1, 0x7f060037

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 325
    const v1, 0x7f060031

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 326
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 327
    const v1, 0x7f060026

    .line 328
    new-instance v2, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask$3;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask$3;-><init>(Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;)V

    .line 327
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 335
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 6
    .parameter "values"

    .prologue
    .line 286
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 287
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 289
    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->this$0:Lnet/yostore/aws/view/common/SettingActivity;

    iget-object v0, v0, Lnet/yostore/aws/view/common/SettingActivity;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->this$0:Lnet/yostore/aws/view/common/SettingActivity;

    const v2, 0x7f060012

    invoke-virtual {v1, v2}, Lnet/yostore/aws/view/common/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->this$0:Lnet/yostore/aws/view/common/SettingActivity;

    const v3, 0x7f060030

    invoke-virtual {v2, v3}, Lnet/yostore/aws/view/common/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    new-instance v5, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask$2;

    invoke-direct {v5, p0}, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask$2;-><init>(Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;)V

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->_mdialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 296
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/common/SettingActivity$getUIdataTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.class public Lnet/yostore/aws/view/capture/NoteActivity;
.super Landroid/app/Activity;
.source "NoteActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UploadNoteActivity"

.field static ctx:Landroid/content/Context;


# instance fields
.field private NOTE_ROOT:Ljava/lang/String;

.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private mynote:Landroid/widget/EditText;

.field private s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-object v0, Lnet/yostore/aws/view/capture/NoteActivity;->ctx:Landroid/content/Context;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    invoke-static {}, Lnet/yostore/aws/handler/ExternalStorageHandler;->getNotRoot()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/capture/NoteActivity;->NOTE_ROOT:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/view/capture/NoteActivity;->s:Ljava/lang/String;

    .line 46
    return-void
.end method

.method private createNote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "cnt"
    .parameter "fpath"
    .parameter "note"

    .prologue
    .line 137
    const/4 v3, 0x0

    .line 139
    .local v3, rtn:Z
    const/4 v1, 0x0

    .line 141
    .local v1, output:Ljava/io/Writer;
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    .line 142
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const-string v6, "UTF8"

    invoke-direct {v4, v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 141
    invoke-direct {v2, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 143
    .end local v1           #output:Ljava/io/Writer;
    .local v2, output:Ljava/io/Writer;
    :try_start_1
    invoke-virtual {v2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 145
    const/4 v3, 0x1

    move-object v1, v2

    .line 155
    .end local v2           #output:Ljava/io/Writer;
    .restart local v1       #output:Ljava/io/Writer;
    :goto_0
    const-string v4, "UploadNoteActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Your file has been written:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return v3

    .line 146
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 147
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :goto_1
    const-string v4, "UploadNoteActivity"

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 148
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 149
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_2
    const-string v4, "UploadNoteActivity"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 151
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v4

    move-object v0, v4

    .line 152
    .local v0, e:Ljava/io/IOException;
    :goto_3
    const-string v4, "UploadNoteActivity"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 151
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #output:Ljava/io/Writer;
    .restart local v2       #output:Ljava/io/Writer;
    :catch_3
    move-exception v4

    move-object v0, v4

    move-object v1, v2

    .end local v2           #output:Ljava/io/Writer;
    .restart local v1       #output:Ljava/io/Writer;
    goto :goto_3

    .line 148
    .end local v1           #output:Ljava/io/Writer;
    .restart local v2       #output:Ljava/io/Writer;
    :catch_4
    move-exception v4

    move-object v0, v4

    move-object v1, v2

    .end local v2           #output:Ljava/io/Writer;
    .restart local v1       #output:Ljava/io/Writer;
    goto :goto_2

    .line 146
    .end local v1           #output:Ljava/io/Writer;
    .restart local v2       #output:Ljava/io/Writer;
    :catch_5
    move-exception v4

    move-object v0, v4

    move-object v1, v2

    .end local v2           #output:Ljava/io/Writer;
    .restart local v1       #output:Ljava/io/Writer;
    goto :goto_1
.end method

.method private isSDCardReady()Z
    .locals 2

    .prologue
    .line 134
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public allSharesBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 188
    new-instance v0, Lnet/yostore/aws/ansytask/GoAllSharesTask;

    sget-object v1, Lnet/yostore/aws/view/capture/NoteActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoAllSharesTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoAllSharesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 189
    return-void
.end method

.method public cancelFunction(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 160
    invoke-virtual {p0}, Lnet/yostore/aws/view/capture/NoteActivity;->finish()V

    .line 161
    return-void
.end method

.method public mBackupBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 168
    new-instance v0, Lnet/yostore/aws/ansytask/GoMyBackupTask;

    sget-object v1, Lnet/yostore/aws/view/capture/NoteActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMyBackupTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMyBackupTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 169
    return-void
.end method

.method public mCollectionBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 172
    new-instance v0, Lnet/yostore/aws/ansytask/GoMyCollectionTask;

    sget-object v1, Lnet/yostore/aws/view/capture/NoteActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMyCollectionTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMyCollectionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 173
    return-void
.end method

.method public mSyncBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 164
    new-instance v0, Lnet/yostore/aws/ansytask/GoMySyncTask;

    sget-object v1, Lnet/yostore/aws/view/capture/NoteActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMySyncTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMySyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 165
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 75
    iget-object v1, p0, Lnet/yostore/aws/view/capture/NoteActivity;->mynote:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/view/capture/NoteActivity;->s:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lnet/yostore/aws/view/capture/NoteActivity;->mynote:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelected(Z)V

    .line 77
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/capture/NoteActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 78
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lnet/yostore/aws/view/capture/NoteActivity;->mynote:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 80
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 82
    :cond_0
    const v1, 0x7f03001b

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/capture/NoteActivity;->setContentView(I)V

    .line 83
    const v1, 0x7f090064

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/capture/NoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lnet/yostore/aws/view/capture/NoteActivity;->mynote:Landroid/widget/EditText;

    .line 84
    iget-object v1, p0, Lnet/yostore/aws/view/capture/NoteActivity;->mynote:Landroid/widget/EditText;

    iget-object v2, p0, Lnet/yostore/aws/view/capture/NoteActivity;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/capture/NoteActivity;->setContentView(I)V

    .line 61
    sput-object p0, Lnet/yostore/aws/view/capture/NoteActivity;->ctx:Landroid/content/Context;

    .line 62
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/capture/NoteActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 63
    iget-object v0, p0, Lnet/yostore/aws/view/capture/NoteActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/view/capture/NoteActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v0, v0, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/view/capture/NoteActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v0, v0, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/view/capture/NoteActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v0, v0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/view/capture/NoteActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

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

    .line 64
    :cond_0
    sget-object v0, Lnet/yostore/aws/view/capture/NoteActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->goSplash(Landroid/content/Context;)V

    .line 65
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/view/capture/NoteActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/yostore/aws/view/capture/NoteActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v0, v0, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/yostore/aws/view/capture/NoteActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v0, v0, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/yostore/aws/view/capture/NoteActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v0, v0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/yostore/aws/view/capture/NoteActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v0, v0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->awsInterface:Lnet/yostore/aws/service/AWSServiceInterface;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->downloadInterface:Lnet/yostore/aws/service/DownloadServiceInterface;

    if-nez v0, :cond_3

    .line 66
    :cond_2
    sget-object v0, Lnet/yostore/aws/view/capture/NoteActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->goSplash(Landroid/content/Context;)V

    .line 67
    :cond_3
    const v0, 0x7f090064

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/capture/NoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lnet/yostore/aws/view/capture/NoteActivity;->mynote:Landroid/widget/EditText;

    .line 68
    return-void
.end method

.method public recentChangedBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 180
    new-instance v0, Lnet/yostore/aws/ansytask/GoRecentChangesTask;

    sget-object v1, Lnet/yostore/aws/view/capture/NoteActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoRecentChangesTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoRecentChangesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 181
    return-void
.end method

.method public recentUploadBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 184
    new-instance v0, Lnet/yostore/aws/ansytask/GoRecentUploadFilesTask;

    sget-object v1, Lnet/yostore/aws/view/capture/NoteActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoRecentUploadFilesTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoRecentUploadFilesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 185
    return-void
.end method

.method public saveFunction(Landroid/view/View;)V
    .locals 13
    .parameter "v"

    .prologue
    const v12, 0x7f060026

    const/4 v11, 0x0

    .line 89
    invoke-direct {p0}, Lnet/yostore/aws/view/capture/NoteActivity;->isSDCardReady()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 90
    iget-object v5, p0, Lnet/yostore/aws/view/capture/NoteActivity;->NOTE_ROOT:Ljava/lang/String;

    .line 91
    .local v5, fp:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v3, cr:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 93
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "note"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    array-length v10, v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".txt"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, fn:Ljava/lang/String;
    iget-object v9, p0, Lnet/yostore/aws/view/capture/NoteActivity;->mynote:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    .line 96
    .local v8, s:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, p0, v9, v8}, Lnet/yostore/aws/view/capture/NoteActivity;->createNote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 97
    new-instance v7, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .local v7, noteFile:Ljava/io/File;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 99
    .local v2, bundle:Landroid/os/Bundle;
    const-string v9, "fileuri"

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 101
    .local v6, intent:Landroid/content/Intent;
    invoke-virtual {v6, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 102
    const/4 v9, -0x1

    invoke-virtual {p0, v9, v6}, Lnet/yostore/aws/view/capture/NoteActivity;->setResult(ILandroid/content/Intent;)V

    .line 104
    sget-object p0, Lnet/yostore/aws/view/capture/NoteActivity;->ctx:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 131
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v3           #cr:Ljava/io/File;
    .end local v4           #fn:Ljava/lang/String;
    .end local v5           #fp:Ljava/lang/String;
    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #noteFile:Ljava/io/File;
    .end local v8           #s:Ljava/lang/String;
    :goto_0
    return-void

    .line 107
    .restart local v3       #cr:Ljava/io/File;
    .restart local v4       #fn:Ljava/lang/String;
    .restart local v5       #fp:Ljava/lang/String;
    .restart local v8       #s:Ljava/lang/String;
    .restart local p0
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 108
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v9, 0x7f0600d4

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 109
    invoke-virtual {v9, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 110
    new-instance v10, Lnet/yostore/aws/view/capture/NoteActivity$1;

    invoke-direct {v10, p0}, Lnet/yostore/aws/view/capture/NoteActivity$1;-><init>(Lnet/yostore/aws/view/capture/NoteActivity;)V

    invoke-virtual {v9, v12, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 119
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v3           #cr:Ljava/io/File;
    .end local v4           #fn:Ljava/lang/String;
    .end local v5           #fp:Ljava/lang/String;
    .end local v8           #s:Ljava/lang/String;
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 120
    .restart local v1       #builder:Landroid/app/AlertDialog$Builder;
    const v9, 0x7f0600d7

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 121
    invoke-virtual {v9, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 122
    new-instance v10, Lnet/yostore/aws/view/capture/NoteActivity$2;

    invoke-direct {v10, p0}, Lnet/yostore/aws/view/capture/NoteActivity$2;-><init>(Lnet/yostore/aws/view/capture/NoteActivity;)V

    invoke-virtual {v9, v12, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 127
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 128
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public saveSearchBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 192
    new-instance v0, Lnet/yostore/aws/ansytask/GoSavedSearchTask;

    sget-object v1, Lnet/yostore/aws/view/capture/NoteActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoSavedSearchTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoSavedSearchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 193
    return-void
.end method

.method public tagBtFunction(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 176
    new-instance v0, Lnet/yostore/aws/ansytask/GoMarkedTask;

    sget-object v1, Lnet/yostore/aws/view/capture/NoteActivity;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/ansytask/GoMarkedTask;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/yostore/aws/ansytask/GoMarkedTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 177
    return-void
.end method

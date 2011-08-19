.class public Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field final a:Landroid/os/Handler;

.field final b:Ljava/lang/Runnable;

.field final c:Ljava/lang/Runnable;

.field final d:Ljava/lang/Runnable;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Landroid/app/ProgressDialog;

.field private h:Ljava/lang/String;

.field private i:Lcom/google/android/apps/uploader/clients/picasa/a;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Landroid/view/View$OnClickListener;

.field private m:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->a:Landroid/os/Handler;

    .line 79
    new-instance v0, Lcom/google/android/apps/uploader/clients/picasa/f;

    invoke-direct {v0, p0}, Lcom/google/android/apps/uploader/clients/picasa/f;-><init>(Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->b:Ljava/lang/Runnable;

    .line 85
    new-instance v0, Lcom/google/android/apps/uploader/clients/picasa/g;

    invoke-direct {v0, p0}, Lcom/google/android/apps/uploader/clients/picasa/g;-><init>(Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->c:Ljava/lang/Runnable;

    .line 91
    new-instance v0, Lcom/google/android/apps/uploader/clients/picasa/h;

    invoke-direct {v0, p0}, Lcom/google/android/apps/uploader/clients/picasa/h;-><init>(Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->d:Ljava/lang/Runnable;

    .line 221
    new-instance v0, Lcom/google/android/apps/uploader/clients/picasa/j;

    invoke-direct {v0, p0}, Lcom/google/android/apps/uploader/clients/picasa/j;-><init>(Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->l:Landroid/view/View$OnClickListener;

    .line 227
    new-instance v0, Lcom/google/android/apps/uploader/clients/picasa/k;

    invoke-direct {v0, p0}, Lcom/google/android/apps/uploader/clients/picasa/k;-><init>(Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->m:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;Lcom/google/android/apps/uploader/clients/picasa/a;)Lcom/google/android/apps/uploader/clients/picasa/a;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->i:Lcom/google/android/apps/uploader/clients/picasa/a;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;)V
    .locals 3
    .parameter

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->a(Z)V

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/uploader/clients/picasa/AlbumProvider;->a:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->i:Lcom/google/android/apps/uploader/clients/picasa/a;

    invoke-virtual {v2}, Lcom/google/android/apps/uploader/clients/picasa/a;->b()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "_id"

    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->i:Lcom/google/android/apps/uploader/clients/picasa/a;

    invoke-virtual {v2}, Lcom/google/android/apps/uploader/clients/picasa/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->finish()V

    return-void
.end method

.method private a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 174
    if-eqz p1, :cond_1

    .line 175
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->g:Landroid/app/ProgressDialog;

    .line 176
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->g:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 177
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->g:Landroid/app/ProgressDialog;

    const v1, 0x7f06000d

    invoke-virtual {p0, v1}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->g:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->g:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->g:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, v1}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->a(Z)V

    const v0, 0x7f06000e

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic c(Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, v1}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->a(Z)V

    const v0, 0x7f06001e

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->finish()V

    return-void
.end method

.method static synthetic d(Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 35
    const-string v1, "MediaUploader"

    const-string v2, "Called create album"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f080002

    invoke-virtual {p0, v1}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->e:I

    iget v1, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->e:I

    const v2, 0x7f080003

    if-ne v1, v2, :cond_0

    const-string v1, "public"

    iput-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->f:Ljava/lang/String;

    :goto_0
    const-string v1, "PicasaPrefs"

    invoke-virtual {p0, v1, v4}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_album_access"

    iget v3, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->e:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const v1, 0x7f080001

    invoke-virtual {p0, v1}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f06000f

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void

    :cond_0
    const-string v1, "private"

    iput-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->f:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->a(Z)V

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/android/apps/uploader/UploaderApplication;

    move-object v3, v0

    new-instance v1, Lcom/google/android/apps/uploader/clients/picasa/c;

    invoke-virtual {v3}, Lcom/google/android/apps/uploader/UploaderApplication;->g()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/apps/uploader/clients/picasa/c;-><init>(Lorg/apache/http/client/HttpClient;)V

    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->j:Ljava/lang/String;

    const-string v4, "lh2"

    invoke-virtual {v3, v4}, Lcom/google/android/apps/uploader/UploaderApplication;->a(Ljava/lang/String;)Lcom/google/android/apps/uploader/b;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->h:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->f:Ljava/lang/String;

    new-instance v6, Lcom/google/android/apps/uploader/clients/picasa/i;

    invoke-direct {v6, p0}, Lcom/google/android/apps/uploader/clients/picasa/i;-><init>(Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;)V

    invoke-interface/range {v1 .. v6}, Lcom/google/android/apps/uploader/clients/picasa/o;->a(Ljava/lang/String;Lcom/google/android/apps/uploader/b;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/uploader/clients/picasa/p;)V

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const-string v0, "MediaUploader"

    const-string v1, "Created NewAlbumActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->setContentView(I)V

    .line 105
    const-string v0, "PicasaPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 106
    const-string v1, "last_album_access"

    const v2, 0x7f080003

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->e:I

    .line 109
    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iget v1, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 111
    const v0, 0x7f080005

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    const v0, 0x7f080006

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 70
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->j:Ljava/lang/String;

    .line 71
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "auth_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->k:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    :cond_0
    const-string v0, "MediaUploader"

    const-string v1, "NewAlbumActivity no account."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->finish()V

    .line 76
    :cond_1
    return-void
.end method

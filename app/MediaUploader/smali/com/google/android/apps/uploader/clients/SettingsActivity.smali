.class public abstract Lcom/google/android/apps/uploader/clients/SettingsActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/ProgressDialog;

.field private b:Landroid/widget/Spinner;

.field private c:Lcom/google/android/apps/uploader/b;

.field private d:I

.field private e:Lcom/google/android/apps/uploader/e;

.field private f:J

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Lcom/google/android/apps/uploader/UploaderApplication;

.field private k:Lcom/google/android/apps/uploader/c;

.field private l:Lcom/google/android/apps/uploader/c;

.field private m:Lcom/google/android/apps/uploader/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 198
    new-instance v0, Lcom/google/android/apps/uploader/clients/g;

    invoke-direct {v0, p0}, Lcom/google/android/apps/uploader/clients/g;-><init>(Lcom/google/android/apps/uploader/clients/SettingsActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->k:Lcom/google/android/apps/uploader/c;

    .line 236
    new-instance v0, Lcom/google/android/apps/uploader/clients/h;

    invoke-direct {v0, p0}, Lcom/google/android/apps/uploader/clients/h;-><init>(Lcom/google/android/apps/uploader/clients/SettingsActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->l:Lcom/google/android/apps/uploader/c;

    .line 258
    new-instance v0, Lcom/google/android/apps/uploader/clients/i;

    invoke-direct {v0, p0}, Lcom/google/android/apps/uploader/clients/i;-><init>(Lcom/google/android/apps/uploader/clients/SettingsActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->m:Lcom/google/android/apps/uploader/c;

    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/uploader/clients/SettingsActivity;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->b:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/apps/uploader/clients/SettingsActivity;Landroid/content/Intent;)Ljava/util/ArrayList;
    .locals 12
    .parameter
    .parameter

    .prologue
    .line 43
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->e()Ljava/lang/String;

    move-result-object v5

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->i:Z

    const/4 v0, 0x0

    move v9, v0

    move-object v10, p1

    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v9, p1, :cond_3

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne v9, v0, :cond_2

    const/4 v0, 0x1

    move v11, v0

    :goto_1
    invoke-direct {p0, p1, v7}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->a(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->e:Lcom/google/android/apps/uploader/e;

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->g:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->e:Lcom/google/android/apps/uploader/e;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->a(Lcom/google/android/apps/uploader/e;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/uploader/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/uploader/y;

    move-result-object p1

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->j:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/UploaderApplication;->a(Lcom/google/android/apps/uploader/y;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->i:Z

    :cond_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    if-eqz v11, :cond_5

    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/google/android/apps/uploader/UploadService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.google.android.apps.uploader.action.UPLOAD_MULTIPLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.google.android.apps.uploader.extra.uploadInfo"

    invoke-virtual {p1, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v11, :cond_5

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    move-object v10, p1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    move v11, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_4

    move-object p0, v6

    :goto_3
    return-object p0

    :cond_4
    const/4 p0, 0x0

    goto :goto_3

    :cond_5
    move-object p1, v10

    goto :goto_2
.end method

.method static synthetic a(Lcom/google/android/apps/uploader/clients/SettingsActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/uploader/clients/SettingsActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/uploader/clients/SettingsActivity;[Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    invoke-direct {v0, p0, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->b:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->b:Landroid/widget/Spinner;

    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->b:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->b:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->g:Ljava/lang/String;

    if-eq v0, p1, :cond_0

    .line 278
    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->g:Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->c:Lcom/google/android/apps/uploader/b;

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->l:Lcom/google/android/apps/uploader/c;

    invoke-interface {v0, v1, p0, v2}, Lcom/google/android/apps/uploader/b;->a(Ljava/lang/String;Landroid/app/Activity;Lcom/google/android/apps/uploader/c;)V

    .line 281
    :cond_0
    return-void
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x1

    .line 479
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->e:Lcom/google/android/apps/uploader/e;

    if-nez v0, :cond_0

    .line 480
    new-instance v0, Lcom/google/android/apps/uploader/e;

    invoke-direct {v0, p0}, Lcom/google/android/apps/uploader/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->e:Lcom/google/android/apps/uploader/e;

    .line 482
    :cond_0
    iget-wide v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 483
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->f:J

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->e:Lcom/google/android/apps/uploader/e;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/uploader/e;->a(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 488
    const v0, 0x7f06001c

    .line 494
    :goto_0
    if-ne v0, v4, :cond_3

    .line 495
    const/4 v0, 0x1

    .line 504
    :goto_1
    return v0

    .line 489
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->e:Lcom/google/android/apps/uploader/e;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/e;->d()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->f:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 491
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->a(I)I

    move-result v0

    goto :goto_0

    .line 498
    :cond_3
    new-instance v1, Lcom/google/android/apps/uploader/clients/b;

    invoke-direct {v1, p0, v0}, Lcom/google/android/apps/uploader/clients/b;-><init>(Lcom/google/android/apps/uploader/clients/SettingsActivity;I)V

    invoke-virtual {p0, v1}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 504
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    move v0, v4

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/apps/uploader/clients/SettingsActivity;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 43
    new-instance v6, Landroid/content/Intent;

    const-class v0, Lcom/google/android/apps/uploader/UploadService;

    invoke-direct {v6, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.google.android.apps.uploader.action.UPLOAD"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->e:Lcom/google/android/apps/uploader/e;

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->e:Lcom/google/android/apps/uploader/e;

    invoke-virtual {p0, v4}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->a(Lcom/google/android/apps/uploader/e;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/uploader/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/uploader/y;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->j:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/uploader/UploaderApplication;->a(Lcom/google/android/apps/uploader/y;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->i:Z

    const-string v1, "com.google.android.apps.uploader.extra.uploadInfo"

    invoke-virtual {v6, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v6
.end method

.method static synthetic b(Lcom/google/android/apps/uploader/clients/SettingsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->h:Ljava/lang/String;

    return-object p1
.end method

.method private b(I)V
    .locals 1
    .parameter

    .prologue
    .line 451
    new-instance v0, Lcom/google/android/apps/uploader/clients/k;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/uploader/clients/k;-><init>(Lcom/google/android/apps/uploader/clients/SettingsActivity;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 457
    return-void
.end method

.method static synthetic b(Lcom/google/android/apps/uploader/clients/SettingsActivity;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 43
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->a:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const v0, 0x7f060018

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v4}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->a(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f060019

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->g:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/apps/uploader/clients/j;

    invoke-direct {v1, p0}, Lcom/google/android/apps/uploader/clients/j;-><init>(Lcom/google/android/apps/uploader/clients/SettingsActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic c(Lcom/google/android/apps/uploader/clients/SettingsActivity;)Lcom/google/android/apps/uploader/e;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->e:Lcom/google/android/apps/uploader/e;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/apps/uploader/clients/SettingsActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 43
    iget v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->d:I

    return v0
.end method

.method static synthetic e(Lcom/google/android/apps/uploader/clients/SettingsActivity;)Lcom/google/android/apps/uploader/c;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->m:Lcom/google/android/apps/uploader/c;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/apps/uploader/clients/SettingsActivity;)Lcom/google/android/apps/uploader/b;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->c:Lcom/google/android/apps/uploader/b;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/apps/uploader/clients/SettingsActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    const v0, 0x7f06001d

    invoke-direct {p0, v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->b(I)V

    return-void
.end method

.method static synthetic h(Lcom/google/android/apps/uploader/clients/SettingsActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/apps/uploader/clients/SettingsActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/apps/uploader/clients/SettingsActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->i:Z

    return v0
.end method

.method static synthetic k(Lcom/google/android/apps/uploader/clients/SettingsActivity;)Lcom/google/android/apps/uploader/UploaderApplication;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->j:Lcom/google/android/apps/uploader/UploaderApplication;

    return-object v0
.end method

.method static synthetic l(Lcom/google/android/apps/uploader/clients/SettingsActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->a:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public abstract a(I)I
.end method

.method protected abstract a()Landroid/view/View;
.end method

.method protected abstract a(Lcom/google/android/apps/uploader/e;)Ljava/lang/String;
.end method

.method protected b()V
    .locals 3

    .prologue
    .line 288
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 289
    const-string v1, "last_account"

    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 290
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 291
    return-void
.end method

.method protected abstract c()Ljava/lang/String;
.end method

.method protected abstract d()Ljava/lang/String;
.end method

.method protected abstract e()Ljava/lang/String;
.end method

.method protected f()V
    .locals 0

    .prologue
    .line 325
    return-void
.end method

.method protected final g()I
    .locals 1

    .prologue
    .line 468
    iget v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->d:I

    return v0
.end method

.method protected final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->g:Ljava/lang/String;

    return-object v0
.end method

.method protected final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const-string v0, "MediaUploader"

    const-string v1, "Creating SettingsActivity."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "MediaUploader"

    const-string v1, "EXTRA_STREAM Uri missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    move-object v1, v6

    move v2, v5

    :goto_0
    if-nez v2, :cond_4

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->a(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v4

    :goto_1
    if-nez v0, :cond_6

    .line 97
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->finish()V

    .line 135
    :goto_2
    return-void

    .line 96
    :cond_0
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput v5, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->d:I

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    move v2, v4

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_0

    :cond_1
    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->d:I

    iget v2, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->d:I

    if-lez v2, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    move v2, v4

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_0

    :cond_2
    const-string v0, "MediaUploader"

    const-string v1, "Empty multiple intent."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    move-object v1, v6

    move v2, v5

    goto :goto_0

    :cond_3
    const-string v1, "MediaUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid intent action ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    move-object v1, v6

    move v2, v5

    goto :goto_0

    :cond_4
    const v0, 0x7f06001b

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v4

    goto :goto_1

    :cond_5
    move v0, v5

    goto/16 :goto_1

    .line 100
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->setContentView(Landroid/view/View;)V

    .line 101
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/apps/uploader/clients/e;

    invoke-direct {v1, p0}, Lcom/google/android/apps/uploader/clients/e;-><init>(Lcom/google/android/apps/uploader/clients/SettingsActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 103
    const v0, 0x7f08000b

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->b:Landroid/widget/Spinner;

    .line 104
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->b:Landroid/widget/Spinner;

    new-instance v1, Lcom/google/android/apps/uploader/clients/a;

    invoke-direct {v1, p0}, Lcom/google/android/apps/uploader/clients/a;-><init>(Lcom/google/android/apps/uploader/clients/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 115
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/UploaderApplication;

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->j:Lcom/google/android/apps/uploader/UploaderApplication;

    .line 116
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->j:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/uploader/UploaderApplication;->a(Ljava/lang/String;)Lcom/google/android/apps/uploader/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->c:Lcom/google/android/apps/uploader/b;

    .line 117
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->c:Lcom/google/android/apps/uploader/b;

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->k:Lcom/google/android/apps/uploader/c;

    invoke-interface {v0, v1}, Lcom/google/android/apps/uploader/b;->a(Lcom/google/android/apps/uploader/c;)V

    .line 119
    const v0, 0x7f08000e

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 120
    new-instance v1, Lcom/google/android/apps/uploader/clients/c;

    invoke-direct {v1, p0}, Lcom/google/android/apps/uploader/clients/c;-><init>(Lcom/google/android/apps/uploader/clients/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v0, 0x7f08000f

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 127
    new-instance v1, Lcom/google/android/apps/uploader/clients/d;

    invoke-direct {v1, p0}, Lcom/google/android/apps/uploader/clients/d;-><init>(Lcom/google/android/apps/uploader/clients/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    invoke-virtual {p0, v4}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->setResult(I)V

    goto/16 :goto_2
.end method

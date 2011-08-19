.class public Lcom/google/android/apps/uploader/UploaderApplication;
.super Landroid/app/Application;
.source "SourceFile"


# instance fields
.field private a:Lorg/apache/http/client/HttpClient;

.field private b:Lcom/google/android/apps/uploader/d;

.field private c:Ljava/util/HashMap;

.field private d:Lcom/google/android/apps/uploader/J;

.field private e:Lcom/google/android/apps/uploader/I;

.field private f:Ljava/util/HashMap;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)Landroid/graphics/Bitmap;
    .locals 2
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->f:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->f:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/apps/uploader/b;
    .locals 2
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->c:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->c:Ljava/util/HashMap;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/b;

    .line 105
    if-nez v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->b:Lcom/google/android/apps/uploader/d;

    if-nez v0, :cond_1

    .line 107
    new-instance v0, Lcom/google/android/apps/uploader/d;

    invoke-direct {v0}, Lcom/google/android/apps/uploader/d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->b:Lcom/google/android/apps/uploader/d;

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->b:Lcom/google/android/apps/uploader/d;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/apps/uploader/d;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/apps/uploader/b;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/google/android/apps/uploader/UploaderApplication;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_2
    return-object v0
.end method

.method public final a()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 84
    invoke-static {}, Lal;->b()Lal;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "MediaUploader"

    const-string v1, "Initializing MASF."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Li;

    invoke-direct {v0, p0}, Li;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lb;->a(Lb;)V

    const-string v6, "http://www.google.com/m/appreq/mobilevideo"

    const-string v7, "media_uploader"

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/UploaderApplication;->d()Ljava/lang/String;

    move-result-object v8

    const-string v0, "[%s][%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v2, v1, v5

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->g:Ljava/lang/String;

    :goto_0
    invoke-static {v6, v7, v8, v9, v0}, Lal;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_0
    return-void

    .line 84
    :cond_1
    const-string v0, "organic"

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/UploaderApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.google.settings/partner"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "value"

    aput-object v3, v2, v5

    const-string v3, "name=\'client_id\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "value"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "organic"

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->g:Ljava/lang/String;

    :cond_2
    const-string v0, "MediaUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Distribution channel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/UploaderApplication;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(JLandroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->f:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->f:Ljava/util/HashMap;

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->f:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    return-void
.end method

.method public final a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 190
    const-string v0, "MediaUploader"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/uploader/UploaderApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 192
    const-string v1, "wakeUp"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 193
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 194
    return-void
.end method

.method public final a(Lcom/google/android/apps/uploader/y;)Z
    .locals 4
    .parameter

    .prologue
    .line 229
    invoke-virtual {p1}, Lcom/google/android/apps/uploader/y;->m()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/apps/uploader/UploaderApplication;->h:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lcom/google/android/apps/uploader/J;
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->d:Lcom/google/android/apps/uploader/J;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/google/android/apps/uploader/J;

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/UploaderApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/uploader/UploaderApplication;->h:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/uploader/J;-><init>(Landroid/content/ContentResolver;I)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->d:Lcom/google/android/apps/uploader/J;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->d:Lcom/google/android/apps/uploader/J;

    return-object v0
.end method

.method public final c()Lcom/google/android/apps/uploader/I;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->e:Lcom/google/android/apps/uploader/I;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/google/android/apps/uploader/I;

    invoke-direct {v0, p0}, Lcom/google/android/apps/uploader/I;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->e:Lcom/google/android/apps/uploader/I;

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->e:Lcom/google/android/apps/uploader/I;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 4

    .prologue
    .line 173
    const/4 v0, 0x0

    .line 175
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/UploaderApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/UploaderApplication;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    return-object v0

    .line 177
    :catch_0
    move-exception v1

    .line 178
    const-string v2, "MediaUploader"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final e()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 210
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/UploaderApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 211
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_1

    .line 213
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 214
    if-eq v0, v2, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v2

    .line 219
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Z
    .locals 2

    .prologue
    .line 233
    iget v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->h:I

    iget v1, p0, Lcom/google/android/apps/uploader/UploaderApplication;->i:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->a:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 71
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 72
    const-string v0, "MediaUploader"

    const-string v1, "UploaderApplication.onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v0, "Android-Uploader/GB"

    invoke-static {v0}, LJ;->a(Ljava/lang/String;)LJ;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->a:Lorg/apache/http/client/HttpClient;

    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    const/high16 v0, 0x140

    :goto_0
    iput v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->i:I

    .line 79
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/UploaderApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "uploader_nonwifi_limit"

    iget v2, p0, Lcom/google/android/apps/uploader/UploaderApplication;->i:I

    invoke-static {v0, v1, v2}, LaZ;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->h:I

    .line 80
    const-string v0, "MediaUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nonWifiLimit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/uploader/UploaderApplication;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", default="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/uploader/UploaderApplication;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void

    .line 76
    :cond_0
    const/high16 v0, 0x30

    goto :goto_0
.end method

.method public onTerminate()V
    .locals 2

    .prologue
    .line 89
    const-string v0, "MediaUploader"

    const-string v1, "Deinitializing MASF."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lal;->a()V

    .line 90
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 91
    return-void
.end method

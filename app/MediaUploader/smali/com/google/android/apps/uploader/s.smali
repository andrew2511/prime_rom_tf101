.class public abstract Lcom/google/android/apps/uploader/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaG;
.implements LaP;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/google/android/apps/uploader/b;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/apps/uploader/b;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p1, p0, Lcom/google/android/apps/uploader/s;->a:Landroid/content/Context;

    .line 186
    iput-object p3, p0, Lcom/google/android/apps/uploader/s;->b:Lcom/google/android/apps/uploader/b;

    .line 187
    iput-object p2, p0, Lcom/google/android/apps/uploader/s;->c:Ljava/lang/String;

    .line 188
    if-eqz p3, :cond_0

    .line 189
    invoke-interface {p3, p2}, Lcom/google/android/apps/uploader/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/s;->d:Ljava/lang/String;

    .line 191
    :cond_0
    iput-boolean p4, p0, Lcom/google/android/apps/uploader/s;->e:Z

    .line 192
    return-void
.end method

.method private b(LaH;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 205
    invoke-virtual {p1}, LaH;->g()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/apps/uploader/o;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/s;->a()V

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    invoke-virtual {p1}, LaH;->g()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/apps/uploader/o;->b(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 209
    const-string v0, "MediaUploader"

    const-string v1, "Authentication failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-boolean v0, p0, Lcom/google/android/apps/uploader/s;->e:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/apps/uploader/s;->b:Lcom/google/android/apps/uploader/b;

    if-eqz v0, :cond_3

    .line 212
    const-string v0, "MediaUploader"

    const-string v1, "Retrying"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iput-boolean v3, p0, Lcom/google/android/apps/uploader/s;->e:Z

    .line 214
    iget-object v0, p0, Lcom/google/android/apps/uploader/s;->b:Lcom/google/android/apps/uploader/b;

    iget-object v1, p0, Lcom/google/android/apps/uploader/s;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/uploader/s;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/uploader/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/s;->d:Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lcom/google/android/apps/uploader/s;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 216
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/s;->b()V

    move v0, v4

    .line 224
    :goto_1
    if-nez v0, :cond_0

    .line 225
    new-instance v0, Lcom/google/android/apps/uploader/a;

    iget-object v1, p0, Lcom/google/android/apps/uploader/s;->a:Landroid/content/Context;

    const v2, 0x7f06002d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/uploader/a;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/s;->a(Lcom/google/android/apps/uploader/a;)V

    goto :goto_0

    .line 219
    :cond_2
    const-string v0, "MediaUploader"

    const-string v1, "Could not refresh authToken."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    goto :goto_1

    .line 222
    :cond_3
    const-string v0, "MediaUploader"

    const-string v1, "Did not refresh authToken."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    goto :goto_1

    .line 230
    :cond_4
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, LaH;->b()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 232
    const-string v1, "MediaUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, LaH;->g()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_2
    new-instance v0, Lcom/google/android/apps/uploader/a;

    iget-object v1, p0, Lcom/google/android/apps/uploader/s;->a:Landroid/content/Context;

    const v2, 0x7f06002b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/uploader/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/s;->a(Lcom/google/android/apps/uploader/a;)V

    goto/16 :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    const-string v0, "MediaUploader"

    const-string v1, "Unexpected response"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(J)V
    .locals 0
    .parameter

    .prologue
    .line 277
    return-void
.end method

.method public final a(JJ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 260
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/uploader/s;->a(J)V

    .line 261
    return-void
.end method

.method public final a(LaF;LaH;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 196
    invoke-direct {p0, p2}, Lcom/google/android/apps/uploader/s;->b(LaH;)V

    .line 197
    return-void
.end method

.method public final a(LaF;Ljava/lang/Exception;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 244
    new-instance v0, Lcom/google/android/apps/uploader/a;

    iget-object v1, p0, Lcom/google/android/apps/uploader/s;->a:Landroid/content/Context;

    const v2, 0x7f06002b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/uploader/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/s;->a(Lcom/google/android/apps/uploader/a;)V

    .line 245
    return-void
.end method

.method public final a(LaH;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/google/android/apps/uploader/s;->b(LaH;)V

    .line 202
    return-void
.end method

.method public abstract a(Lcom/google/android/apps/uploader/a;)V
.end method

.method public abstract a(Lcom/google/android/apps/uploader/u;)V
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 1
    .parameter

    .prologue
    .line 249
    new-instance v0, Lcom/google/android/apps/uploader/u;

    invoke-direct {v0, p1}, Lcom/google/android/apps/uploader/u;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/s;->a(Lcom/google/android/apps/uploader/u;)V

    .line 250
    return-void
.end method

.method public abstract b()V
.end method

.method public c()V
    .locals 0

    .prologue
    .line 273
    return-void
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/s;->c()V

    .line 255
    return-void
.end method

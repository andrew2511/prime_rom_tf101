.class public final Lcom/google/android/apps/uploader/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/apps/uploader/w;


# instance fields
.field private a:Lcom/google/android/apps/uploader/r;

.field private b:LaN;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/android/apps/uploader/o;->c:Landroid/content/Context;

    .line 54
    new-instance v0, Lcom/google/android/apps/uploader/r;

    invoke-direct {v0}, Lcom/google/android/apps/uploader/r;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/o;->a:Lcom/google/android/apps/uploader/r;

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/uploader/o;LaN;)LaN;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/uploader/o;->b:LaN;

    return-object v0
.end method

.method static synthetic a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 30
    const/16 v0, 0xc8

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc9

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(I)Z
    .locals 1
    .parameter

    .prologue
    .line 30
    const/16 v0, 0x191

    if-eq p0, v0, :cond_0

    const/16 v0, 0x193

    if-eq p0, v0, :cond_0

    const/16 v0, 0x195

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 164
    const-string v0, "MediaUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Canceling current upload request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/o;->b:LaN;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/google/android/apps/uploader/o;->b:LaN;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/google/android/apps/uploader/o;->a:Lcom/google/android/apps/uploader/r;

    iget-object v1, p0, Lcom/google/android/apps/uploader/o;->b:LaN;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/uploader/r;->b(LaN;)V

    .line 169
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/apps/uploader/y;Ljava/io/InputStream;Lcom/google/android/apps/uploader/b;ZLcom/google/android/apps/uploader/x;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    new-instance v0, Lcom/google/android/apps/uploader/p;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/apps/uploader/p;-><init>(Lcom/google/android/apps/uploader/o;Lcom/google/android/apps/uploader/y;Ljava/io/InputStream;)V

    .line 93
    invoke-virtual {p1}, Lcom/google/android/apps/uploader/y;->h()Ljava/lang/String;

    move-result-object v1

    .line 95
    if-eqz p3, :cond_0

    .line 96
    invoke-virtual {p1}, Lcom/google/android/apps/uploader/y;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/google/android/apps/uploader/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    if-eqz v2, :cond_1

    .line 98
    const-string v3, "%=_auth_token_=%"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    :cond_0
    :goto_0
    new-instance v2, Lcom/google/android/apps/uploader/t;

    invoke-direct {v2}, Lcom/google/android/apps/uploader/t;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/y;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Lcom/google/android/apps/uploader/t;->a(Ljava/lang/String;Ljava/lang/String;Lak;)LaN;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/o;->b:LaN;

    .line 110
    iget-object v0, p0, Lcom/google/android/apps/uploader/o;->b:LaN;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/y;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p4, :cond_2

    const-string v2, "REFRESHED"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LaN;->b(Ljava/lang/String;)V

    .line 112
    const-string v0, "MediaUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uploading ticketID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/o;->b:LaN;

    invoke-virtual {v2}, LaN;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/google/android/apps/uploader/o;->b:LaN;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, LaN;->a(I)V

    .line 117
    new-instance v0, Lcom/google/android/apps/uploader/q;

    iget-object v2, p0, Lcom/google/android/apps/uploader/o;->c:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/y;->e()Ljava/lang/String;

    move-result-object v3

    if-nez p4, :cond_3

    const/4 v1, 0x1

    move v5, v1

    :goto_2
    move-object v1, p0

    move-object v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/uploader/q;-><init>(Lcom/google/android/apps/uploader/o;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/apps/uploader/b;ZLcom/google/android/apps/uploader/x;)V

    .line 158
    iget-object v1, p0, Lcom/google/android/apps/uploader/o;->b:LaN;

    invoke-virtual {v1, v0}, LaN;->a(LaP;)V

    .line 160
    iget-object v0, p0, Lcom/google/android/apps/uploader/o;->a:Lcom/google/android/apps/uploader/r;

    iget-object v1, p0, Lcom/google/android/apps/uploader/o;->b:LaN;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/uploader/r;->a(LaN;)V

    .line 161
    return-void

    .line 101
    :cond_1
    const-string v2, "MediaUploader"

    const-string v3, "got null authToken"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    :cond_2
    const-string v2, ""

    goto :goto_1

    .line 117
    :cond_3
    const/4 v1, 0x0

    move v5, v1

    goto :goto_2
.end method

.class public abstract Lcom/zinio/mobile/android/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/zinio/mobile/android/a/a;

.field private b:Lcom/zinio/mobile/android/resources/download/DownloadService;

.field private c:Landroid/content/ServiceConnection;

.field private d:Lcom/zinio/mobile/android/resources/download/g;


# direct methods
.method protected constructor <init>()V
    .locals 4

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/zinio/mobile/android/a/a;

    invoke-direct {v0}, Lcom/zinio/mobile/android/a/a;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/a/d;->a:Lcom/zinio/mobile/android/a/a;

    .line 52
    new-instance v0, Lcom/zinio/mobile/android/a/b;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/a/b;-><init>(Lcom/zinio/mobile/android/a/d;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/a/d;->c:Landroid/content/ServiceConnection;

    .line 53
    invoke-static {}, Lcom/zinio/mobile/android/App;->f()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/zinio/mobile/android/a;->a:Landroid/content/Intent;

    iget-object v2, p0, Lcom/zinio/mobile/android/a/d;->c:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 56
    new-instance v0, Lcom/zinio/mobile/android/resources/download/g;

    invoke-direct {v0}, Lcom/zinio/mobile/android/resources/download/g;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/a/d;->d:Lcom/zinio/mobile/android/resources/download/g;

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/zinio/mobile/android/a/d;Lcom/zinio/mobile/android/resources/download/DownloadService;)Lcom/zinio/mobile/android/resources/download/DownloadService;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/zinio/mobile/android/a/d;->b:Lcom/zinio/mobile/android/resources/download/DownloadService;

    return-object p1
.end method

.method static synthetic a(Lcom/zinio/mobile/android/a/d;)Lcom/zinio/mobile/android/resources/download/g;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zinio/mobile/android/a/d;->d:Lcom/zinio/mobile/android/resources/download/g;

    return-object v0
.end method

.method static synthetic b(Lcom/zinio/mobile/android/a/d;)Lcom/zinio/mobile/android/resources/download/DownloadService;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zinio/mobile/android/a/d;->b:Lcom/zinio/mobile/android/resources/download/DownloadService;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/zinio/mobile/android/resources/download/j;)V
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/zinio/mobile/android/a/d;->b:Lcom/zinio/mobile/android/resources/download/DownloadService;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/zinio/mobile/android/a/d;->b:Lcom/zinio/mobile/android/resources/download/DownloadService;

    invoke-virtual {v0, p1}, Lcom/zinio/mobile/android/resources/download/DownloadService;->a(Lcom/zinio/mobile/android/resources/download/j;)Z

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/a/d;->d:Lcom/zinio/mobile/android/resources/download/g;

    invoke-virtual {v0, p1}, Lcom/zinio/mobile/android/resources/download/g;->a(Lcom/zinio/mobile/android/resources/download/j;)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/Class;)V
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/zinio/mobile/android/a/d;->a:Lcom/zinio/mobile/android/a/a;

    invoke-virtual {v0, p1}, Lcom/zinio/mobile/android/a/a;->b(Ljava/lang/Class;)V

    .line 109
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/zinio/mobile/android/a/d;->a:Lcom/zinio/mobile/android/a/a;

    invoke-virtual {v0, p1}, Lcom/zinio/mobile/android/a/a;->a(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/zinio/mobile/android/a/d;->b:Lcom/zinio/mobile/android/resources/download/DownloadService;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/zinio/mobile/android/a/d;->b:Lcom/zinio/mobile/android/resources/download/DownloadService;

    invoke-virtual {v0, p1, p2}, Lcom/zinio/mobile/android/resources/download/DownloadService;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/a/d;->d:Lcom/zinio/mobile/android/resources/download/g;

    invoke-virtual {v0, p1, p2}, Lcom/zinio/mobile/android/resources/download/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method protected final b(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/zinio/mobile/android/a/d;->a:Lcom/zinio/mobile/android/a/a;

    invoke-virtual {v0, p1}, Lcom/zinio/mobile/android/a/a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/zinio/mobile/android/a/d;->a:Lcom/zinio/mobile/android/a/a;

    invoke-virtual {v0, p1}, Lcom/zinio/mobile/android/a/a;->b(Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lcom/zinio/mobile/android/a/d;->b:Lcom/zinio/mobile/android/resources/download/DownloadService;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/zinio/mobile/android/a/d;->b:Lcom/zinio/mobile/android/resources/download/DownloadService;

    invoke-virtual {v0, p1, p2}, Lcom/zinio/mobile/android/resources/download/DownloadService;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 183
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lcom/zinio/mobile/android/a/d;->b:Lcom/zinio/mobile/android/resources/download/DownloadService;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/zinio/mobile/android/a/d;->b:Lcom/zinio/mobile/android/resources/download/DownloadService;

    invoke-virtual {v0, p1, p2}, Lcom/zinio/mobile/android/resources/download/DownloadService;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 214
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/a/d;->d:Lcom/zinio/mobile/android/resources/download/g;

    invoke-virtual {v0, p1, p2}, Lcom/zinio/mobile/android/resources/download/g;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 61
    invoke-static {}, Lcom/zinio/mobile/android/App;->f()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/a/d;->c:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 63
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 64
    return-void
.end method

.method public final k()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/zinio/mobile/android/a/d;->b:Lcom/zinio/mobile/android/resources/download/DownloadService;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/zinio/mobile/android/a/d;->b:Lcom/zinio/mobile/android/resources/download/DownloadService;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/resources/download/DownloadService;->b()V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/a/d;->d:Lcom/zinio/mobile/android/resources/download/g;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/resources/download/g;->b()V

    .line 151
    return-void
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/zinio/mobile/android/a/d;->b:Lcom/zinio/mobile/android/resources/download/DownloadService;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/zinio/mobile/android/a/d;->b:Lcom/zinio/mobile/android/resources/download/DownloadService;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/resources/download/DownloadService;->c()Z

    move-result v0

    .line 196
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

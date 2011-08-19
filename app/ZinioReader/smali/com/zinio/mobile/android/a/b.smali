.class final Lcom/zinio/mobile/android/a/b;
.super Lcom/zinio/mobile/android/util/b;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/a/d;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/a/d;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/zinio/mobile/android/a/b;->a:Lcom/zinio/mobile/android/a/d;

    invoke-direct {p0}, Lcom/zinio/mobile/android/util/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Lcom/zinio/mobile/android/util/b;->a()V

    .line 85
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b;->a:Lcom/zinio/mobile/android/a/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zinio/mobile/android/a/d;->a(Lcom/zinio/mobile/android/a/d;Lcom/zinio/mobile/android/resources/download/DownloadService;)Lcom/zinio/mobile/android/resources/download/DownloadService;

    .line 86
    return-void
.end method

.method protected final bridge synthetic a(Lcom/zinio/mobile/android/util/BoundService;)V
    .locals 2
    .parameter

    .prologue
    .line 68
    check-cast p1, Lcom/zinio/mobile/android/resources/download/DownloadService;

    invoke-super {p0, p1}, Lcom/zinio/mobile/android/util/b;->a(Lcom/zinio/mobile/android/util/BoundService;)V

    iget-object v0, p0, Lcom/zinio/mobile/android/a/b;->a:Lcom/zinio/mobile/android/a/d;

    invoke-static {v0, p1}, Lcom/zinio/mobile/android/a/d;->a(Lcom/zinio/mobile/android/a/d;Lcom/zinio/mobile/android/resources/download/DownloadService;)Lcom/zinio/mobile/android/resources/download/DownloadService;

    :goto_0
    iget-object v0, p0, Lcom/zinio/mobile/android/a/b;->a:Lcom/zinio/mobile/android/a/d;

    invoke-static {v0}, Lcom/zinio/mobile/android/a/d;->a(Lcom/zinio/mobile/android/a/d;)Lcom/zinio/mobile/android/resources/download/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/resources/download/g;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zinio/mobile/android/a/b;->a:Lcom/zinio/mobile/android/a/d;

    invoke-static {v0}, Lcom/zinio/mobile/android/a/d;->b(Lcom/zinio/mobile/android/a/d;)Lcom/zinio/mobile/android/resources/download/DownloadService;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/a/b;->a:Lcom/zinio/mobile/android/a/d;

    invoke-static {v1}, Lcom/zinio/mobile/android/a/d;->a(Lcom/zinio/mobile/android/a/d;)Lcom/zinio/mobile/android/resources/download/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zinio/mobile/android/resources/download/g;->a()Lcom/zinio/mobile/android/resources/download/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/resources/download/DownloadService;->a(Lcom/zinio/mobile/android/resources/download/j;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

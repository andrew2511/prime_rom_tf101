.class final Lcom/google/android/apps/uploader/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lak;


# instance fields
.field private synthetic a:Lcom/google/android/apps/uploader/y;

.field private synthetic b:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/o;Lcom/google/android/apps/uploader/y;Ljava/io/InputStream;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p2, p0, Lcom/google/android/apps/uploader/p;->a:Lcom/google/android/apps/uploader/y;

    iput-object p3, p0, Lcom/google/android/apps/uploader/p;->b:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/uploader/p;->a:Lcom/google/android/apps/uploader/y;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/y;->m()J

    move-result-wide v0

    long-to-int v0, v0

    .line 76
    if-lez v0, :cond_0

    .line 78
    :goto_0
    return v0

    .line 76
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/p;->b:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final b()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/apps/uploader/p;->b:Ljava/io/InputStream;

    return-object v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/p;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

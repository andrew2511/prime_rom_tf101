.class Lcom/google/android/youtube/app/YouTubeApplication$1;
.super Ljava/lang/Thread;
.source "YouTubeApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/app/YouTubeApplication;->maybeCleanCacheDir()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/app/YouTubeApplication;

.field final synthetic val$files:[Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/YouTubeApplication;[Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/android/youtube/app/YouTubeApplication$1;->this$0:Lcom/google/android/youtube/app/YouTubeApplication;

    iput-object p2, p0, Lcom/google/android/youtube/app/YouTubeApplication$1;->val$files:[Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 174
    const-string v4, "cleaning cache directory"

    invoke-static {v4}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/google/android/youtube/app/YouTubeApplication$1;->val$files:[Ljava/io/File;

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 176
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 175
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 178
    .end local v1           #file:Ljava/io/File;
    :cond_0
    return-void
.end method

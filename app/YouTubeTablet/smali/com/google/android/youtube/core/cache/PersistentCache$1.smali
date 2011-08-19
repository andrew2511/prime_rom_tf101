.class Lcom/google/android/youtube/core/cache/PersistentCache$1;
.super Ljava/lang/Object;
.source "PersistentCache.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/cache/PersistentCache;-><init>(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/cache/PersistentCache;

.field final synthetic val$ext:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/cache/PersistentCache;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    .local p0, this:Lcom/google/android/youtube/core/cache/PersistentCache$1;,"Lcom/google/android/youtube/core/cache/PersistentCache.1;"
    iput-object p1, p0, Lcom/google/android/youtube/core/cache/PersistentCache$1;->this$0:Lcom/google/android/youtube/core/cache/PersistentCache;

    iput-object p2, p0, Lcom/google/android/youtube/core/cache/PersistentCache$1;->val$ext:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .parameter "dir"
    .parameter "filename"

    .prologue
    .line 73
    .local p0, this:Lcom/google/android/youtube/core/cache/PersistentCache$1;,"Lcom/google/android/youtube/core/cache/PersistentCache.1;"
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/PersistentCache$1;->val$ext:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.class Lcom/google/android/music/dl/cache/CacheManager$1;
.super Ljava/lang/Object;
.source "CacheManager.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/cache/CacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/dl/cache/CacheManager;


# direct methods
.method constructor <init>(Lcom/google/android/music/dl/cache/CacheManager;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/google/android/music/dl/cache/CacheManager$1;->this$0:Lcom/google/android/music/dl/cache/CacheManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 7
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/music/dl/cache/CacheManager$1;->this$0:Lcom/google/android/music/dl/cache/CacheManager;

    iget-object v1, p0, Lcom/google/android/music/dl/cache/CacheManager$1;->this$0:Lcom/google/android/music/dl/cache/CacheManager;

    invoke-static {v1}, Lcom/google/android/music/dl/cache/CacheManager;->access$100(Lcom/google/android/music/dl/cache/CacheManager;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->isCachedStreamingMusicEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/music/dl/cache/CacheManager;->access$002(Lcom/google/android/music/dl/cache/CacheManager;Z)Z

    .line 131
    iget-object v0, p0, Lcom/google/android/music/dl/cache/CacheManager$1;->this$0:Lcom/google/android/music/dl/cache/CacheManager;

    invoke-static {v0}, Lcom/google/android/music/dl/cache/CacheManager;->access$200(Lcom/google/android/music/dl/cache/CacheManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v2

    .line 132
    .local v2, store:Lcom/google/android/music/store/Store;
    iget-object v0, p0, Lcom/google/android/music/dl/cache/CacheManager$1;->this$0:Lcom/google/android/music/dl/cache/CacheManager;

    invoke-static {v0}, Lcom/google/android/music/dl/cache/CacheManager;->access$000(Lcom/google/android/music/dl/cache/CacheManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v6, p0, Lcom/google/android/music/dl/cache/CacheManager$1;->this$0:Lcom/google/android/music/dl/cache/CacheManager;

    new-instance v0, Lcom/google/android/music/dl/cache/FillUpToLimitCacheStrategy;

    iget-object v1, p0, Lcom/google/android/music/dl/cache/CacheManager$1;->this$0:Lcom/google/android/music/dl/cache/CacheManager;

    invoke-static {v1}, Lcom/google/android/music/dl/cache/CacheManager;->access$400(Lcom/google/android/music/dl/cache/CacheManager;)Lcom/google/android/music/dl/FileSystem;

    move-result-object v1

    const v3, 0x3f4ccccd

    const-wide v4, 0x80000000L

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/dl/cache/FillUpToLimitCacheStrategy;-><init>(Lcom/google/android/music/dl/FileSystem;Lcom/google/android/music/store/Store;FJ)V

    invoke-static {v6, v0}, Lcom/google/android/music/dl/cache/CacheManager;->access$302(Lcom/google/android/music/dl/cache/CacheManager;Lcom/google/android/music/dl/cache/CacheStrategy;)Lcom/google/android/music/dl/cache/CacheStrategy;

    .line 135
    iget-object v0, p0, Lcom/google/android/music/dl/cache/CacheManager$1;->this$0:Lcom/google/android/music/dl/cache/CacheManager;

    new-instance v1, Lcom/google/android/music/dl/cache/LastUsedDeleteStrategy;

    iget-object v3, p0, Lcom/google/android/music/dl/cache/CacheManager$1;->this$0:Lcom/google/android/music/dl/cache/CacheManager;

    invoke-static {v3}, Lcom/google/android/music/dl/cache/CacheManager;->access$400(Lcom/google/android/music/dl/cache/CacheManager;)Lcom/google/android/music/dl/FileSystem;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/google/android/music/dl/cache/LastUsedDeleteStrategy;-><init>(Lcom/google/android/music/dl/FileSystem;Lcom/google/android/music/store/Store;)V

    invoke-static {v0, v1}, Lcom/google/android/music/dl/cache/CacheManager;->access$502(Lcom/google/android/music/dl/cache/CacheManager;Lcom/google/android/music/dl/cache/DeletionStrategy;)Lcom/google/android/music/dl/cache/DeletionStrategy;

    .line 136
    iget-object v0, p0, Lcom/google/android/music/dl/cache/CacheManager$1;->this$0:Lcom/google/android/music/dl/cache/CacheManager;

    invoke-static {v0}, Lcom/google/android/music/dl/cache/CacheManager;->access$600(Lcom/google/android/music/dl/cache/CacheManager;)V

    .line 143
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/dl/cache/CacheManager$1;->this$0:Lcom/google/android/music/dl/cache/CacheManager;

    new-instance v1, Lcom/google/android/music/dl/cache/DeleteAllCacheStrategy;

    invoke-direct {v1}, Lcom/google/android/music/dl/cache/DeleteAllCacheStrategy;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/music/dl/cache/CacheManager;->access$302(Lcom/google/android/music/dl/cache/CacheManager;Lcom/google/android/music/dl/cache/CacheStrategy;)Lcom/google/android/music/dl/cache/CacheStrategy;

    .line 139
    iget-object v0, p0, Lcom/google/android/music/dl/cache/CacheManager$1;->this$0:Lcom/google/android/music/dl/cache/CacheManager;

    new-instance v1, Lcom/google/android/music/dl/cache/MaxFreeSpaceDeletionStrategy;

    iget-object v3, p0, Lcom/google/android/music/dl/cache/CacheManager$1;->this$0:Lcom/google/android/music/dl/cache/CacheManager;

    invoke-static {v3}, Lcom/google/android/music/dl/cache/CacheManager;->access$400(Lcom/google/android/music/dl/cache/CacheManager;)Lcom/google/android/music/dl/FileSystem;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/google/android/music/dl/cache/MaxFreeSpaceDeletionStrategy;-><init>(Lcom/google/android/music/dl/FileSystem;Lcom/google/android/music/store/Store;)V

    invoke-static {v0, v1}, Lcom/google/android/music/dl/cache/CacheManager;->access$502(Lcom/google/android/music/dl/cache/CacheManager;Lcom/google/android/music/dl/cache/DeletionStrategy;)Lcom/google/android/music/dl/cache/DeletionStrategy;

    .line 141
    iget-object v0, p0, Lcom/google/android/music/dl/cache/CacheManager$1;->this$0:Lcom/google/android/music/dl/cache/CacheManager;

    invoke-static {v0}, Lcom/google/android/music/dl/cache/CacheManager;->access$700(Lcom/google/android/music/dl/cache/CacheManager;)V

    goto :goto_0
.end method

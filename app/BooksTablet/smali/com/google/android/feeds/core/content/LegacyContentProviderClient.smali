.class Lcom/google/android/feeds/core/content/LegacyContentProviderClient;
.super Ljava/lang/Object;
.source "ContentProviderClient.java"

# interfaces
.implements Lcom/google/android/feeds/core/content/ContentProviderClient;


# instance fields
.field private final mContentProviderInterface:Ljava/lang/Object;

.field private final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/Object;)V
    .locals 0
    .parameter "contentResolver"
    .parameter "contentProviderInterface"

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/google/android/feeds/core/content/LegacyContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    .line 178
    iput-object p2, p0, Lcom/google/android/feeds/core/content/LegacyContentProviderClient;->mContentProviderInterface:Ljava/lang/Object;

    .line 179
    return-void
.end method


# virtual methods
.method public getLocalContentProvider()Landroid/content/ContentProvider;
    .locals 7

    .prologue
    .line 206
    const/4 v5, 0x1

    :try_start_0
    new-array v2, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-string v6, "android.content.IContentProvider"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v2, v5

    .line 209
    .local v2, parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const-class v5, Landroid/content/ContentProvider;

    const-string v6, "coerceToLocalContentProvider"

    invoke-virtual {v5, v6, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 212
    .local v0, coerceToLocalContentProvider:Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    .line 213
    .local v4, receiver:Ljava/lang/Object;
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/feeds/core/content/LegacyContentProviderClient;->mContentProviderInterface:Ljava/lang/Object;

    aput-object v6, v3, v5

    .line 216
    .local v3, parameters:[Ljava/lang/Object;
    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/ContentProvider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 217
    .end local v0           #coerceToLocalContentProvider:Ljava/lang/reflect/Method;
    .end local v2           #parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v3           #parameters:[Ljava/lang/Object;
    .end local v4           #receiver:Ljava/lang/Object;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 218
    .local v1, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public release()V
    .locals 7

    .prologue
    .line 186
    :try_start_0
    iget-object v5, p0, Lcom/google/android/feeds/core/content/LegacyContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 187
    .local v4, type:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/content/ContentResolver;>;"
    const/4 v5, 0x1

    new-array v1, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-string v6, "android.content.IContentProvider"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v1, v5

    .line 190
    .local v1, parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const-string v5, "releaseProvider"

    invoke-virtual {v4, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 192
    .local v3, releaseProvider:Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/feeds/core/content/LegacyContentProviderClient;->mContentProviderInterface:Ljava/lang/Object;

    aput-object v6, v2, v5

    .line 195
    .local v2, parameters:[Ljava/lang/Object;
    iget-object v5, p0, Lcom/google/android/feeds/core/content/LegacyContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v3, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    return-void

    .line 196
    .end local v1           #parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v2           #parameters:[Ljava/lang/Object;
    .end local v3           #releaseProvider:Ljava/lang/reflect/Method;
    .end local v4           #type:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/content/ContentResolver;>;"
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 197
    .local v0, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

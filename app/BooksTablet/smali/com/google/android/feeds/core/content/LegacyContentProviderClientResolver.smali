.class Lcom/google/android/feeds/core/content/LegacyContentProviderClientResolver;
.super Lcom/google/android/feeds/core/content/ContentProviderClientResolver;
.source "ContentProviderClient.java"


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .parameter "contentResolver"

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/google/android/feeds/core/content/ContentProviderClientResolver;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/google/android/feeds/core/content/LegacyContentProviderClientResolver;->mContentResolver:Landroid/content/ContentResolver;

    .line 139
    return-void
.end method


# virtual methods
.method public acquireContentProviderClient(Ljava/lang/String;)Lcom/google/android/feeds/core/content/ContentProviderClient;
    .locals 8
    .parameter "authority"

    .prologue
    .line 144
    :try_start_0
    iget-object v6, p0, Lcom/google/android/feeds/core/content/LegacyContentProviderClientResolver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 145
    .local v5, type:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/content/ContentResolver;>;"
    const/4 v6, 0x1

    new-array v3, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v3, v6

    .line 148
    .local v3, parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const-string v6, "acquireProvider"

    invoke-virtual {v5, v6, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 150
    .local v0, acquireProvider:Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    .line 153
    .local v4, parameters:[Ljava/lang/Object;
    iget-object v6, p0, Lcom/google/android/feeds/core/content/LegacyContentProviderClientResolver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 154
    .local v1, contentProviderInterface:Ljava/lang/Object;
    if-eqz v1, :cond_0

    new-instance v6, Lcom/google/android/feeds/core/content/LegacyContentProviderClient;

    iget-object v7, p0, Lcom/google/android/feeds/core/content/LegacyContentProviderClientResolver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v6, v7, v1}, Lcom/google/android/feeds/core/content/LegacyContentProviderClient;-><init>(Landroid/content/ContentResolver;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 156
    .end local v0           #acquireProvider:Ljava/lang/reflect/Method;
    .end local v1           #contentProviderInterface:Ljava/lang/Object;
    .end local v3           #parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v4           #parameters:[Ljava/lang/Object;
    .end local v5           #type:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/content/ContentResolver;>;"
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 157
    .local v2, e:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

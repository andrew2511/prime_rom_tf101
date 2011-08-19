.class Lcom/google/android/feeds/core/content/StandardContentProviderClient;
.super Ljava/lang/Object;
.source "ContentProviderClient.java"

# interfaces
.implements Lcom/google/android/feeds/core/content/ContentProviderClient;


# instance fields
.field private final mClient:Landroid/content/ContentProviderClient;


# direct methods
.method public constructor <init>(Landroid/content/ContentProviderClient;)V
    .locals 0
    .parameter "client"

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/google/android/feeds/core/content/StandardContentProviderClient;->mClient:Landroid/content/ContentProviderClient;

    .line 109
    return-void
.end method


# virtual methods
.method public getLocalContentProvider()Landroid/content/ContentProvider;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/feeds/core/content/StandardContentProviderClient;->mClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/feeds/core/content/StandardContentProviderClient;->mClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 123
    return-void
.end method

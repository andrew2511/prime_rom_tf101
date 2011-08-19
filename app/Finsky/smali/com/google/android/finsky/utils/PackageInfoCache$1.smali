.class Lcom/google/android/finsky/utils/PackageInfoCache$1;
.super Lcom/google/android/finsky/receivers/PackageMonitorReceiver;
.source "PackageInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/PackageInfoCache;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/utils/PackageInfoCache;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/PackageInfoCache;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/android/finsky/utils/PackageInfoCache$1;->this$0:Lcom/google/android/finsky/utils/PackageInfoCache;

    invoke-direct {p0}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected onPackageAdded(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageInfoCache$1;->this$0:Lcom/google/android/finsky/utils/PackageInfoCache;

    invoke-static {v0}, Lcom/google/android/finsky/utils/PackageInfoCache;->access$000(Lcom/google/android/finsky/utils/PackageInfoCache;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageInfoCache$1;->this$0:Lcom/google/android/finsky/utils/PackageInfoCache;

    invoke-static {v0, p1}, Lcom/google/android/finsky/utils/PackageInfoCache;->access$100(Lcom/google/android/finsky/utils/PackageInfoCache;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method protected onPackageChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageInfoCache$1;->this$0:Lcom/google/android/finsky/utils/PackageInfoCache;

    invoke-static {v0}, Lcom/google/android/finsky/utils/PackageInfoCache;->access$000(Lcom/google/android/finsky/utils/PackageInfoCache;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageInfoCache$1;->this$0:Lcom/google/android/finsky/utils/PackageInfoCache;

    invoke-static {v0, p1}, Lcom/google/android/finsky/utils/PackageInfoCache;->access$100(Lcom/google/android/finsky/utils/PackageInfoCache;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method protected onPackageRemoved(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageInfoCache$1;->this$0:Lcom/google/android/finsky/utils/PackageInfoCache;

    invoke-static {v0}, Lcom/google/android/finsky/utils/PackageInfoCache;->access$000(Lcom/google/android/finsky/utils/PackageInfoCache;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method

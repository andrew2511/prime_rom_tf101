.class Lcom/google/android/youtube/core/transfer/DownloadService$PreferencesListener;
.super Ljava/lang/Object;
.source "DownloadService.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/transfer/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreferencesListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/transfer/DownloadService;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/core/transfer/DownloadService;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/DownloadService$PreferencesListener;->this$0:Lcom/google/android/youtube/core/transfer/DownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/core/transfer/DownloadService;Lcom/google/android/youtube/core/transfer/DownloadService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/transfer/DownloadService$PreferencesListener;-><init>(Lcom/google/android/youtube/core/transfer/DownloadService;)V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "preferences"
    .parameter "key"

    .prologue
    .line 72
    const-string v1, "download_policy"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/DownloadService$PreferencesListener;->this$0:Lcom/google/android/youtube/core/transfer/DownloadService;

    invoke-static {v1}, Lcom/google/android/youtube/core/transfer/DownloadService;->access$100(Lcom/google/android/youtube/core/transfer/DownloadService;)Z

    move-result v0

    .line 74
    .local v0, wifiRestrict:Z
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/DownloadService$PreferencesListener;->this$0:Lcom/google/android/youtube/core/transfer/DownloadService;

    invoke-static {v1}, Lcom/google/android/youtube/core/transfer/DownloadService;->access$200(Lcom/google/android/youtube/core/transfer/DownloadService;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/DownloadService$PreferencesListener;->this$0:Lcom/google/android/youtube/core/transfer/DownloadService;

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/transfer/DownloadService;->access$202(Lcom/google/android/youtube/core/transfer/DownloadService;Z)Z

    .line 76
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/DownloadService$PreferencesListener;->this$0:Lcom/google/android/youtube/core/transfer/DownloadService;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/transfer/DownloadService;->ping()V

    .line 79
    .end local v0           #wifiRestrict:Z
    :cond_0
    return-void
.end method

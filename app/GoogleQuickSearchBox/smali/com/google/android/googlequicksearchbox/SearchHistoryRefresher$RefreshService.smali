.class public Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher$RefreshService;
.super Landroid/app/IntentService;
.source "SearchHistoryRefresher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RefreshService"
.end annotation


# instance fields
.field private mSearchHistoryRefresher:Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 110
    const-string v0, "RefreshService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 111
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 115
    invoke-static {p0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->get(Landroid/content/Context;)Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getSearchHistoryRefresher()Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher$RefreshService;->mSearchHistoryRefresher:Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;

    .line 116
    return-void
.end method

.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher$RefreshService;->mSearchHistoryRefresher:Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;->access$000(Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;)V

    .line 126
    return-void
.end method

.class Lcom/google/android/music/RecentBrowserActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "RecentBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/RecentBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/RecentBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/RecentBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/google/android/music/RecentBrowserActivity$2;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$2;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    invoke-virtual {v0}, Lcom/google/android/music/RecentBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 230
    return-void
.end method

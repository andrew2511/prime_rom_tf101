.class Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$2;
.super Ljava/lang/Object;
.source "RecentBrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->onStreamabilityChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 573
    iput-object p1, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$2;->this$1:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$2;->this$1:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;

    invoke-virtual {v0}, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->notifyDataSetChanged()V

    .line 576
    return-void
.end method

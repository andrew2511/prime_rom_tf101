.class Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$1;
.super Ljava/lang/Object;
.source "RecentBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
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
    .line 381
    iput-object p1, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$1;->this$1:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 383
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$1;->this$1:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;

    invoke-static {v0}, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->access$300(Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;)Lcom/google/android/music/RecentBrowserActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$1;->this$1:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;

    iget-object v1, v1, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    invoke-static {v1}, Lcom/google/android/music/RecentBrowserActivity;->access$200(Lcom/google/android/music/RecentBrowserActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/music/RecentBrowserActivity;->onCreateContextMusicMenu(Landroid/view/View;I)V

    .line 384
    return-void
.end method

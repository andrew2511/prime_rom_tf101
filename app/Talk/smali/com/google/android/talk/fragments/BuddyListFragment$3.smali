.class Lcom/google/android/talk/fragments/BuddyListFragment$3;
.super Ljava/lang/Object;
.source "BuddyListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/BuddyListFragment;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/BuddyListFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/BuddyListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$3;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 424
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$3;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/fragments/BuddyListFragment$BuddyListHost;

    .line 425
    .local v0, host:Lcom/google/android/talk/fragments/BuddyListFragment$BuddyListHost;
    if-eqz v0, :cond_0

    .line 426
    invoke-interface {v0}, Lcom/google/android/talk/fragments/BuddyListFragment$BuddyListHost;->finishedLoading()V

    .line 428
    :cond_0
    return-void
.end method

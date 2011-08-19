.class Lcom/google/android/talk/fragments/BuddyListFragment$1;
.super Ljava/lang/Object;
.source "BuddyListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/BuddyListFragment;
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
    .line 123
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$1;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$1;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-static {v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$000(Lcom/google/android/talk/fragments/BuddyListFragment;)V

    .line 126
    return-void
.end method

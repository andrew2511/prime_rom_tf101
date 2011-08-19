.class Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener$3;
.super Ljava/lang/Object;
.source "BuddyListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;->selfPresenceChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;)V
    .locals 0
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener$3;->this$1:Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener$3;->this$1:Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;

    iget-object v0, v0, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-static {v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$300(Lcom/google/android/talk/fragments/BuddyListFragment;)V

    .line 349
    return-void
.end method

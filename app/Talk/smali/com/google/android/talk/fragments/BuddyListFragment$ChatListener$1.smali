.class Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener$1;
.super Ljava/lang/Object;
.source "BuddyListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;)V
    .locals 0
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener$1;->this$1:Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener$1;->this$1:Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;

    iget-object v0, v0, Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->forceLoad()V

    .line 274
    return-void
.end method

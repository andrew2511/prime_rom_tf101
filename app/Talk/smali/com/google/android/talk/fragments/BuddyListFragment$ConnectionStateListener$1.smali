.class Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener$1;
.super Ljava/lang/Object;
.source "BuddyListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;->connectionStateChanged(Lcom/google/android/gtalkservice/ConnectionState;Lcom/google/android/gtalkservice/ConnectionError;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;)V
    .locals 0
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener$1;->this$1:Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener$1;->this$1:Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;

    iget-object v0, v0, Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$500(Lcom/google/android/talk/fragments/BuddyListFragment;Z)V

    .line 395
    return-void
.end method

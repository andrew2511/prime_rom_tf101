.class final Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;
.super Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;
.source "BuddyListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/BuddyListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConnectionStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/BuddyListFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/fragments/BuddyListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-direct {p0}, Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;-><init>()V

    .line 383
    return-void
.end method


# virtual methods
.method public connectionStateChanged(Lcom/google/android/gtalkservice/ConnectionState;Lcom/google/android/gtalkservice/ConnectionError;JLjava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "error"
    .parameter "accountId"
    .parameter "username"

    .prologue
    .line 387
    invoke-virtual {p1}, Lcom/google/android/gtalkservice/ConnectionState;->getState()I

    move-result v0

    .line 389
    .local v0, connState:I
    packed-switch v0, :pswitch_data_0

    .line 400
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget-object v1, v1, Lcom/google/android/talk/fragments/BuddyListFragment;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener$2;

    invoke-direct {v2, p0}, Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener$2;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 407
    :goto_0
    return-void

    .line 392
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget-object v1, v1, Lcom/google/android/talk/fragments/BuddyListFragment;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener$1;

    invoke-direct {v2, p0}, Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener$1;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 389
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

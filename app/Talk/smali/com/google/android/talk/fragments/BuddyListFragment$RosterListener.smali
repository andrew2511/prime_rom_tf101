.class Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;
.super Lcom/google/android/gtalkservice/IRosterListener$Stub;
.source "BuddyListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/BuddyListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RosterListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/BuddyListFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/BuddyListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-direct {p0}, Lcom/google/android/gtalkservice/IRosterListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public presenceChanged(Ljava/lang/String;)V
    .locals 4
    .parameter "contact"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RosterListener.presenceChanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$400(Lcom/google/android/talk/fragments/BuddyListFragment;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget-object v0, v0, Lcom/google/android/talk/fragments/BuddyListFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener$2;

    invoke-direct {v1, p0}, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener$2;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 341
    return-void

    .line 334
    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public rosterChanged()V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    const-string v1, "RosterListener.rosterChanged"

    invoke-static {v0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$200(Lcom/google/android/talk/fragments/BuddyListFragment;Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget-object v0, v0, Lcom/google/android/talk/fragments/BuddyListFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener$1;

    invoke-direct {v1, p0}, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener$1;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 331
    return-void
.end method

.method public selfPresenceChanged()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    const-string v1, "RosterListener.selfPresenceChanged"

    invoke-static {v0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$400(Lcom/google/android/talk/fragments/BuddyListFragment;Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget-object v0, v0, Lcom/google/android/talk/fragments/BuddyListFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener$3;

    invoke-direct {v1, p0}, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener$3;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 351
    return-void
.end method

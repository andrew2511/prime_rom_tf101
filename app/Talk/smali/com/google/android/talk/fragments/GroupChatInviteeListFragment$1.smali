.class Lcom/google/android/talk/fragments/GroupChatInviteeListFragment$1;
.super Ljava/lang/Object;
.source "GroupChatInviteeListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment$1;->this$0:Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment$1;->this$0:Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;->forceLoad()V

    .line 123
    return-void
.end method

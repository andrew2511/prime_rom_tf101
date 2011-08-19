.class Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;
.super Ljava/lang/Object;
.source "MessageListXL.java"

# interfaces
.implements Lcom/android/email/activity/MessageListFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListXL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageListFragmentCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListXL;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageListXL;)V
    .locals 0
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListXL$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 436
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;-><init>(Lcom/android/email/activity/MessageListXL;)V

    return-void
.end method


# virtual methods
.method public onEnterSelectionMode(Z)V
    .locals 0
    .parameter "enter"

    .prologue
    .line 454
    return-void
.end method

.method public onMailboxNotFound()V
    .locals 0

    .prologue
    .line 450
    return-void
.end method

.method public onMessageOpen(JJJI)V
    .locals 1
    .parameter "messageId"
    .parameter "messageMailboxId"
    .parameter "listMailboxId"
    .parameter "type"

    .prologue
    .line 440
    const/4 v0, 0x1

    if-ne p7, v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0, p1, p2}, Lcom/android/email/activity/MessageCompose;->actionEditDraft(Landroid/content/Context;J)V

    .line 445
    :goto_0
    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$800(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectMessage(J)V

    goto :goto_0
.end method

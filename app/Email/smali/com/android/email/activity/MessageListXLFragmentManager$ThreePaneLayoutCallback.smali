.class Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;
.super Ljava/lang/Object;
.source "MessageListXLFragmentManager.java"

# interfaces
.implements Lcom/android/email/activity/ThreePaneLayout$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListXLFragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThreePaneLayoutCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListXLFragmentManager;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageListXLFragmentManager;)V
    .locals 0
    .parameter

    .prologue
    .line 548
    iput-object p1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageListXLFragmentManager;Lcom/android/email/activity/MessageListXLFragmentManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 548
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;-><init>(Lcom/android/email/activity/MessageListXLFragmentManager;)V

    return-void
.end method


# virtual methods
.method public onVisiblePanesChanged(I)V
    .locals 3
    .parameter "previousVisiblePanes"

    .prologue
    .line 551
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$400(Lcom/android/email/activity/MessageListXLFragmentManager;)V

    .line 552
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$500(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/ThreePaneLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout;->getVisiblePanes()I

    move-result v0

    .line 553
    .local v0, visiblePanes:I
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_0

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 556
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$600(Lcom/android/email/activity/MessageListXLFragmentManager;)V

    .line 558
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageListXLFragmentManager$ThreePaneLayoutCallback;->this$0:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-static {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->access$700(Lcom/android/email/activity/MessageListXLFragmentManager;)Lcom/android/email/activity/MessageListFragment;

    move-result-object v1

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageListFragment;->setVisibility(Z)V

    .line 559
    return-void

    .line 558
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

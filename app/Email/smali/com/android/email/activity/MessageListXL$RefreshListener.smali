.class Lcom/android/email/activity/MessageListXL$RefreshListener;
.super Ljava/lang/Object;
.source "MessageListXL.java"

# interfaces
.implements Lcom/android/email/RefreshManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListXL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListXL;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageListXL;)V
    .locals 0
    .parameter

    .prologue
    .line 695
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$RefreshListener;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListXL$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 695
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListXL$RefreshListener;-><init>(Lcom/android/email/activity/MessageListXL;)V

    return-void
.end method


# virtual methods
.method public onMessagingError(JJLjava/lang/String;)V
    .locals 1
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "message"

    .prologue
    .line 699
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$RefreshListener;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$2100(Lcom/android/email/activity/MessageListXL;)V

    .line 700
    return-void
.end method

.method public onRefreshStatusChanged(JJ)V
    .locals 1
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 704
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$RefreshListener;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$2100(Lcom/android/email/activity/MessageListXL;)V

    .line 705
    return-void
.end method

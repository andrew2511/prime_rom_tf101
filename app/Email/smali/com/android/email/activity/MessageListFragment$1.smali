.class Lcom/android/email/activity/MessageListFragment$1;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageListFragment;->onMultiToggleRead(Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 778
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment$1;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getField(JLandroid/database/Cursor;)Z
    .locals 1
    .parameter "messageId"
    .parameter "c"

    .prologue
    .line 781
    const/4 v0, 0x6

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setField(JLandroid/database/Cursor;Z)Z
    .locals 4
    .parameter "messageId"
    .parameter "c"
    .parameter "newValue"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 785
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/email/activity/MessageListFragment$1;->getField(JLandroid/database/Cursor;)Z

    move-result v0

    .line 786
    .local v0, oldValue:Z
    if-eq v0, p4, :cond_1

    .line 787
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$1;->this$0:Lcom/android/email/activity/MessageListFragment;

    if-nez p4, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v1, p1, p2, v2}, Lcom/android/email/activity/MessageListFragment;->access$400(Lcom/android/email/activity/MessageListFragment;JZ)V

    move v1, v3

    .line 790
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

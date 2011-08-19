.class Lcom/android/email/activity/MessageListFragment$2;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageListFragment;->onMultiToggleFavorite(Ljava/util/Set;)V
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
    .line 801
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment$2;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getField(JLandroid/database/Cursor;)Z
    .locals 1
    .parameter "messageId"
    .parameter "c"

    .prologue
    .line 804
    const/4 v0, 0x7

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setField(JLandroid/database/Cursor;Z)Z
    .locals 2
    .parameter "messageId"
    .parameter "c"
    .parameter "newValue"

    .prologue
    .line 808
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/email/activity/MessageListFragment$2;->getField(JLandroid/database/Cursor;)Z

    move-result v0

    .line 809
    .local v0, oldValue:Z
    if-eq v0, p4, :cond_0

    .line 810
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$2;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v1, p1, p2, p4}, Lcom/android/email/activity/MessageListFragment;->access$500(Lcom/android/email/activity/MessageListFragment;JZ)V

    .line 811
    const/4 v1, 0x1

    .line 813
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

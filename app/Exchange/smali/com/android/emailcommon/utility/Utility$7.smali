.class final Lcom/android/emailcommon/utility/Utility$7;
.super Ljava/lang/Object;
.source "Utility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/utility/Utility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$listView:Landroid/widget/ListView;

.field final synthetic val$position:I


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 979
    iget-object v0, p0, Lcom/android/emailcommon/utility/Utility$7;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 983
    :goto_0
    return-void

    .line 982
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/utility/Utility$7;->val$listView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/emailcommon/utility/Utility$7;->val$position:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    goto :goto_0
.end method

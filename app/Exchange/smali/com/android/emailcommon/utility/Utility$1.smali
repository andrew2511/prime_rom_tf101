.class final Lcom/android/emailcommon/utility/Utility$1;
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

.field final synthetic val$message:Ljava/lang/String;


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/emailcommon/utility/Utility$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/emailcommon/utility/Utility$1;->val$message:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 568
    return-void
.end method

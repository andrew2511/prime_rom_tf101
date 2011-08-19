.class Lcom/android/email/activity/MessageViewFragmentBase$UpdatePreviewIconTask;
.super Lcom/android/emailcommon/utility/EmailAsyncTask;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdatePreviewIconTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/emailcommon/utility/EmailAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAttachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V
    .locals 1
    .parameter
    .parameter "attachmentInfo"

    .prologue
    .line 1766
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$UpdatePreviewIconTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    .line 1767
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    .line 1768
    invoke-virtual {p1}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$UpdatePreviewIconTask;->mContext:Landroid/content/Context;

    .line 1769
    iput-object p2, p0, Lcom/android/email/activity/MessageViewFragmentBase$UpdatePreviewIconTask;->mAttachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    .line 1770
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "params"

    .prologue
    .line 1774
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$UpdatePreviewIconTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$UpdatePreviewIconTask;->mAttachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3800(Landroid/content/Context;Lcom/android/email/AttachmentInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1761
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$UpdatePreviewIconTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 1779
    if-nez p1, :cond_0

    .line 1783
    :goto_0
    return-void

    .line 1782
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$UpdatePreviewIconTask;->mAttachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$2300(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1761
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$UpdatePreviewIconTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

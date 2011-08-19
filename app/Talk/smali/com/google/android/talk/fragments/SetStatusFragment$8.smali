.class Lcom/google/android/talk/fragments/SetStatusFragment$8;
.super Ljava/lang/Object;
.source "SetStatusFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/SetStatusFragment;->savePendingAvatarChanges()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

.field final synthetic val$avatar:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/SetStatusFragment;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 739
    iput-object p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$8;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    iput-object p2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$8;->val$avatar:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 742
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$8;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v0}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$100(Lcom/google/android/talk/fragments/SetStatusFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$8;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v1}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$600(Lcom/google/android/talk/fragments/SetStatusFragment;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$8;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v2}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$600(Lcom/google/android/talk/fragments/SetStatusFragment;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    iget-object v4, p0, Lcom/google/android/talk/fragments/SetStatusFragment$8;->val$avatar:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/talk/DatabaseUtils;->saveAvatar(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/graphics/Bitmap;)V

    .line 746
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$8;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-static {v0}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$2100(Lcom/google/android/talk/fragments/SetStatusFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$8;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$2202(Lcom/google/android/talk/fragments/SetStatusFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$8;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/SetStatusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/google/android/talk/fragments/SetStatusFragment$8$1;

    invoke-direct {v1, p0}, Lcom/google/android/talk/fragments/SetStatusFragment$8$1;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment$8;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 755
    return-void
.end method

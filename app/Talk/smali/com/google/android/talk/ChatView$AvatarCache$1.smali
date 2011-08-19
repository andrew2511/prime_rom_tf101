.class Lcom/google/android/talk/ChatView$AvatarCache$1;
.super Ljava/lang/Object;
.source "ChatView.java"

# interfaces
.implements Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryCallbackErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/ChatView$AvatarCache;->getAvatar(Ljava/lang/String;Lcom/google/android/talk/ChatView$MessageItem;)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/ChatView$AvatarCache;

.field final synthetic val$emailAddress:Ljava/lang/String;

.field final synthetic val$query:Lcom/google/android/talk/ContactInfoQuery;


# direct methods
.method constructor <init>(Lcom/google/android/talk/ChatView$AvatarCache;Ljava/lang/String;Lcom/google/android/talk/ContactInfoQuery;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3212
    iput-object p1, p0, Lcom/google/android/talk/ChatView$AvatarCache$1;->this$1:Lcom/google/android/talk/ChatView$AvatarCache;

    iput-object p2, p0, Lcom/google/android/talk/ChatView$AvatarCache$1;->val$emailAddress:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/talk/ChatView$AvatarCache$1;->val$query:Lcom/google/android/talk/ContactInfoQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactInfoLoadFailed(Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 3
    .parameter "contact"
    .parameter "c"

    .prologue
    .line 3224
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContactInfoLoadFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3226
    iget-object v0, p0, Lcom/google/android/talk/ChatView$AvatarCache$1;->this$1:Lcom/google/android/talk/ChatView$AvatarCache;

    iget-object v0, v0, Lcom/google/android/talk/ChatView$AvatarCache;->mOutstanding:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/talk/ChatView$AvatarCache$1;->val$emailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 3227
    return-void
.end method

.method public onContactInfoLoaded()V
    .locals 3

    .prologue
    .line 3216
    iget-object v0, p0, Lcom/google/android/talk/ChatView$AvatarCache$1;->this$1:Lcom/google/android/talk/ChatView$AvatarCache;

    iget-object v0, v0, Lcom/google/android/talk/ChatView$AvatarCache;->mOutstanding:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/talk/ChatView$AvatarCache$1;->val$emailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 3217
    iget-object v0, p0, Lcom/google/android/talk/ChatView$AvatarCache$1;->this$1:Lcom/google/android/talk/ChatView$AvatarCache;

    iget-object v0, v0, Lcom/google/android/talk/ChatView$AvatarCache;->mImageCache:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/android/talk/ChatView$AvatarCache$1;->val$emailAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/talk/ChatView$AvatarCache$1;->val$query:Lcom/google/android/talk/ContactInfoQuery;

    invoke-virtual {v2}, Lcom/google/android/talk/ContactInfoQuery;->getAvatar()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3218
    iget-object v0, p0, Lcom/google/android/talk/ChatView$AvatarCache$1;->this$1:Lcom/google/android/talk/ChatView$AvatarCache;

    iget-object v0, v0, Lcom/google/android/talk/ChatView$AvatarCache;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$2800(Lcom/google/android/talk/ChatView;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 3219
    iget-object v0, p0, Lcom/google/android/talk/ChatView$AvatarCache$1;->val$query:Lcom/google/android/talk/ContactInfoQuery;

    invoke-virtual {v0}, Lcom/google/android/talk/ContactInfoQuery;->cleanupContactInfoCursor()V

    .line 3220
    return-void
.end method

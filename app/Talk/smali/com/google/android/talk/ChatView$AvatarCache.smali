.class Lcom/google/android/talk/ChatView$AvatarCache;
.super Ljava/lang/Object;
.source "ChatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/ChatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AvatarCache"
.end annotation


# instance fields
.field mImageCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field mOutstanding:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/talk/ChatView;


# direct methods
.method constructor <init>(Lcom/google/android/talk/ChatView;)V
    .locals 1
    .parameter

    .prologue
    .line 3195
    iput-object p1, p0, Lcom/google/android/talk/ChatView$AvatarCache;->this$0:Lcom/google/android/talk/ChatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3197
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/ChatView$AvatarCache;->mImageCache:Ljava/util/HashMap;

    .line 3201
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/ChatView$AvatarCache;->mOutstanding:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public getAvatar(Ljava/lang/String;Lcom/google/android/talk/ChatView$MessageItem;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "emailAddress"
    .parameter "messageItem"

    .prologue
    const/4 v5, 0x0

    .line 3204
    iget-object v1, p0, Lcom/google/android/talk/ChatView$AvatarCache;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3205
    iget-object v1, p0, Lcom/google/android/talk/ChatView$AvatarCache;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/drawable/Drawable;

    move-object v1, p0

    .line 3231
    :goto_0
    return-object v1

    .line 3207
    .restart local p0
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/ChatView$AvatarCache;->mOutstanding:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3208
    iget-object v1, p0, Lcom/google/android/talk/ChatView$AvatarCache;->mOutstanding:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3209
    new-instance v0, Lcom/google/android/talk/ContactInfoQuery;

    iget-object v1, p0, Lcom/google/android/talk/ChatView$AvatarCache;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v1}, Lcom/google/android/talk/ChatView;->access$1700(Lcom/google/android/talk/ChatView;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/ChatView$AvatarCache;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$5900(Lcom/google/android/talk/ChatView;)J

    move-result-wide v2

    const/4 v6, 0x1

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/talk/ContactInfoQuery;-><init>(Landroid/content/Context;JLjava/lang/String;Landroid/database/ContentObserver;Z)V

    .line 3211
    .local v0, query:Lcom/google/android/talk/ContactInfoQuery;
    new-instance v1, Lcom/google/android/talk/ChatView$AvatarCache$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/talk/ChatView$AvatarCache$1;-><init>(Lcom/google/android/talk/ChatView$AvatarCache;Ljava/lang/String;Lcom/google/android/talk/ContactInfoQuery;)V

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ContactInfoQuery;->setContactInfoCallback(Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryCallback;)V

    .line 3229
    invoke-virtual {v0}, Lcom/google/android/talk/ContactInfoQuery;->startQueryForContactInfo()V

    .end local v0           #query:Lcom/google/android/talk/ContactInfoQuery;
    :cond_1
    move-object v1, v5

    .line 3231
    goto :goto_0
.end method

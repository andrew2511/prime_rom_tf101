.class Lcom/google/android/youtube/core/converter/http/UserProfileResponseConverter$1;
.super Lcom/google/android/youtube/core/converter/XmlParser$BaseRule;
.source "UserProfileResponseConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/converter/http/UserProfileResponseConverter;-><init>(Lcom/google/android/youtube/core/converter/XmlParser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/converter/http/UserProfileResponseConverter;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/UserProfileResponseConverter;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/UserProfileResponseConverter$1;->this$0:Lcom/google/android/youtube/core/converter/http/UserProfileResponseConverter;

    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/XmlParser$BaseRule;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lcom/google/android/youtube/core/utils/Stack;Lorg/xml/sax/Attributes;)V
    .locals 4
    .parameter
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/utils/Stack",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/xml/sax/Attributes;",
            ")V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, stack:Lcom/google/android/youtube/core/utils/Stack;,"Lcom/google/android/youtube/core/utils/Stack<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/google/android/youtube/core/utils/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;

    .line 86
    .local v0, builder:Lcom/google/android/youtube/core/model/UserProfile$Builder;
    const-string v3, "rel"

    invoke-interface {p2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, rel:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/youtube/core/converter/http/UserProfileResponseConverter;->access$000()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    const-string v3, "countHint"

    invoke-interface {p2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 89
    .local v1, count:I
    const-string v3, "http://gdata.youtube.com/schemas/2007#user.uploads"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 90
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadedCount(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    .line 97
    .end local v1           #count:I
    :cond_0
    :goto_0
    return-void

    .line 91
    .restart local v1       #count:I
    :cond_1
    const-string v3, "http://gdata.youtube.com/schemas/2007#user.favorites"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 92
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->favoritesCount(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    goto :goto_0

    .line 93
    :cond_2
    const-string v3, "http://gdata.youtube.com/schemas/2007#user.subscriptions"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscriptionsCount(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    goto :goto_0
.end method

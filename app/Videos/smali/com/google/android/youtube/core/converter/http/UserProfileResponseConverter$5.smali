.class Lcom/google/android/youtube/core/converter/http/UserProfileResponseConverter$5;
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
    .line 53
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/UserProfileResponseConverter$5;->this$0:Lcom/google/android/youtube/core/converter/http/UserProfileResponseConverter;

    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/XmlParser$BaseRule;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Lcom/google/android/youtube/core/utils/Stack;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "attrs"
    .parameter "chars"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/utils/Stack",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/xml/sax/Attributes;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, stack:Lcom/google/android/youtube/core/utils/Stack;,"Lcom/google/android/youtube/core/utils/Stack<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/google/android/youtube/core/utils/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;

    .line 57
    .local v0, builder:Lcom/google/android/youtube/core/model/UserProfile$Builder;
    invoke-virtual {v0, p3}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->username(Ljava/lang/String;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    .line 58
    return-void
.end method

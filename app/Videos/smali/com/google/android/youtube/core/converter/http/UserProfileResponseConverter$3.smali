.class Lcom/google/android/youtube/core/converter/http/UserProfileResponseConverter$3;
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
    .line 67
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/UserProfileResponseConverter$3;->this$0:Lcom/google/android/youtube/core/converter/http/UserProfileResponseConverter;

    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/XmlParser$BaseRule;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lcom/google/android/youtube/core/utils/Stack;Lorg/xml/sax/Attributes;)V
    .locals 2
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
    .line 70
    .local p1, stack:Lcom/google/android/youtube/core/utils/Stack;,"Lcom/google/android/youtube/core/utils/Stack<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/google/android/youtube/core/utils/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;

    .line 71
    .local v0, builder:Lcom/google/android/youtube/core/model/UserProfile$Builder;
    const-string v1, "url"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->thumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    .line 72
    return-void
.end method

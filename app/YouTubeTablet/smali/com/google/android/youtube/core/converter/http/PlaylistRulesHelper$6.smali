.class final Lcom/google/android/youtube/core/converter/http/PlaylistRulesHelper$6;
.super Lcom/google/android/youtube/core/converter/XmlParser$BaseRule;
.source "PlaylistRulesHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/converter/http/PlaylistRulesHelper;->addInternalRules(Lcom/google/android/youtube/core/converter/Rules$Builder;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/XmlParser$BaseRule;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Lcom/google/android/youtube/core/utils/Stack;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
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
    .line 73
    const-class v0, Lcom/google/android/youtube/core/model/Playlist$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/Stack;->peek(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/youtube/core/model/Playlist$Builder;

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/Util;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/Playlist$Builder;->size(I)Lcom/google/android/youtube/core/model/Playlist$Builder;

    .line 74
    return-void
.end method

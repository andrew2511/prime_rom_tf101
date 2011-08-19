.class public final Lcom/google/android/youtube/core/converter/Rules;
.super Ljava/lang/Object;
.source "Rules.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/converter/Rules$1;,
        Lcom/google/android/youtube/core/converter/Rules$Builder;
    }
.end annotation


# instance fields
.field final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/converter/XmlParser$Rule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/converter/XmlParser$Rule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, rules:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/Rules;->map:Ljava/util/Map;

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lcom/google/android/youtube/core/converter/Rules$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/converter/Rules;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/google/android/youtube/core/converter/XmlParser$Rule;
    .locals 1
    .parameter "path"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/Rules;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/converter/XmlParser$Rule;

    return-object p0
.end method

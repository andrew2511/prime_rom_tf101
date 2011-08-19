.class public final Lcom/google/android/youtube/core/converter/Rules$Builder;
.super Ljava/lang/Object;
.source "Rules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/converter/Rules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final rules:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/converter/XmlParser$Rule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/Rules$Builder;->rules:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;
    .locals 1
    .parameter "path"
    .parameter "rule"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/Rules$Builder;->rules:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-object p0
.end method

.method public build()Lcom/google/android/youtube/core/converter/Rules;
    .locals 3

    .prologue
    .line 59
    new-instance v0, Lcom/google/android/youtube/core/converter/Rules;

    iget-object v1, p0, Lcom/google/android/youtube/core/converter/Rules$Builder;->rules:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/converter/Rules;-><init>(Ljava/util/Map;Lcom/google/android/youtube/core/converter/Rules$1;)V

    return-object v0
.end method

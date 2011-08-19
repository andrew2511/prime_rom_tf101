.class public final Lcom/google/android/youtube/core/model/Subtitle;
.super Ljava/lang/Object;
.source "Subtitle.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/model/Subtitle$1;,
        Lcom/google/android/youtube/core/model/Subtitle$Builder;,
        Lcom/google/android/youtube/core/model/Subtitle$Line;
    }
.end annotation


# instance fields
.field private final lines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/youtube/core/model/Subtitle$Line;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subtitle;->lines:Ljava/util/ArrayList;

    .line 19
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/core/model/Subtitle$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/Subtitle;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/youtube/core/model/Subtitle;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subtitle;->lines:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getTextAt(I)Ljava/lang/String;
    .locals 6
    .parameter "time"

    .prologue
    const/4 v5, 0x1

    .line 26
    const/4 v1, 0x0

    .line 27
    .local v1, left:I
    iget-object v4, p0, Lcom/google/android/youtube/core/model/Subtitle;->lines:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int v3, v4, v5

    .line 28
    .local v3, right:I
    const/4 v2, 0x0

    .line 29
    .local v2, line:Lcom/google/android/youtube/core/model/Subtitle$Line;
    :goto_0
    if-gt v1, v3, :cond_2

    .line 30
    sub-int v4, v3, v1

    div-int/lit8 v4, v4, 0x2

    add-int v0, v1, v4

    .line 31
    .local v0, index:I
    iget-object v4, p0, Lcom/google/android/youtube/core/model/Subtitle;->lines:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #line:Lcom/google/android/youtube/core/model/Subtitle$Line;
    check-cast v2, Lcom/google/android/youtube/core/model/Subtitle$Line;

    .line 32
    .restart local v2       #line:Lcom/google/android/youtube/core/model/Subtitle$Line;
    iget v4, v2, Lcom/google/android/youtube/core/model/Subtitle$Line;->startTime:I

    if-ge p1, v4, :cond_0

    .line 33
    sub-int v3, v0, v5

    goto :goto_0

    .line 34
    :cond_0
    iget v4, v2, Lcom/google/android/youtube/core/model/Subtitle$Line;->endTime:I

    if-le p1, v4, :cond_1

    .line 35
    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    .line 37
    :cond_1
    iget-object v4, v2, Lcom/google/android/youtube/core/model/Subtitle$Line;->text:Ljava/lang/String;

    .line 40
    .end local v0           #index:I
    :goto_1
    return-object v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

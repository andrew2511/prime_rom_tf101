.class public final Lcom/google/android/youtube/core/model/Event$Builder;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private action:Lcom/google/android/youtube/core/model/Event$Action;

.field private subject:Ljava/lang/String;

.field private target:Ljava/lang/String;

.field private when:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Lcom/google/android/youtube/core/model/Event$Action;)Lcom/google/android/youtube/core/model/Event$Builder;
    .locals 0
    .parameter "action"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Event$Builder;->action:Lcom/google/android/youtube/core/model/Event$Action;

    .line 98
    return-object p0
.end method

.method public build()Lcom/google/android/youtube/core/model/Event;
    .locals 5

    .prologue
    .line 112
    new-instance v0, Lcom/google/android/youtube/core/model/Event;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Event$Builder;->subject:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/Event$Builder;->action:Lcom/google/android/youtube/core/model/Event$Action;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/Event$Builder;->target:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Event$Builder;->when:Ljava/util/Date;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/model/Event;-><init>(Ljava/lang/String;Lcom/google/android/youtube/core/model/Event$Action;Ljava/lang/String;Ljava/util/Date;)V

    return-object v0
.end method

.method public subject(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Event$Builder;
    .locals 0
    .parameter "subject"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Event$Builder;->subject:Ljava/lang/String;

    .line 93
    return-object p0
.end method

.method public target(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Event$Builder;
    .locals 0
    .parameter "target"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Event$Builder;->target:Ljava/lang/String;

    .line 103
    return-object p0
.end method

.method public when(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Event$Builder;
    .locals 0
    .parameter "when"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Event$Builder;->when:Ljava/util/Date;

    .line 108
    return-object p0
.end method

.class public final Lcom/google/android/youtube/core/model/Comment$Builder;
.super Ljava/lang/Object;
.source "Comment.java"

# interfaces
.implements Lcom/google/android/youtube/core/model/ModelBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/Comment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/model/ModelBuilder",
        "<",
        "Lcom/google/android/youtube/core/model/Comment;",
        ">;"
    }
.end annotation


# instance fields
.field private author:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private publishedDate:Ljava/util/Date;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public author(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Comment$Builder;
    .locals 0
    .parameter "author"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Comment$Builder;->author:Ljava/lang/String;

    .line 65
    return-object p0
.end method

.method public build()Lcom/google/android/youtube/core/model/Comment;
    .locals 5

    .prologue
    .line 74
    new-instance v0, Lcom/google/android/youtube/core/model/Comment;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Comment$Builder;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/Comment$Builder;->content:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/Comment$Builder;->author:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Comment$Builder;->publishedDate:Ljava/util/Date;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/model/Comment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Comment$Builder;->build()Lcom/google/android/youtube/core/model/Comment;

    move-result-object v0

    return-object v0
.end method

.method public content(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Comment$Builder;
    .locals 0
    .parameter "content"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Comment$Builder;->content:Ljava/lang/String;

    .line 60
    return-object p0
.end method

.method public publishedDate(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Comment$Builder;
    .locals 0
    .parameter "publishedDate"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Comment$Builder;->publishedDate:Ljava/util/Date;

    .line 70
    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Comment$Builder;
    .locals 0
    .parameter "title"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Comment$Builder;->title:Ljava/lang/String;

    .line 55
    return-object p0
.end method

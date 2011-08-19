.class public final Lcom/google/android/youtube/core/model/Category$Builder;
.super Ljava/lang/Object;
.source "Category.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/Category;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private deprecated:Z

.field private label:Ljava/lang/String;

.field private regions:Ljava/lang/String;

.field private term:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/youtube/core/model/Category;
    .locals 5

    .prologue
    .line 80
    new-instance v0, Lcom/google/android/youtube/core/model/Category;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Category$Builder;->term:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/Category$Builder;->label:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/Category$Builder;->regions:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/google/android/youtube/core/model/Category$Builder;->deprecated:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/model/Category;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public deprecated(Z)Lcom/google/android/youtube/core/model/Category$Builder;
    .locals 0
    .parameter "deprecated"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/Category$Builder;->deprecated:Z

    .line 76
    return-object p0
.end method

.method public label(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Category$Builder;
    .locals 0
    .parameter "label"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Category$Builder;->label:Ljava/lang/String;

    .line 66
    return-object p0
.end method

.method public regions(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Category$Builder;
    .locals 0
    .parameter "regions"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Category$Builder;->regions:Ljava/lang/String;

    .line 71
    return-object p0
.end method

.method public term(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Category$Builder;
    .locals 0
    .parameter "term"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Category$Builder;->term:Ljava/lang/String;

    .line 61
    return-object p0
.end method

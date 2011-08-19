.class Lcom/google/android/youtube/core/converter/http/CategoriesResponseConverter$5;
.super Ljava/lang/Object;
.source "CategoriesResponseConverter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/converter/http/CategoriesResponseConverter;->convertResponse(Lorg/apache/http/HttpResponse;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/youtube/core/model/Category;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/converter/http/CategoriesResponseConverter;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/CategoriesResponseConverter;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/CategoriesResponseConverter$5;->this$0:Lcom/google/android/youtube/core/converter/http/CategoriesResponseConverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/youtube/core/model/Category;Lcom/google/android/youtube/core/model/Category;)I
    .locals 2
    .parameter "category1"
    .parameter "category2"

    .prologue
    .line 98
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Category;->label:Ljava/lang/String;

    iget-object v1, p2, Lcom/google/android/youtube/core/model/Category;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    check-cast p1, Lcom/google/android/youtube/core/model/Category;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/model/Category;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/converter/http/CategoriesResponseConverter$5;->compare(Lcom/google/android/youtube/core/model/Category;Lcom/google/android/youtube/core/model/Category;)I

    move-result v0

    return v0
.end method

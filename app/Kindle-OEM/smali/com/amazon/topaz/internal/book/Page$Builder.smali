.class public final Lcom/amazon/topaz/internal/book/Page$Builder;
.super Lcom/amazon/topaz/internal/book/Container$Builder;
.source "Page.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/internal/book/Page;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private allContainers:[Ljava/lang/Object;

.field private allDrawables:[Ljava/lang/Object;

.field private final cacheSize:I

.field private final h:I

.field private final w:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 1
    .parameter "pageNum"
    .parameter "w"
    .parameter "h"
    .parameter "cacheSize"

    .prologue
    .line 51
    invoke-static {}, Lcom/amazon/topaz/internal/book/Page;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/amazon/topaz/internal/book/Container$Builder;-><init>(Ljava/lang/String;I)V

    .line 52
    iput p2, p0, Lcom/amazon/topaz/internal/book/Page$Builder;->w:I

    .line 53
    iput p3, p0, Lcom/amazon/topaz/internal/book/Page$Builder;->h:I

    .line 54
    iput p4, p0, Lcom/amazon/topaz/internal/book/Page$Builder;->cacheSize:I

    .line 55
    return-void
.end method


# virtual methods
.method public build([Ljava/lang/Object;[Ljava/lang/Object;)Lcom/amazon/topaz/internal/book/Container;
    .locals 1
    .parameter "allDrawables"
    .parameter "allContainers"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/amazon/topaz/internal/book/Page$Builder;->allDrawables:[Ljava/lang/Object;

    .line 86
    iput-object p2, p0, Lcom/amazon/topaz/internal/book/Page$Builder;->allContainers:[Ljava/lang/Object;

    .line 87
    invoke-super {p0, p1, p2}, Lcom/amazon/topaz/internal/book/Container$Builder;->build([Ljava/lang/Object;[Ljava/lang/Object;)Lcom/amazon/topaz/internal/book/Container;

    move-result-object v0

    return-object v0
.end method

.method protected buildInternal(Ljava/lang/String;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/amazon/topaz/styles/MatchRule;ZZLcom/amazon/topaz/internal/book/PageParser$ContainerStemProvider;)Lcom/amazon/topaz/internal/book/Container;
    .locals 15
    .parameter "type"
    .parameter "pageNum"
    .parameter "id"
    .parameter "children"
    .parameter "drawables"
    .parameter "styleRule"
    .parameter "underlined"
    .parameter "isContinuation"
    .parameter "stemProvider"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Page$Builder;->allContainers:[Ljava/lang/Object;

    array-length v0, v0

    new-array v10, v0, [Lcom/amazon/topaz/internal/book/Container;

    .line 61
    .local v10, allContainers:[Lcom/amazon/topaz/internal/book/Container;
    const/4 v14, 0x0

    .end local p1
    .local v14, i:I
    :goto_0
    array-length v0, v10

    if-ge v14, v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Page$Builder;->allContainers:[Ljava/lang/Object;

    aget-object v0, v0, v14

    instance-of v0, v0, Lcom/amazon/topaz/internal/book/Page$Builder;

    if-eqz v0, :cond_0

    .line 61
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Page$Builder;->allContainers:[Ljava/lang/Object;

    aget-object p1, v0, v14

    check-cast p1, Lcom/amazon/topaz/internal/book/Container;

    aput-object p1, v10, v14

    goto :goto_1

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Page$Builder;->allDrawables:[Ljava/lang/Object;

    array-length v0, v0

    new-array v9, v0, [Lcom/amazon/topaz/internal/book/Drawable;

    .line 74
    .local v9, allDrawables:[Lcom/amazon/topaz/internal/book/Drawable;
    const/4 v14, 0x0

    :goto_2
    array-length v0, v9

    if-ge v14, v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Page$Builder;->allDrawables:[Ljava/lang/Object;

    aget-object p1, v0, v14

    check-cast p1, Lcom/amazon/topaz/internal/book/Drawable;

    aput-object p1, v9, v14

    .line 74
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 80
    :cond_2
    new-instance v0, Lcom/amazon/topaz/internal/book/Page;

    iget v7, p0, Lcom/amazon/topaz/internal/book/Page$Builder;->w:I

    iget v8, p0, Lcom/amazon/topaz/internal/book/Page$Builder;->h:I

    iget v11, p0, Lcom/amazon/topaz/internal/book/Page$Builder;->cacheSize:I

    move/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v12, p8

    move-object/from16 v13, p9

    invoke-direct/range {v0 .. v13}, Lcom/amazon/topaz/internal/book/Page;-><init>(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/amazon/topaz/styles/MatchRule;ZII[Lcom/amazon/topaz/internal/book/Drawable;[Lcom/amazon/topaz/internal/book/Container;IZLcom/amazon/topaz/internal/book/PageParser$ContainerStemProvider;)V

    return-object v0
.end method

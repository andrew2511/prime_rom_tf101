.class public Lcom/amazon/topaz/internal/book/Page;
.super Lcom/amazon/topaz/internal/book/Container;
.source "Page.java"

# interfaces
.implements Lcom/amazon/topaz/internal/caching/Cacheable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/topaz/internal/book/Page$Builder;
    }
.end annotation


# static fields
.field private static TYPE:Ljava/lang/String;


# instance fields
.field private final allContainers:[Lcom/amazon/topaz/internal/book/Container;

.field private final allDrawables:[Lcom/amazon/topaz/internal/book/Drawable;

.field private final cacheableImpl:Lcom/amazon/topaz/internal/caching/SimpleCacheable;

.field private final h_:I

.field private final w_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "page"

    sput-object v0, Lcom/amazon/topaz/internal/book/Page;->TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/amazon/topaz/styles/MatchRule;ZII[Lcom/amazon/topaz/internal/book/Drawable;[Lcom/amazon/topaz/internal/book/Container;IZLcom/amazon/topaz/internal/book/PageParser$ContainerStemProvider;)V
    .locals 12
    .parameter "pageNum"
    .parameter "id"
    .parameter "children"
    .parameter "drawables"
    .parameter "styleRule"
    .parameter "underlined"
    .parameter "w"
    .parameter "h"
    .parameter "allDrawables"
    .parameter "allContainers"
    .parameter "cacheSize"
    .parameter "isContinuation"
    .parameter "stemProvider"

    .prologue
    .line 107
    sget-object v3, Lcom/amazon/topaz/internal/book/Page;->TYPE:Ljava/lang/String;

    move-object v2, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p12

    move-object/from16 v11, p13

    invoke-direct/range {v2 .. v11}, Lcom/amazon/topaz/internal/book/Container;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/amazon/topaz/styles/MatchRule;ZZLcom/amazon/topaz/internal/book/PageParser$ContainerStemProvider;)V

    .line 108
    move/from16 v0, p7

    move-object v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/book/Page;->w_:I

    .line 109
    move/from16 v0, p8

    move-object v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/book/Page;->h_:I

    .line 110
    move-object/from16 v0, p9

    move-object v1, p0

    iput-object v0, v1, Lcom/amazon/topaz/internal/book/Page;->allDrawables:[Lcom/amazon/topaz/internal/book/Drawable;

    .line 111
    move-object/from16 v0, p10

    move-object v1, p0

    iput-object v0, v1, Lcom/amazon/topaz/internal/book/Page;->allContainers:[Lcom/amazon/topaz/internal/book/Container;

    .line 112
    new-instance v2, Lcom/amazon/topaz/internal/caching/SimpleCacheable;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v2, v3}, Lcom/amazon/topaz/internal/caching/SimpleCacheable;-><init>(Ljava/lang/Integer;)V

    iput-object v2, p0, Lcom/amazon/topaz/internal/book/Page;->cacheableImpl:Lcom/amazon/topaz/internal/caching/SimpleCacheable;

    .line 113
    iget-object v2, p0, Lcom/amazon/topaz/internal/book/Page;->cacheableImpl:Lcom/amazon/topaz/internal/caching/SimpleCacheable;

    move-object v0, v2

    move/from16 v1, p11

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/caching/SimpleCacheable;->setSize(I)V

    .line 114
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/amazon/topaz/internal/book/Page;->TYPE:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getAllocSize()I
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Page;->cacheableImpl:Lcom/amazon/topaz/internal/caching/SimpleCacheable;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/caching/SimpleCacheable;->getAllocSize()I

    move-result v0

    return v0
.end method

.method public getCacheKey()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Page;->cacheableImpl:Lcom/amazon/topaz/internal/caching/SimpleCacheable;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/caching/SimpleCacheable;->getCacheKey()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getContainerForRow(I)Lcom/amazon/topaz/internal/book/Container;
    .locals 1
    .parameter "row"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Page;->allContainers:[Lcom/amazon/topaz/internal/book/Container;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getDrawableForRow(I)Lcom/amazon/topaz/internal/book/Drawable;
    .locals 1
    .parameter "row"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Page;->allDrawables:[Lcom/amazon/topaz/internal/book/Drawable;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/amazon/topaz/internal/book/Page;->h_:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/amazon/topaz/internal/book/Page;->w_:I

    return v0
.end method

.method public setSizeObserver(Lcom/amazon/topaz/internal/caching/Cacheable$SizeObserver;)I
    .locals 1
    .parameter "observer"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Page;->cacheableImpl:Lcom/amazon/topaz/internal/caching/SimpleCacheable;

    invoke-virtual {v0, p1}, Lcom/amazon/topaz/internal/caching/SimpleCacheable;->setSizeObserver(Lcom/amazon/topaz/internal/caching/Cacheable$SizeObserver;)I

    move-result v0

    return v0
.end method

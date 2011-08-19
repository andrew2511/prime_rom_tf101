.class public Lcom/amazon/topaz/internal/book/Container$Builder;
.super Ljava/lang/Object;
.source "Container.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/internal/book/Container;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private bounds:Lcom/amazon/system/drawing/Rectangle;

.field private childIndices:[I

.field private drawableIndices:[I

.field private id:Ljava/lang/String;

.field private final images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazon/topaz/internal/book/Image;",
            ">;"
        }
    .end annotation
.end field

.field private implicitDrawable:Lcom/amazon/topaz/internal/book/Drawable$Builder;

.field private isContinuation:Z

.field private numChildren:I

.field private numDrawables:I

.field private final pageNum:I

.field private stemProvider:Lcom/amazon/topaz/internal/book/PageParser$ContainerStemProvider;

.field private styleRule:Lcom/amazon/topaz/styles/MatchRule;

.field private final type:Ljava/lang/String;

.field private underlined:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "type"
    .parameter "pageNum"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/amazon/topaz/internal/book/Container$Builder;->type:Ljava/lang/String;

    .line 88
    iput p2, p0, Lcom/amazon/topaz/internal/book/Container$Builder;->pageNum:I

    .line 89
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->EMPTY:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/topaz/internal/book/Container$Builder;->id:Ljava/lang/String;

    .line 90
    sget-object v0, Lcom/amazon/topaz/styles/MatchRule;->EMPTY:Lcom/amazon/topaz/styles/MatchRule;

    iput-object v0, p0, Lcom/amazon/topaz/internal/book/Container$Builder;->styleRule:Lcom/amazon/topaz/styles/MatchRule;

    .line 91
    new-instance v0, Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v0}, Lcom/amazon/system/drawing/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/internal/book/Container$Builder;->bounds:Lcom/amazon/system/drawing/Rectangle;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/internal/book/Container$Builder;->images:Ljava/util/List;

    .line 93
    return-void
.end method


# virtual methods
.method public final addChild(I)Lcom/amazon/topaz/internal/book/Container$Builder;
    .locals 2
    .parameter "index"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Container$Builder;->childIndices:[I

    iget v1, p0, Lcom/amazon/topaz/internal/book/Container$Builder;->numChildren:I

    aput p1, v0, v1

    .line 120
    iget v0, p0, Lcom/amazon/topaz/internal/book/Container$Builder;->numChildren:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/topaz/internal/book/Container$Builder;->numChildren:I

    .line 121
    return-object p0
.end method

.method public final addDrawable(I)Lcom/amazon/topaz/internal/book/Container$Builder;
    .locals 2
    .parameter "index"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Container$Builder;->drawableIndices:[I

    iget v1, p0, Lcom/amazon/topaz/internal/book/Container$Builder;->numDrawables:I

    aput p1, v0, v1

    .line 149
    iget v0, p0, Lcom/amazon/topaz/internal/book/Container$Builder;->numDrawables:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/topaz/internal/book/Container$Builder;->numDrawables:I

    .line 150
    return-object p0
.end method

.method public final addImage(Lcom/amazon/topaz/internal/book/Image;)Lcom/amazon/topaz/internal/book/Container$Builder;
    .locals 1
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Container$Builder;->images:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    return-object p0
.end method

.method public build([Ljava/lang/Object;[Ljava/lang/Object;)Lcom/amazon/topaz/internal/book/Container;
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 268
    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Container$Builder;->childIndices:[I

    array-length v0, v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v3

    .line 269
    :goto_0
    iget v0, p0, Lcom/amazon/topaz/internal/book/Container$Builder;->numChildren:I

    if-ge v1, v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Container$Builder;->childIndices:[I

    aget v0, v0, v1

    aget-object v0, p2, v0

    .line 274
    instance-of v2, v0, Lcom/amazon/topaz/internal/book/Container;

    if-eqz v2, :cond_0

    .line 276
    check-cast v0, Lcom/amazon/topaz/internal/book/Container;

    .line 284
    :goto_1
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 280
    :cond_0
    check-cast v0, Lcom/amazon/topaz/internal/book/Container$Builder;

    .line 281
    invoke-virtual {v0, p1, p2}, Lcom/amazon/topaz/internal/book/Container$Builder;->build([Ljava/lang/Object;[Ljava/lang/Object;)Lcom/amazon/topaz/internal/book/Container;

    move-result-object v0

    .line 282
    iget-object v2, p0, Lcom/amazon/topaz/internal/book/Container$Builder;->childIndices:[I

    aget v2, v2, v1

    aput-object v0, p2, v2

    goto :goto_1

    .line 287
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Container$Builder;->drawableIndices:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/amazon/topaz/internal/book/Container$Builder;->images:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/amazon/topaz/internal/book/Container$Builder;->implicitDrawable:Lcom/amazon/topaz/internal/book/Drawable$Builder;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_2
    add-int/2addr v0, v1

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 289
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Container$Builder;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 290
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 292
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    move v1, v3

    .line 287
    goto :goto_2

    :cond_3
    move v1, v3

    .line 295
    :goto_4
    iget v0, p0, Lcom/amazon/topaz/internal/book/Container$Builder;->numDrawables:I

    if-ge v1, v0, :cond_5

    .line 297
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Container$Builder;->drawableIndices:[I

    aget v0, v0, v1

    aget-object v0, p1, v0

    .line 299
    instance-of v2, v0, Lcom/amazon/topaz/internal/book/Drawable$Builder;

    if-eqz v2, :cond_4

    .line 302
    check-cast v0, Lcom/amazon/topaz/internal/book/Drawable$Builder;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/book/Drawable$Builder;->build()Lcom/amazon/topaz/internal/book/Drawable;

    move-result-object v0

    .line 303
    iget-object v2, p0, Lcom/amazon/topaz/internal/book/Container$Builder;->drawableIndices:[I

    aget v2, v2, v1

    aput-object v0, p1, v2

    .line 310
    :goto_5
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 307
    :cond_4
    check-cast v0, Lcom/amazon/topaz/internal/book/Drawable;

    goto :goto_5

    .line 314
    :cond_5
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Container$Builder;->implicitDrawable:Lcom/amazon/topaz/internal/book/Drawable$Builder;

    if-eqz v0, :cond_6

    .line 316
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Container$Builder;->implicitDrawable:Lcom/amazon/topaz/internal/book/Drawable$Builder;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/book/Drawable$Builder;->build()Lcom/amazon/topaz/internal/book/Drawable;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_6
    iget-object v1, p0, Lcom/amazon/topaz/internal/book/Container$Builder;->type:Ljava/lang/String;

    iget v2, p0, Lcom/amazon/topaz/internal/book/Container$Builder;->pageNum:I

    iget-object v3, p0, Lcom/amazon/topaz/internal/book/Container$Builder;->id:Ljava/lang/String;

    iget-object v6, p0, Lcom/amazon/topaz/internal/book/Container$Builder;->styleRule:Lcom/amazon/topaz/styles/MatchRule;

    iget-boolean v7, p0, Lcom/amazon/topaz/internal/book/Container$Builder;->underlined:Z

    iget-boolean v8, p0, Lcom/amazon/topaz/internal/book/Container$Builder;->isContinuation:Z

    iget-object v9, p0, Lcom/amazon/topaz/internal/book/Container$Builder;->stemProvider:Lcom/amazon/topaz/internal/book/PageParser$ContainerStemProvider;

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/amazon/topaz/internal/book/Container$Builder;->buildInternal(Ljava/lang/String;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/amazon/topaz/styles/MatchRule;ZZLcom/amazon/topaz/internal/book/PageParser$ContainerStemProvider;)Lcom/amazon/topaz/internal/book/Container;

    move-result-object v0

    return-object v0
.end method

.method protected buildInternal(Ljava/lang/String;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/amazon/topaz/styles/MatchRule;ZZLcom/amazon/topaz/internal/book/PageParser$ContainerStemProvider;)Lcom/amazon/topaz/internal/book/Container;
    .locals 10
    .parameter "type"
    .parameter "pageNum"
    .parameter "id"
    .parameter
    .parameter
    .parameter "styleRule"
    .parameter "underlined"
    .parameter "isContinuation"
    .parameter "stemProvider"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amazon/topaz/internal/book/Container;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amazon/topaz/internal/book/Drawable;",
            ">;",
            "Lcom/amazon/topaz/styles/MatchRule;",
            "ZZ",
            "Lcom/amazon/topaz/internal/book/PageParser$ContainerStemProvider;",
            ")",
            "Lcom/amazon/topaz/internal/book/Container;"
        }
    .end annotation

    .prologue
    .line 252
    .local p4, children:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/amazon/topaz/internal/book/Container;>;"
    .local p5, drawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/amazon/topaz/internal/book/Drawable;>;"
    new-instance v0, Lcom/amazon/topaz/internal/book/Container;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/amazon/topaz/internal/book/Container;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/amazon/topaz/styles/MatchRule;ZZLcom/amazon/topaz/internal/book/PageParser$ContainerStemProvider;)V

    return-object v0
.end method

.method public final getBoundsNoCopy()Lcom/amazon/system/drawing/Rectangle;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Container$Builder;->bounds:Lcom/amazon/system/drawing/Rectangle;

    return-object v0
.end method

.method public final getStyleRule()Lcom/amazon/topaz/styles/MatchRule;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Container$Builder;->styleRule:Lcom/amazon/topaz/styles/MatchRule;

    return-object v0
.end method

.method public final reserveChildren(I)Lcom/amazon/topaz/internal/book/Container$Builder;
    .locals 1
    .parameter "numChildren"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Container$Builder;->childIndices:[I

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 107
    :cond_0
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/amazon/topaz/internal/book/Container$Builder;->childIndices:[I

    .line 108
    return-object p0
.end method

.method public final reserveDrawables(I)Lcom/amazon/topaz/internal/book/Container$Builder;
    .locals 1
    .parameter "numDrawables"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Container$Builder;->drawableIndices:[I

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 136
    :cond_0
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/amazon/topaz/internal/book/Container$Builder;->drawableIndices:[I

    .line 137
    return-object p0
.end method

.method public final setID(Ljava/lang/String;)Lcom/amazon/topaz/internal/book/Container$Builder;
    .locals 0
    .parameter "id"

    .prologue
    .line 213
    iput-object p1, p0, Lcom/amazon/topaz/internal/book/Container$Builder;->id:Ljava/lang/String;

    .line 214
    return-object p0
.end method

.method public final setImplicitDrawable(Lcom/amazon/topaz/internal/book/Drawable$Builder;)Lcom/amazon/topaz/internal/book/Container$Builder;
    .locals 0
    .parameter "drawable"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/amazon/topaz/internal/book/Container$Builder;->implicitDrawable:Lcom/amazon/topaz/internal/book/Drawable$Builder;

    .line 172
    return-object p0
.end method

.method public final setIsContinuation(Z)V
    .locals 0
    .parameter "isContinuation"

    .prologue
    .line 219
    iput-boolean p1, p0, Lcom/amazon/topaz/internal/book/Container$Builder;->isContinuation:Z

    .line 220
    return-void
.end method

.method public final setStemProvider(Lcom/amazon/topaz/internal/book/PageParser$ContainerStemProvider;)V
    .locals 0
    .parameter "stemProvider"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/amazon/topaz/internal/book/Container$Builder;->stemProvider:Lcom/amazon/topaz/internal/book/PageParser$ContainerStemProvider;

    .line 225
    return-void
.end method

.method public final setStyleRule(Lcom/amazon/topaz/styles/MatchRule;)Lcom/amazon/topaz/internal/book/Container$Builder;
    .locals 0
    .parameter "styleRule"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/amazon/topaz/internal/book/Container$Builder;->styleRule:Lcom/amazon/topaz/styles/MatchRule;

    .line 183
    return-object p0
.end method

.method public final setUnderlined(Z)Lcom/amazon/topaz/internal/book/Container$Builder;
    .locals 0
    .parameter "underlined"

    .prologue
    .line 202
    iput-boolean p1, p0, Lcom/amazon/topaz/internal/book/Container$Builder;->underlined:Z

    .line 203
    return-object p0
.end method

.class public final Lcom/amazon/topaz/internal/book/Link;
.super Lcom/amazon/topaz/internal/book/Drawable;
.source "Link.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/topaz/internal/book/Link$Builder;,
        Lcom/amazon/topaz/internal/book/Link$LinkResolver;
    }
.end annotation


# instance fields
.field private final close:Z

.field private direct:Z

.field private href:Ljava/lang/String;

.field private objID:I

.field private page:I

.field private popup:Lcom/amazon/topaz/internal/book/Container;

.field private resolver:Lcom/amazon/topaz/internal/book/Link$LinkResolver;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;ZLcom/amazon/topaz/internal/book/Link$LinkResolver;)V
    .locals 6
    .parameter "pageNum"
    .parameter "id"
    .parameter "title"
    .parameter "close"
    .parameter "resolver"

    .prologue
    const/4 v4, 0x0

    .line 173
    new-instance v3, Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v3}, Lcom/amazon/system/drawing/Rectangle;-><init>()V

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/topaz/internal/book/Drawable;-><init>(IILcom/amazon/system/drawing/Rectangle;II)V

    .line 174
    iput-object p3, p0, Lcom/amazon/topaz/internal/book/Link;->title:Ljava/lang/String;

    .line 175
    iput v4, p0, Lcom/amazon/topaz/internal/book/Link;->page:I

    .line 176
    iput v4, p0, Lcom/amazon/topaz/internal/book/Link;->objID:I

    .line 177
    iput-boolean p4, p0, Lcom/amazon/topaz/internal/book/Link;->close:Z

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/topaz/internal/book/Link;->direct:Z

    .line 179
    iput-object p5, p0, Lcom/amazon/topaz/internal/book/Link;->resolver:Lcom/amazon/topaz/internal/book/Link$LinkResolver;

    .line 180
    return-void
.end method

.method public static resolve(Lcom/amazon/topaz/TPZBook;IILcom/amazon/topaz/internal/binxml/Table;IZ)Lcom/amazon/topaz/internal/book/Link;
    .locals 6
    .parameter "book"
    .parameter "pageNum"
    .parameter "id"
    .parameter "table"
    .parameter "row"
    .parameter "close"

    .prologue
    .line 298
    new-instance v0, Lcom/amazon/topaz/internal/book/Link;

    iget-object v1, p0, Lcom/amazon/topaz/TPZBook;->dict:Lcom/amazon/topaz/internal/binxml/Dictionary;

    iget-object v1, v1, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_TITLE:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {p3, p4, v1}, Lcom/amazon/topaz/internal/binxml/Table;->getString(ILcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/amazon/topaz/internal/book/Link$LinkResolver;

    invoke-direct {v5, p0, p3, p4}, Lcom/amazon/topaz/internal/book/Link$LinkResolver;-><init>(Lcom/amazon/topaz/TPZBook;Lcom/amazon/topaz/internal/binxml/Table;I)V

    move v1, p1

    move v2, p2

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/amazon/topaz/internal/book/Link;-><init>(IILjava/lang/String;ZLcom/amazon/topaz/internal/book/Link$LinkResolver;)V

    .line 300
    .local v0, ll:Lcom/amazon/topaz/internal/book/Link;
    return-object v0
.end method

.method private resolve()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    iget-object v9, p0, Lcom/amazon/topaz/internal/book/Link;->resolver:Lcom/amazon/topaz/internal/book/Link$LinkResolver;

    if-eqz v9, :cond_4

    .line 234
    :try_start_0
    iget-object v4, p0, Lcom/amazon/topaz/internal/book/Link;->resolver:Lcom/amazon/topaz/internal/book/Link$LinkResolver;

    .line 235
    .local v4, resolver:Lcom/amazon/topaz/internal/book/Link$LinkResolver;
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/amazon/topaz/internal/book/Link;->resolver:Lcom/amazon/topaz/internal/book/Link$LinkResolver;

    .line 237
    const/4 v6, 0x0

    .line 238
    .local v6, tgtID:I
    iget v7, v4, Lcom/amazon/topaz/internal/book/Link$LinkResolver;->targetPage:I

    .line 240
    .local v7, tgtPage:I
    if-gez v7, :cond_0

    .line 242
    const/4 v7, 0x0

    .line 244
    :cond_0
    const/4 v1, 0x1

    .line 250
    .local v1, direct:Z
    invoke-direct {p0, v7, v6, v1}, Lcom/amazon/topaz/internal/book/Link;->setTarget(IIZ)V

    .line 252
    invoke-virtual {v4}, Lcom/amazon/topaz/internal/book/Link$LinkResolver;->getDictionary()Lcom/amazon/topaz/internal/binxml/Dictionary;

    move-result-object v0

    .line 253
    .local v0, dict:Lcom/amazon/topaz/internal/binxml/Dictionary;
    iget v3, v4, Lcom/amazon/topaz/internal/book/Link$LinkResolver;->rel:I

    .line 254
    .local v3, rel:I
    iget-object v9, v0, Lcom/amazon/topaz/internal/binxml/Dictionary;->LINKREL_MENU:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v9}, Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;->intValue()I

    move-result v9

    if-eq v3, v9, :cond_1

    iget-object v9, v0, Lcom/amazon/topaz/internal/binxml/Dictionary;->LINKREL_POPUP:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v9}, Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;->intValue()I

    move-result v9

    if-ne v3, v9, :cond_2

    .line 255
    :cond_1
    const/4 v1, 0x0

    .line 258
    :cond_2
    iget v8, v4, Lcom/amazon/topaz/internal/book/Link$LinkResolver;->type:I

    .line 259
    .local v8, type:I
    iget-object v9, v0, Lcom/amazon/topaz/internal/binxml/Dictionary;->LINKTYPE_PAGE:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v9}, Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;->intValue()I

    move-result v9

    if-ne v8, v9, :cond_5

    .line 260
    const/4 v6, 0x0

    .line 288
    :cond_3
    :goto_0
    invoke-direct {p0, v7, v6, v1}, Lcom/amazon/topaz/internal/book/Link;->setTarget(IIZ)V

    .line 294
    .end local v0           #dict:Lcom/amazon/topaz/internal/binxml/Dictionary;
    .end local v1           #direct:Z
    .end local v3           #rel:I
    .end local v4           #resolver:Lcom/amazon/topaz/internal/book/Link$LinkResolver;
    .end local v6           #tgtID:I
    .end local v7           #tgtPage:I
    .end local v8           #type:I
    :cond_4
    :goto_1
    return-void

    .line 261
    .restart local v0       #dict:Lcom/amazon/topaz/internal/binxml/Dictionary;
    .restart local v1       #direct:Z
    .restart local v3       #rel:I
    .restart local v4       #resolver:Lcom/amazon/topaz/internal/book/Link$LinkResolver;
    .restart local v6       #tgtID:I
    .restart local v7       #tgtPage:I
    .restart local v8       #type:I
    :cond_5
    iget-object v9, v0, Lcom/amazon/topaz/internal/binxml/Dictionary;->LINKTYPE_ID:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v9}, Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;->intValue()I

    move-result v9

    if-ne v8, v9, :cond_6

    .line 262
    iget v6, v4, Lcom/amazon/topaz/internal/book/Link$LinkResolver;->targetID:I

    goto :goto_0

    .line 263
    :cond_6
    iget-object v9, v0, Lcom/amazon/topaz/internal/binxml/Dictionary;->LINKTYPE_CONTAINER:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v9}, Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;->intValue()I

    move-result v9

    if-ne v8, v9, :cond_8

    .line 264
    iget-object v9, v0, Lcom/amazon/topaz/internal/binxml/Dictionary;->LINKREL_POPUP:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v9}, Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;->intValue()I

    move-result v9

    if-ne v3, v9, :cond_7

    const/4 v9, 0x1

    move v2, v9

    .line 265
    .local v2, popup:Z
    :goto_2
    if-eqz v2, :cond_3

    .line 266
    invoke-virtual {v4}, Lcom/amazon/topaz/internal/book/Link$LinkResolver;->getTargetContainer()Lcom/amazon/topaz/internal/book/Container;

    move-result-object v5

    .line 267
    .local v5, tgt:Lcom/amazon/topaz/internal/book/Container;
    if-eqz v5, :cond_3

    .line 268
    invoke-direct {p0, v5}, Lcom/amazon/topaz/internal/book/Link;->setTarget(Lcom/amazon/topaz/internal/book/Container;)V

    goto :goto_1

    .end local v0           #dict:Lcom/amazon/topaz/internal/binxml/Dictionary;
    .end local v1           #direct:Z
    .end local v2           #popup:Z
    .end local v3           #rel:I
    .end local v4           #resolver:Lcom/amazon/topaz/internal/book/Link$LinkResolver;
    .end local v5           #tgt:Lcom/amazon/topaz/internal/book/Container;
    .end local v6           #tgtID:I
    .end local v7           #tgtPage:I
    .end local v8           #type:I
    :catch_0
    move-exception v9

    goto :goto_1

    .line 264
    .restart local v0       #dict:Lcom/amazon/topaz/internal/binxml/Dictionary;
    .restart local v1       #direct:Z
    .restart local v3       #rel:I
    .restart local v4       #resolver:Lcom/amazon/topaz/internal/book/Link$LinkResolver;
    .restart local v6       #tgtID:I
    .restart local v7       #tgtPage:I
    .restart local v8       #type:I
    :cond_7
    const/4 v9, 0x0

    move v2, v9

    goto :goto_2

    .line 273
    :cond_8
    iget-object v9, v0, Lcom/amazon/topaz/internal/binxml/Dictionary;->LINKTYPE_DRAWABLE:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v9}, Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;->intValue()I

    move-result v9

    if-ne v8, v9, :cond_9

    .line 276
    invoke-virtual {v4}, Lcom/amazon/topaz/internal/book/Link$LinkResolver;->getTargetDrawable()Lcom/amazon/topaz/internal/book/Drawable;

    move-result-object v5

    .line 277
    .local v5, tgt:Lcom/amazon/topaz/internal/book/Drawable;
    if-eqz v5, :cond_3

    .line 278
    invoke-virtual {v5}, Lcom/amazon/topaz/internal/book/Drawable;->getID()I

    move-result v6

    goto :goto_0

    .line 280
    .end local v5           #tgt:Lcom/amazon/topaz/internal/book/Drawable;
    :cond_9
    iget-object v9, v0, Lcom/amazon/topaz/internal/binxml/Dictionary;->LINKTYPE_EXTERNAL:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v9}, Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;->intValue()I

    move-result v9

    if-ne v8, v9, :cond_a

    .line 281
    invoke-virtual {v4}, Lcom/amazon/topaz/internal/book/Link$LinkResolver;->getHREF()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/amazon/topaz/internal/book/Link;->setTarget(Ljava/lang/String;)V

    goto :goto_1

    .line 285
    :cond_a
    new-instance v9, Lcom/amazon/topaz/exception/UnhandledLinkTypeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "type = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/amazon/topaz/exception/UnhandledLinkTypeException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Lcom/amazon/topaz/exception/UnhandledLinkTypeException; {:try_start_0 .. :try_end_0} :catch_0
.end method

.method private setTarget(IIZ)V
    .locals 1
    .parameter "page"
    .parameter "objID"
    .parameter "direct"

    .prologue
    .line 190
    iput p1, p0, Lcom/amazon/topaz/internal/book/Link;->page:I

    .line 191
    iput p2, p0, Lcom/amazon/topaz/internal/book/Link;->objID:I

    .line 192
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->EMPTY:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/topaz/internal/book/Link;->href:Ljava/lang/String;

    .line 193
    iput-boolean p3, p0, Lcom/amazon/topaz/internal/book/Link;->direct:Z

    .line 194
    return-void
.end method

.method private setTarget(Lcom/amazon/topaz/internal/book/Container;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 207
    iput-object p1, p0, Lcom/amazon/topaz/internal/book/Link;->popup:Lcom/amazon/topaz/internal/book/Container;

    .line 208
    return-void
.end method

.method private setTarget(Ljava/lang/String;)V
    .locals 1
    .parameter "href"

    .prologue
    const/4 v0, 0x0

    .line 199
    iput v0, p0, Lcom/amazon/topaz/internal/book/Link;->page:I

    .line 200
    iput v0, p0, Lcom/amazon/topaz/internal/book/Link;->objID:I

    .line 201
    iput-object p1, p0, Lcom/amazon/topaz/internal/book/Link;->href:Ljava/lang/String;

    .line 202
    return-void
.end method


# virtual methods
.method public close()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/amazon/topaz/internal/book/Link;->close:Z

    return v0
.end method

.method public draw(Lcom/amazon/topaz/internal/drawing/Canvas;Lcom/amazon/system/drawing/Rectangle;)V
    .locals 0
    .parameter "c"
    .parameter "pos"

    .prologue
    .line 307
    return-void
.end method

.method public getCallback()Lcom/amazon/topaz/Callback;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/amazon/topaz/internal/book/Link;->resolve()V

    .line 215
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Link;->popup:Lcom/amazon/topaz/internal/book/Container;

    if-eqz v0, :cond_0

    .line 216
    new-instance v0, Lcom/amazon/topaz/internal/layout/ShowPopupCallback;

    const-string v1, "Show book notes"

    invoke-direct {v0, v1}, Lcom/amazon/topaz/internal/layout/ShowPopupCallback;-><init>(Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/amazon/topaz/internal/book/Link;->popup:Lcom/amazon/topaz/internal/book/Container;

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/layout/ShowPopupCallback;->addItem(Lcom/amazon/topaz/internal/book/Container;)V

    .line 225
    :goto_0
    return-object v0

    .line 219
    :cond_0
    iget v0, p0, Lcom/amazon/topaz/internal/book/Link;->page:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Link;->href:Ljava/lang/String;

    sget-object v1, Lcom/amazon/topaz/internal/TopazStrings;->EMPTY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 220
    new-instance v0, Lcom/amazon/topaz/internal/layout/FollowLinkCallback;

    iget-object v1, p0, Lcom/amazon/topaz/internal/book/Link;->href:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/topaz/internal/book/Link;->title:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/amazon/topaz/internal/layout/FollowLinkCallback;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_1
    new-instance v0, Lcom/amazon/topaz/internal/layout/FollowLinkCallback;

    iget v1, p0, Lcom/amazon/topaz/internal/book/Link;->page:I

    iget v2, p0, Lcom/amazon/topaz/internal/book/Link;->objID:I

    iget-object v3, p0, Lcom/amazon/topaz/internal/book/Link;->title:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/amazon/topaz/internal/book/Link;->direct:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/topaz/internal/layout/FollowLinkCallback;-><init>(IILjava/lang/String;Z)V

    goto :goto_0
.end method

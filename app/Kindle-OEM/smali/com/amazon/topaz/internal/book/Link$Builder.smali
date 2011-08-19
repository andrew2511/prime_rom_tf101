.class public final Lcom/amazon/topaz/internal/book/Link$Builder;
.super Lcom/amazon/topaz/internal/book/Drawable$Builder;
.source "Link.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/internal/book/Link;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private close:Z

.field private final linkId:I

.field private resolver:Lcom/amazon/topaz/internal/book/Link$LinkResolver;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/topaz/internal/book/Drawable$DrawableId;Ljava/lang/String;I)V
    .locals 0
    .parameter "id"
    .parameter "title"
    .parameter "linkId"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/amazon/topaz/internal/book/Drawable$Builder;-><init>(Lcom/amazon/topaz/internal/book/Drawable$DrawableId;)V

    .line 136
    iput-object p2, p0, Lcom/amazon/topaz/internal/book/Link$Builder;->title:Ljava/lang/String;

    .line 137
    iput p3, p0, Lcom/amazon/topaz/internal/book/Link$Builder;->linkId:I

    .line 138
    return-void
.end method


# virtual methods
.method public build()Lcom/amazon/topaz/internal/book/Drawable;
    .locals 6

    .prologue
    .line 161
    new-instance v0, Lcom/amazon/topaz/internal/book/Link;

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/book/Link$Builder;->getPageNum()I

    move-result v1

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/book/Link$Builder;->getID()I

    move-result v2

    iget-object v3, p0, Lcom/amazon/topaz/internal/book/Link$Builder;->title:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/amazon/topaz/internal/book/Link$Builder;->close:Z

    iget-object v5, p0, Lcom/amazon/topaz/internal/book/Link$Builder;->resolver:Lcom/amazon/topaz/internal/book/Link$LinkResolver;

    invoke-direct/range {v0 .. v5}, Lcom/amazon/topaz/internal/book/Link;-><init>(IILjava/lang/String;ZLcom/amazon/topaz/internal/book/Link$LinkResolver;)V

    return-object v0
.end method

.method public getLinkId()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/amazon/topaz/internal/book/Link$Builder;->linkId:I

    return v0
.end method

.method public setClose(Z)V
    .locals 0
    .parameter "close"

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/amazon/topaz/internal/book/Link$Builder;->close:Z

    .line 152
    return-void
.end method

.method public setResolver(Lcom/amazon/topaz/internal/book/Link$LinkResolver;)V
    .locals 0
    .parameter "resolver"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/amazon/topaz/internal/book/Link$Builder;->resolver:Lcom/amazon/topaz/internal/book/Link$LinkResolver;

    .line 157
    return-void
.end method

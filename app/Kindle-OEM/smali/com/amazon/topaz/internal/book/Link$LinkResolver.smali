.class Lcom/amazon/topaz/internal/book/Link$LinkResolver;
.super Ljava/lang/Object;
.source "Link.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/internal/book/Link;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LinkResolver"
.end annotation


# instance fields
.field private final owner:Lcom/amazon/topaz/TPZBook;

.field public final rel:I

.field private final targetHREF:I

.field public final targetID:I

.field public final targetPage:I

.field private final targetRow:I

.field public final type:I


# direct methods
.method public constructor <init>(Lcom/amazon/topaz/TPZBook;Lcom/amazon/topaz/internal/binxml/Table;I)V
    .locals 2
    .parameter "book"
    .parameter "linksTable"
    .parameter "row"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iget-object v0, p1, Lcom/amazon/topaz/TPZBook;->dict:Lcom/amazon/topaz/internal/binxml/Dictionary;

    .line 69
    .local v0, dict:Lcom/amazon/topaz/internal/binxml/Dictionary;
    iput-object p1, p0, Lcom/amazon/topaz/internal/book/Link$LinkResolver;->owner:Lcom/amazon/topaz/TPZBook;

    .line 71
    iget-object v1, v0, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_REL:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {p2, p3, v1}, Lcom/amazon/topaz/internal/binxml/Table;->getInt(ILcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v1

    iput v1, p0, Lcom/amazon/topaz/internal/book/Link$LinkResolver;->rel:I

    .line 72
    iget-object v1, v0, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_TYPE:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {p2, p3, v1}, Lcom/amazon/topaz/internal/binxml/Table;->getInt(ILcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v1

    iput v1, p0, Lcom/amazon/topaz/internal/book/Link$LinkResolver;->type:I

    .line 73
    iget-object v1, v0, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_PAGE:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-direct {p0, p2, p3, v1}, Lcom/amazon/topaz/internal/book/Link$LinkResolver;->getValue(Lcom/amazon/topaz/internal/binxml/Table;ILcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v1

    iput v1, p0, Lcom/amazon/topaz/internal/book/Link$LinkResolver;->targetPage:I

    .line 74
    iget-object v1, v0, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_ID:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-direct {p0, p2, p3, v1}, Lcom/amazon/topaz/internal/book/Link$LinkResolver;->getValue(Lcom/amazon/topaz/internal/binxml/Table;ILcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v1

    iput v1, p0, Lcom/amazon/topaz/internal/book/Link$LinkResolver;->targetID:I

    .line 75
    iget-object v1, v0, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_ROW:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-direct {p0, p2, p3, v1}, Lcom/amazon/topaz/internal/book/Link$LinkResolver;->getValue(Lcom/amazon/topaz/internal/binxml/Table;ILcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v1

    iput v1, p0, Lcom/amazon/topaz/internal/book/Link$LinkResolver;->targetRow:I

    .line 76
    iget-object v1, v0, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_HREF:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-direct {p0, p2, p3, v1}, Lcom/amazon/topaz/internal/book/Link$LinkResolver;->getValue(Lcom/amazon/topaz/internal/binxml/Table;ILcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v1

    iput v1, p0, Lcom/amazon/topaz/internal/book/Link$LinkResolver;->targetHREF:I

    .line 77
    return-void
.end method

.method private getValue(Lcom/amazon/topaz/internal/binxml/Table;ILcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I
    .locals 2
    .parameter "linksTable"
    .parameter "row"
    .parameter "col"

    .prologue
    .line 81
    invoke-virtual {p1, p3}, Lcom/amazon/topaz/internal/binxml/Table;->getColNum(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v0

    .line 82
    .local v0, colNum:I
    if-ltz v0, :cond_0

    .line 84
    invoke-virtual {p1, p2, v0}, Lcom/amazon/topaz/internal/binxml/Table;->getInt(II)I

    move-result v1

    .line 88
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public getDictionary()Lcom/amazon/topaz/internal/binxml/Dictionary;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Link$LinkResolver;->owner:Lcom/amazon/topaz/TPZBook;

    iget-object v0, v0, Lcom/amazon/topaz/TPZBook;->dict:Lcom/amazon/topaz/internal/binxml/Dictionary;

    return-object v0
.end method

.method public getHREF()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Link$LinkResolver;->owner:Lcom/amazon/topaz/TPZBook;

    iget-object v0, v0, Lcom/amazon/topaz/TPZBook;->dict:Lcom/amazon/topaz/internal/binxml/Dictionary;

    iget v1, p0, Lcom/amazon/topaz/internal/book/Link$LinkResolver;->targetHREF:I

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/binxml/Dictionary;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTargetContainer()Lcom/amazon/topaz/internal/book/Container;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Link$LinkResolver;->owner:Lcom/amazon/topaz/TPZBook;

    iget v1, p0, Lcom/amazon/topaz/internal/book/Link$LinkResolver;->targetPage:I

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/TPZBook;->getPage(I)Lcom/amazon/topaz/internal/book/Page;

    move-result-object v0

    iget v1, p0, Lcom/amazon/topaz/internal/book/Link$LinkResolver;->targetRow:I

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/book/Page;->getContainerForRow(I)Lcom/amazon/topaz/internal/book/Container;

    move-result-object v0

    return-object v0
.end method

.method public getTargetDrawable()Lcom/amazon/topaz/internal/book/Drawable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Link$LinkResolver;->owner:Lcom/amazon/topaz/TPZBook;

    iget v1, p0, Lcom/amazon/topaz/internal/book/Link$LinkResolver;->targetPage:I

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/TPZBook;->getPage(I)Lcom/amazon/topaz/internal/book/Page;

    move-result-object v0

    iget v1, p0, Lcom/amazon/topaz/internal/book/Link$LinkResolver;->targetRow:I

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/book/Page;->getDrawableForRow(I)Lcom/amazon/topaz/internal/book/Drawable;

    move-result-object v0

    return-object v0
.end method

.class Lcom/amazon/foundation/internal/parser/xml/SAXAttributes;
.super Ljava/lang/Object;
.source "SAXAttributes.java"


# instance fields
.field private lex_parts:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Ljava/util/Vector;)V
    .locals 0
    .parameter "lex_parts"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXAttributes;->lex_parts:Ljava/util/Vector;

    .line 14
    return-void
.end method


# virtual methods
.method public get_length()I
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXAttributes;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public get_name(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXAttributes;->lex_parts:Ljava/util/Vector;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get_value(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXAttributes;->lex_parts:Ljava/util/Vector;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

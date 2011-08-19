.class public Lorg/htmlparser/tags/FormTag;
.super Lorg/htmlparser/tags/CompositeTag;
.source "FormTag.java"


# static fields
.field private static final mEndTagEnders:[Ljava/lang/String;

.field private static final mIds:[Ljava/lang/String;


# instance fields
.field protected mFormLocation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "FORM"

    aput-object v1, v0, v2

    sput-object v0, Lorg/htmlparser/tags/FormTag;->mIds:[Ljava/lang/String;

    .line 63
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "HTML"

    aput-object v1, v0, v2

    const-string v1, "BODY"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "TABLE"

    aput-object v2, v0, v1

    sput-object v0, Lorg/htmlparser/tags/FormTag;->mEndTagEnders:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lorg/htmlparser/tags/CompositeTag;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/htmlparser/tags/FormTag;->mFormLocation:Ljava/lang/String;

    .line 71
    return-void
.end method


# virtual methods
.method public extractFormLocn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 231
    const-string v1, "ACTION"

    invoke-virtual {p0, v1}, Lorg/htmlparser/tags/FormTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, ret:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 233
    const-string v0, ""

    .line 237
    :cond_0
    :goto_0
    return-object v0

    .line 234
    :cond_1
    invoke-virtual {p0}, Lorg/htmlparser/tags/FormTag;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 235
    invoke-virtual {p0}, Lorg/htmlparser/tags/FormTag;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/htmlparser/lexer/Page;->getAbsoluteURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEndTagEnders()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lorg/htmlparser/tags/FormTag;->mEndTagEnders:[Ljava/lang/String;

    return-object v0
.end method

.method public getEnders()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lorg/htmlparser/tags/FormTag;->mIds:[Ljava/lang/String;

    return-object v0
.end method

.method public getFormLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/htmlparser/tags/FormTag;->mFormLocation:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lorg/htmlparser/tags/FormTag;->extractFormLocn()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlparser/tags/FormTag;->mFormLocation:Ljava/lang/String;

    .line 128
    :cond_0
    iget-object v0, p0, Lorg/htmlparser/tags/FormTag;->mFormLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getIds()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lorg/htmlparser/tags/FormTag;->mIds:[Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "FORM TAG : Form at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/htmlparser/tags/FormTag;->getFormLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "; begins at : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/htmlparser/tags/FormTag;->getStartPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "; ends at : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/htmlparser/tags/FormTag;->getEndPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

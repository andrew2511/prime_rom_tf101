.class public abstract Lcom/google/android/common/html/parser/HtmlDocument$Text;
.super Lcom/google/android/common/html/parser/HtmlDocument$Node;
.source "HtmlDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/html/parser/HtmlDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Text"
.end annotation


# instance fields
.field private final originalHtml:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "originalHtml"

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/google/android/common/html/parser/HtmlDocument$Node;-><init>()V

    .line 332
    iput-object p1, p0, Lcom/google/android/common/html/parser/HtmlDocument$Text;->originalHtml:Ljava/lang/String;

    .line 333
    return-void
.end method


# virtual methods
.method public accept(Lcom/google/android/common/html/parser/HtmlDocument$Visitor;)V
    .locals 0
    .parameter "visitor"

    .prologue
    .line 379
    invoke-interface {p1, p0}, Lcom/google/android/common/html/parser/HtmlDocument$Visitor;->visitText(Lcom/google/android/common/html/parser/HtmlDocument$Text;)V

    .line 380
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 354
    if-ne p1, p0, :cond_0

    move v2, v4

    .line 363
    :goto_0
    return v2

    .line 357
    :cond_0
    instance-of v2, p1, Lcom/google/android/common/html/parser/HtmlDocument$Text;

    if-eqz v2, :cond_3

    .line 358
    move-object v0, p1

    check-cast v0, Lcom/google/android/common/html/parser/HtmlDocument$Text;

    move-object v1, v0

    .line 360
    .local v1, that:Lcom/google/android/common/html/parser/HtmlDocument$Text;
    iget-object v2, p0, Lcom/google/android/common/html/parser/HtmlDocument$Text;->originalHtml:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/google/android/common/html/parser/HtmlDocument$Text;->originalHtml:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/common/html/parser/HtmlDocument$Text;->originalHtml:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/common/html/parser/HtmlDocument$Text;->originalHtml:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .end local v1           #that:Lcom/google/android/common/html/parser/HtmlDocument$Text;
    :cond_3
    move v2, v3

    .line 363
    goto :goto_0
.end method

.method public getOriginalHTML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$Text;->originalHtml:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$Text;->originalHtml:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$Text;->originalHtml:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isWhitespace()Z
    .locals 4

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/google/android/common/html/parser/HtmlDocument$Text;->getText()Ljava/lang/String;

    move-result-object v2

    .line 343
    .local v2, text:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 344
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 345
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 346
    const/4 v3, 0x0

    .line 349
    :goto_1
    return v3

    .line 344
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 349
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/google/android/common/html/parser/HtmlDocument$Text;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

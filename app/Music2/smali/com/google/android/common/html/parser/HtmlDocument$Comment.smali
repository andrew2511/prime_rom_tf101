.class public Lcom/google/android/common/html/parser/HtmlDocument$Comment;
.super Lcom/google/android/common/html/parser/HtmlDocument$Node;
.source "HtmlDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/html/parser/HtmlDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Comment"
.end annotation


# instance fields
.field private final content:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/google/android/common/html/parser/HtmlDocument$Node;-><init>()V

    .line 269
    iput-object p1, p0, Lcom/google/android/common/html/parser/HtmlDocument$Comment;->content:Ljava/lang/String;

    .line 270
    return-void
.end method


# virtual methods
.method public accept(Lcom/google/android/common/html/parser/HtmlDocument$Visitor;)V
    .locals 0
    .parameter "visitor"

    .prologue
    .line 274
    invoke-interface {p1, p0}, Lcom/google/android/common/html/parser/HtmlDocument$Visitor;->visitComment(Lcom/google/android/common/html/parser/HtmlDocument$Comment;)V

    .line 275
    return-void
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$Comment;->content:Ljava/lang/String;

    return-object v0
.end method

.method public toHTML(Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter "sb"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$Comment;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    return-void
.end method

.method public toOriginalHTML(Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter "sb"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$Comment;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    return-void
.end method

.method public toXHTML(Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter "sb"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$Comment;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    return-void
.end method

.class public interface abstract Lcom/google/android/common/html/parser/HtmlDocument$Filter;
.super Ljava/lang/Object;
.source "HtmlDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/html/parser/HtmlDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Filter"
.end annotation


# virtual methods
.method public abstract finish()V
.end method

.method public abstract start()V
.end method

.method public abstract visitComment(Lcom/google/android/common/html/parser/HtmlDocument$Comment;)Lcom/google/android/common/html/parser/HtmlDocument$Comment;
.end method

.method public abstract visitEndTag(Lcom/google/android/common/html/parser/HtmlDocument$EndTag;)Lcom/google/android/common/html/parser/HtmlDocument$EndTag;
.end method

.method public abstract visitTag(Lcom/google/android/common/html/parser/HtmlDocument$Tag;)Lcom/google/android/common/html/parser/HtmlDocument$Tag;
.end method

.method public abstract visitText(Lcom/google/android/common/html/parser/HtmlDocument$Text;)Lcom/google/android/common/html/parser/HtmlDocument$Text;
.end method

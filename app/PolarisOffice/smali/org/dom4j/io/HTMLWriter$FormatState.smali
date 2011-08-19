.class Lorg/dom4j/io/HTMLWriter$FormatState;
.super Ljava/lang/Object;
.source "HTMLWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/dom4j/io/HTMLWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatState"
.end annotation


# instance fields
.field private indent:Ljava/lang/String;

.field private newlines:Z

.field final this$0:Lorg/dom4j/io/HTMLWriter;

.field private trimText:Z


# direct methods
.method public constructor <init>(Lorg/dom4j/io/HTMLWriter;ZZLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter "newLines"
    .parameter "trimText"
    .parameter "indent"

    .prologue
    const/4 v0, 0x0

    .line 774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/dom4j/io/HTMLWriter$FormatState;->this$0:Lorg/dom4j/io/HTMLWriter;

    .line 768
    iput-boolean v0, p0, Lorg/dom4j/io/HTMLWriter$FormatState;->newlines:Z

    .line 770
    iput-boolean v0, p0, Lorg/dom4j/io/HTMLWriter$FormatState;->trimText:Z

    .line 772
    const-string v0, ""

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter$FormatState;->indent:Ljava/lang/String;

    .line 775
    iput-boolean p2, p0, Lorg/dom4j/io/HTMLWriter$FormatState;->newlines:Z

    .line 776
    iput-boolean p3, p0, Lorg/dom4j/io/HTMLWriter$FormatState;->trimText:Z

    .line 777
    iput-object p4, p0, Lorg/dom4j/io/HTMLWriter$FormatState;->indent:Ljava/lang/String;

    .line 778
    return-void
.end method


# virtual methods
.method public getIndent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter$FormatState;->indent:Ljava/lang/String;

    return-object v0
.end method

.method public isNewlines()Z
    .locals 1

    .prologue
    .line 781
    iget-boolean v0, p0, Lorg/dom4j/io/HTMLWriter$FormatState;->newlines:Z

    return v0
.end method

.method public isTrimText()Z
    .locals 1

    .prologue
    .line 785
    iget-boolean v0, p0, Lorg/dom4j/io/HTMLWriter$FormatState;->trimText:Z

    return v0
.end method

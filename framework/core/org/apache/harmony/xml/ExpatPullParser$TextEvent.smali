.class Lorg/apache/harmony/xml/ExpatPullParser$TextEvent;
.super Lorg/apache/harmony/xml/ExpatPullParser$Event;
.source "ExpatPullParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xml/ExpatPullParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextEvent"
.end annotation


# instance fields
.field final builder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(IILorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;)V
    .registers 5
    .parameter "initialCapacity"
    .parameter "depth"
    .parameter "namespaceStack"

    .prologue
    .line 669
    invoke-direct {p0, p2, p3}, Lorg/apache/harmony/xml/ExpatPullParser$Event;-><init>(ILorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;)V

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$TextEvent;->builder:Ljava/lang/StringBuilder;

    .line 671
    return-void
.end method


# virtual methods
.method append([CII)V
    .registers 5
    .parameter "text"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 684
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$TextEvent;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 685
    return-void
.end method

.method getText()Ljava/lang/StringBuilder;
    .registers 2

    .prologue
    .line 680
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$TextEvent;->builder:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method getType()I
    .registers 2

    .prologue
    .line 675
    const/4 v0, 0x4

    return v0
.end method

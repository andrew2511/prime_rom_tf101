.class abstract Lorg/apache/harmony/xml/ExpatPullParser$Event;
.super Ljava/lang/Object;
.source "ExpatPullParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xml/ExpatPullParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Event"
.end annotation


# instance fields
.field final depth:I

.field final namespaceStack:Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;

.field next:Lorg/apache/harmony/xml/ExpatPullParser$Event;


# direct methods
.method constructor <init>(ILorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;)V
    .registers 4
    .parameter "depth"
    .parameter "namespaceStack"

    .prologue
    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$Event;->next:Lorg/apache/harmony/xml/ExpatPullParser$Event;

    .line 506
    iput p1, p0, Lorg/apache/harmony/xml/ExpatPullParser$Event;->depth:I

    .line 507
    iput-object p2, p0, Lorg/apache/harmony/xml/ExpatPullParser$Event;->namespaceStack:Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;

    .line 508
    return-void
.end method


# virtual methods
.method getAttributeCount()I
    .registers 2

    .prologue
    .line 531
    const/4 v0, -0x1

    return v0
.end method

.method getAttributeName(I)Ljava/lang/String;
    .registers 4
    .parameter "index"

    .prologue
    .line 539
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "This is not a start tag."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getAttributeNamespace(I)Ljava/lang/String;
    .registers 4
    .parameter "index"

    .prologue
    .line 535
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "This is not a start tag."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getAttributeValue(I)Ljava/lang/String;
    .registers 4
    .parameter "index"

    .prologue
    .line 543
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "This is not a start tag."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "namespace"
    .parameter "name"

    .prologue
    .line 549
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "This is not a start tag."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDepth()I
    .registers 2

    .prologue
    .line 553
    iget v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$Event;->depth:I

    return v0
.end method

.method getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 527
    const/4 v0, 0x0

    return-object v0
.end method

.method getNamespace()Ljava/lang/String;
    .registers 2

    .prologue
    .line 523
    const/4 v0, 0x0

    return-object v0
.end method

.method getNext()Lorg/apache/harmony/xml/ExpatPullParser$Event;
    .registers 2

    .prologue
    .line 515
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$Event;->next:Lorg/apache/harmony/xml/ExpatPullParser$Event;

    return-object v0
.end method

.method getText()Ljava/lang/StringBuilder;
    .registers 2

    .prologue
    .line 519
    const/4 v0, 0x0

    return-object v0
.end method

.method abstract getType()I
.end method

.method setNext(Lorg/apache/harmony/xml/ExpatPullParser$Event;)V
    .registers 2
    .parameter "next"

    .prologue
    .line 511
    iput-object p1, p0, Lorg/apache/harmony/xml/ExpatPullParser$Event;->next:Lorg/apache/harmony/xml/ExpatPullParser$Event;

    .line 512
    return-void
.end method

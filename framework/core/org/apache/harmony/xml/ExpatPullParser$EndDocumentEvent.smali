.class Lorg/apache/harmony/xml/ExpatPullParser$EndDocumentEvent;
.super Lorg/apache/harmony/xml/ExpatPullParser$Event;
.source "ExpatPullParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xml/ExpatPullParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EndDocumentEvent"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 691
    const/4 v0, 0x0

    sget-object v1, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;->EMPTY:Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/xml/ExpatPullParser$Event;-><init>(ILorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;)V

    .line 692
    return-void
.end method


# virtual methods
.method getNext()Lorg/apache/harmony/xml/ExpatPullParser$Event;
    .registers 3

    .prologue
    .line 696
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "End of document."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getType()I
    .registers 2

    .prologue
    .line 706
    const/4 v0, 0x1

    return v0
.end method

.method setNext(Lorg/apache/harmony/xml/ExpatPullParser$Event;)V
    .registers 4
    .parameter "next"

    .prologue
    .line 701
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "End of document."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.class Lorg/apache/harmony/xml/ExpatPullParser$EndTagEvent;
.super Lorg/apache/harmony/xml/ExpatPullParser$Event;
.source "ExpatPullParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xml/ExpatPullParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EndTagEvent"
.end annotation


# instance fields
.field final localName:Ljava/lang/String;

.field final namespace:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;)V
    .registers 5
    .parameter "namespace"
    .parameter "localName"
    .parameter "depth"
    .parameter "namespaceStack"

    .prologue
    .line 642
    invoke-direct {p0, p3, p4}, Lorg/apache/harmony/xml/ExpatPullParser$Event;-><init>(ILorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;)V

    .line 643
    iput-object p1, p0, Lorg/apache/harmony/xml/ExpatPullParser$EndTagEvent;->namespace:Ljava/lang/String;

    .line 644
    iput-object p2, p0, Lorg/apache/harmony/xml/ExpatPullParser$EndTagEvent;->localName:Ljava/lang/String;

    .line 645
    return-void
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 649
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$EndTagEvent;->localName:Ljava/lang/String;

    return-object v0
.end method

.method getNamespace()Ljava/lang/String;
    .registers 2

    .prologue
    .line 654
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$EndTagEvent;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method getType()I
    .registers 2

    .prologue
    .line 659
    const/4 v0, 0x3

    return v0
.end method

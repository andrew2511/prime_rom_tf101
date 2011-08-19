.class Lorg/apache/harmony/xml/ExpatPullParser$StartDocumentEvent;
.super Lorg/apache/harmony/xml/ExpatPullParser$Event;
.source "ExpatPullParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xml/ExpatPullParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StartDocumentEvent"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 560
    const/4 v0, 0x0

    sget-object v1, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;->EMPTY:Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/xml/ExpatPullParser$Event;-><init>(ILorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;)V

    .line 561
    return-void
.end method


# virtual methods
.method getType()I
    .registers 2

    .prologue
    .line 565
    const/4 v0, 0x0

    return v0
.end method

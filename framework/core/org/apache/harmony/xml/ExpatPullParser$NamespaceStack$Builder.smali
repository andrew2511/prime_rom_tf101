.class Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack$Builder;
.super Ljava/lang/Object;
.source "ExpatPullParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field top:Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    sget-object v0, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;->EMPTY:Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;

    iput-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack$Builder;->top:Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;

    return-void
.end method


# virtual methods
.method build()Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;
    .registers 2

    .prologue
    .line 485
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack$Builder;->top:Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;

    return-object v0
.end method

.method pop(I)V
    .registers 3
    .parameter "depth"

    .prologue
    .line 478
    :goto_0
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack$Builder;->top:Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack$Builder;->top:Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;

    #getter for: Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;->depth:I
    invoke-static {v0}, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;->access$100(Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;)I

    move-result v0

    if-ne v0, p1, :cond_15

    .line 479
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack$Builder;->top:Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;

    #getter for: Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;->parent:Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;
    invoke-static {v0}, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;->access$200(Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;)Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack$Builder;->top:Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;

    goto :goto_0

    .line 481
    :cond_15
    return-void
.end method

.method push(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10
    .parameter "prefix"
    .parameter "uri"
    .parameter "depth"

    .prologue
    .line 470
    new-instance v0, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;

    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack$Builder;->top:Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;-><init>(Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;Ljava/lang/String;Ljava/lang/String;ILorg/apache/harmony/xml/ExpatPullParser$1;)V

    iput-object v0, p0, Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack$Builder;->top:Lorg/apache/harmony/xml/ExpatPullParser$NamespaceStack;

    .line 471
    return-void
.end method

.class Lorg/dom4j/io/DispatchHandlerTest$MyHandler;
.super Ljava/lang/Object;
.source "DispatchHandlerTest.java"

# interfaces
.implements Lorg/dom4j/ElementHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/dom4j/io/DispatchHandlerTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private count:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lorg/dom4j/io/DispatchHandlerTest$MyHandler;->count:I

    .line 38
    return-void
.end method

.method constructor <init>(Lorg/dom4j/io/DispatchHandlerTest$MyHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/dom4j/io/DispatchHandlerTest$MyHandler;-><init>()V

    return-void
.end method


# virtual methods
.method getCount()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lorg/dom4j/io/DispatchHandlerTest$MyHandler;->count:I

    return v0
.end method

.method public onEnd(Lorg/dom4j/ElementPath;)V
    .locals 0
    .parameter "elementPath"

    .prologue
    .line 42
    return-void
.end method

.method public onStart(Lorg/dom4j/ElementPath;)V
    .locals 1
    .parameter "elementPath"

    .prologue
    .line 45
    iget v0, p0, Lorg/dom4j/io/DispatchHandlerTest$MyHandler;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/dom4j/io/DispatchHandlerTest$MyHandler;->count:I

    .line 46
    return-void
.end method

.class Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;
.super Lorg/apache/harmony/xml/ExpatAttributes;
.source "ExpatParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xml/ExpatParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClonedAttributes"
.end annotation


# static fields
.field private static final EMPTY:Lorg/xml/sax/Attributes;


# instance fields
.field private final length:I

.field private final parserPointer:I

.field private pointer:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 626
    new-instance v0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;

    invoke-direct {v0, v1, v1, v1}, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;-><init>(III)V

    sput-object v0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->EMPTY:Lorg/xml/sax/Attributes;

    return-void
.end method

.method private constructor <init>(III)V
    .registers 4
    .parameter "parserPointer"
    .parameter "pointer"
    .parameter "length"

    .prologue
    .line 640
    invoke-direct {p0}, Lorg/apache/harmony/xml/ExpatAttributes;-><init>()V

    .line 641
    iput p1, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->parserPointer:I

    .line 642
    iput p2, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->pointer:I

    .line 643
    iput p3, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->length:I

    .line 644
    return-void
.end method

.method synthetic constructor <init>(IIILorg/apache/harmony/xml/ExpatParser$1;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 624
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;-><init>(III)V

    return-void
.end method

.method static synthetic access$400()Lorg/xml/sax/Attributes;
    .registers 1

    .prologue
    .line 624
    sget-object v0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->EMPTY:Lorg/xml/sax/Attributes;

    return-object v0
.end method


# virtual methods
.method protected declared-synchronized finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 663
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->pointer:I

    if-eqz v0, :cond_d

    .line 664
    iget v0, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->pointer:I

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->freeAttributes(I)V

    .line 665
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->pointer:I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_12

    .line 668
    :cond_d
    :try_start_d
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_17

    .line 670
    monitor-exit p0

    return-void

    .line 668
    :catchall_12
    move-exception v0

    :try_start_13
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_17

    .line 663
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 658
    iget v0, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->length:I

    return v0
.end method

.method public getParserPointer()I
    .registers 2

    .prologue
    .line 648
    iget v0, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->parserPointer:I

    return v0
.end method

.method public getPointer()I
    .registers 2

    .prologue
    .line 653
    iget v0, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->pointer:I

    return v0
.end method

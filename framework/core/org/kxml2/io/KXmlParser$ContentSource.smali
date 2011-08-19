.class Lorg/kxml2/io/KXmlParser$ContentSource;
.super Ljava/lang/Object;
.source "KXmlParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kxml2/io/KXmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ContentSource"
.end annotation


# instance fields
.field private final buffer:[C

.field private final limit:I

.field private final next:Lorg/kxml2/io/KXmlParser$ContentSource;

.field private final position:I


# direct methods
.method constructor <init>(Lorg/kxml2/io/KXmlParser$ContentSource;[CII)V
    .registers 5
    .parameter "next"
    .parameter "buffer"
    .parameter "position"
    .parameter "limit"

    .prologue
    .line 2129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2130
    iput-object p1, p0, Lorg/kxml2/io/KXmlParser$ContentSource;->next:Lorg/kxml2/io/KXmlParser$ContentSource;

    .line 2131
    iput-object p2, p0, Lorg/kxml2/io/KXmlParser$ContentSource;->buffer:[C

    .line 2132
    iput p3, p0, Lorg/kxml2/io/KXmlParser$ContentSource;->position:I

    .line 2133
    iput p4, p0, Lorg/kxml2/io/KXmlParser$ContentSource;->limit:I

    .line 2134
    return-void
.end method

.method static synthetic access$000(Lorg/kxml2/io/KXmlParser$ContentSource;)[C
    .registers 2
    .parameter "x0"

    .prologue
    .line 2124
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser$ContentSource;->buffer:[C

    return-object v0
.end method

.method static synthetic access$100(Lorg/kxml2/io/KXmlParser$ContentSource;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 2124
    iget v0, p0, Lorg/kxml2/io/KXmlParser$ContentSource;->position:I

    return v0
.end method

.method static synthetic access$200(Lorg/kxml2/io/KXmlParser$ContentSource;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 2124
    iget v0, p0, Lorg/kxml2/io/KXmlParser$ContentSource;->limit:I

    return v0
.end method

.method static synthetic access$300(Lorg/kxml2/io/KXmlParser$ContentSource;)Lorg/kxml2/io/KXmlParser$ContentSource;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2124
    iget-object v0, p0, Lorg/kxml2/io/KXmlParser$ContentSource;->next:Lorg/kxml2/io/KXmlParser$ContentSource;

    return-object v0
.end method

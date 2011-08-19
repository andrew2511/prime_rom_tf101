.class public final Lcom/android/gallery3d/picasa/GDataParser;
.super Ljava/lang/Object;
.source "GDataParser.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/picasa/GDataParser$EntryHandler;
    }
.end annotation


# instance fields
.field private final mAttributes:[Lorg/xml/sax/helpers/AttributesImpl;

.field private mEntry:Lcom/android/gallery3d/picasa/Entry;

.field private mHandler:Lcom/android/gallery3d/picasa/GDataParser$EntryHandler;

.field private mLevel:I

.field private final mName:[Ljava/lang/String;

.field private mState:I

.field private final mUri:[Ljava/lang/String;

.field private final mValue:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x5

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v3, p0, Lcom/android/gallery3d/picasa/GDataParser;->mEntry:Lcom/android/gallery3d/picasa/Entry;

    .line 45
    iput-object v3, p0, Lcom/android/gallery3d/picasa/GDataParser;->mHandler:Lcom/android/gallery3d/picasa/GDataParser$EntryHandler;

    .line 46
    iput v2, p0, Lcom/android/gallery3d/picasa/GDataParser;->mState:I

    .line 47
    iput v2, p0, Lcom/android/gallery3d/picasa/GDataParser;->mLevel:I

    .line 48
    new-array v2, v4, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/gallery3d/picasa/GDataParser;->mUri:[Ljava/lang/String;

    .line 49
    new-array v2, v4, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/gallery3d/picasa/GDataParser;->mName:[Ljava/lang/String;

    .line 50
    new-array v2, v4, [Lorg/xml/sax/helpers/AttributesImpl;

    iput-object v2, p0, Lcom/android/gallery3d/picasa/GDataParser;->mAttributes:[Lorg/xml/sax/helpers/AttributesImpl;

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v2, p0, Lcom/android/gallery3d/picasa/GDataParser;->mValue:Ljava/lang/StringBuilder;

    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/picasa/GDataParser;->mAttributes:[Lorg/xml/sax/helpers/AttributesImpl;

    .line 59
    .local v0, attributes:[Lorg/xml/sax/helpers/AttributesImpl;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-eq v1, v4, :cond_0

    .line 60
    new-instance v2, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v2}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    aput-object v2, v0, v1

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    :cond_0
    return-void
.end method

.method private endProperty()V
    .locals 6

    .prologue
    .line 135
    iget v0, p0, Lcom/android/gallery3d/picasa/GDataParser;->mLevel:I

    .line 136
    .local v0, level:I
    iget-object v1, p0, Lcom/android/gallery3d/picasa/GDataParser;->mEntry:Lcom/android/gallery3d/picasa/Entry;

    iget-object v2, p0, Lcom/android/gallery3d/picasa/GDataParser;->mUri:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/android/gallery3d/picasa/GDataParser;->mName:[Ljava/lang/String;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/android/gallery3d/picasa/GDataParser;->mAttributes:[Lorg/xml/sax/helpers/AttributesImpl;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/android/gallery3d/picasa/GDataParser;->mValue:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/gallery3d/picasa/Entry;->setPropertyFromXml(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/String;)V

    .line 137
    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/android/gallery3d/picasa/GDataParser;->mLevel:I

    .line 138
    return-void
.end method

.method public static parseAtomTimestamp(Ljava/lang/String;)J
    .locals 3
    .parameter "timestamp"

    .prologue
    .line 73
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 74
    .local v0, time:Landroid/text/format/Time;
    invoke-virtual {v0, p0}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    .line 75
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    return-wide v1
.end method

.method private startProperty(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .parameter "uri"
    .parameter "localName"
    .parameter "attrs"

    .prologue
    .line 126
    iget v1, p0, Lcom/android/gallery3d/picasa/GDataParser;->mLevel:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/android/gallery3d/picasa/GDataParser;->mLevel:I

    .line 127
    .local v0, level:I
    iget-object v1, p0, Lcom/android/gallery3d/picasa/GDataParser;->mValue:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 128
    iget-object v1, p0, Lcom/android/gallery3d/picasa/GDataParser;->mUri:[Ljava/lang/String;

    aput-object p1, v1, v0

    .line 129
    iget-object v1, p0, Lcom/android/gallery3d/picasa/GDataParser;->mName:[Ljava/lang/String;

    aput-object p2, v1, v0

    .line 130
    iget-object v1, p0, Lcom/android/gallery3d/picasa/GDataParser;->mAttributes:[Lorg/xml/sax/helpers/AttributesImpl;

    aget-object v1, v1, v0

    invoke-virtual {v1, p3}, Lorg/xml/sax/helpers/AttributesImpl;->setAttributes(Lorg/xml/sax/Attributes;)V

    .line 131
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .parameter "ch"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/gallery3d/picasa/GDataParser;->mValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 142
    return-void
.end method

.method public endDocument()V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 105
    iget v0, p0, Lcom/android/gallery3d/picasa/GDataParser;->mLevel:I

    if-lez v0, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/android/gallery3d/picasa/GDataParser;->endProperty()V

    .line 122
    :goto_0
    return-void

    .line 110
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/picasa/GDataParser;->mState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 112
    :pswitch_0
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0}, Lorg/xml/sax/SAXException;-><init>()V

    throw v0

    .line 114
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/picasa/GDataParser;->mState:I

    goto :goto_0

    .line 117
    :pswitch_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/picasa/GDataParser;->mState:I

    .line 118
    iget-object v0, p0, Lcom/android/gallery3d/picasa/GDataParser;->mHandler:Lcom/android/gallery3d/picasa/GDataParser$EntryHandler;

    iget-object v1, p0, Lcom/android/gallery3d/picasa/GDataParser;->mEntry:Lcom/android/gallery3d/picasa/Entry;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/picasa/GDataParser$EntryHandler;->handleEntry(Lcom/android/gallery3d/picasa/Entry;)V

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .parameter "prefix"

    .prologue
    .line 174
    return-void
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .parameter "ch"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 146
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "target"
    .parameter "data"

    .prologue
    .line 150
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0
    .parameter "locator"

    .prologue
    .line 154
    return-void
.end method

.method public setEntry(Lcom/android/gallery3d/picasa/Entry;)V
    .locals 0
    .parameter "entry"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/gallery3d/picasa/GDataParser;->mEntry:Lcom/android/gallery3d/picasa/Entry;

    .line 66
    return-void
.end method

.method public setHandler(Lcom/android/gallery3d/picasa/GDataParser$EntryHandler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/gallery3d/picasa/GDataParser;->mHandler:Lcom/android/gallery3d/picasa/GDataParser$EntryHandler;

    .line 70
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 158
    return-void
.end method

.method public startDocument()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 80
    iget v0, p0, Lcom/android/gallery3d/picasa/GDataParser;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 102
    :goto_0
    return-void

    .line 83
    :pswitch_0
    const-string v0, "http://www.w3.org/2005/Atom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "feed"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/picasa/GDataParser;->mState:I

    goto :goto_0

    .line 86
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0}, Lorg/xml/sax/SAXException;-><init>()V

    throw v0

    .line 91
    :pswitch_1
    const-string v0, "http://www.w3.org/2005/Atom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "entry"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/picasa/GDataParser;->mState:I

    .line 93
    iget-object v0, p0, Lcom/android/gallery3d/picasa/GDataParser;->mEntry:Lcom/android/gallery3d/picasa/Entry;

    invoke-virtual {v0}, Lcom/android/gallery3d/picasa/Entry;->clear()V

    goto :goto_0

    .line 95
    :cond_1
    invoke-direct {p0, p1, p2, p4}, Lcom/android/gallery3d/picasa/GDataParser;->startProperty(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 99
    :pswitch_2
    invoke-direct {p0, p1, p2, p4}, Lcom/android/gallery3d/picasa/GDataParser;->startProperty(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "prefix"
    .parameter "uri"

    .prologue
    .line 170
    return-void
.end method

.class Lcom/amazon/topaz/internal/drawing/DebugCanvas;
.super Lcom/amazon/topaz/internal/drawing/Canvas;
.source "DebugCanvas.java"


# instance fields
.field private final dict_:Lcom/amazon/topaz/internal/binxml/Dictionary;

.field private height_:I

.field private images_:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/amazon/system/drawing/Rectangle;",
            ">;"
        }
    .end annotation
.end field

.field private width_:I


# direct methods
.method constructor <init>(Lcom/amazon/topaz/internal/binxml/Dictionary;II)V
    .locals 3
    .parameter "dict"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/amazon/topaz/internal/drawing/Canvas;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/amazon/topaz/internal/drawing/DebugCanvas;->dict_:Lcom/amazon/topaz/internal/binxml/Dictionary;

    .line 24
    iput p2, p0, Lcom/amazon/topaz/internal/drawing/DebugCanvas;->width_:I

    .line 25
    iput p3, p0, Lcom/amazon/topaz/internal/drawing/DebugCanvas;->height_:I

    .line 26
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/amazon/topaz/internal/drawing/DebugCanvas;->images_:Ljava/util/LinkedList;

    .line 28
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 29
    .local v0, out:Ljava/io/PrintStream;
    const-string v1, "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 30
    const-string v1, "<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 31
    const-string v1, "<head><style type=\"text/css\">"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 32
    const-string v1, "div { position: absolute; }"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 33
    const-string v1, ".Word { border: solid red 1px; z-index: 15; }"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 34
    const-string v1, ".Letter { border: solid blue 1px; font-size: 6px; z-index: 20}"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 35
    const-string v1, ".img { z-index: 1; border: dotted green 1px; }"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".ruler { border: solid blue 1px; width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "px; height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "px; top: 0px; left: 0px; }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 38
    const-string v1, "</style><title></title></head><body>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 39
    const-string v1, "<div class=\"ruler\">&nbsp;</div>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method private static intToZeroPaddedHex(I)Ljava/lang/String;
    .locals 3
    .parameter "num"

    .prologue
    .line 190
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, hexVal:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    :cond_0
    return-object v0
.end method

.method private static printRect(Lcom/amazon/system/drawing/Rectangle;Ljava/util/LinkedList;)V
    .locals 1
    .parameter "target"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/system/drawing/Rectangle;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, classes:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 137
    invoke-static {p0, p1, v0, v0}, Lcom/amazon/topaz/internal/drawing/DebugCanvas;->printRect(Lcom/amazon/system/drawing/Rectangle;Ljava/util/LinkedList;Lcom/amazon/system/drawing/Color;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method private static printRect(Lcom/amazon/system/drawing/Rectangle;Ljava/util/LinkedList;Lcom/amazon/system/drawing/Color;)V
    .locals 1
    .parameter "target"
    .parameter
    .parameter "c"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/system/drawing/Rectangle;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/system/drawing/Color;",
            ")V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, classes:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/amazon/topaz/internal/drawing/DebugCanvas;->printRect(Lcom/amazon/system/drawing/Rectangle;Ljava/util/LinkedList;Lcom/amazon/system/drawing/Color;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method private static printRect(Lcom/amazon/system/drawing/Rectangle;Ljava/util/LinkedList;Lcom/amazon/system/drawing/Color;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/system/drawing/Rectangle;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/system/drawing/Color;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 152
    if-nez p3, :cond_3

    .line 153
    const-string v0, "&nbsp;"

    move-object v1, v0

    .line 155
    :goto_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 156
    if-eqz p1, :cond_1

    .line 158
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 160
    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    :cond_0
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 164
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 166
    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 167
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 170
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<div class=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" style=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 173
    if-eqz p2, :cond_2

    .line 174
    invoke-virtual {p2}, Lcom/amazon/system/drawing/Color;->getRed()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/topaz/internal/drawing/DebugCanvas;->intToZeroPaddedHex(I)Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-virtual {p2}, Lcom/amazon/system/drawing/Color;->getGreen()I

    move-result v2

    invoke-static {v2}, Lcom/amazon/topaz/internal/drawing/DebugCanvas;->intToZeroPaddedHex(I)Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-virtual {p2}, Lcom/amazon/system/drawing/Color;->getBlue()I

    move-result v3

    invoke-static {v3}, Lcom/amazon/topaz/internal/drawing/DebugCanvas;->intToZeroPaddedHex(I)Ljava/lang/String;

    move-result-object v3

    .line 177
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "background:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 181
    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "left:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "px;top:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "px;width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/amazon/system/drawing/Rectangle;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "px;height:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/amazon/system/drawing/Rectangle;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "px;\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</div>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 185
    return-void

    :cond_3
    move-object v1, p3

    goto/16 :goto_0
.end method


# virtual methods
.method public clearRect(Lcom/amazon/system/drawing/Rectangle;)V
    .locals 3
    .parameter

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lcom/amazon/topaz/internal/drawing/DebugCanvas;->drawZoom(Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;

    move-result-object v0

    .line 128
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 129
    const-string v2, "color"

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 130
    const-string v2, "clearRect"

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v2, p0, Lcom/amazon/topaz/internal/drawing/DebugCanvas;->backgroundColor:Lcom/amazon/system/drawing/Color;

    invoke-static {v0, v1, v2}, Lcom/amazon/topaz/internal/drawing/DebugCanvas;->printRect(Lcom/amazon/system/drawing/Rectangle;Ljava/util/LinkedList;Lcom/amazon/system/drawing/Color;)V

    .line 132
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    .line 45
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 46
    const-string v1, "img"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/DebugCanvas;->images_:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 48
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/system/drawing/Rectangle;

    .line 50
    invoke-static {p0, v0}, Lcom/amazon/topaz/internal/drawing/DebugCanvas;->printRect(Lcom/amazon/system/drawing/Rectangle;Ljava/util/LinkedList;)V

    goto :goto_0

    .line 52
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "</body></html>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public draw(Lcom/amazon/system/drawing/Color;Lcom/amazon/system/drawing/Rectangle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-virtual {p0, p2}, Lcom/amazon/topaz/internal/drawing/DebugCanvas;->drawZoom(Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;

    move-result-object v0

    .line 102
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 103
    const-string v2, "color"

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-static {v0, v1, p1}, Lcom/amazon/topaz/internal/drawing/DebugCanvas;->printRect(Lcom/amazon/system/drawing/Rectangle;Ljava/util/LinkedList;Lcom/amazon/system/drawing/Color;)V

    .line 105
    return-void
.end method

.method public draw(Lcom/amazon/topaz/internal/book/IImage;Lcom/amazon/system/drawing/Rectangle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-virtual {p0, p2}, Lcom/amazon/topaz/internal/drawing/DebugCanvas;->drawZoom(Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/DebugCanvas;->images_:Ljava/util/LinkedList;

    new-instance v2, Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v2, v0}, Lcom/amazon/system/drawing/Rectangle;-><init>(Lcom/amazon/system/drawing/Rectangle;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method public drawMeta(Lcom/amazon/topaz/internal/book/Word;Lcom/amazon/system/drawing/Rectangle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 83
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->EMPTY:Ljava/lang/String;

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/amazon/topaz/internal/drawing/DebugCanvas;->dict_:Lcom/amazon/topaz/internal/binxml/Dictionary;

    invoke-virtual {p1, v1}, Lcom/amazon/topaz/internal/book/Word;->getAltText(Lcom/amazon/topaz/internal/binxml/Dictionary;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/amazon/topaz/exception/TopazException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 96
    :goto_0
    sget-object v1, Lcom/amazon/topaz/internal/TopazStrings;->CANVAS_TYPE_WORD:Ljava/lang/String;

    invoke-virtual {p0, v1, v0, p2}, Lcom/amazon/topaz/internal/drawing/DebugCanvas;->drawMeta(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/system/drawing/Rectangle;)V

    .line 97
    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    .line 95
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public drawMeta(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/system/drawing/Rectangle;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    const-string v0, "Glyph"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-virtual {p0, p3}, Lcom/amazon/topaz/internal/drawing/DebugCanvas;->drawZoom(Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;

    move-result-object v0

    .line 76
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 77
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 78
    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p2}, Lcom/amazon/topaz/internal/drawing/DebugCanvas;->printRect(Lcom/amazon/system/drawing/Rectangle;Ljava/util/LinkedList;Lcom/amazon/system/drawing/Color;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getScreenHeight()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/amazon/topaz/internal/drawing/DebugCanvas;->height_:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/amazon/topaz/internal/drawing/DebugCanvas;->width_:I

    return v0
.end method

.method public invert(Lcom/amazon/system/drawing/Color;Lcom/amazon/system/drawing/Rectangle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-virtual {p0, p2}, Lcom/amazon/topaz/internal/drawing/DebugCanvas;->drawZoom(Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;

    move-result-object v0

    .line 110
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 111
    const-string v2, "color"

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 112
    const-string v2, "invert"

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-static {v0, v1, p1}, Lcom/amazon/topaz/internal/drawing/DebugCanvas;->printRect(Lcom/amazon/system/drawing/Rectangle;Ljava/util/LinkedList;Lcom/amazon/system/drawing/Color;)V

    .line 114
    return-void
.end method

.method public shade(Lcom/amazon/system/drawing/Color;Lcom/amazon/system/drawing/Rectangle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-virtual {p0, p2}, Lcom/amazon/topaz/internal/drawing/DebugCanvas;->drawZoom(Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;

    move-result-object v0

    .line 119
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 120
    const-string v2, "color"

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 121
    const-string v2, "shade"

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-static {v0, v1, p1}, Lcom/amazon/topaz/internal/drawing/DebugCanvas;->printRect(Lcom/amazon/system/drawing/Rectangle;Ljava/util/LinkedList;Lcom/amazon/system/drawing/Color;)V

    .line 123
    return-void
.end method

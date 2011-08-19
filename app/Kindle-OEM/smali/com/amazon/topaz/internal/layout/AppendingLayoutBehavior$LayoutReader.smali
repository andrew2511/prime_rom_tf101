.class Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;
.super Ljava/lang/Object;
.source "AppendingLayoutBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LayoutReader"
.end annotation


# static fields
.field private static final EVENT_END_BLOCK:I = 0x3

.field private static final EVENT_LINE:I = 0x2

.field private static final EVENT_START_BLOCK:I = 0x1

.field private static STRING_END_BLOCK:Ljava/lang/String;

.field private static STRING_LINE:Ljava/lang/String;

.field private static STRING_START_BLOCK:Ljava/lang/String;

.field private static STRING_UNKNOWN:Ljava/lang/String;


# instance fields
.field private desiredEvent:I

.field private foundBlock:Lcom/amazon/topaz/internal/layout/Block;

.field private foundEvent:I

.field private foundLine:Lcom/amazon/topaz/internal/layout/LayoutLine;

.field private final traversalHandler:Lcom/amazon/topaz/internal/layout/LayoutTraverser$TraversalHandler;

.field private final traverser:Lcom/amazon/topaz/internal/layout/LayoutTraverser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "StartBlock"

    sput-object v0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->STRING_START_BLOCK:Ljava/lang/String;

    .line 46
    const-string v0, "Line"

    sput-object v0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->STRING_LINE:Ljava/lang/String;

    .line 48
    const-string v0, "EndBlock"

    sput-object v0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->STRING_END_BLOCK:Ljava/lang/String;

    .line 49
    const-string v0, "Unknown"

    sput-object v0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->STRING_UNKNOWN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/topaz/internal/layout/LayoutTraverser;)V
    .locals 1
    .parameter "traverser"

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader$1;

    invoke-direct {v0, p0}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader$1;-><init>(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;)V

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->traversalHandler:Lcom/amazon/topaz/internal/layout/LayoutTraverser$TraversalHandler;

    .line 132
    iput-object p1, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->traverser:Lcom/amazon/topaz/internal/layout/LayoutTraverser;

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;)Lcom/amazon/topaz/internal/layout/Block;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->foundBlock:Lcom/amazon/topaz/internal/layout/Block;

    return-object v0
.end method

.method static synthetic access$002(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;Lcom/amazon/topaz/internal/layout/Block;)Lcom/amazon/topaz/internal/layout/Block;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->foundBlock:Lcom/amazon/topaz/internal/layout/Block;

    return-object p1
.end method

.method static synthetic access$100(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->foundEvent:I

    return v0
.end method

.method static synthetic access$102(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->foundEvent:I

    return p1
.end method

.method static synthetic access$202(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;Lcom/amazon/topaz/internal/layout/LayoutLine;)Lcom/amazon/topaz/internal/layout/LayoutLine;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->foundLine:Lcom/amazon/topaz/internal/layout/LayoutLine;

    return-object p1
.end method

.method static synthetic access$300(Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->desiredEvent:I

    return v0
.end method

.method private eventToString(I)Ljava/lang/String;
    .locals 1
    .parameter "event"

    .prologue
    .line 236
    packed-switch p1, :pswitch_data_0

    .line 245
    sget-object v0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->STRING_UNKNOWN:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 239
    :pswitch_0
    sget-object v0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->STRING_START_BLOCK:Ljava/lang/String;

    goto :goto_0

    .line 241
    :pswitch_1
    sget-object v0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->STRING_END_BLOCK:Ljava/lang/String;

    goto :goto_0

    .line 243
    :pswitch_2
    sget-object v0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->STRING_LINE:Ljava/lang/String;

    goto :goto_0

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getNext(ILcom/amazon/topaz/internal/layout/Block;IZ)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 191
    invoke-direct {p0}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->reset()V

    .line 192
    iput p1, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->desiredEvent:I

    .line 193
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->traverser:Lcom/amazon/topaz/internal/layout/LayoutTraverser;

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->traversalHandler:Lcom/amazon/topaz/internal/layout/LayoutTraverser$TraversalHandler;

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/layout/LayoutTraverser;->traverse(Lcom/amazon/topaz/internal/layout/LayoutTraverser$TraversalHandler;)V

    .line 194
    iget v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->foundEvent:I

    if-eq v0, p1, :cond_1

    .line 196
    if-eqz p4, :cond_0

    .line 198
    iget v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->foundEvent:I

    invoke-direct {p0, p1, v0}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->reportEventMismatch(II)V

    :cond_0
    move-object v0, v2

    .line 225
    :goto_0
    return-object v0

    .line 202
    :cond_1
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->foundBlock:Lcom/amazon/topaz/internal/layout/Block;

    if-eq v0, p2, :cond_3

    .line 204
    if-eqz p4, :cond_2

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TOPAZ LAYOUT APPEND - APPEND: Found wrong block on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->eventToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    move-object v0, v2

    .line 208
    goto :goto_0

    .line 210
    :cond_3
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->foundLine:Lcom/amazon/topaz/internal/layout/LayoutLine;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->foundLine:Lcom/amazon/topaz/internal/layout/LayoutLine;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getStartID()I

    move-result v0

    if-eq p3, v0, :cond_5

    .line 212
    if-eqz p4, :cond_4

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TOPAZ LAYOUT APPEND - APPEND: Expected drawable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->foundLine:Lcom/amazon/topaz/internal/layout/LayoutLine;

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getStartID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_4
    move-object v0, v2

    .line 216
    goto :goto_0

    .line 219
    :cond_5
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    .line 221
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->foundLine:Lcom/amazon/topaz/internal/layout/LayoutLine;

    goto :goto_0

    .line 225
    :cond_6
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->foundBlock:Lcom/amazon/topaz/internal/layout/Block;

    goto :goto_0
.end method

.method private reportEventMismatch(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TOPAZ LAYOUT APPEND - APPEND: Expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->eventToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->eventToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 251
    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->foundBlock:Lcom/amazon/topaz/internal/layout/Block;

    .line 252
    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->foundLine:Lcom/amazon/topaz/internal/layout/LayoutLine;

    .line 253
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->traverser:Lcom/amazon/topaz/internal/layout/LayoutTraverser;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutTraverser;->hasNext()Z

    move-result v0

    return v0
.end method

.method public readBlock(Z)Lcom/amazon/topaz/internal/layout/Block;
    .locals 3
    .parameter "log"

    .prologue
    .line 148
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, -0x8000

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->getNext(ILcom/amazon/topaz/internal/layout/Block;IZ)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/topaz/internal/layout/Block;

    return-object p0
.end method

.method public readEndBlock(Lcom/amazon/topaz/internal/layout/Block;Z)Lcom/amazon/topaz/internal/layout/Block;
    .locals 3
    .parameter "b"
    .parameter "log"

    .prologue
    .line 179
    const/4 v1, 0x3

    const/high16 v2, -0x8000

    invoke-direct {p0, v1, p1, v2, p2}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->getNext(ILcom/amazon/topaz/internal/layout/Block;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/layout/Block;

    .line 181
    .local v0, foundBlock:Lcom/amazon/topaz/internal/layout/Block;
    if-nez v0, :cond_0

    .line 183
    const/4 v1, 0x0

    .line 186
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/amazon/topaz/internal/layout/Block;->parent:Lcom/amazon/topaz/internal/layout/Block;

    goto :goto_0
.end method

.method public readLine(Lcom/amazon/topaz/internal/layout/Block;IZ)Lcom/amazon/topaz/internal/layout/LayoutLine;
    .locals 1
    .parameter "parent"
    .parameter "drawableID"
    .parameter "log"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->foundBlock:Lcom/amazon/topaz/internal/layout/Block;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->foundLine:Lcom/amazon/topaz/internal/layout/LayoutLine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->foundLine:Lcom/amazon/topaz/internal/layout/LayoutLine;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getStartID()I

    move-result v0

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->foundLine:Lcom/amazon/topaz/internal/layout/LayoutLine;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getEndID()I

    move-result v0

    if-gt p2, v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->foundLine:Lcom/amazon/topaz/internal/layout/LayoutLine;

    .line 167
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/amazon/topaz/internal/layout/AppendingLayoutBehavior$LayoutReader;->getNext(ILcom/amazon/topaz/internal/layout/Block;IZ)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/topaz/internal/layout/LayoutLine;

    move-object v0, p0

    goto :goto_0
.end method

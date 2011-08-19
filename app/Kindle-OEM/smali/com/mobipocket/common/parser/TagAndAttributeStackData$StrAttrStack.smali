.class Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;
.super Ljava/util/Stack;
.source "TagAndAttributeStackData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobipocket/common/parser/TagAndAttributeStackData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StrAttrStack"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/util/Stack;-><init>()V

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Lcom/mobipocket/common/parser/TagAndAttributeStackData$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;)V
    .locals 3
    .parameter "toCopy"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;-><init>()V

    .line 64
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 67
    invoke-virtual {p1, v1}, Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 68
    .local v0, elt:Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;->addElement(Ljava/lang/Object;)V

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    .end local v0           #elt:Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;Lcom/mobipocket/common/parser/TagAndAttributeStackData$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;-><init>(Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;->totalSizeInUTF16()I

    move-result v0

    return v0
.end method

.method private totalSizeInUTF16()I
    .locals 3

    .prologue
    .line 74
    const/4 v1, 0x0

    .line 75
    .local v1, totalsize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 77
    invoke-virtual {p0, v0}, Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {v2}, Lcom/mobipocket/common/parser/StrDescriptor;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_0
    return v1
.end method


# virtual methods
.method pop(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;->size()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/parser/TagAndAttributeStackData$StrAttrStack;->setSize(I)V

    .line 86
    return-void
.end method

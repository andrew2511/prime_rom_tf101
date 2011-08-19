.class Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;
.super Ljava/lang/Object;
.source "DisplayableFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LineInfo"
.end annotation


# instance fields
.field private _LineBeginFilePosition:I

.field private _LineEndFilePosition:I

.field private _SelectableObjectIndex:I

.field final synthetic this$1:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;


# direct methods
.method public constructor <init>(Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;III)V
    .locals 0
    .parameter
    .parameter "objectIndex"
    .parameter "lineBeginFilePosition"
    .parameter "lineEndFilePosition"

    .prologue
    .line 893
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;->this$1:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 894
    iput p2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;->_SelectableObjectIndex:I

    .line 895
    iput p3, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;->_LineBeginFilePosition:I

    .line 896
    iput p4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;->_LineEndFilePosition:I

    .line 897
    return-void
.end method

.method static synthetic access$602(Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 879
    iput p1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;->_SelectableObjectIndex:I

    return p1
.end method


# virtual methods
.method public final getLineBeginFilePosition()I
    .locals 1

    .prologue
    .line 914
    iget v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;->_LineBeginFilePosition:I

    return v0
.end method

.method public final getLineEndFilePosition()I
    .locals 1

    .prologue
    .line 923
    iget v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;->_LineEndFilePosition:I

    return v0
.end method

.method public final getObjectIndex()I
    .locals 1

    .prologue
    .line 905
    iget v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$LineInfo;->_SelectableObjectIndex:I

    return v0
.end method

.class Lcom/mobipocket/common/library/reader/DisplayableFrame$PositionnedFrame;
.super Ljava/lang/Object;
.source "DisplayableFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobipocket/common/library/reader/DisplayableFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PositionnedFrame"
.end annotation


# instance fields
.field private drawOffsetX:I

.field private drawOffsetY:I

.field private frame:Lcom/mobipocket/common/library/reader/DisplayableFrame;

.field final synthetic this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;


# direct methods
.method public constructor <init>(Lcom/mobipocket/common/library/reader/DisplayableFrame;Lcom/mobipocket/common/library/reader/DisplayableFrame;II)V
    .locals 0
    .parameter
    .parameter "frame"
    .parameter "drawOffsetX"
    .parameter "drawOffsetY"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$PositionnedFrame;->this$0:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$PositionnedFrame;->frame:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    .line 70
    iput p3, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$PositionnedFrame;->drawOffsetX:I

    .line 71
    iput p4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$PositionnedFrame;->drawOffsetY:I

    .line 72
    return-void
.end method


# virtual methods
.method public getDrawOffsetX()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$PositionnedFrame;->drawOffsetX:I

    return v0
.end method

.method public getDrawOffsetY()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$PositionnedFrame;->drawOffsetY:I

    return v0
.end method

.method public getFrame()Lcom/mobipocket/common/library/reader/DisplayableFrame;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$PositionnedFrame;->frame:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    return-object v0
.end method

.method public setDrawOffsetX(I)V
    .locals 0
    .parameter "drawOffsetX"

    .prologue
    .line 84
    iput p1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$PositionnedFrame;->drawOffsetX:I

    .line 85
    return-void
.end method

.method public setDrawOffsetY(I)V
    .locals 0
    .parameter "drawOffsetY"

    .prologue
    .line 90
    iput p1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$PositionnedFrame;->drawOffsetY:I

    .line 91
    return-void
.end method

.method public setFrame(Lcom/mobipocket/common/library/reader/DisplayableFrame;)V
    .locals 0
    .parameter "frame"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$PositionnedFrame;->frame:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    .line 79
    return-void
.end method

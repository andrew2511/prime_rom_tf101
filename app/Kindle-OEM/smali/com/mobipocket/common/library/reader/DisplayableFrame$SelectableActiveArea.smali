.class public Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;
.super Ljava/lang/Object;
.source "DisplayableFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobipocket/common/library/reader/DisplayableFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectableActiveArea"
.end annotation


# instance fields
.field private aa:Lcom/mobipocket/common/library/reader/ActiveArea;

.field private parentDisplayableFrame:Lcom/mobipocket/common/library/reader/DisplayableFrame;


# direct methods
.method constructor <init>(Lcom/mobipocket/common/library/reader/DisplayableFrame;Lcom/mobipocket/common/library/reader/ActiveArea;)V
    .locals 0
    .parameter "parentDisplayableFrame"
    .parameter "aa"

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;->aa:Lcom/mobipocket/common/library/reader/ActiveArea;

    .line 105
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;->parentDisplayableFrame:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;)Lcom/mobipocket/common/library/reader/ActiveArea;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;->aa:Lcom/mobipocket/common/library/reader/ActiveArea;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;)Lcom/mobipocket/common/library/reader/DisplayableFrame;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;->parentDisplayableFrame:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    return-object v0
.end method

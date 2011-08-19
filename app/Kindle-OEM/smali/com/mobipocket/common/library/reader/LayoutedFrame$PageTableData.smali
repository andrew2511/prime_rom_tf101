.class Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;
.super Ljava/lang/Object;
.source "LayoutedFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobipocket/common/library/reader/LayoutedFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PageTableData"
.end annotation


# instance fields
.field currentTableData:Lcom/mobipocket/common/library/reader/TableLayout;

.field tableInProgress:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->currentTableData:Lcom/mobipocket/common/library/reader/TableLayout;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->tableInProgress:Z

    .line 67
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->resetTableData()V

    .line 68
    return-void
.end method


# virtual methods
.method public resetTableData()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->currentTableData:Lcom/mobipocket/common/library/reader/TableLayout;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->tableInProgress:Z

    .line 78
    return-void
.end method

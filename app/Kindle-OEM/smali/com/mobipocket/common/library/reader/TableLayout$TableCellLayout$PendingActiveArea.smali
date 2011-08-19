.class Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout$PendingActiveArea;
.super Ljava/lang/Object;
.source "TableLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingActiveArea"
.end annotation


# instance fields
.field private pAa:Lcom/mobipocket/common/library/reader/ActiveArea;

.field private pIndex:I

.field private pIsBegin:Z

.field private pPosition:I

.field private pType:I

.field final synthetic this$1:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;


# direct methods
.method public constructor <init>(Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;II)V
    .locals 1
    .parameter
    .parameter "type"
    .parameter "index"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout$PendingActiveArea;->this$1:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout$PendingActiveArea;->pIsBegin:Z

    .line 164
    iput p2, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout$PendingActiveArea;->pType:I

    .line 165
    iput p3, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout$PendingActiveArea;->pIndex:I

    .line 166
    return-void
.end method

.method public constructor <init>(Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;Lcom/mobipocket/common/library/reader/ActiveArea;II)V
    .locals 1
    .parameter
    .parameter "aa"
    .parameter "index"
    .parameter "position"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout$PendingActiveArea;->this$1:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout$PendingActiveArea;->pIsBegin:Z

    .line 150
    iput-object p2, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout$PendingActiveArea;->pAa:Lcom/mobipocket/common/library/reader/ActiveArea;

    .line 151
    iput p3, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout$PendingActiveArea;->pIndex:I

    .line 152
    iput p4, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout$PendingActiveArea;->pPosition:I

    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout$PendingActiveArea;)Lcom/mobipocket/common/library/reader/ActiveArea;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout$PendingActiveArea;->pAa:Lcom/mobipocket/common/library/reader/ActiveArea;

    return-object v0
.end method


# virtual methods
.method public final getActiveArea()Lcom/mobipocket/common/library/reader/ActiveArea;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout$PendingActiveArea;->pAa:Lcom/mobipocket/common/library/reader/ActiveArea;

    return-object v0
.end method

.method public final getIndex()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout$PendingActiveArea;->pIndex:I

    return v0
.end method

.method public final getPosition()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout$PendingActiveArea;->pPosition:I

    return v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout$PendingActiveArea;->pType:I

    return v0
.end method

.method public final isBegin()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout$PendingActiveArea;->pIsBegin:Z

    return v0
.end method

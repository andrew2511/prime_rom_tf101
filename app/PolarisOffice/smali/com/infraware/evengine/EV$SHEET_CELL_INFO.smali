.class public Lcom/infraware/evengine/EV$SHEET_CELL_INFO;
.super Ljava/lang/Object;
.source "EV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/evengine/EV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SHEET_CELL_INFO"
.end annotation


# instance fields
.field public tActiveRange:Lcom/infraware/evengine/EV$RANGE;

.field public tColumnHeader:Lcom/infraware/evengine/EV$RANGE;

.field public tEditTextRange:Lcom/infraware/evengine/EV$RANGE;

.field public tRowHeader:Lcom/infraware/evengine/EV$RANGE;

.field public tSelectedRange:Lcom/infraware/evengine/EV$RANGE;

.field final synthetic this$0:Lcom/infraware/evengine/EV;

.field public wColWidth:I

.field public wRowHeight:I


# direct methods
.method public constructor <init>(Lcom/infraware/evengine/EV;)V
    .locals 1
    .parameter

    .prologue
    .line 577
    iput-object p1, p0, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->this$0:Lcom/infraware/evengine/EV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 579
    new-instance v0, Lcom/infraware/evengine/EV$RANGE;

    invoke-direct {v0, p1}, Lcom/infraware/evengine/EV$RANGE;-><init>(Lcom/infraware/evengine/EV;)V

    iput-object v0, p0, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tRowHeader:Lcom/infraware/evengine/EV$RANGE;

    .line 580
    new-instance v0, Lcom/infraware/evengine/EV$RANGE;

    invoke-direct {v0, p1}, Lcom/infraware/evengine/EV$RANGE;-><init>(Lcom/infraware/evengine/EV;)V

    iput-object v0, p0, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tColumnHeader:Lcom/infraware/evengine/EV$RANGE;

    .line 585
    new-instance v0, Lcom/infraware/evengine/EV$RANGE;

    invoke-direct {v0, p1}, Lcom/infraware/evengine/EV$RANGE;-><init>(Lcom/infraware/evengine/EV;)V

    iput-object v0, p0, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tActiveRange:Lcom/infraware/evengine/EV$RANGE;

    .line 586
    new-instance v0, Lcom/infraware/evengine/EV$RANGE;

    invoke-direct {v0, p1}, Lcom/infraware/evengine/EV$RANGE;-><init>(Lcom/infraware/evengine/EV;)V

    iput-object v0, p0, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/evengine/EV$RANGE;

    .line 587
    new-instance v0, Lcom/infraware/evengine/EV$RANGE;

    invoke-direct {v0, p1}, Lcom/infraware/evengine/EV$RANGE;-><init>(Lcom/infraware/evengine/EV;)V

    iput-object v0, p0, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tEditTextRange:Lcom/infraware/evengine/EV$RANGE;

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tRowHeader:Lcom/infraware/evengine/EV$RANGE;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV$RANGE;->clear()V

    .line 591
    iget-object v0, p0, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tColumnHeader:Lcom/infraware/evengine/EV$RANGE;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV$RANGE;->clear()V

    .line 592
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->wColWidth:I

    iput v0, p0, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->wRowHeight:I

    .line 593
    iget-object v0, p0, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tActiveRange:Lcom/infraware/evengine/EV$RANGE;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV$RANGE;->clear()V

    .line 594
    iget-object v0, p0, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tSelectedRange:Lcom/infraware/evengine/EV$RANGE;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV$RANGE;->clear()V

    .line 595
    iget-object v0, p0, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->tEditTextRange:Lcom/infraware/evengine/EV$RANGE;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV$RANGE;->clear()V

    .line 596
    return-void
.end method

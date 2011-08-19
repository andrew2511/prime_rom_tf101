.class public Lcom/infraware/evengine/EV$GUI_SHEET_CHART_EVENT;
.super Ljava/lang/Object;
.source "EV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/evengine/EV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GUI_SHEET_CHART_EVENT"
.end annotation


# instance fields
.field public nChart:I

.field public nLegend:I

.field public nSeriesIn:I

.field public nType:I

.field public szTitle:Ljava/lang/String;

.field public szXAxis:Ljava/lang/String;

.field public szYAxis:Ljava/lang/String;

.field public tRange:Lcom/infraware/evengine/EV$RANGE;

.field final synthetic this$0:Lcom/infraware/evengine/EV;


# direct methods
.method public constructor <init>(Lcom/infraware/evengine/EV;)V
    .locals 1
    .parameter

    .prologue
    .line 612
    iput-object p1, p0, Lcom/infraware/evengine/EV$GUI_SHEET_CHART_EVENT;->this$0:Lcom/infraware/evengine/EV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 616
    new-instance v0, Lcom/infraware/evengine/EV$RANGE;

    invoke-direct {v0, p1}, Lcom/infraware/evengine/EV$RANGE;-><init>(Lcom/infraware/evengine/EV;)V

    iput-object v0, p0, Lcom/infraware/evengine/EV$GUI_SHEET_CHART_EVENT;->tRange:Lcom/infraware/evengine/EV$RANGE;

    .line 618
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/infraware/evengine/EV$GUI_SHEET_CHART_EVENT;->szTitle:Ljava/lang/String;

    .line 619
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/infraware/evengine/EV$GUI_SHEET_CHART_EVENT;->szXAxis:Ljava/lang/String;

    .line 620
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/infraware/evengine/EV$GUI_SHEET_CHART_EVENT;->szYAxis:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 624
    iput v1, p0, Lcom/infraware/evengine/EV$GUI_SHEET_CHART_EVENT;->nChart:I

    iput v1, p0, Lcom/infraware/evengine/EV$GUI_SHEET_CHART_EVENT;->nType:I

    .line 625
    iget-object v0, p0, Lcom/infraware/evengine/EV$GUI_SHEET_CHART_EVENT;->tRange:Lcom/infraware/evengine/EV$RANGE;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV$RANGE;->clear()V

    .line 626
    iput v1, p0, Lcom/infraware/evengine/EV$GUI_SHEET_CHART_EVENT;->nSeriesIn:I

    .line 627
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/evengine/EV$GUI_SHEET_CHART_EVENT;->szYAxis:Ljava/lang/String;

    iput-object v0, p0, Lcom/infraware/evengine/EV$GUI_SHEET_CHART_EVENT;->szXAxis:Ljava/lang/String;

    iput-object v0, p0, Lcom/infraware/evengine/EV$GUI_SHEET_CHART_EVENT;->szTitle:Ljava/lang/String;

    .line 628
    iput v1, p0, Lcom/infraware/evengine/EV$GUI_SHEET_CHART_EVENT;->nLegend:I

    .line 629
    return-void
.end method

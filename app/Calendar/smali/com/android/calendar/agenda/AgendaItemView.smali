.class public Lcom/android/calendar/agenda/AgendaItemView;
.super Landroid/widget/RelativeLayout;
.source "AgendaItemView.java"


# instance fields
.field mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaItemView;->mPaint:Landroid/graphics/Paint;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaItemView;->mPaint:Landroid/graphics/Paint;

    .line 41
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/calendar/agenda/AgendaItemView;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    .line 47
    .local v7, holder:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    if-eqz v7, :cond_0

    .line 48
    const v0, 0x7f0e0006

    invoke-virtual {p0, v0}, Lcom/android/calendar/agenda/AgendaItemView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 49
    .local v6, color:Landroid/view/View;
    if-eqz v6, :cond_1

    .line 50
    iget v0, v7, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->calendarColor:I

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 58
    :goto_0
    iget v0, v7, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->overLayColor:I

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaItemView;->mPaint:Landroid/graphics/Paint;

    iget v2, v7, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->overLayColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    invoke-virtual {p0}, Lcom/android/calendar/agenda/AgendaItemView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/calendar/agenda/AgendaItemView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/calendar/agenda/AgendaItemView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 63
    .end local v6           #color:Landroid/view/View;
    :cond_0
    return-void

    .line 53
    .restart local v6       #color:Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaItemView;->mPaint:Landroid/graphics/Paint;

    iget v2, v7, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->calendarColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    const/high16 v3, 0x40a0

    invoke-virtual {p0}, Lcom/android/calendar/agenda/AgendaItemView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/calendar/agenda/AgendaItemView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

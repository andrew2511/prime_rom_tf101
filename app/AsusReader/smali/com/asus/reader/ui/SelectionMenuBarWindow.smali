.class public Lcom/asus/reader/ui/SelectionMenuBarWindow;
.super Ljava/lang/Object;
.source "SelectionMenuBarWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mButtonState:I

.field private mContentView:Landroid/view/View;

.field private mOptionListener:Lcom/asus/reader/ui/SelectionOptionBar$OnOptionBarClickListener;

.field private mPopupWindow:Landroid/widget/PopupWindow;


# direct methods
.method private constructor <init>(Landroid/content/Context;ILcom/asus/reader/ui/SelectionOptionBar$OnOptionBarClickListener;)V
    .locals 7
    .parameter "context"
    .parameter "id"
    .parameter "listener"

    .prologue
    const/4 v6, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p3, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mOptionListener:Lcom/asus/reader/ui/SelectionOptionBar$OnOptionBarClickListener;

    .line 32
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 33
    .local v2, inflater:Landroid/view/LayoutInflater;
    const/4 v4, 0x0

    invoke-virtual {v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mContentView:Landroid/view/View;

    .line 34
    iget-object v4, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mContentView:Landroid/view/View;

    const v5, 0x7f0b009b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 35
    .local v3, menu:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 36
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 37
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    :cond_0
    new-instance v4, Landroid/widget/PopupWindow;

    invoke-direct {v4, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 39
    iget-object v4, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 40
    iget-object v4, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 41
    iget-object v4, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 42
    return-void
.end method

.method public static buildOptionMenu(Landroid/content/Context;ILcom/asus/reader/ui/SelectionOptionBar$OnOptionBarClickListener;)Lcom/asus/reader/ui/SelectionMenuBarWindow;
    .locals 1
    .parameter "context"
    .parameter "resId"
    .parameter "listener"

    .prologue
    .line 45
    new-instance v0, Lcom/asus/reader/ui/SelectionMenuBarWindow;

    invoke-direct {v0, p0, p1, p2}, Lcom/asus/reader/ui/SelectionMenuBarWindow;-><init>(Landroid/content/Context;ILcom/asus/reader/ui/SelectionOptionBar$OnOptionBarClickListener;)V

    .line 46
    .local v0, window:Lcom/asus/reader/ui/SelectionMenuBarWindow;
    return-object v0
.end method


# virtual methods
.method public getWindow()Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mOptionListener:Lcom/asus/reader/ui/SelectionOptionBar$OnOptionBarClickListener;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 115
    :pswitch_0
    iget-object v0, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mOptionListener:Lcom/asus/reader/ui/SelectionOptionBar$OnOptionBarClickListener;

    invoke-interface {v0}, Lcom/asus/reader/ui/SelectionOptionBar$OnOptionBarClickListener;->onClickOnAddHighlight()V

    goto :goto_0

    .line 118
    :pswitch_1
    iget-object v0, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mOptionListener:Lcom/asus/reader/ui/SelectionOptionBar$OnOptionBarClickListener;

    invoke-interface {v0}, Lcom/asus/reader/ui/SelectionOptionBar$OnOptionBarClickListener;->onClickOnRemoveHighlight()V

    goto :goto_0

    .line 121
    :pswitch_2
    iget-object v0, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mOptionListener:Lcom/asus/reader/ui/SelectionOptionBar$OnOptionBarClickListener;

    invoke-interface {v0}, Lcom/asus/reader/ui/SelectionOptionBar$OnOptionBarClickListener;->onClickOnAddNote()V

    goto :goto_0

    .line 124
    :pswitch_3
    iget-object v0, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mOptionListener:Lcom/asus/reader/ui/SelectionOptionBar$OnOptionBarClickListener;

    invoke-interface {v0}, Lcom/asus/reader/ui/SelectionOptionBar$OnOptionBarClickListener;->onClickOnRemoveNote()V

    goto :goto_0

    .line 127
    :pswitch_4
    iget-object v0, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mOptionListener:Lcom/asus/reader/ui/SelectionOptionBar$OnOptionBarClickListener;

    invoke-interface {v0}, Lcom/asus/reader/ui/SelectionOptionBar$OnOptionBarClickListener;->onClickOnTTS()V

    goto :goto_0

    .line 130
    :pswitch_5
    iget-object v0, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mOptionListener:Lcom/asus/reader/ui/SelectionOptionBar$OnOptionBarClickListener;

    invoke-interface {v0}, Lcom/asus/reader/ui/SelectionOptionBar$OnOptionBarClickListener;->onClickOnCopy()V

    goto :goto_0

    .line 133
    :pswitch_6
    iget-object v0, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mOptionListener:Lcom/asus/reader/ui/SelectionOptionBar$OnOptionBarClickListener;

    invoke-interface {v0}, Lcom/asus/reader/ui/SelectionOptionBar$OnOptionBarClickListener;->onClickOnTranslation()V

    goto :goto_0

    .line 136
    :pswitch_7
    iget-object v0, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mOptionListener:Lcom/asus/reader/ui/SelectionOptionBar$OnOptionBarClickListener;

    invoke-interface {v0}, Lcom/asus/reader/ui/SelectionOptionBar$OnOptionBarClickListener;->onClickOnShare()V

    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x7f0b009c
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setButtonState(I)V
    .locals 7
    .parameter "state"

    .prologue
    const v6, 0x7f0b009e

    const v5, 0x7f0b009d

    const v2, 0x7f0b009c

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 54
    iput p1, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mButtonState:I

    .line 55
    iget-object v1, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mContentView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, layout_width:I
    packed-switch p1, :pswitch_data_0

    .line 104
    :goto_0
    if-lez v0, :cond_0

    .line 105
    iget-object v1, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 106
    iget-object v1, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v2, 0x44

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 109
    .end local v0           #layout_width:I
    :cond_0
    return-void

    .line 59
    .restart local v0       #layout_width:I
    :pswitch_0
    iget-object v1, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 60
    iget-object v1, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 61
    iget-object v1, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 62
    iget-object v1, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mContentView:Landroid/view/View;

    const v2, 0x7f0b009f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 63
    iget-object v1, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mContentView:Landroid/view/View;

    const v2, 0x7f0b00a0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 64
    iget-object v1, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mContentView:Landroid/view/View;

    const v2, 0x7f0b00a1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 65
    iget-object v1, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mContentView:Landroid/view/View;

    const v2, 0x7f0b00a2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 66
    iget-object v1, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mContentView:Landroid/view/View;

    const v2, 0x7f0b00a3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 67
    const/16 v0, 0x17c

    .line 68
    goto :goto_0

    .line 70
    :pswitch_1
    iget-object v1, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 71
    iget-object v1, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 72
    iget-object v1, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 73
    iget-object v1, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mContentView:Landroid/view/View;

    const v2, 0x7f0b009f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 74
    iget-object v1, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mContentView:Landroid/view/View;

    const v2, 0x7f0b00a0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 75
    iget-object v1, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mContentView:Landroid/view/View;

    const v2, 0x7f0b00a1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 76
    iget-object v1, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mContentView:Landroid/view/View;

    const v2, 0x7f0b00a2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 77
    iget-object v1, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mContentView:Landroid/view/View;

    const v2, 0x7f0b00a3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 78
    const/16 v0, 0x23a

    .line 79
    goto/16 :goto_0

    .line 81
    :pswitch_2
    iget-object v1, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object v1, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 83
    iget-object v1, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object v1, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mContentView:Landroid/view/View;

    const v2, 0x7f0b009f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 85
    iget-object v1, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mContentView:Landroid/view/View;

    const v2, 0x7f0b00a0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 86
    iget-object v1, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mContentView:Landroid/view/View;

    const v2, 0x7f0b00a1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 87
    iget-object v1, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mContentView:Landroid/view/View;

    const v2, 0x7f0b00a2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-object v1, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mContentView:Landroid/view/View;

    const v2, 0x7f0b00a3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 89
    const/16 v0, 0x23a

    .line 90
    goto/16 :goto_0

    .line 92
    :pswitch_3
    iget-object v1, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 93
    iget-object v1, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-object v1, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iget-object v1, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mContentView:Landroid/view/View;

    const v2, 0x7f0b009f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 96
    iget-object v1, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mContentView:Landroid/view/View;

    const v2, 0x7f0b00a0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 97
    iget-object v1, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mContentView:Landroid/view/View;

    const v2, 0x7f0b00a1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 98
    iget-object v1, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mContentView:Landroid/view/View;

    const v2, 0x7f0b00a2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object v1, p0, Lcom/asus/reader/ui/SelectionMenuBarWindow;->mContentView:Landroid/view/View;

    const v2, 0x7f0b00a3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 100
    const/16 v0, 0x1db

    goto/16 :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

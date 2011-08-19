.class public Lcom/layar/ui/navigationbar/NavigationBar;
.super Landroid/widget/LinearLayout;
.source "NavigationBar.java"

# interfaces
.implements Lcom/layar/ui/popupmenu/PopupButton$PopupMenuHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/ui/navigationbar/NavigationBar$NavigationBarHandler;,
        Lcom/layar/ui/navigationbar/NavigationBar$ToolbarButton;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field private static final UNSELECTED:I = -0x1


# instance fields
.field private buttons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private currentlySelected:I

.field private hasTitle:Z

.field private mHandler:Lcom/layar/ui/navigationbar/NavigationBar$NavigationBarHandler;

.field private selectedBeforePopupClicked:I

.field private viewTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/layar/ui/navigationbar/NavigationBar;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/ui/navigationbar/NavigationBar;->TAG:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/layar/ui/navigationbar/NavigationBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput-boolean v2, p0, Lcom/layar/ui/navigationbar/NavigationBar;->hasTitle:Z

    .line 29
    iput v0, p0, Lcom/layar/ui/navigationbar/NavigationBar;->currentlySelected:I

    .line 30
    iput v0, p0, Lcom/layar/ui/navigationbar/NavigationBar;->selectedBeforePopupClicked:I

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/layar/ui/navigationbar/NavigationBar;->buttons:Ljava/util/HashMap;

    .line 54
    const v0, 0x7f0200c4

    invoke-virtual {p0, v0}, Lcom/layar/ui/navigationbar/NavigationBar;->setBackgroundResource(I)V

    .line 55
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/layar/ui/navigationbar/NavigationBar;->setGravity(I)V

    .line 57
    const/4 v0, 0x0

    const-string v1, "hasTitle"

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/layar/ui/navigationbar/NavigationBar;->hasTitle:Z

    .line 58
    invoke-direct {p0}, Lcom/layar/ui/navigationbar/NavigationBar;->_initBar()V

    .line 59
    return-void
.end method

.method private _initBar()V
    .locals 6

    .prologue
    .line 76
    iget-boolean v3, p0, Lcom/layar/ui/navigationbar/NavigationBar;->hasTitle:Z

    if-eqz v3, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/layar/ui/navigationbar/NavigationBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 78
    .local v0, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/layar/ui/navigationbar/NavigationBar;->viewTitle:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 79
    iget-object v3, p0, Lcom/layar/ui/navigationbar/NavigationBar;->viewTitle:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    move-object v2, v3

    .line 81
    .local v2, titleText:Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {p0}, Lcom/layar/ui/navigationbar/NavigationBar;->removeAllViews()V

    .line 82
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/layar/ui/navigationbar/NavigationBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/layar/ui/navigationbar/NavigationBar;->viewTitle:Landroid/widget/TextView;

    .line 83
    iget-object v3, p0, Lcom/layar/ui/navigationbar/NavigationBar;->viewTitle:Landroid/widget/TextView;

    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setId(I)V

    .line 84
    iget-object v3, p0, Lcom/layar/ui/navigationbar/NavigationBar;->viewTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v3, p0, Lcom/layar/ui/navigationbar/NavigationBar;->viewTitle:Landroid/widget/TextView;

    const/high16 v4, 0x4190

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 86
    iget-object v3, p0, Lcom/layar/ui/navigationbar/NavigationBar;->viewTitle:Landroid/widget/TextView;

    sget-object v4, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 87
    iget-object v3, p0, Lcom/layar/ui/navigationbar/NavigationBar;->viewTitle:Landroid/widget/TextView;

    .line 88
    invoke-virtual {p0}, Lcom/layar/ui/navigationbar/NavigationBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 87
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 90
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v3, 0x3f80

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 91
    iget-object v3, p0, Lcom/layar/ui/navigationbar/NavigationBar;->viewTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object v3, p0, Lcom/layar/ui/navigationbar/NavigationBar;->viewTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/layar/ui/navigationbar/NavigationBar;->addView(Landroid/view/View;)V

    .line 94
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v2           #titleText:Ljava/lang/CharSequence;
    :cond_0
    return-void

    .line 80
    .restart local v0       #context:Landroid/content/Context;
    :cond_1
    const v3, 0x7f09000e

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v2, v3

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/layar/ui/navigationbar/NavigationBar;)Lcom/layar/ui/navigationbar/NavigationBar$NavigationBarHandler;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/layar/ui/navigationbar/NavigationBar;->mHandler:Lcom/layar/ui/navigationbar/NavigationBar$NavigationBarHandler;

    return-object v0
.end method

.method private setSelected(IZ)V
    .locals 2
    .parameter "id"
    .parameter "selected"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/layar/ui/navigationbar/NavigationBar;->buttons:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 161
    return-void
.end method


# virtual methods
.method public addButton(III)V
    .locals 1
    .parameter "id"
    .parameter "iconRes"
    .parameter "labelRes"

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/layar/ui/navigationbar/NavigationBar;->addButton(IIIZ)V

    .line 120
    return-void
.end method

.method public addButton(IIIZ)V
    .locals 5
    .parameter "id"
    .parameter "iconRes"
    .parameter "labelRes"
    .parameter "isDefault"

    .prologue
    .line 123
    iget-object v2, p0, Lcom/layar/ui/navigationbar/NavigationBar;->mHandler:Lcom/layar/ui/navigationbar/NavigationBar$NavigationBarHandler;

    if-nez v2, :cond_0

    .line 124
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 125
    const-string v3, "Can\'t add button to navigation bar without NavigationBarHandler setted!"

    .line 124
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 126
    :cond_0
    new-instance v0, Lcom/layar/ui/navigationbar/NavigationBarButton;

    invoke-virtual {p0}, Lcom/layar/ui/navigationbar/NavigationBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p2, p3}, Lcom/layar/ui/navigationbar/NavigationBarButton;-><init>(Landroid/content/Context;II)V

    .line 127
    .local v0, button:Lcom/layar/ui/navigationbar/NavigationBarButton;
    iput p1, p0, Lcom/layar/ui/navigationbar/NavigationBar;->currentlySelected:I

    .line 128
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 129
    const/4 v2, 0x0

    const/4 v3, -0x2

    const/high16 v4, 0x3f80

    .line 128
    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 130
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x1

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 131
    const/4 v2, 0x2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 132
    invoke-virtual {v0, v1}, Lcom/layar/ui/navigationbar/NavigationBarButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    new-instance v2, Lcom/layar/ui/navigationbar/NavigationBar$1;

    invoke-direct {v2, p0, p1}, Lcom/layar/ui/navigationbar/NavigationBar$1;-><init>(Lcom/layar/ui/navigationbar/NavigationBar;I)V

    invoke-virtual {v0, v2}, Lcom/layar/ui/navigationbar/NavigationBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    invoke-virtual {p0, v0}, Lcom/layar/ui/navigationbar/NavigationBar;->addView(Landroid/view/View;)V

    .line 140
    iget-object v2, p0, Lcom/layar/ui/navigationbar/NavigationBar;->buttons:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    return-void
.end method

.method public addMoreButton(I)V
    .locals 5
    .parameter "iconRes"

    .prologue
    .line 164
    iget-object v1, p0, Lcom/layar/ui/navigationbar/NavigationBar;->mHandler:Lcom/layar/ui/navigationbar/NavigationBar$NavigationBarHandler;

    if-nez v1, :cond_0

    .line 165
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 166
    const-string v2, "Can\'t add button to navigation bar without NavigationBarHandler setted!"

    .line 165
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_0
    new-instance v0, Lcom/layar/ui/popupmenu/PopupButton;

    invoke-virtual {p0}, Lcom/layar/ui/navigationbar/NavigationBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090026

    invoke-direct {v0, v1, p1, v2}, Lcom/layar/ui/popupmenu/PopupButton;-><init>(Landroid/content/Context;II)V

    .line 168
    .local v0, button:Lcom/layar/ui/popupmenu/PopupButton;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 169
    const/4 v2, 0x0

    const/4 v3, -0x2

    const/high16 v4, 0x3f80

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 168
    invoke-virtual {v0, v1}, Lcom/layar/ui/popupmenu/PopupButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    invoke-virtual {v0, p0}, Lcom/layar/ui/popupmenu/PopupButton;->setPopupMenuHandler(Lcom/layar/ui/popupmenu/PopupButton$PopupMenuHandler;)V

    .line 171
    invoke-virtual {p0, v0}, Lcom/layar/ui/navigationbar/NavigationBar;->addView(Landroid/view/View;)V

    .line 172
    return-void
.end method

.method public getNavigationBarHandler()Lcom/layar/ui/navigationbar/NavigationBar$NavigationBarHandler;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/layar/ui/navigationbar/NavigationBar;->mHandler:Lcom/layar/ui/navigationbar/NavigationBar$NavigationBarHandler;

    return-object v0
.end method

.method public getSelectedId()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/layar/ui/navigationbar/NavigationBar;->currentlySelected:I

    return v0
.end method

.method public onHidePopupMenu(Lcom/layar/ui/popupmenu/PopupButton;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 188
    iget v0, p0, Lcom/layar/ui/navigationbar/NavigationBar;->selectedBeforePopupClicked:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 189
    iget v0, p0, Lcom/layar/ui/navigationbar/NavigationBar;->selectedBeforePopupClicked:I

    invoke-virtual {p0, v0}, Lcom/layar/ui/navigationbar/NavigationBar;->setCurrentlySelected(I)V

    .line 191
    :cond_0
    return-void
.end method

.method public onPopupMenuClick(Lcom/layar/ui/popupmenu/PopupButton;I)V
    .locals 1
    .parameter "v"
    .parameter "id"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/layar/ui/navigationbar/NavigationBar;->mHandler:Lcom/layar/ui/navigationbar/NavigationBar$NavigationBarHandler;

    invoke-interface {v0, p0, p2}, Lcom/layar/ui/navigationbar/NavigationBar$NavigationBarHandler;->onNavigationBarPopupMenuClick(Lcom/layar/ui/navigationbar/NavigationBar;I)Z

    .line 177
    return-void
.end method

.method public preparePopupMenu(Lcom/layar/ui/popupmenu/PopupButton;Lcom/layar/ui/popupmenu/PopupMenu$Menu;)V
    .locals 1
    .parameter "v"
    .parameter "menu"

    .prologue
    .line 181
    iget v0, p0, Lcom/layar/ui/navigationbar/NavigationBar;->currentlySelected:I

    iput v0, p0, Lcom/layar/ui/navigationbar/NavigationBar;->selectedBeforePopupClicked:I

    .line 182
    iget-object v0, p0, Lcom/layar/ui/navigationbar/NavigationBar;->mHandler:Lcom/layar/ui/navigationbar/NavigationBar$NavigationBarHandler;

    invoke-interface {v0, p0, p2}, Lcom/layar/ui/navigationbar/NavigationBar$NavigationBarHandler;->onPrepareNavigationBarPopupMenu(Lcom/layar/ui/navigationbar/NavigationBar;Lcom/layar/ui/popupmenu/PopupMenu$Menu;)Z

    .line 183
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/layar/ui/navigationbar/NavigationBar;->setCurrentlySelected(I)V

    .line 184
    return-void
.end method

.method public setCurrentlySelected(I)V
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, -0x1

    .line 148
    iget v0, p0, Lcom/layar/ui/navigationbar/NavigationBar;->currentlySelected:I

    if-eq v0, v2, :cond_0

    .line 150
    iget v0, p0, Lcom/layar/ui/navigationbar/NavigationBar;->currentlySelected:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/layar/ui/navigationbar/NavigationBar;->setSelected(IZ)V

    .line 152
    :cond_0
    iput p1, p0, Lcom/layar/ui/navigationbar/NavigationBar;->currentlySelected:I

    .line 153
    if-eq p1, v2, :cond_1

    .line 155
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/layar/ui/navigationbar/NavigationBar;->setSelected(IZ)V

    .line 157
    :cond_1
    return-void
.end method

.method public setNavigationBarHandler(Lcom/layar/ui/navigationbar/NavigationBar$NavigationBarHandler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/layar/ui/navigationbar/NavigationBar;->mHandler:Lcom/layar/ui/navigationbar/NavigationBar$NavigationBarHandler;

    .line 67
    iget-object v0, p0, Lcom/layar/ui/navigationbar/NavigationBar;->mHandler:Lcom/layar/ui/navigationbar/NavigationBar$NavigationBarHandler;

    if-eqz v0, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/layar/ui/navigationbar/NavigationBar;->_initBar()V

    .line 69
    iget-object v0, p0, Lcom/layar/ui/navigationbar/NavigationBar;->mHandler:Lcom/layar/ui/navigationbar/NavigationBar$NavigationBarHandler;

    invoke-interface {v0, p0}, Lcom/layar/ui/navigationbar/NavigationBar$NavigationBarHandler;->onPrepareNavigationBar(Lcom/layar/ui/navigationbar/NavigationBar;)Z

    .line 71
    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "titleId"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/layar/ui/navigationbar/NavigationBar;->hasTitle:Z

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/layar/ui/navigationbar/NavigationBar;->viewTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 100
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/layar/ui/navigationbar/NavigationBar;->hasTitle:Z

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/layar/ui/navigationbar/NavigationBar;->viewTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/layar/ui/navigationbar/NavigationBar;->hasTitle:Z

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/layar/ui/navigationbar/NavigationBar;->viewTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :cond_0
    return-void
.end method

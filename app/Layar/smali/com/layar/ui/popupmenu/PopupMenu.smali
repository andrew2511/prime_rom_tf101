.class public Lcom/layar/ui/popupmenu/PopupMenu;
.super Landroid/app/Dialog;
.source "PopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/ui/popupmenu/PopupMenu$Menu;,
        Lcom/layar/ui/popupmenu/PopupMenu$PopupMenuClickListener;,
        Lcom/layar/ui/popupmenu/PopupMenu$PopupMenuStateListener;
    }
.end annotation


# static fields
.field private static final MENU_ICON_SIZE:I


# instance fields
.field private mClickListener:Lcom/layar/ui/popupmenu/PopupMenu$PopupMenuClickListener;

.field private mStateListener:Lcom/layar/ui/popupmenu/PopupMenu$PopupMenuStateListener;

.field private final mTextColor:Landroid/content/res/ColorStateList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 80
    const/high16 v0, 0x4200

    sget v1, Lcom/layar/App;->DENSITY:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/layar/ui/popupmenu/PopupMenu;->MENU_ICON_SIZE:I

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/layar/ui/popupmenu/PopupMenu$Menu;I)V
    .locals 9
    .parameter "context"
    .parameter "menu"
    .parameter "y"

    .prologue
    const/4 v8, -0x2

    .line 87
    const v6, 0x1030011

    invoke-direct {p0, p1, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 89
    const v7, 0x7f080022

    .line 88
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Lcom/layar/ui/popupmenu/PopupMenu;->mTextColor:Landroid/content/res/ColorStateList;

    .line 91
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 92
    .local v5, viewNew:Landroid/widget/LinearLayout;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 93
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 95
    invoke-direct {v6, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 93
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    invoke-direct {p0, p1}, Lcom/layar/ui/popupmenu/PopupMenu;->_createContentView(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 97
    .local v4, viewContent:Landroid/widget/LinearLayout;
    invoke-direct {p0, p1}, Lcom/layar/ui/popupmenu/PopupMenu;->_createBottomView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v3

    .line 99
    .local v3, viewBottom:Landroid/view/View;
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 100
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 101
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {p2}, Lcom/layar/ui/popupmenu/PopupMenu$Menu;->access$0(Lcom/layar/ui/popupmenu/PopupMenu$Menu;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v0, v6, :cond_0

    .line 109
    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/layar/ui/popupmenu/PopupMenu;->_getStatusBarHeight(Landroid/content/Context;)I

    move-result v7

    sub-int v7, p3, v7

    invoke-direct {p0, v5, v6, v7}, Lcom/layar/ui/popupmenu/PopupMenu;->_applyParams(Landroid/view/View;II)V

    .line 110
    return-void

    .line 102
    :cond_0
    invoke-static {p2}, Lcom/layar/ui/popupmenu/PopupMenu$Menu;->access$0(Lcom/layar/ui/popupmenu/PopupMenu$Menu;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layar/ui/popupmenu/PopupMenu$Menu;

    .line 103
    .local v1, menuItem:Lcom/layar/ui/popupmenu/PopupMenu$Menu;
    invoke-direct {p0, p1, v1}, Lcom/layar/ui/popupmenu/PopupMenu;->_createMenuRow(Landroid/content/Context;Lcom/layar/ui/popupmenu/PopupMenu$Menu;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 104
    .local v2, v:Landroid/view/View;
    if-nez v0, :cond_1

    const v6, 0x7f0200e2

    :goto_1
    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 106
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_1
    const v6, 0x7f0200e6

    goto :goto_1
.end method

.method private _applyParams(Landroid/view/View;II)V
    .locals 2
    .parameter "v"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x1

    .line 126
    invoke-virtual {p0, p1}, Lcom/layar/ui/popupmenu/PopupMenu;->setContentView(Landroid/view/View;)V

    .line 127
    invoke-virtual {p0, v1}, Lcom/layar/ui/popupmenu/PopupMenu;->setCanceledOnTouchOutside(Z)V

    .line 128
    invoke-virtual {p0, v1}, Lcom/layar/ui/popupmenu/PopupMenu;->setCancelable(Z)V

    .line 129
    invoke-virtual {p0}, Lcom/layar/ui/popupmenu/PopupMenu;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 130
    .local v0, mParams:Landroid/view/WindowManager$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 131
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 132
    const v1, 0x40220

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 135
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 136
    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 137
    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 138
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 139
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 140
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 141
    invoke-virtual {p0}, Lcom/layar/ui/popupmenu/PopupMenu;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 142
    return-void
.end method

.method private _createBottomView(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, -0x1

    .line 163
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 164
    .local v0, viewBottom:Landroid/view/View;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 165
    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 164
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 167
    new-instance v1, Lcom/layar/ui/popupmenu/PopupMenu$1;

    invoke-direct {v1, p0}, Lcom/layar/ui/popupmenu/PopupMenu$1;-><init>(Lcom/layar/ui/popupmenu/PopupMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 174
    return-object v0
.end method

.method private _createContentView(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 4
    .parameter "context"

    .prologue
    .line 155
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 156
    .local v0, viewContent:Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 157
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 158
    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 157
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    return-object v0
.end method

.method private _createMenuRow(Landroid/content/Context;Lcom/layar/ui/popupmenu/PopupMenu$Menu;)Landroid/widget/LinearLayout;
    .locals 11
    .parameter "context"
    .parameter "menu"

    .prologue
    const/high16 v10, 0x40a0

    const/4 v9, 0x1

    const/4 v8, -0x2

    .line 178
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 179
    .local v3, result:Landroid/widget/LinearLayout;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 180
    const/4 v7, -0x1

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 179
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    const v6, 0x1080062

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 182
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 183
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 184
    .local v0, icon:Landroid/widget/ImageView;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 185
    sget v6, Lcom/layar/ui/popupmenu/PopupMenu;->MENU_ICON_SIZE:I

    sget v7, Lcom/layar/ui/popupmenu/PopupMenu;->MENU_ICON_SIZE:I

    .line 184
    invoke-direct {v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 186
    .local v1, iconParams:Landroid/widget/LinearLayout$LayoutParams;
    sget v6, Lcom/layar/App;->DENSITY:F

    mul-float/2addr v6, v10

    float-to-int v6, v6

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 187
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 189
    invoke-virtual {p2, v0}, Lcom/layar/ui/popupmenu/PopupMenu$Menu;->assingIcon(Landroid/widget/ImageView;)V

    .line 190
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 191
    .local v4, text:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/layar/ui/popupmenu/PopupMenu;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 192
    invoke-static {p2}, Lcom/layar/ui/popupmenu/PopupMenu$Menu;->access$1(Lcom/layar/ui/popupmenu/PopupMenu$Menu;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v6, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 194
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 197
    .local v5, textParams:Landroid/widget/LinearLayout$LayoutParams;
    sget v6, Lcom/layar/App;->DENSITY:F

    mul-float/2addr v6, v10

    float-to-int v2, v6

    .line 198
    .local v2, padding:I
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 199
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 202
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 203
    const/16 v6, 0x10

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 204
    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 205
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 206
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 208
    new-instance v6, Lcom/layar/ui/popupmenu/PopupMenu$2;

    invoke-direct {v6, p0}, Lcom/layar/ui/popupmenu/PopupMenu$2;-><init>(Lcom/layar/ui/popupmenu/PopupMenu;)V

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 217
    new-instance v6, Lcom/layar/ui/popupmenu/PopupMenu$3;

    invoke-direct {v6, p0, p2}, Lcom/layar/ui/popupmenu/PopupMenu$3;-><init>(Lcom/layar/ui/popupmenu/PopupMenu;Lcom/layar/ui/popupmenu/PopupMenu$Menu;)V

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    return-object v3
.end method

.method private _getStatusBarHeight(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 121
    const v2, 0x1080084

    .line 120
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 122
    .local v0, phoneCallIcon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    return v1
.end method

.method static synthetic access$0(Lcom/layar/ui/popupmenu/PopupMenu;)Lcom/layar/ui/popupmenu/PopupMenu$PopupMenuClickListener;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/layar/ui/popupmenu/PopupMenu;->mClickListener:Lcom/layar/ui/popupmenu/PopupMenu$PopupMenuClickListener;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/layar/ui/popupmenu/PopupMenu;->mStateListener:Lcom/layar/ui/popupmenu/PopupMenu$PopupMenuStateListener;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/layar/ui/popupmenu/PopupMenu;->mStateListener:Lcom/layar/ui/popupmenu/PopupMenu$PopupMenuStateListener;

    invoke-interface {v0}, Lcom/layar/ui/popupmenu/PopupMenu$PopupMenuStateListener;->onPopupMenuHide()V

    .line 116
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->cancel()V

    .line 117
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 147
    iget-object v0, p0, Lcom/layar/ui/popupmenu/PopupMenu;->mStateListener:Lcom/layar/ui/popupmenu/PopupMenu$PopupMenuStateListener;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/layar/ui/popupmenu/PopupMenu;->mStateListener:Lcom/layar/ui/popupmenu/PopupMenu$PopupMenuStateListener;

    invoke-interface {v0, p1}, Lcom/layar/ui/popupmenu/PopupMenu$PopupMenuStateListener;->onPopupMenuOutClick(Landroid/view/MotionEvent;)V

    .line 149
    :cond_0
    const/4 v0, 0x1

    .line 151
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getClickListener()Lcom/layar/ui/popupmenu/PopupMenu$PopupMenuClickListener;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/layar/ui/popupmenu/PopupMenu;->mClickListener:Lcom/layar/ui/popupmenu/PopupMenu$PopupMenuClickListener;

    return-object v0
.end method

.method public getStateListener()Lcom/layar/ui/popupmenu/PopupMenu$PopupMenuStateListener;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/layar/ui/popupmenu/PopupMenu;->mStateListener:Lcom/layar/ui/popupmenu/PopupMenu$PopupMenuStateListener;

    return-object v0
.end method

.method public setClickListener(Lcom/layar/ui/popupmenu/PopupMenu$PopupMenuClickListener;)V
    .locals 0
    .parameter "clickListener"

    .prologue
    .line 239
    iput-object p1, p0, Lcom/layar/ui/popupmenu/PopupMenu;->mClickListener:Lcom/layar/ui/popupmenu/PopupMenu$PopupMenuClickListener;

    .line 240
    return-void
.end method

.method public setStateListener(Lcom/layar/ui/popupmenu/PopupMenu$PopupMenuStateListener;)V
    .locals 0
    .parameter "stateListener"

    .prologue
    .line 232
    iput-object p1, p0, Lcom/layar/ui/popupmenu/PopupMenu;->mStateListener:Lcom/layar/ui/popupmenu/PopupMenu$PopupMenuStateListener;

    .line 233
    return-void
.end method

.class public final Lcom/ecareme/pixwe/media/PopupMenu;
.super Lcom/ecareme/pixwe/media/Layer;
.source "PopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecareme/pixwe/media/PopupMenu$Listener;,
        Lcom/ecareme/pixwe/media/PopupMenu$Option;,
        Lcom/ecareme/pixwe/media/PopupMenu$PopupTexture;
    }
.end annotation


# static fields
.field private static final ICON_TITLE_CONFIG:Lcom/ecareme/pixwe/media/IconTitleDrawable$Config; = null

.field private static final ICON_TITLE_MIN_WIDTH:I = 0x64

.field private static final PADDING_BOTTOM:I = 0x28

.field private static final PADDING_LEFT:I = 0xf

.field private static final PADDING_RIGHT:I = 0xf

.field private static final PADDING_TOP:I = 0xd

.field private static final POPUP_TRIANGLE_EXTRA_HEIGHT:I = 0xe

.field private static final POPUP_TRIANGLE_X_MARGIN:I = 0x10

.field private static final POPUP_Y_OFFSET:I = 0x14

.field private static final SRC_PAINT:Landroid/graphics/Paint;


# instance fields
.field private mListener:Lcom/ecareme/pixwe/media/PopupMenu$Listener;

.field private mNeedsLayout:Z

.field private mOptions:[Lcom/ecareme/pixwe/media/PopupMenu$Option;

.field private mPopupTexture:Lcom/ecareme/pixwe/media/PopupMenu$PopupTexture;

.field private mRowHeight:I

.field private mSelectedItem:I

.field private mShow:Z

.field private final mShowAnim:Lcom/ecareme/pixwe/media/FloatAnim;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 43
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/ecareme/pixwe/media/PopupMenu;->SRC_PAINT:Landroid/graphics/Paint;

    .line 61
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 62
    .local v0, paint:Landroid/text/TextPaint;
    const/high16 v1, 0x4188

    sget v2, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 63
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 64
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 65
    new-instance v1, Lcom/ecareme/pixwe/media/IconTitleDrawable$Config;

    const/high16 v2, 0x4234

    sget v3, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/high16 v3, 0x4208

    sget v4, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3, v0}, Lcom/ecareme/pixwe/media/IconTitleDrawable$Config;-><init>(IILandroid/text/TextPaint;)V

    sput-object v1, Lcom/ecareme/pixwe/media/PopupMenu;->ICON_TITLE_CONFIG:Lcom/ecareme/pixwe/media/IconTitleDrawable$Config;

    .line 67
    sget-object v1, Lcom/ecareme/pixwe/media/PopupMenu;->SRC_PAINT:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/Layer;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mListener:Lcom/ecareme/pixwe/media/PopupMenu$Listener;

    .line 53
    new-array v0, v1, [Lcom/ecareme/pixwe/media/PopupMenu$Option;

    iput-object v0, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mOptions:[Lcom/ecareme/pixwe/media/PopupMenu$Option;

    .line 54
    iput-boolean v1, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mNeedsLayout:Z

    .line 55
    iput-boolean v1, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mShow:Z

    .line 56
    new-instance v0, Lcom/ecareme/pixwe/media/FloatAnim;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/FloatAnim;-><init>(F)V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mShowAnim:Lcom/ecareme/pixwe/media/FloatAnim;

    .line 57
    const/16 v0, 0x24

    iput v0, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mRowHeight:I

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mSelectedItem:I

    .line 71
    new-instance v0, Lcom/ecareme/pixwe/media/PopupMenu$PopupTexture;

    invoke-direct {v0, p0, p1}, Lcom/ecareme/pixwe/media/PopupMenu$PopupTexture;-><init>(Lcom/ecareme/pixwe/media/PopupMenu;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mPopupTexture:Lcom/ecareme/pixwe/media/PopupMenu$PopupTexture;

    .line 72
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/media/PopupMenu;->setHidden(Z)V

    .line 73
    return-void
.end method

.method static synthetic access$0()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/ecareme/pixwe/media/PopupMenu;->SRC_PAINT:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ecareme/pixwe/media/PopupMenu;)[Lcom/ecareme/pixwe/media/PopupMenu$Option;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mOptions:[Lcom/ecareme/pixwe/media/PopupMenu$Option;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ecareme/pixwe/media/PopupMenu;)I
    .locals 1
    .parameter

    .prologue
    .line 58
    iget v0, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mSelectedItem:I

    return v0
.end method

.method private hitTestOptions(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 256
    iget-object v2, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mOptions:[Lcom/ecareme/pixwe/media/PopupMenu$Option;

    .line 257
    .local v2, options:[Lcom/ecareme/pixwe/media/PopupMenu$Option;
    array-length v1, v2

    .line 258
    .local v1, numOptions:I
    int-to-float v3, p1

    iget v4, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mX:F

    sub-float/2addr v3, v4

    float-to-int p1, v3

    .line 259
    int-to-float v3, p2

    iget v4, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mY:F

    sub-float/2addr v3, v4

    float-to-int p2, v3

    .line 260
    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    int-to-float v3, p1

    iget v4, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mWidth:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    if-ltz p2, :cond_0

    .line 261
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ne v0, v1, :cond_1

    .line 267
    .end local v0           #i:I
    :cond_0
    const/4 v3, -0x1

    :goto_1
    return v3

    .line 262
    .restart local v0       #i:I
    :cond_1
    aget-object v3, v2, v0

    invoke-static {v3}, Lcom/ecareme/pixwe/media/PopupMenu$Option;->access$6(Lcom/ecareme/pixwe/media/PopupMenu$Option;)I

    move-result v3

    if-ge p2, v3, :cond_2

    move v3, v0

    .line 263
    goto :goto_1

    .line 261
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private layout()V
    .locals 15

    .prologue
    const/high16 v14, 0x4170

    .line 218
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mNeedsLayout:Z

    .line 221
    iget-object v6, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mOptions:[Lcom/ecareme/pixwe/media/PopupMenu$Option;

    .line 222
    .local v6, options:[Lcom/ecareme/pixwe/media/PopupMenu$Option;
    array-length v4, v6

    .line 223
    .local v4, numOptions:I
    const/high16 v11, 0x42c8

    sget v12, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v11, v12

    float-to-int v3, v11

    .line 224
    .local v3, maxWidth:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ne v1, v4, :cond_0

    .line 238
    iget v11, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mRowHeight:I

    int-to-float v11, v11

    sget v12, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v11, v12

    float-to-int v8, v11

    .line 239
    .local v8, rowHeight:I
    sget v11, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v11, v14

    float-to-int v2, v11

    .line 240
    .local v2, left:I
    const/high16 v11, 0x4150

    sget v12, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v11, v12

    float-to-int v9, v11

    .line 241
    .local v9, top:I
    add-int v7, v2, v3

    .line 242
    .local v7, right:I
    const/4 v1, 0x0

    :goto_1
    if-ne v1, v4, :cond_3

    .line 251
    int-to-float v11, v7

    sget v12, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v12, v14

    add-float/2addr v11, v12

    int-to-float v12, v9

    const/high16 v13, 0x4220

    sget v14, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    invoke-virtual {p0, v11, v12}, Lcom/ecareme/pixwe/media/PopupMenu;->setSize(FF)V

    .line 253
    return-void

    .line 225
    .end local v2           #left:I
    .end local v7           #right:I
    .end local v8           #rowHeight:I
    .end local v9           #top:I
    :cond_0
    aget-object v5, v6, v1

    .line 226
    .local v5, option:Lcom/ecareme/pixwe/media/PopupMenu$Option;
    invoke-static {v5}, Lcom/ecareme/pixwe/media/PopupMenu$Option;->access$0(Lcom/ecareme/pixwe/media/PopupMenu$Option;)Lcom/ecareme/pixwe/media/IconTitleDrawable;

    move-result-object v0

    .line 227
    .local v0, drawable:Lcom/ecareme/pixwe/media/IconTitleDrawable;
    if-nez v0, :cond_1

    .line 228
    new-instance v0, Lcom/ecareme/pixwe/media/IconTitleDrawable;

    .end local v0           #drawable:Lcom/ecareme/pixwe/media/IconTitleDrawable;
    invoke-static {v5}, Lcom/ecareme/pixwe/media/PopupMenu$Option;->access$2(Lcom/ecareme/pixwe/media/PopupMenu$Option;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v5}, Lcom/ecareme/pixwe/media/PopupMenu$Option;->access$3(Lcom/ecareme/pixwe/media/PopupMenu$Option;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    sget-object v13, Lcom/ecareme/pixwe/media/PopupMenu;->ICON_TITLE_CONFIG:Lcom/ecareme/pixwe/media/IconTitleDrawable$Config;

    invoke-direct {v0, v11, v12, v13}, Lcom/ecareme/pixwe/media/IconTitleDrawable;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/ecareme/pixwe/media/IconTitleDrawable$Config;)V

    .line 229
    .restart local v0       #drawable:Lcom/ecareme/pixwe/media/IconTitleDrawable;
    invoke-static {v5, v0}, Lcom/ecareme/pixwe/media/PopupMenu$Option;->access$4(Lcom/ecareme/pixwe/media/PopupMenu$Option;Lcom/ecareme/pixwe/media/IconTitleDrawable;)V

    .line 231
    :cond_1
    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/IconTitleDrawable;->getIntrinsicWidth()I

    move-result v10

    .line 232
    .local v10, width:I
    if-le v10, v3, :cond_2

    .line 233
    move v3, v10

    .line 224
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    .end local v0           #drawable:Lcom/ecareme/pixwe/media/IconTitleDrawable;
    .end local v5           #option:Lcom/ecareme/pixwe/media/PopupMenu$Option;
    .end local v10           #width:I
    .restart local v2       #left:I
    .restart local v7       #right:I
    .restart local v8       #rowHeight:I
    .restart local v9       #top:I
    :cond_3
    aget-object v5, v6, v1

    .line 244
    .restart local v5       #option:Lcom/ecareme/pixwe/media/PopupMenu$Option;
    invoke-static {v5}, Lcom/ecareme/pixwe/media/PopupMenu$Option;->access$0(Lcom/ecareme/pixwe/media/PopupMenu$Option;)Lcom/ecareme/pixwe/media/IconTitleDrawable;

    move-result-object v0

    .line 245
    .restart local v0       #drawable:Lcom/ecareme/pixwe/media/IconTitleDrawable;
    add-int v11, v9, v8

    invoke-static {v5, v11}, Lcom/ecareme/pixwe/media/PopupMenu$Option;->access$5(Lcom/ecareme/pixwe/media/PopupMenu$Option;I)V

    .line 246
    invoke-static {v5}, Lcom/ecareme/pixwe/media/PopupMenu$Option;->access$6(Lcom/ecareme/pixwe/media/PopupMenu$Option;)I

    move-result v11

    invoke-virtual {v0, v2, v9, v7, v11}, Lcom/ecareme/pixwe/media/IconTitleDrawable;->setBounds(IIII)V

    .line 247
    add-int/2addr v9, v8

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private setSelectedItem(I)V
    .locals 1
    .parameter "hit"

    .prologue
    .line 168
    iget v0, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mSelectedItem:I

    if-eq v0, p1, :cond_0

    .line 169
    iput p1, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mSelectedItem:I

    .line 170
    iget-object v0, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mPopupTexture:Lcom/ecareme/pixwe/media/PopupMenu$PopupTexture;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/PopupMenu$PopupTexture;->setNeedsDraw()V

    .line 171
    iget-object v0, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mListener:Lcom/ecareme/pixwe/media/PopupMenu$Listener;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mListener:Lcom/ecareme/pixwe/media/PopupMenu$Listener;

    invoke-interface {v0, p0, p1}, Lcom/ecareme/pixwe/media/PopupMenu$Listener;->onSelectionChanged(Lcom/ecareme/pixwe/media/PopupMenu;I)V

    .line 175
    :cond_0
    return-void
.end method


# virtual methods
.method public close(Z)V
    .locals 5
    .parameter "fadeOut"

    .prologue
    const/4 v4, 0x0

    .line 114
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mShow:Z

    if-eqz v0, :cond_0

    .line 115
    if-eqz p1, :cond_1

    .line 116
    iget-object v0, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mShowAnim:Lcom/ecareme/pixwe/media/FloatAnim;

    const v1, 0x3e99999a

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/ecareme/pixwe/media/FloatAnim;->animateValue(FFJ)V

    .line 120
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mShow:Z

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mSelectedItem:I

    .line 124
    :cond_0
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mShowAnim:Lcom/ecareme/pixwe/media/FloatAnim;

    invoke-virtual {v0, v4}, Lcom/ecareme/pixwe/media/FloatAnim;->setValue(F)V

    goto :goto_0
.end method

.method public generate(Lcom/ecareme/pixwe/media/RenderView;Lcom/ecareme/pixwe/media/RenderView$Lists;)V
    .locals 1
    .parameter "view"
    .parameter "lists"

    .prologue
    .line 128
    iget-object v0, p2, Lcom/ecareme/pixwe/media/RenderView$Lists;->blendedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v0, p2, Lcom/ecareme/pixwe/media/RenderView$Lists;->hitTestList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, p2, Lcom/ecareme/pixwe/media/RenderView$Lists;->systemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v0, p2, Lcom/ecareme/pixwe/media/RenderView$Lists;->updateList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    return-void
.end method

.method protected onSizeChanged()V
    .locals 3

    .prologue
    .line 136
    invoke-super {p0}, Lcom/ecareme/pixwe/media/Layer;->onSizeChanged()V

    .line 137
    iget-object v0, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mPopupTexture:Lcom/ecareme/pixwe/media/PopupMenu$PopupTexture;

    iget v1, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mWidth:F

    float-to-int v1, v1

    iget v2, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mHeight:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/PopupMenu$PopupTexture;->setSize(II)V

    .line 138
    return-void
.end method

.method protected onSurfaceCreated(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 1
    .parameter "view"
    .parameter "gl"

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/media/PopupMenu;->close(Z)V

    .line 143
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, -0x1

    .line 147
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/ecareme/pixwe/media/PopupMenu;->hitTestOptions(II)I

    move-result v0

    .line 148
    .local v0, hit:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 164
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 151
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/ecareme/pixwe/media/PopupMenu;->setSelectedItem(I)V

    goto :goto_0

    .line 154
    :pswitch_1
    if-eq v0, v3, :cond_0

    iget v1, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mSelectedItem:I

    if-ne v1, v0, :cond_0

    .line 155
    iget-object v1, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mOptions:[Lcom/ecareme/pixwe/media/PopupMenu$Option;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/ecareme/pixwe/media/PopupMenu$Option;->access$1(Lcom/ecareme/pixwe/media/PopupMenu$Option;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 156
    iget-object v1, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mListener:Lcom/ecareme/pixwe/media/PopupMenu$Listener;

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mListener:Lcom/ecareme/pixwe/media/PopupMenu$Listener;

    invoke-interface {v1, p0, v0}, Lcom/ecareme/pixwe/media/PopupMenu$Listener;->onSelectionClicked(Lcom/ecareme/pixwe/media/PopupMenu;I)V

    .line 161
    :cond_0
    :pswitch_2
    invoke-direct {p0, v3}, Lcom/ecareme/pixwe/media/PopupMenu;->setSelectedItem(I)V

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public renderBlended(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 13
    .parameter "view"
    .parameter "gl"

    .prologue
    const/high16 v3, 0x3f80

    .line 185
    iget-object v0, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mShowAnim:Lcom/ecareme/pixwe/media/FloatAnim;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/FloatAnim;->getValue(J)F

    move-result v7

    .line 186
    .local v7, showRatio:F
    iget-boolean v9, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mShow:Z

    .line 187
    .local v9, show:Z
    const v0, 0x3b449ba6

    cmpg-float v0, v7, v0

    if-gez v0, :cond_0

    if-nez v9, :cond_0

    .line 188
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/media/PopupMenu;->setHidden(Z)V

    .line 192
    :cond_0
    iget v0, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mX:F

    float-to-int v11, v0

    .line 193
    .local v11, x:I
    iget v0, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mY:F

    float-to-int v12, v0

    .line 194
    .local v12, y:I
    if-eqz v9, :cond_3

    cmpg-float v0, v7, v3

    if-gez v0, :cond_3

    .line 197
    const v10, 0x3f333333

    .line 198
    .local v10, split:F
    cmpg-float v0, v7, v10

    if-gez v0, :cond_2

    .line 199
    const v0, 0x3f4ccccd

    const v1, 0x3e99999a

    mul-float/2addr v1, v7

    div-float/2addr v1, v10

    add-float v8, v0, v1

    .line 203
    .local v8, scale:F
    :goto_0
    iget-object v0, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mPopupTexture:Lcom/ecareme/pixwe/media/PopupMenu$PopupTexture;

    int-to-float v3, v11

    int-to-float v4, v12

    const/high16 v5, 0x3f00

    const v6, 0x3f266666

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v8}, Lcom/ecareme/pixwe/media/PopupMenu$PopupTexture;->drawWithEffect(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;FFFFFF)V

    .line 214
    .end local v8           #scale:F
    .end local v10           #split:F
    :cond_1
    :goto_1
    return-void

    .line 201
    .restart local v10       #split:F
    :cond_2
    sub-float v0, v3, v7

    sub-float v1, v3, v10

    div-float/2addr v0, v1

    const v1, 0x3dcccccd

    mul-float/2addr v0, v1

    add-float v8, v3, v0

    .restart local v8       #scale:F
    goto :goto_0

    .line 205
    .end local v8           #scale:F
    .end local v10           #split:F
    :cond_3
    cmpg-float v0, v7, v3

    if-gez v0, :cond_4

    .line 206
    invoke-virtual {p1, v7}, Lcom/ecareme/pixwe/media/RenderView;->setAlpha(F)V

    .line 208
    :cond_4
    iget-object v0, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mPopupTexture:Lcom/ecareme/pixwe/media/PopupMenu$PopupTexture;

    invoke-virtual {v0, p1, p2, v11, v12}, Lcom/ecareme/pixwe/media/PopupMenu$PopupTexture;->draw(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;II)V

    .line 209
    cmpg-float v0, v7, v3

    if-gez v0, :cond_1

    .line 210
    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/RenderView;->resetColor()V

    goto :goto_1
.end method

.method public setListener(Lcom/ecareme/pixwe/media/PopupMenu$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mListener:Lcom/ecareme/pixwe/media/PopupMenu$Listener;

    .line 77
    return-void
.end method

.method public setOptions([Lcom/ecareme/pixwe/media/PopupMenu$Option;)V
    .locals 1
    .parameter "options"

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/media/PopupMenu;->close(Z)V

    .line 81
    iput-object p1, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mOptions:[Lcom/ecareme/pixwe/media/PopupMenu$Option;

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mNeedsLayout:Z

    .line 83
    return-void
.end method

.method public showAtPoint(IIII)V
    .locals 12
    .parameter "pointX"
    .parameter "pointY"
    .parameter "outerWidth"
    .parameter "outerHeight"

    .prologue
    .line 87
    iget-boolean v7, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mNeedsLayout:Z

    if-eqz v7, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/PopupMenu;->layout()V

    .line 91
    :cond_0
    iget v7, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mWidth:F

    float-to-int v3, v7

    .line 92
    .local v3, width:I
    iget v7, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mHeight:F

    float-to-int v1, v7

    .line 93
    .local v1, height:I
    div-int/lit8 v4, v3, 0x2

    .line 94
    .local v4, widthOver2:I
    sub-int v5, p1, v4

    .line 95
    .local v5, x:I
    add-int/lit8 v7, p2, 0x14

    sub-int v6, v7, v1

    .line 96
    .local v6, y:I
    const/4 v7, 0x0

    sub-int v8, p3, v3

    invoke-static {v5, v7, v8}, Lcom/ecareme/pixwe/media/Shared;->clamp(III)I

    move-result v0

    .line 97
    .local v0, clampedX:I
    iget-object v7, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mPopupTexture:Lcom/ecareme/pixwe/media/PopupMenu$PopupTexture;

    invoke-static {v7}, Lcom/ecareme/pixwe/media/PopupMenu$PopupTexture;->access$0(Lcom/ecareme/pixwe/media/PopupMenu$PopupTexture;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v2, v7, 0x2

    .line 98
    .local v2, triangleWidthOver2:I
    iget-object v7, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mPopupTexture:Lcom/ecareme/pixwe/media/PopupMenu$PopupTexture;

    sub-int v8, v5, v0

    add-int/2addr v8, v4

    sub-int/2addr v8, v2

    const/16 v9, 0x10

    .line 99
    const/16 v10, 0x20

    sub-int v10, v3, v10

    .line 98
    invoke-static {v8, v9, v10}, Lcom/ecareme/pixwe/media/Shared;->clamp(III)I

    move-result v8

    invoke-static {v7, v8}, Lcom/ecareme/pixwe/media/PopupMenu$PopupTexture;->access$1(Lcom/ecareme/pixwe/media/PopupMenu$PopupTexture;I)V

    .line 100
    iget-object v7, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mPopupTexture:Lcom/ecareme/pixwe/media/PopupMenu$PopupTexture;

    invoke-virtual {v7}, Lcom/ecareme/pixwe/media/PopupMenu$PopupTexture;->setNeedsDraw()V

    .line 101
    int-to-float v7, v0

    int-to-float v8, v6

    invoke-virtual {p0, v7, v8}, Lcom/ecareme/pixwe/media/PopupMenu;->setPosition(FF)V

    .line 106
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mShow:Z

    .line 107
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/ecareme/pixwe/media/PopupMenu;->setHidden(Z)V

    .line 108
    iget-object v7, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mShowAnim:Lcom/ecareme/pixwe/media/FloatAnim;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/ecareme/pixwe/media/FloatAnim;->setValue(F)V

    .line 109
    iget-object v7, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mShowAnim:Lcom/ecareme/pixwe/media/FloatAnim;

    const/high16 v8, 0x3f80

    const v9, 0x3ecccccd

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/ecareme/pixwe/media/FloatAnim;->animateValue(FFJ)V

    .line 111
    return-void
.end method

.method public update(Lcom/ecareme/pixwe/media/RenderView;F)Z
    .locals 3
    .parameter "view"
    .parameter "timeElapsed"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/ecareme/pixwe/media/PopupMenu;->mShowAnim:Lcom/ecareme/pixwe/media/FloatAnim;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/FloatAnim;->getTimeRemaining(J)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

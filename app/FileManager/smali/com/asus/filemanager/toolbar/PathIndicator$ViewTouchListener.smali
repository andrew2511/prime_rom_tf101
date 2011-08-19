.class Lcom/asus/filemanager/toolbar/PathIndicator$ViewTouchListener;
.super Ljava/lang/Object;
.source "PathIndicator.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/filemanager/toolbar/PathIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/filemanager/toolbar/PathIndicator;


# direct methods
.method private constructor <init>(Lcom/asus/filemanager/toolbar/PathIndicator;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/asus/filemanager/toolbar/PathIndicator$ViewTouchListener;->this$0:Lcom/asus/filemanager/toolbar/PathIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/asus/filemanager/toolbar/PathIndicator;Lcom/asus/filemanager/toolbar/PathIndicator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/asus/filemanager/toolbar/PathIndicator$ViewTouchListener;-><init>(Lcom/asus/filemanager/toolbar/PathIndicator;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    .line 196
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    .line 197
    .local v1, t:Landroid/widget/TextView;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 198
    const/16 v2, 0x72

    const/16 v3, 0xc6

    const/16 v4, 0xe2

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 201
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 199
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 200
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

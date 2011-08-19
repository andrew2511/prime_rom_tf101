.class Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;
.super Ljava/lang/Object;
.source "EvObjectProc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/EvObjectProc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OBJCTRL_INFO"
.end annotation


# instance fields
.field public nSelIndex:I

.field public nType:I

.field public sClipRect:Landroid/graphics/Rect;

.field public sEPos:Landroid/graphics/Point;

.field public sObjectSize:Landroid/graphics/Point;

.field public sSPos:Landroid/graphics/Point;

.field final synthetic this$0:Lcom/infraware/common/EvObjectProc;


# direct methods
.method private constructor <init>(Lcom/infraware/common/EvObjectProc;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 29
    iput-object p1, p0, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->this$0:Lcom/infraware/common/EvObjectProc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v1, p0, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->nType:I

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->nSelIndex:I

    .line 32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sClipRect:Landroid/graphics/Rect;

    .line 33
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sSPos:Landroid/graphics/Point;

    .line 34
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sEPos:Landroid/graphics/Point;

    .line 35
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sObjectSize:Landroid/graphics/Point;

    return-void
.end method

.method synthetic constructor <init>(Lcom/infraware/common/EvObjectProc;Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;-><init>(Lcom/infraware/common/EvObjectProc;)V

    return-void
.end method


# virtual methods
.method public SetInit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    iput v1, p0, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->nType:I

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->nSelIndex:I

    .line 40
    iget-object v0, p0, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 41
    iget-object v0, p0, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sSPos:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 42
    iget-object v0, p0, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sEPos:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 43
    iget-object v0, p0, Lcom/infraware/common/EvObjectProc$OBJCTRL_INFO;->sObjectSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 44
    return-void
.end method

.class Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;
.super Ljava/lang/Object;
.source "EvObjectProc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/EvObjectProc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OBJCTPT_INFO"
.end annotation


# instance fields
.field public nNormalImg:I

.field public nSelectImg:I

.field public nType:I

.field public sPos:Landroid/graphics/Point;

.field final synthetic this$0:Lcom/infraware/common/EvObjectProc;


# direct methods
.method private constructor <init>(Lcom/infraware/common/EvObjectProc;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 47
    iput-object p1, p0, Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;->this$0:Lcom/infraware/common/EvObjectProc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v1, p0, Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;->nType:I

    .line 49
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;->sPos:Landroid/graphics/Point;

    .line 50
    iput v2, p0, Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;->nNormalImg:I

    .line 51
    iput v2, p0, Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;->nSelectImg:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/infraware/common/EvObjectProc;Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;-><init>(Lcom/infraware/common/EvObjectProc;)V

    return-void
.end method


# virtual methods
.method public SetInit()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 54
    iput v1, p0, Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;->nType:I

    .line 55
    iget-object v0, p0, Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;->sPos:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 56
    iput v2, p0, Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;->nNormalImg:I

    .line 57
    iput v2, p0, Lcom/infraware/common/EvObjectProc$OBJCTPT_INFO;->nSelectImg:I

    .line 58
    return-void
.end method

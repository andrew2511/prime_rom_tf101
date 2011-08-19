.class public Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;
.super Ljava/lang/Object;
.source "EV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/evengine/EV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BWP_GRAP_ATTR_INFO"
.end annotation


# instance fields
.field public eObjectType:I

.field public nArrowType:I

.field public nBorderColor:I

.field public nBorderStyle:I

.field public nBorderThickness:I

.field public nFillColor:I

.field public nGradient:I

.field public nHeight:I

.field public nRate:I

.field public nWidth:I

.field final synthetic this$0:Lcom/infraware/evengine/EV;


# direct methods
.method public constructor <init>(Lcom/infraware/evengine/EV;)V
    .locals 0
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->this$0:Lcom/infraware/evengine/EV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .prologue
    .line 441
    .line 442
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    iput v0, p0, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->nRate:I

    iput v0, p0, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->nHeight:I

    iput v0, p0, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->nWidth:I

    iput v0, p0, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->nArrowType:I

    .line 441
    iput v0, p0, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->nBorderStyle:I

    iput v0, p0, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->nBorderThickness:I

    iput v0, p0, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->nBorderColor:I

    iput v0, p0, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->nGradient:I

    iput v0, p0, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->nFillColor:I

    .line 443
    return-void
.end method

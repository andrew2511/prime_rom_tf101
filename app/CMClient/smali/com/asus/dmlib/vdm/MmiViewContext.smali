.class public Lcom/asus/dmlib/vdm/MmiViewContext;
.super Ljava/lang/Object;
.source "MmiViewContext.java"


# instance fields
.field public displayText:Ljava/lang/String;

.field public maxDT:I

.field public minDT:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter "text"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/asus/dmlib/vdm/MmiViewContext;->displayText:Ljava/lang/String;

    .line 14
    iput p2, p0, Lcom/asus/dmlib/vdm/MmiViewContext;->minDT:I

    .line 15
    iput p3, p0, Lcom/asus/dmlib/vdm/MmiViewContext;->maxDT:I

    .line 16
    return-void
.end method

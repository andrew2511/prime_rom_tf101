.class final Lcom/amazon/topaz/internal/drawing/FreeType$RenderPoolOverflowException;
.super Ljava/lang/Exception;
.source "FreeType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/internal/drawing/FreeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RenderPoolOverflowException"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/topaz/internal/drawing/FreeType$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/amazon/topaz/internal/drawing/FreeType$RenderPoolOverflowException;-><init>()V

    return-void
.end method

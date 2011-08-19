.class public final Lcom/amazon/topaz/internal/Session$Builder;
.super Ljava/lang/Object;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/internal/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private allowJustify:Z

.field private backgroundColor:Lcom/amazon/system/drawing/Color;

.field private height:I

.field private lineSpacing:I

.field private showHidden:Z

.field private showMarkers:Z

.field private textColor:Lcom/amazon/system/drawing/Color;

.field private underlineLinks:Z

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-boolean v0, p0, Lcom/amazon/topaz/internal/Session$Builder;->allowJustify:Z

    .line 56
    iput v0, p0, Lcom/amazon/topaz/internal/Session$Builder;->width:I

    .line 57
    iput v0, p0, Lcom/amazon/topaz/internal/Session$Builder;->height:I

    .line 58
    iput-boolean v1, p0, Lcom/amazon/topaz/internal/Session$Builder;->showMarkers:Z

    .line 59
    iput-boolean v1, p0, Lcom/amazon/topaz/internal/Session$Builder;->showHidden:Z

    .line 60
    iput-boolean v0, p0, Lcom/amazon/topaz/internal/Session$Builder;->underlineLinks:Z

    .line 61
    sget-object v0, Lcom/amazon/system/drawing/Color;->BLACK:Lcom/amazon/system/drawing/Color;

    iput-object v0, p0, Lcom/amazon/topaz/internal/Session$Builder;->textColor:Lcom/amazon/system/drawing/Color;

    .line 62
    iput v1, p0, Lcom/amazon/topaz/internal/Session$Builder;->lineSpacing:I

    .line 63
    sget-object v0, Lcom/amazon/system/drawing/Color;->WHITE:Lcom/amazon/system/drawing/Color;

    iput-object v0, p0, Lcom/amazon/topaz/internal/Session$Builder;->backgroundColor:Lcom/amazon/system/drawing/Color;

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/amazon/topaz/internal/Session;)V
    .locals 1
    .parameter "toCopy"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iget-boolean v0, p1, Lcom/amazon/topaz/internal/Session;->allowJustify:Z

    iput-boolean v0, p0, Lcom/amazon/topaz/internal/Session$Builder;->allowJustify:Z

    .line 69
    iget v0, p1, Lcom/amazon/topaz/internal/Session;->width:I

    iput v0, p0, Lcom/amazon/topaz/internal/Session$Builder;->width:I

    .line 70
    iget v0, p1, Lcom/amazon/topaz/internal/Session;->height:I

    iput v0, p0, Lcom/amazon/topaz/internal/Session$Builder;->height:I

    .line 71
    iget-boolean v0, p1, Lcom/amazon/topaz/internal/Session;->showMarkers:Z

    iput-boolean v0, p0, Lcom/amazon/topaz/internal/Session$Builder;->showMarkers:Z

    .line 72
    iget-boolean v0, p1, Lcom/amazon/topaz/internal/Session;->showHidden:Z

    iput-boolean v0, p0, Lcom/amazon/topaz/internal/Session$Builder;->showHidden:Z

    .line 73
    iget-boolean v0, p1, Lcom/amazon/topaz/internal/Session;->underlineLinks:Z

    iput-boolean v0, p0, Lcom/amazon/topaz/internal/Session$Builder;->underlineLinks:Z

    .line 74
    iget-object v0, p1, Lcom/amazon/topaz/internal/Session;->textColor:Lcom/amazon/system/drawing/Color;

    iput-object v0, p0, Lcom/amazon/topaz/internal/Session$Builder;->textColor:Lcom/amazon/system/drawing/Color;

    .line 75
    iget v0, p1, Lcom/amazon/topaz/internal/Session;->lineSpacing:I

    iput v0, p0, Lcom/amazon/topaz/internal/Session$Builder;->lineSpacing:I

    .line 76
    iget-object v0, p1, Lcom/amazon/topaz/internal/Session;->backgroundColor:Lcom/amazon/system/drawing/Color;

    iput-object v0, p0, Lcom/amazon/topaz/internal/Session$Builder;->backgroundColor:Lcom/amazon/system/drawing/Color;

    .line 77
    return-void
.end method


# virtual methods
.method public build()Lcom/amazon/topaz/internal/Session;
    .locals 10

    .prologue
    .line 81
    new-instance v0, Lcom/amazon/topaz/internal/Session;

    iget v1, p0, Lcom/amazon/topaz/internal/Session$Builder;->width:I

    iget v2, p0, Lcom/amazon/topaz/internal/Session$Builder;->height:I

    iget-boolean v3, p0, Lcom/amazon/topaz/internal/Session$Builder;->allowJustify:Z

    iget-boolean v4, p0, Lcom/amazon/topaz/internal/Session$Builder;->showMarkers:Z

    iget-boolean v5, p0, Lcom/amazon/topaz/internal/Session$Builder;->showHidden:Z

    iget-boolean v6, p0, Lcom/amazon/topaz/internal/Session$Builder;->underlineLinks:Z

    iget v7, p0, Lcom/amazon/topaz/internal/Session$Builder;->lineSpacing:I

    iget-object v8, p0, Lcom/amazon/topaz/internal/Session$Builder;->textColor:Lcom/amazon/system/drawing/Color;

    iget-object v9, p0, Lcom/amazon/topaz/internal/Session$Builder;->backgroundColor:Lcom/amazon/system/drawing/Color;

    invoke-direct/range {v0 .. v9}, Lcom/amazon/topaz/internal/Session;-><init>(IIZZZZILcom/amazon/system/drawing/Color;Lcom/amazon/system/drawing/Color;)V

    return-object v0
.end method

.method public setAllowJustify(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/amazon/topaz/internal/Session$Builder;->allowJustify:Z

    .line 86
    return-void
.end method

.method public setBackgroundColor(Lcom/amazon/system/drawing/Color;)V
    .locals 0
    .parameter "backgroundColor"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/amazon/topaz/internal/Session$Builder;->backgroundColor:Lcom/amazon/system/drawing/Color;

    .line 121
    return-void
.end method

.method public setLineSpacing(I)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 112
    iput p1, p0, Lcom/amazon/topaz/internal/Session$Builder;->lineSpacing:I

    .line 113
    return-void
.end method

.method public setScreenSize(II)V
    .locals 0
    .parameter "w"
    .parameter "h"

    .prologue
    .line 101
    iput p1, p0, Lcom/amazon/topaz/internal/Session$Builder;->width:I

    .line 102
    iput p2, p0, Lcom/amazon/topaz/internal/Session$Builder;->height:I

    .line 103
    return-void
.end method

.method public setShowHidden(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/amazon/topaz/internal/Session$Builder;->showHidden:Z

    .line 94
    return-void
.end method

.method public setShowMarkers(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/amazon/topaz/internal/Session$Builder;->showMarkers:Z

    .line 90
    return-void
.end method

.method public setTextColor(Lcom/amazon/system/drawing/Color;)V
    .locals 0
    .parameter "textColor"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/amazon/topaz/internal/Session$Builder;->textColor:Lcom/amazon/system/drawing/Color;

    .line 117
    return-void
.end method

.method public setUnderlineLinks(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/amazon/topaz/internal/Session$Builder;->underlineLinks:Z

    .line 98
    return-void
.end method

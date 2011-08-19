.class public final Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;
.super Ljava/lang/Object;
.source "LayoutEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/internal/layout/LayoutEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Configuration"
.end annotation


# instance fields
.field public cancelRequester:Lcom/amazon/foundation/internal/ICancelRequester;

.field public layoutListener:Lcom/amazon/topaz/internal/layout/LayoutEngine$LayoutListener;

.field public final popupMode:Z

.field public final screenHeight:I

.field public final session:Lcom/amazon/topaz/internal/Session;

.field public startID:I

.field private started:Z

.field public final width:I


# direct methods
.method public constructor <init>(IIILcom/amazon/topaz/internal/Session;Z)V
    .locals 2
    .parameter "startID"
    .parameter "width"
    .parameter "screenHeight"
    .parameter "sess"
    .parameter "popupMode"

    .prologue
    const/4 v1, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput p1, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->startID:I

    .line 151
    iput p2, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->width:I

    .line 152
    iput p3, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->screenHeight:I

    .line 153
    iput-object p4, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->session:Lcom/amazon/topaz/internal/Session;

    .line 154
    iput-boolean p5, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->popupMode:Z

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->started:Z

    .line 157
    iput-object v1, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->cancelRequester:Lcom/amazon/foundation/internal/ICancelRequester;

    .line 158
    iput-object v1, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->layoutListener:Lcom/amazon/topaz/internal/layout/LayoutEngine$LayoutListener;

    .line 159
    return-void
.end method


# virtual methods
.method public cancelRequested()Z
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->cancelRequester:Lcom/amazon/foundation/internal/ICancelRequester;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->cancelRequester:Lcom/amazon/foundation/internal/ICancelRequester;

    invoke-interface {v0}, Lcom/amazon/foundation/internal/ICancelRequester;->cancelRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invokeListenerHandleLayoutComplete()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->layoutListener:Lcom/amazon/topaz/internal/layout/LayoutEngine$LayoutListener;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->layoutListener:Lcom/amazon/topaz/internal/layout/LayoutEngine$LayoutListener;

    invoke-interface {v0}, Lcom/amazon/topaz/internal/layout/LayoutEngine$LayoutListener;->handleLayoutComplete()V

    .line 222
    :cond_0
    return-void
.end method

.method public invokeListenerHandleLineAdded(Lcom/amazon/topaz/internal/layout/LayoutLine;)Z
    .locals 1
    .parameter "line"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->layoutListener:Lcom/amazon/topaz/internal/layout/LayoutEngine$LayoutListener;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->layoutListener:Lcom/amazon/topaz/internal/layout/LayoutEngine$LayoutListener;

    invoke-interface {v0, p1}, Lcom/amazon/topaz/internal/layout/LayoutEngine$LayoutListener;->handleLineAdded(Lcom/amazon/topaz/internal/layout/LayoutLine;)Z

    move-result v0

    .line 213
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->started:Z

    return v0
.end method

.method public setCancelRequester(Lcom/amazon/foundation/internal/ICancelRequester;)V
    .locals 1
    .parameter "cancelRequester"

    .prologue
    .line 193
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->cancelRequester:Lcom/amazon/foundation/internal/ICancelRequester;

    if-eqz v0, :cond_0

    .line 195
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 198
    :cond_0
    iput-object p1, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->cancelRequester:Lcom/amazon/foundation/internal/ICancelRequester;

    .line 199
    return-void
.end method

.method public setLayoutListener(Lcom/amazon/topaz/internal/layout/LayoutEngine$LayoutListener;)V
    .locals 1
    .parameter "layoutListener"

    .prologue
    .line 183
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->layoutListener:Lcom/amazon/topaz/internal/layout/LayoutEngine$LayoutListener;

    if-eqz v0, :cond_0

    .line 185
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 188
    :cond_0
    iput-object p1, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->layoutListener:Lcom/amazon/topaz/internal/layout/LayoutEngine$LayoutListener;

    .line 189
    return-void
.end method

.method public setStarted(Z)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/amazon/topaz/internal/layout/LayoutEngine$Configuration;->started:Z

    .line 171
    return-void
.end method

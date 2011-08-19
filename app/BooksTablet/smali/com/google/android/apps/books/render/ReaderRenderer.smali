.class public abstract Lcom/google/android/apps/books/render/ReaderRenderer;
.super Ljava/lang/Object;
.source "ReaderRenderer.java"

# interfaces
.implements Lcom/google/android/apps/books/render/Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/render/ReaderRenderer$RenderRequest;,
        Lcom/google/android/apps/books/render/ReaderRenderer$MissingFetchServiceException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/books/render/Renderer",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static final TEXTURE_DEBUG_TAG:Ljava/lang/String; = "BooksTextureDebug"


# instance fields
.field private mFetchService:Lcom/google/android/apps/books/service/ContentFetchService;

.field private mListener:Lcom/google/android/apps/books/render/RendererListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/books/render/RendererListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    .local p0, this:Lcom/google/android/apps/books/render/ReaderRenderer;,"Lcom/google/android/apps/books/render/ReaderRenderer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method protected static paintDebugInfo(Landroid/graphics/Canvas;Lcom/google/android/apps/books/render/RenderPosition;Lcom/google/android/apps/books/render/RenderPosition;Ljava/lang/Object;Z)V
    .locals 6
    .parameter "canvas"
    .parameter "requested"
    .parameter "found"
    .parameter "cookie"
    .parameter "isThemeNight"

    .prologue
    .line 131
    const/16 v0, 0x32

    .line 132
    .local v0, TOP:I
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 134
    .local v0, width:I
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 135
    .local v5, paint:Landroid/graphics/Paint;
    if-eqz p4, :cond_0

    .line 136
    const/16 p4, 0xdf

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p4, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    .end local p4
    move-result p4

    invoke-virtual {v5, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    :goto_0
    const/4 v1, 0x0

    const/high16 v2, 0x4248

    int-to-float v3, v0

    const/high16 v4, 0x4302

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 143
    .end local v0           #width:I
    new-instance p4, Landroid/graphics/Paint;

    invoke-direct {p4}, Landroid/graphics/Paint;-><init>()V

    .line 144
    .local p4, textPaint:Landroid/graphics/Paint;
    const/high16 v0, -0x1

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    const/high16 v0, 0x41a0

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 146
    const/4 v0, 0x1

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/books/render/RenderPosition;->toDebugString()Ljava/lang/String;

    move-result-object p1

    .end local p1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 149
    .local p1, line1:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/apps/books/render/RenderPosition;->toDebugString()Ljava/lang/String;

    move-result-object p2

    .end local p2
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 150
    .local p2, line2:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cookie: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    .end local p3
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 152
    .local p3, line3:Ljava/lang/String;
    const/high16 v0, 0x4120

    const/high16 v1, 0x428c

    invoke-virtual {p0, p1, v0, v1, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 153
    const/high16 p1, 0x4120

    const/high16 v0, 0x42be

    invoke-virtual {p0, p2, p1, v0, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 154
    .end local p1           #line1:Ljava/lang/String;
    const/high16 p1, 0x4120

    const/high16 p2, 0x42f0

    invoke-virtual {p0, p3, p1, p2, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 155
    .end local p2           #line2:Ljava/lang/String;
    return-void

    .line 138
    .restart local v0       #width:I
    .local p1, requested:Lcom/google/android/apps/books/render/RenderPosition;
    .local p2, found:Lcom/google/android/apps/books/render/RenderPosition;
    .local p3, cookie:Ljava/lang/Object;
    .local p4, isThemeNight:Z
    :cond_0
    const/16 p4, 0xdf

    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    invoke-static {p4, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    .end local p4           #isThemeNight:Z
    move-result p4

    invoke-virtual {v5, p4}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public abstract applySettings(Lcom/google/android/apps/books/render/ReaderSettings;)V
.end method

.method protected dispatchAbandoned(Lcom/google/android/apps/books/render/RenderPosition;Ljava/lang/Object;)V
    .locals 1
    .parameter "position"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/books/render/RenderPosition;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, this:Lcom/google/android/apps/books/render/ReaderRenderer;,"Lcom/google/android/apps/books/render/ReaderRenderer<TT;>;"
    .local p2, cookie:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/google/android/apps/books/render/ReaderRenderer;->mListener:Lcom/google/android/apps/books/render/RendererListener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/google/android/apps/books/render/ReaderRenderer;->mListener:Lcom/google/android/apps/books/render/RendererListener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/books/render/RendererListener;->onAbandoned(Lcom/google/android/apps/books/render/RenderPosition;Ljava/lang/Object;)V

    .line 110
    :cond_0
    return-void
.end method

.method protected dispatchError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 1
    .parameter
    .parameter "error"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, this:Lcom/google/android/apps/books/render/ReaderRenderer;,"Lcom/google/android/apps/books/render/ReaderRenderer<TT;>;"
    .local p1, cookie:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/google/android/apps/books/render/ReaderRenderer;->mListener:Lcom/google/android/apps/books/render/RendererListener;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/google/android/apps/books/render/ReaderRenderer;->mListener:Lcom/google/android/apps/books/render/RendererListener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/books/render/RendererListener;->onRenderError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 122
    :cond_0
    return-void
.end method

.method protected dispatchInvalidated()V
    .locals 1

    .prologue
    .line 113
    .local p0, this:Lcom/google/android/apps/books/render/ReaderRenderer;,"Lcom/google/android/apps/books/render/ReaderRenderer<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/render/ReaderRenderer;->mListener:Lcom/google/android/apps/books/render/RendererListener;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/google/android/apps/books/render/ReaderRenderer;->mListener:Lcom/google/android/apps/books/render/RendererListener;

    invoke-interface {v0}, Lcom/google/android/apps/books/render/RendererListener;->onInvalidated()V

    .line 116
    :cond_0
    return-void
.end method

.method protected dispatchRendered(Lcom/google/android/apps/books/render/RenderPosition;Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "position"
    .parameter
    .parameter "bitmap"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/books/render/RenderPosition;",
            "TT;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, this:Lcom/google/android/apps/books/render/ReaderRenderer;,"Lcom/google/android/apps/books/render/ReaderRenderer<TT;>;"
    .local p2, cookie:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/google/android/apps/books/render/ReaderRenderer;->mListener:Lcom/google/android/apps/books/render/RendererListener;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/google/android/apps/books/render/ReaderRenderer;->mListener:Lcom/google/android/apps/books/render/RendererListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/apps/books/render/RendererListener;->onRendered(Lcom/google/android/apps/books/render/RenderPosition;Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 98
    :cond_0
    return-void
.end method

.method protected dispatchSpecialState(Ljava/lang/Object;II)V
    .locals 1
    .parameter
    .parameter "specialState"
    .parameter "margin"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, this:Lcom/google/android/apps/books/render/ReaderRenderer;,"Lcom/google/android/apps/books/render/ReaderRenderer<TT;>;"
    .local p1, cookie:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/google/android/apps/books/render/ReaderRenderer;->mListener:Lcom/google/android/apps/books/render/RendererListener;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/google/android/apps/books/render/ReaderRenderer;->mListener:Lcom/google/android/apps/books/render/RendererListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/apps/books/render/RendererListener;->onSpecialState(Ljava/lang/Object;II)V

    .line 104
    :cond_0
    return-void
.end method

.method protected getFetchService()Lcom/google/android/apps/books/service/ContentFetchService;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/books/render/ReaderRenderer$MissingFetchServiceException;
        }
    .end annotation

    .prologue
    .line 77
    .local p0, this:Lcom/google/android/apps/books/render/ReaderRenderer;,"Lcom/google/android/apps/books/render/ReaderRenderer<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/render/ReaderRenderer;->mFetchService:Lcom/google/android/apps/books/service/ContentFetchService;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/google/android/apps/books/render/ReaderRenderer$MissingFetchServiceException;

    invoke-direct {v0}, Lcom/google/android/apps/books/render/ReaderRenderer$MissingFetchServiceException;-><init>()V

    throw v0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/render/ReaderRenderer;->mFetchService:Lcom/google/android/apps/books/service/ContentFetchService;

    return-object v0
.end method

.method protected getMetadata()Lcom/google/android/apps/books/model/VolumeMetadata;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 85
    .local p0, this:Lcom/google/android/apps/books/render/ReaderRenderer;,"Lcom/google/android/apps/books/render/ReaderRenderer<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/render/ReaderRenderer;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/books/render/ReaderRenderer;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v0}, Lcom/google/android/apps/books/model/VolumeMetadata;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "missing or closed metadata"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/books/render/ReaderRenderer;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    return-object v0
.end method

.method public isSetup()Z
    .locals 1

    .prologue
    .line 48
    .local p0, this:Lcom/google/android/apps/books/render/ReaderRenderer;,"Lcom/google/android/apps/books/render/ReaderRenderer<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/render/ReaderRenderer;->mFetchService:Lcom/google/android/apps/books/service/ContentFetchService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/books/render/ReaderRenderer;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRenderListener(Lcom/google/android/apps/books/render/RendererListener;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/books/render/RendererListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, this:Lcom/google/android/apps/books/render/ReaderRenderer;,"Lcom/google/android/apps/books/render/ReaderRenderer<TT;>;"
    .local p1, listener:Lcom/google/android/apps/books/render/RendererListener;,"Lcom/google/android/apps/books/render/RendererListener<TT;>;"
    iput-object p1, p0, Lcom/google/android/apps/books/render/ReaderRenderer;->mListener:Lcom/google/android/apps/books/render/RendererListener;

    .line 59
    return-void
.end method

.method public setup(Lcom/google/android/apps/books/service/ContentFetchService;Lcom/google/android/apps/books/model/VolumeMetadata;)V
    .locals 1
    .parameter "fetchService"
    .parameter "metadata"

    .prologue
    .line 39
    .local p0, this:Lcom/google/android/apps/books/render/ReaderRenderer;,"Lcom/google/android/apps/books/render/ReaderRenderer<TT;>;"
    const-string v0, "missing fetchService"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/service/ContentFetchService;

    iput-object v0, p0, Lcom/google/android/apps/books/render/ReaderRenderer;->mFetchService:Lcom/google/android/apps/books/service/ContentFetchService;

    .line 40
    const-string v0, "missing metadata"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/model/VolumeMetadata;

    iput-object v0, p0, Lcom/google/android/apps/books/render/ReaderRenderer;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    .line 41
    return-void
.end method

.method public setupFrom(Lcom/google/android/apps/books/render/ReaderRenderer;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/books/render/ReaderRenderer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, this:Lcom/google/android/apps/books/render/ReaderRenderer;,"Lcom/google/android/apps/books/render/ReaderRenderer<TT;>;"
    .local p1, renderer:Lcom/google/android/apps/books/render/ReaderRenderer;,"Lcom/google/android/apps/books/render/ReaderRenderer<*>;"
    iget-object v0, p1, Lcom/google/android/apps/books/render/ReaderRenderer;->mFetchService:Lcom/google/android/apps/books/service/ContentFetchService;

    iget-object v1, p1, Lcom/google/android/apps/books/render/ReaderRenderer;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/books/render/ReaderRenderer;->setup(Lcom/google/android/apps/books/service/ContentFetchService;Lcom/google/android/apps/books/model/VolumeMetadata;)V

    .line 45
    return-void
.end method

.method public teardown()V
    .locals 1

    .prologue
    .local p0, this:Lcom/google/android/apps/books/render/ReaderRenderer;,"Lcom/google/android/apps/books/render/ReaderRenderer<TT;>;"
    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/google/android/apps/books/render/ReaderRenderer;->mFetchService:Lcom/google/android/apps/books/service/ContentFetchService;

    .line 53
    iput-object v0, p0, Lcom/google/android/apps/books/render/ReaderRenderer;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    .line 54
    return-void
.end method

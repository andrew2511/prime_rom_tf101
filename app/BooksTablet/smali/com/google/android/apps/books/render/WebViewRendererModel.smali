.class public Lcom/google/android/apps/books/render/WebViewRendererModel;
.super Ljava/lang/Object;
.source "WebViewRendererModel.java"

# interfaces
.implements Lcom/google/android/apps/books/render/Renderer;
.implements Lcom/google/android/apps/books/widget/ReaderEvents;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/render/WebViewRendererModel$RenderRequest;,
        Lcom/google/android/apps/books/render/WebViewRendererModel$JavascriptReader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/books/render/Renderer",
        "<TT;>;",
        "Lcom/google/android/apps/books/widget/ReaderEvents;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WVRendererModel"


# instance fields
.field private mCurrentHighlight:Ljava/lang/String;

.field private mCurrentRequest:Lcom/google/android/apps/books/render/WebViewRendererModel$RenderRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/books/render/WebViewRendererModel$RenderRequest",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mListener:Lcom/google/android/apps/books/render/RendererListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/books/render/RendererListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mReader:Lcom/google/android/apps/books/render/WebViewRendererModel$JavascriptReader;

.field private mReaderAlive:Z

.field private mReaderInitialized:Z

.field private mReaderIsBusy:Z

.field private mReaderSettings:Lcom/google/android/apps/books/render/ReaderSettings;

.field private final mRenderRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/books/render/WebViewRendererModel$RenderRequest",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private mSettingsApplied:Z

.field private mVolumeMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRendererModel;,"Lcom/google/android/apps/books/render/WebViewRendererModel<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mRenderRequests:Ljava/util/List;

    return-void
.end method

.method private advance()V
    .locals 5

    .prologue
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRendererModel;,"Lcom/google/android/apps/books/render/WebViewRendererModel<TT;>;"
    const/4 v4, 0x3

    const/4 v3, 0x1

    const-string v2, "WVRendererModel"

    .line 163
    iget-boolean v1, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mReaderIsBusy:Z

    if-eqz v1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mReaderInitialized:Z

    if-nez v1, :cond_2

    .line 165
    iget-boolean v1, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mReaderAlive:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/apps/books/render/WebViewRendererModel;->isMetadataReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    iput-boolean v3, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mReaderIsBusy:Z

    .line 167
    iget-object v1, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mReader:Lcom/google/android/apps/books/render/WebViewRendererModel$JavascriptReader;

    iget-object v2, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mVolumeMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-interface {v1, v2}, Lcom/google/android/apps/books/render/WebViewRendererModel$JavascriptReader;->initializeJavascript(Lcom/google/android/apps/books/model/VolumeMetadata;)V

    goto :goto_0

    .line 169
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mSettingsApplied:Z

    if-nez v1, :cond_4

    .line 170
    const-string v1, "WVRendererModel"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 171
    const-string v1, "WVRendererModel"

    const-string v1, "Issuing apply settings request"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_3
    iput-boolean v3, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mReaderIsBusy:Z

    .line 174
    iget-object v1, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mReader:Lcom/google/android/apps/books/render/WebViewRendererModel$JavascriptReader;

    iget-object v2, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mReaderSettings:Lcom/google/android/apps/books/render/ReaderSettings;

    invoke-interface {v1, v2}, Lcom/google/android/apps/books/render/WebViewRendererModel$JavascriptReader;->applySettings(Lcom/google/android/apps/books/render/ReaderSettings;)V

    goto :goto_0

    .line 175
    :cond_4
    iget-object v1, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mRenderRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 176
    iget-object v1, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mRenderRequests:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/render/WebViewRendererModel$RenderRequest;

    .line 177
    .local v0, next:Lcom/google/android/apps/books/render/WebViewRendererModel$RenderRequest;,"Lcom/google/android/apps/books/render/WebViewRendererModel$RenderRequest<TT;>;"
    invoke-direct {p0, v0}, Lcom/google/android/apps/books/render/WebViewRendererModel;->dispatchRenderRequest(Lcom/google/android/apps/books/render/WebViewRendererModel$RenderRequest;)V

    goto :goto_0

    .line 180
    .end local v0           #next:Lcom/google/android/apps/books/render/WebViewRendererModel$RenderRequest;,"Lcom/google/android/apps/books/render/WebViewRendererModel$RenderRequest<TT;>;"
    :cond_5
    const-string v1, "WVRendererModel"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    const-string v1, "WVRendererModel"

    const-string v1, "Reverting to idle state"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dispatchRenderRequest(Lcom/google/android/apps/books/render/WebViewRendererModel$RenderRequest;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/books/render/WebViewRendererModel$RenderRequest",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRendererModel;,"Lcom/google/android/apps/books/render/WebViewRendererModel<TT;>;"
    .local p1, request:Lcom/google/android/apps/books/render/WebViewRendererModel$RenderRequest;,"Lcom/google/android/apps/books/render/WebViewRendererModel$RenderRequest<TT;>;"
    const/4 v7, 0x1

    const-string v8, "WVRendererModel"

    .line 110
    iput-object p1, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mCurrentRequest:Lcom/google/android/apps/books/render/WebViewRendererModel$RenderRequest;

    .line 111
    iget-object v4, p1, Lcom/google/android/apps/books/render/WebViewRendererModel$RenderRequest;->position:Lcom/google/android/apps/books/render/RenderPosition;

    .line 112
    .local v4, position:Lcom/google/android/apps/books/render/RenderPosition;
    const-string v5, "WVRendererModel"

    const/4 v5, 0x3

    invoke-static {v8, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 113
    const-string v5, "WVRendererModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Issuing move request "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    iput-boolean v7, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mReaderIsBusy:Z

    .line 118
    iget-object v5, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mCurrentHighlight:Ljava/lang/String;

    iget-object v6, v4, Lcom/google/android/apps/books/render/RenderPosition;->highlight:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 119
    iget-object v5, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mReader:Lcom/google/android/apps/books/render/WebViewRendererModel$JavascriptReader;

    iget-object v6, v4, Lcom/google/android/apps/books/render/RenderPosition;->highlight:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/google/android/apps/books/render/WebViewRendererModel$JavascriptReader;->setHighlight(Ljava/lang/String;)V

    .line 120
    iget-object v5, v4, Lcom/google/android/apps/books/render/RenderPosition;->highlight:Ljava/lang/String;

    iput-object v5, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mCurrentHighlight:Ljava/lang/String;

    .line 123
    :cond_1
    iget-object v5, p1, Lcom/google/android/apps/books/render/WebViewRendererModel$RenderRequest;->position:Lcom/google/android/apps/books/render/RenderPosition;

    invoke-virtual {v5}, Lcom/google/android/apps/books/render/RenderPosition;->hasValidIndices()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 124
    iget-object v5, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mReader:Lcom/google/android/apps/books/render/WebViewRendererModel$JavascriptReader;

    iget v6, v4, Lcom/google/android/apps/books/render/RenderPosition;->chapterIndex:I

    iget v7, v4, Lcom/google/android/apps/books/render/RenderPosition;->pageIndex:I

    iget v8, v4, Lcom/google/android/apps/books/render/RenderPosition;->pageOffset:I

    invoke-interface {v5, v6, v7, v8}, Lcom/google/android/apps/books/render/WebViewRendererModel$JavascriptReader;->goToPage(III)V

    .line 135
    :goto_0
    return-void

    .line 126
    :cond_2
    invoke-virtual {v4}, Lcom/google/android/apps/books/render/RenderPosition;->hasValidPosition()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 127
    iget-object v5, v4, Lcom/google/android/apps/books/render/RenderPosition;->position:Lcom/google/android/apps/books/common/Position;

    invoke-virtual {v5}, Lcom/google/android/apps/books/common/Position;->getPageName()Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, pageId:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mVolumeMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v5, v2}, Lcom/google/android/apps/books/model/VolumeMetadata;->getContainingChapterIndexForPageId(Ljava/lang/String;)I

    move-result v0

    .line 129
    .local v0, chapterIndex:I
    iget-object v5, v4, Lcom/google/android/apps/books/render/RenderPosition;->position:Lcom/google/android/apps/books/common/Position;

    invoke-virtual {v5}, Lcom/google/android/apps/books/common/Position;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/books/common/Position;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, posString:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mCurrentHighlight:Ljava/lang/String;

    if-eqz v5, :cond_3

    move v1, v7

    .line 131
    .local v1, findNextHighlight:Z
    :goto_1
    iget-object v5, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mReader:Lcom/google/android/apps/books/render/WebViewRendererModel$JavascriptReader;

    iget v6, v4, Lcom/google/android/apps/books/render/RenderPosition;->pageOffset:I

    invoke-interface {v5, v0, v3, v6, v1}, Lcom/google/android/apps/books/render/WebViewRendererModel$JavascriptReader;->goToPosition(ILjava/lang/String;IZ)V

    goto :goto_0

    .line 130
    .end local v1           #findNextHighlight:Z
    :cond_3
    const/4 v5, 0x0

    move v1, v5

    goto :goto_1

    .line 133
    .end local v0           #chapterIndex:I
    .end local v2           #pageId:Ljava/lang/String;
    .end local v3           #posString:Ljava/lang/String;
    :cond_4
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "request missing both indices and position"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private isMetadataReady()Z
    .locals 1

    .prologue
    .line 94
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRendererModel;,"Lcom/google/android/apps/books/render/WebViewRendererModel<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mVolumeMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mVolumeMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v0}, Lcom/google/android/apps/books/model/VolumeMetadata;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancelPendingRequests()V
    .locals 1

    .prologue
    .line 146
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRendererModel;,"Lcom/google/android/apps/books/render/WebViewRendererModel<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mRenderRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 147
    return-void
.end method

.method public dispatchError(Ljava/lang/Exception;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 270
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRendererModel;,"Lcom/google/android/apps/books/render/WebViewRendererModel<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mListener:Lcom/google/android/apps/books/render/RendererListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mCurrentRequest:Lcom/google/android/apps/books/render/WebViewRendererModel$RenderRequest;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mListener:Lcom/google/android/apps/books/render/RendererListener;

    iget-object v1, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mCurrentRequest:Lcom/google/android/apps/books/render/WebViewRendererModel$RenderRequest;

    iget-object v1, v1, Lcom/google/android/apps/books/render/WebViewRendererModel$RenderRequest;->cookie:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/google/android/apps/books/render/RendererListener;->onRenderError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 273
    :cond_0
    return-void
.end method

.method public onChapterReady(II)V
    .locals 0
    .parameter "chapterIndex"
    .parameter "pageCount"

    .prologue
    .line 191
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRendererModel;,"Lcom/google/android/apps/books/render/WebViewRendererModel<TT;>;"
    return-void
.end method

.method public onContentLoading()V
    .locals 0

    .prologue
    .line 196
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRendererModel;,"Lcom/google/android/apps/books/render/WebViewRendererModel<TT;>;"
    return-void
.end method

.method public onContentReady()V
    .locals 0

    .prologue
    .line 201
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRendererModel;,"Lcom/google/android/apps/books/render/WebViewRendererModel<TT;>;"
    return-void
.end method

.method public onInvalidPosition(I)V
    .locals 3
    .parameter "margin"

    .prologue
    .line 205
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRendererModel;,"Lcom/google/android/apps/books/render/WebViewRendererModel<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mListener:Lcom/google/android/apps/books/render/RendererListener;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mListener:Lcom/google/android/apps/books/render/RendererListener;

    iget-object v1, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mCurrentRequest:Lcom/google/android/apps/books/render/WebViewRendererModel$RenderRequest;

    iget-object v1, v1, Lcom/google/android/apps/books/render/WebViewRendererModel$RenderRequest;->cookie:Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/apps/books/render/RendererListener;->onSpecialState(Ljava/lang/Object;II)V

    .line 212
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mCurrentRequest:Lcom/google/android/apps/books/render/WebViewRendererModel$RenderRequest;

    .line 213
    return-void
.end method

.method public onJsApiReady()V
    .locals 1

    .prologue
    .line 217
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRendererModel;,"Lcom/google/android/apps/books/render/WebViewRendererModel<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mReaderIsBusy:Z

    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mReaderAlive:Z

    .line 219
    invoke-direct {p0}, Lcom/google/android/apps/books/render/WebViewRendererModel;->advance()V

    .line 220
    return-void
.end method

.method public onPreferencesApplied()V
    .locals 1

    .prologue
    .line 231
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRendererModel;,"Lcom/google/android/apps/books/render/WebViewRendererModel<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mListener:Lcom/google/android/apps/books/render/RendererListener;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mListener:Lcom/google/android/apps/books/render/RendererListener;

    invoke-interface {v0}, Lcom/google/android/apps/books/render/RendererListener;->onInvalidated()V

    .line 234
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mReaderIsBusy:Z

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mSettingsApplied:Z

    .line 236
    invoke-direct {p0}, Lcom/google/android/apps/books/render/WebViewRendererModel;->advance()V

    .line 237
    return-void
.end method

.method public onReaderInitialized()V
    .locals 1

    .prologue
    .line 224
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRendererModel;,"Lcom/google/android/apps/books/render/WebViewRendererModel<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mReaderIsBusy:Z

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mReaderInitialized:Z

    .line 226
    invoke-direct {p0}, Lcom/google/android/apps/books/render/WebViewRendererModel;->advance()V

    .line 227
    return-void
.end method

.method public onReadingPositionChanged(IILjava/lang/String;I)V
    .locals 8
    .parameter "chapterIndex"
    .parameter "pageIndex"
    .parameter "readingPosition"
    .parameter "requestId"

    .prologue
    .line 242
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRendererModel;,"Lcom/google/android/apps/books/render/WebViewRendererModel<TT;>;"
    iget-object v6, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mListener:Lcom/google/android/apps/books/render/RendererListener;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mCurrentRequest:Lcom/google/android/apps/books/render/WebViewRendererModel$RenderRequest;

    if-eqz v6, :cond_1

    .line 243
    iget-object v6, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mReader:Lcom/google/android/apps/books/render/WebViewRendererModel$JavascriptReader;

    invoke-interface {v6}, Lcom/google/android/apps/books/render/WebViewRendererModel$JavascriptReader;->takeSnapshot()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 245
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v4, Lcom/google/android/apps/books/common/Position;

    invoke-direct {v4, p3}, Lcom/google/android/apps/books/common/Position;-><init>(Ljava/lang/String;)V

    .line 246
    .local v4, position:Lcom/google/android/apps/books/common/Position;
    new-instance v3, Lcom/google/android/apps/books/render/RenderPosition;

    iget-object v6, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mCurrentHighlight:Ljava/lang/String;

    invoke-direct {v3, v4, p1, p2, v6}, Lcom/google/android/apps/books/render/RenderPosition;-><init>(Lcom/google/android/apps/books/common/Position;IILjava/lang/String;)V

    .line 250
    .local v3, newPosition:Lcom/google/android/apps/books/render/RenderPosition;
    const-string v6, "BooksTextureDebug"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 251
    iget-object v6, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mCurrentRequest:Lcom/google/android/apps/books/render/WebViewRendererModel$RenderRequest;

    iget-object v5, v6, Lcom/google/android/apps/books/render/WebViewRendererModel$RenderRequest;->position:Lcom/google/android/apps/books/render/RenderPosition;

    .line 252
    .local v5, requested:Lcom/google/android/apps/books/render/RenderPosition;
    move-object v2, v3

    .line 253
    .local v2, found:Lcom/google/android/apps/books/render/RenderPosition;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 254
    .local v1, canvas:Landroid/graphics/Canvas;
    iget-object v6, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mCurrentRequest:Lcom/google/android/apps/books/render/WebViewRendererModel$RenderRequest;

    iget-object v6, v6, Lcom/google/android/apps/books/render/WebViewRendererModel$RenderRequest;->cookie:Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mReaderSettings:Lcom/google/android/apps/books/render/ReaderSettings;

    iget-boolean v7, v7, Lcom/google/android/apps/books/render/ReaderSettings;->isThemeNight:Z

    invoke-static {v1, v5, v2, v6, v7}, Lcom/google/android/apps/books/render/ReaderRenderer;->paintDebugInfo(Landroid/graphics/Canvas;Lcom/google/android/apps/books/render/RenderPosition;Lcom/google/android/apps/books/render/RenderPosition;Ljava/lang/Object;Z)V

    .line 259
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #found:Lcom/google/android/apps/books/render/RenderPosition;
    .end local v5           #requested:Lcom/google/android/apps/books/render/RenderPosition;
    :cond_0
    iget-object v6, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mListener:Lcom/google/android/apps/books/render/RendererListener;

    iget-object v7, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mCurrentRequest:Lcom/google/android/apps/books/render/WebViewRendererModel$RenderRequest;

    iget-object v7, v7, Lcom/google/android/apps/books/render/WebViewRendererModel$RenderRequest;->cookie:Ljava/lang/Object;

    invoke-interface {v6, v3, v7, v0}, Lcom/google/android/apps/books/render/RendererListener;->onRendered(Lcom/google/android/apps/books/render/RenderPosition;Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 262
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #newPosition:Lcom/google/android/apps/books/render/RenderPosition;
    .end local v4           #position:Lcom/google/android/apps/books/common/Position;
    :cond_1
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mReaderIsBusy:Z

    .line 263
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mCurrentRequest:Lcom/google/android/apps/books/render/WebViewRendererModel$RenderRequest;

    .line 264
    invoke-direct {p0}, Lcom/google/android/apps/books/render/WebViewRendererModel;->advance()V

    .line 265
    return-void
.end method

.method public requestRenderPage(Lcom/google/android/apps/books/render/RenderPosition;Ljava/lang/Object;)V
    .locals 2
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
    .line 151
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRendererModel;,"Lcom/google/android/apps/books/render/WebViewRendererModel<TT;>;"
    .local p2, cookie:Ljava/lang/Object;,"TT;"
    new-instance v0, Lcom/google/android/apps/books/render/WebViewRendererModel$RenderRequest;

    invoke-direct {v0, p1, p2}, Lcom/google/android/apps/books/render/WebViewRendererModel$RenderRequest;-><init>(Lcom/google/android/apps/books/render/RenderPosition;Ljava/lang/Object;)V

    .line 152
    .local v0, request:Lcom/google/android/apps/books/render/WebViewRendererModel$RenderRequest;,"Lcom/google/android/apps/books/render/WebViewRendererModel$RenderRequest<TT;>;"
    iget-boolean v1, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mReaderInitialized:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mReaderIsBusy:Z

    if-nez v1, :cond_0

    .line 153
    invoke-direct {p0, v0}, Lcom/google/android/apps/books/render/WebViewRendererModel;->dispatchRenderRequest(Lcom/google/android/apps/books/render/WebViewRendererModel$RenderRequest;)V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mRenderRequests:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setJavascriptReader(Lcom/google/android/apps/books/render/WebViewRendererModel$JavascriptReader;)V
    .locals 0
    .parameter "client"

    .prologue
    .line 82
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRendererModel;,"Lcom/google/android/apps/books/render/WebViewRendererModel<TT;>;"
    iput-object p1, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mReader:Lcom/google/android/apps/books/render/WebViewRendererModel$JavascriptReader;

    .line 83
    return-void
.end method

.method public setReaderSettings(Lcom/google/android/apps/books/render/ReaderSettings;)V
    .locals 2
    .parameter "rs"

    .prologue
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRendererModel;,"Lcom/google/android/apps/books/render/WebViewRendererModel<TT;>;"
    const/4 v1, 0x0

    .line 101
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mReaderSettings:Lcom/google/android/apps/books/render/ReaderSettings;

    invoke-static {p1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iput-object p1, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mReaderSettings:Lcom/google/android/apps/books/render/ReaderSettings;

    .line 103
    iput-boolean v1, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mReaderInitialized:Z

    .line 104
    iput-boolean v1, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mSettingsApplied:Z

    .line 105
    invoke-direct {p0}, Lcom/google/android/apps/books/render/WebViewRendererModel;->advance()V

    .line 107
    :cond_0
    return-void
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
    .line 141
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRendererModel;,"Lcom/google/android/apps/books/render/WebViewRendererModel<TT;>;"
    .local p1, listener:Lcom/google/android/apps/books/render/RendererListener;,"Lcom/google/android/apps/books/render/RendererListener<TT;>;"
    iput-object p1, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mListener:Lcom/google/android/apps/books/render/RendererListener;

    .line 142
    return-void
.end method

.method public setVolumeMetadata(Lcom/google/android/apps/books/model/VolumeMetadata;)V
    .locals 1
    .parameter "volumeMetadata"

    .prologue
    .line 86
    .local p0, this:Lcom/google/android/apps/books/render/WebViewRendererModel;,"Lcom/google/android/apps/books/render/WebViewRendererModel<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mVolumeMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iput-object p1, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mVolumeMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/books/render/WebViewRendererModel;->mReaderInitialized:Z

    .line 89
    invoke-direct {p0}, Lcom/google/android/apps/books/render/WebViewRendererModel;->advance()V

    .line 91
    :cond_0
    return-void
.end method

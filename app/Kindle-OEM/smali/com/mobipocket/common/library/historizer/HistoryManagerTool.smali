.class public Lcom/mobipocket/common/library/historizer/HistoryManagerTool;
.super Ljava/lang/Object;
.source "HistoryManagerTool.java"

# interfaces
.implements Lcom/mobipocket/common/library/historizer/HistoryManager;


# instance fields
.field private _CurrentIndex:I

.field private final _Historizable:Lcom/mobipocket/common/library/historizer/Historizable;

.field private _History:[Ljava/lang/Object;

.field private _HistorySize:I

.field private final pListeners:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lcom/mobipocket/common/library/historizer/Historizable;I)V
    .locals 2
    .parameter "historizable"
    .parameter "historyMaxSize"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->pListeners:Ljava/util/Vector;

    .line 49
    iput-object p1, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_Historizable:Lcom/mobipocket/common/library/historizer/Historizable;

    .line 50
    new-array v0, p2, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_History:[Ljava/lang/Object;

    .line 51
    invoke-virtual {p0}, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->clean()V

    .line 52
    return-void
.end method

.method private notifyListeners()V
    .locals 2

    .prologue
    .line 270
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->pListeners:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->pListeners:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    :cond_0
    return-void
.end method

.method private pushCurrentState([B)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 226
    if-nez p1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_History:[Ljava/lang/Object;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_History:[Ljava/lang/Object;

    iget v1, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_CurrentIndex:I

    aput-object p1, v0, v1

    .line 236
    iget v0, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_CurrentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_CurrentIndex:I

    .line 237
    iget v0, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_CurrentIndex:I

    iget-object v1, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_History:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "history too small and full ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_History:[Ljava/lang/Object;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") --> first element lost"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    iget-object v0, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_History:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_History:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_History:[Ljava/lang/Object;

    array-length v3, v3

    sub-int/2addr v3, v4

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    iget v0, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_CurrentIndex:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_CurrentIndex:I

    .line 243
    :cond_2
    iget v0, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_CurrentIndex:I

    :goto_1
    iget v1, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_HistorySize:I

    if-ge v0, v1, :cond_3

    .line 245
    iget-object v1, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_History:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 247
    :cond_3
    iget v0, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_CurrentIndex:I

    iput v0, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_HistorySize:I

    goto :goto_0
.end method

.method private restoreState()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/historizer/RestoreStateException;
        }
    .end annotation

    .prologue
    .line 141
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v0, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_History:[Ljava/lang/Object;

    iget v2, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_CurrentIndex:I

    aget-object v0, v0, v2

    check-cast v0, [B

    check-cast v0, [B

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_Historizable:Lcom/mobipocket/common/library/historizer/Historizable;

    invoke-interface {v0, v1}, Lcom/mobipocket/common/library/historizer/Historizable;->restoreState(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    iget-object v0, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_History:[Ljava/lang/Object;

    iget v1, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_CurrentIndex:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 149
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private saveState()[B
    .locals 2

    .prologue
    .line 72
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_Historizable:Lcom/mobipocket/common/library/historizer/Historizable;

    invoke-interface {v1, v0}, Lcom/mobipocket/common/library/historizer/Historizable;->saveState(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :goto_0
    return-object v0

    .line 77
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateCurrentHistoryState()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 111
    iget v0, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_CurrentIndex:I

    if-gez v0, :cond_0

    move v0, v1

    .line 125
    :goto_0
    return v0

    .line 116
    :cond_0
    invoke-direct {p0}, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->saveState()[B

    move-result-object v0

    .line 117
    if-eqz v0, :cond_2

    .line 118
    iget-object v1, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_History:[Ljava/lang/Object;

    iget v2, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_CurrentIndex:I

    aput-object v0, v1, v2

    .line 119
    iget v0, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_HistorySize:I

    iget v1, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_CurrentIndex:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_1

    .line 120
    iget v0, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_CurrentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_HistorySize:I

    .line 122
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 125
    goto :goto_0
.end method


# virtual methods
.method public addHistoryState()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->saveState()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->pushCurrentState([B)V

    .line 91
    invoke-direct {p0}, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->notifyListeners()V

    .line 92
    return-void
.end method

.method public addListener(Lcom/mobipocket/common/library/historizer/EventListener;)V
    .locals 1
    .parameter "historyListener"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->pListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 257
    return-void
.end method

.method public back()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/historizer/RestoreStateException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->hasBack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lcom/mobipocket/common/library/historizer/RestoreStateException;

    sget-object v1, Lcom/mobipocket/common/library/historizer/RestoreStateException;->ID_STATE_NOT_AVAILABLE:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/historizer/RestoreStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    invoke-direct {p0}, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->updateCurrentHistoryState()Z

    .line 163
    iget v0, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_CurrentIndex:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_CurrentIndex:I

    .line 165
    invoke-direct {p0}, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->restoreState()V

    .line 166
    invoke-direct {p0}, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->notifyListeners()V

    .line 167
    return-void
.end method

.method public clean()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 208
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_HistorySize:I

    if-ge v0, v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_History:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_0
    iput v3, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_HistorySize:I

    .line 213
    iput v3, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_CurrentIndex:I

    .line 214
    invoke-direct {p0}, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->notifyListeners()V

    .line 215
    return-void
.end method

.method public forward()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/historizer/RestoreStateException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->hasForward()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lcom/mobipocket/common/library/historizer/RestoreStateException;

    sget-object v1, Lcom/mobipocket/common/library/historizer/RestoreStateException;->ID_STATE_NOT_AVAILABLE:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/historizer/RestoreStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->updateCurrentHistoryState()Z

    .line 190
    iget v0, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_CurrentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_CurrentIndex:I

    .line 194
    invoke-direct {p0}, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->restoreState()V

    .line 195
    iget v0, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_CurrentIndex:I

    iget v1, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_HistorySize:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_1

    .line 197
    iget v0, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_CurrentIndex:I

    iput v0, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_HistorySize:I

    .line 199
    :cond_1
    invoke-direct {p0}, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->notifyListeners()V

    .line 200
    return-void
.end method

.method public hasBack()Z
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_CurrentIndex:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasForward()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 175
    iget v0, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_HistorySize:I

    iget v1, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_CurrentIndex:I

    sub-int/2addr v0, v1

    if-le v0, v2, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeHistoryState()V
    .locals 2

    .prologue
    .line 99
    iget v0, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_CurrentIndex:I

    if-lez v0, :cond_0

    .line 102
    iget v0, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_CurrentIndex:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_CurrentIndex:I

    .line 105
    :cond_0
    invoke-direct {p0}, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->notifyListeners()V

    .line 106
    return-void
.end method

.method public removeListener(Lcom/mobipocket/common/library/historizer/EventListener;)V
    .locals 1
    .parameter

    .prologue
    .line 265
    iget-object v0, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->pListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 266
    return-void
.end method

.method public setHistoryMaxSize(I)V
    .locals 4
    .parameter "historyMaxSize"

    .prologue
    const/4 v3, 0x0

    .line 60
    iget-object v0, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_History:[Ljava/lang/Object;

    .line 62
    .local v0, oldHistory:[Ljava/lang/Object;
    new-array v2, p1, [Ljava/lang/Object;

    iput-object v2, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_History:[Ljava/lang/Object;

    .line 63
    iget v2, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_HistorySize:I

    if-le p1, v2, :cond_1

    iget v2, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_HistorySize:I

    move v1, v2

    .line 64
    .local v1, toBeCopied:I
    :goto_0
    if-lez v1, :cond_0

    .line 66
    iget-object v2, p0, Lcom/mobipocket/common/library/historizer/HistoryManagerTool;->_History:[Ljava/lang/Object;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    :cond_0
    return-void

    .end local v1           #toBeCopied:I
    :cond_1
    move v1, p1

    .line 63
    goto :goto_0
.end method

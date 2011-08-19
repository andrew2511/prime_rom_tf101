.class public Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;
.super Ljava/lang/Object;
.source "BookBackgroundWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# instance fields
.field public backAvailable:Z

.field public fontSize:I

.field public lineSpacing:I

.field public position:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;->fontSize:I

    .line 289
    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;->position:I

    .line 290
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;->backAvailable:Z

    .line 291
    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;)V
    .locals 1
    .parameter "other"

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iget v0, p1, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;->fontSize:I

    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;->fontSize:I

    .line 296
    iget v0, p1, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;->position:I

    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;->position:I

    .line 297
    iget-boolean v0, p1, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;->backAvailable:Z

    iput-boolean v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;->backAvailable:Z

    .line 298
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 303
    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;->fontSize:I

    .line 304
    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;->position:I

    .line 305
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;->backAvailable:Z

    .line 306
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 312
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "F: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;->fontSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " P: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " B: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;->backAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

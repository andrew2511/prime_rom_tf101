.class public Lcom/amazon/kcp/cover/UpdatableCover;
.super Ljava/lang/Object;
.source "UpdatableCover.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private book:Lcom/amazon/kcp/library/models/IListableBook;

.field private id:Ljava/lang/String;

.field private image:Landroid/graphics/Bitmap;

.field private isDefaultCover:Z

.field private isMutable:Z

.field private listener:Lcom/amazon/kcp/cover/OnImageUpdateListener;

.field private maxHeight:I

.field private maxWidth:I

.field private persistToDisk:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/amazon/kcp/cover/UpdatableCover;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/amazon/kcp/cover/UpdatableCover;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/IListableBook;IIZ)V
    .locals 1
    .parameter "id"
    .parameter "book"
    .parameter "maxWidth"
    .parameter "maxHeight"
    .parameter "persistToDisk"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/kcp/cover/UpdatableCover;->isMutable:Z

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kcp/cover/UpdatableCover;->isDefaultCover:Z

    .line 49
    iput-object p1, p0, Lcom/amazon/kcp/cover/UpdatableCover;->id:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/amazon/kcp/cover/UpdatableCover;->book:Lcom/amazon/kcp/library/models/IListableBook;

    .line 51
    iput p3, p0, Lcom/amazon/kcp/cover/UpdatableCover;->maxWidth:I

    .line 52
    iput p4, p0, Lcom/amazon/kcp/cover/UpdatableCover;->maxHeight:I

    .line 53
    iput-boolean p5, p0, Lcom/amazon/kcp/cover/UpdatableCover;->persistToDisk:Z

    .line 54
    return-void
.end method

.method private notifyListener()V
    .locals 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/amazon/kcp/cover/UpdatableCover;->listener:Lcom/amazon/kcp/cover/OnImageUpdateListener;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/amazon/kcp/cover/UpdatableCover;->listener:Lcom/amazon/kcp/cover/OnImageUpdateListener;

    iget-object v1, p0, Lcom/amazon/kcp/cover/UpdatableCover;->image:Landroid/graphics/Bitmap;

    iget-boolean v2, p0, Lcom/amazon/kcp/cover/UpdatableCover;->isDefaultCover:Z

    invoke-interface {v0, v1, v2}, Lcom/amazon/kcp/cover/OnImageUpdateListener;->onUpdate(Landroid/graphics/Bitmap;Z)V

    .line 163
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelUpdates()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/cover/UpdatableCover;->listener:Lcom/amazon/kcp/cover/OnImageUpdateListener;

    .line 86
    return-void
.end method

.method getBook()Lcom/amazon/kcp/library/models/IListableBook;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/amazon/kcp/cover/UpdatableCover;->book:Lcom/amazon/kcp/library/models/IListableBook;

    return-object v0
.end method

.method getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/amazon/kcp/cover/UpdatableCover;->id:Ljava/lang/String;

    return-object v0
.end method

.method getMaxHeight()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/amazon/kcp/cover/UpdatableCover;->maxHeight:I

    return v0
.end method

.method getMaxWidth()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/amazon/kcp/cover/UpdatableCover;->maxWidth:I

    return v0
.end method

.method makeImmutable()V
    .locals 1

    .prologue
    .line 107
    sget-boolean v0, Lcom/amazon/kcp/cover/UpdatableCover;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kcp/cover/UpdatableCover;->isMutable:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 108
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kcp/cover/UpdatableCover;->isMutable:Z

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/cover/UpdatableCover;->listener:Lcom/amazon/kcp/cover/OnImageUpdateListener;

    .line 111
    return-void
.end method

.method setImage(Landroid/graphics/Bitmap;Z)V
    .locals 1
    .parameter "image"
    .parameter "isDefaultCover"

    .prologue
    .line 95
    sget-boolean v0, Lcom/amazon/kcp/cover/UpdatableCover;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kcp/cover/UpdatableCover;->isMutable:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 96
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/cover/UpdatableCover;->image:Landroid/graphics/Bitmap;

    .line 97
    iput-boolean p2, p0, Lcom/amazon/kcp/cover/UpdatableCover;->isDefaultCover:Z

    .line 98
    invoke-direct {p0}, Lcom/amazon/kcp/cover/UpdatableCover;->notifyListener()V

    .line 99
    return-void
.end method

.method public setOnUpdateListener(Lcom/amazon/kcp/cover/OnImageUpdateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/amazon/kcp/cover/UpdatableCover;->listener:Lcom/amazon/kcp/cover/OnImageUpdateListener;

    .line 67
    invoke-direct {p0}, Lcom/amazon/kcp/cover/UpdatableCover;->notifyListener()V

    .line 71
    iget-boolean v0, p0, Lcom/amazon/kcp/cover/UpdatableCover;->isMutable:Z

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/cover/UpdatableCover;->listener:Lcom/amazon/kcp/cover/OnImageUpdateListener;

    .line 75
    :cond_0
    return-void
.end method

.method shouldPersistToDisk()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/amazon/kcp/cover/UpdatableCover;->persistToDisk:Z

    return v0
.end method

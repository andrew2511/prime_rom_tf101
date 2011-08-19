.class Lcom/ecareme/pixwe/media/BitmapManager$ThreadStatus;
.super Ljava/lang/Object;
.source "BitmapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/media/BitmapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadStatus"
.end annotation


# instance fields
.field public mOptions:Landroid/graphics/BitmapFactory$Options;

.field public mState:Lcom/ecareme/pixwe/media/BitmapManager$State;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget-object v0, Lcom/ecareme/pixwe/media/BitmapManager$State;->ALLOW:Lcom/ecareme/pixwe/media/BitmapManager$State;

    iput-object v0, p0, Lcom/ecareme/pixwe/media/BitmapManager$ThreadStatus;->mState:Lcom/ecareme/pixwe/media/BitmapManager$State;

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lcom/ecareme/pixwe/media/BitmapManager$ThreadStatus;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/BitmapManager$ThreadStatus;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 55
    iget-object v1, p0, Lcom/ecareme/pixwe/media/BitmapManager$ThreadStatus;->mState:Lcom/ecareme/pixwe/media/BitmapManager$State;

    sget-object v2, Lcom/ecareme/pixwe/media/BitmapManager$State;->CANCEL:Lcom/ecareme/pixwe/media/BitmapManager$State;

    if-ne v1, v2, :cond_0

    .line 56
    const-string v0, "Cancel"

    .line 62
    .local v0, s:Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "thread state = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", options = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ecareme/pixwe/media/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    return-object v0

    .line 57
    .end local v0           #s:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/ecareme/pixwe/media/BitmapManager$ThreadStatus;->mState:Lcom/ecareme/pixwe/media/BitmapManager$State;

    sget-object v2, Lcom/ecareme/pixwe/media/BitmapManager$State;->ALLOW:Lcom/ecareme/pixwe/media/BitmapManager$State;

    if-ne v1, v2, :cond_1

    .line 58
    const-string v0, "Allow"

    .restart local v0       #s:Ljava/lang/String;
    goto :goto_0

    .line 60
    .end local v0           #s:Ljava/lang/String;
    :cond_1
    const-string v0, "?"

    .restart local v0       #s:Ljava/lang/String;
    goto :goto_0
.end method

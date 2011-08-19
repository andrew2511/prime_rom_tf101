.class Lcom/ecareme/pixwe/media/SortCursor$1;
.super Landroid/database/DataSetObserver;
.source "SortCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/media/SortCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/media/SortCursor;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/media/SortCursor;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/media/SortCursor$1;->this$0:Lcom/ecareme/pixwe/media/SortCursor;

    .line 48
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ecareme/pixwe/media/SortCursor$1;->this$0:Lcom/ecareme/pixwe/media/SortCursor;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/media/SortCursor;->access$0(Lcom/ecareme/pixwe/media/SortCursor;I)V

    .line 54
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ecareme/pixwe/media/SortCursor$1;->this$0:Lcom/ecareme/pixwe/media/SortCursor;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/media/SortCursor;->access$0(Lcom/ecareme/pixwe/media/SortCursor;I)V

    .line 59
    return-void
.end method

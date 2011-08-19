.class Lcom/google/android/music/AsyncCursor$CursorFragment;
.super Ljava/lang/Object;
.source "AsyncCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/AsyncCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CursorFragment"
.end annotation


# instance fields
.field public cursor:Landroid/database/Cursor;

.field public fresh:Z

.field public offset:I


# direct methods
.method constructor <init>(ILandroid/database/Cursor;)V
    .locals 1
    .parameter "o"
    .parameter "c"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput p1, p0, Lcom/google/android/music/AsyncCursor$CursorFragment;->offset:I

    .line 74
    iput-object p2, p0, Lcom/google/android/music/AsyncCursor$CursorFragment;->cursor:Landroid/database/Cursor;

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/AsyncCursor$CursorFragment;->fresh:Z

    .line 76
    return-void
.end method

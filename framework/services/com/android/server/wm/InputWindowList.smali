.class public final Lcom/android/server/wm/InputWindowList;
.super Ljava/lang/Object;
.source "InputWindowList.java"


# instance fields
.field private mArray:[Lcom/android/server/wm/InputWindow;

.field private mCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/server/wm/InputWindow;

    iput-object v0, p0, Lcom/android/server/wm/InputWindowList;->mArray:[Lcom/android/server/wm/InputWindow;

    .line 40
    return-void
.end method


# virtual methods
.method public add()Lcom/android/server/wm/InputWindow;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 64
    iget v2, p0, Lcom/android/server/wm/InputWindowList;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/android/server/wm/InputWindowList;->mArray:[Lcom/android/server/wm/InputWindow;

    array-length v3, v3

    if-ne v2, v3, :cond_1a

    .line 65
    iget-object v1, p0, Lcom/android/server/wm/InputWindowList;->mArray:[Lcom/android/server/wm/InputWindow;

    .line 66
    .local v1, oldArray:[Lcom/android/server/wm/InputWindow;
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Lcom/android/server/wm/InputWindow;

    iput-object v2, p0, Lcom/android/server/wm/InputWindowList;->mArray:[Lcom/android/server/wm/InputWindow;

    .line 67
    iget-object v2, p0, Lcom/android/server/wm/InputWindowList;->mArray:[Lcom/android/server/wm/InputWindow;

    iget v3, p0, Lcom/android/server/wm/InputWindowList;->mCount:I

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    .end local v1           #oldArray:[Lcom/android/server/wm/InputWindow;
    :cond_1a
    iget-object v2, p0, Lcom/android/server/wm/InputWindowList;->mArray:[Lcom/android/server/wm/InputWindow;

    iget v3, p0, Lcom/android/server/wm/InputWindowList;->mCount:I

    add-int/lit8 v3, v3, 0x1

    aget-object v0, v2, v3

    .line 72
    .local v0, item:Lcom/android/server/wm/InputWindow;
    if-nez v0, :cond_29

    .line 73
    new-instance v0, Lcom/android/server/wm/InputWindow;

    .end local v0           #item:Lcom/android/server/wm/InputWindow;
    invoke-direct {v0}, Lcom/android/server/wm/InputWindow;-><init>()V

    .line 76
    .restart local v0       #item:Lcom/android/server/wm/InputWindow;
    :cond_29
    iget-object v2, p0, Lcom/android/server/wm/InputWindowList;->mArray:[Lcom/android/server/wm/InputWindow;

    iget v3, p0, Lcom/android/server/wm/InputWindowList;->mCount:I

    aput-object v0, v2, v3

    .line 77
    iget v2, p0, Lcom/android/server/wm/InputWindowList;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/wm/InputWindowList;->mCount:I

    .line 78
    iget-object v2, p0, Lcom/android/server/wm/InputWindowList;->mArray:[Lcom/android/server/wm/InputWindow;

    iget v3, p0, Lcom/android/server/wm/InputWindowList;->mCount:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 79
    return-object v0
.end method

.method public clear()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 46
    iget v1, p0, Lcom/android/server/wm/InputWindowList;->mCount:I

    if-nez v1, :cond_6

    .line 58
    :goto_5
    return-void

    .line 50
    :cond_6
    iget v0, p0, Lcom/android/server/wm/InputWindowList;->mCount:I

    .line 51
    .local v0, count:I
    iput v3, p0, Lcom/android/server/wm/InputWindowList;->mCount:I

    .line 52
    iget-object v1, p0, Lcom/android/server/wm/InputWindowList;->mArray:[Lcom/android/server/wm/InputWindow;

    iget-object v2, p0, Lcom/android/server/wm/InputWindowList;->mArray:[Lcom/android/server/wm/InputWindow;

    aget-object v2, v2, v3

    aput-object v2, v1, v0

    .line 53
    :goto_12
    if-lez v0, :cond_1e

    .line 54
    add-int/lit8 v0, v0, -0x1

    .line 55
    iget-object v1, p0, Lcom/android/server/wm/InputWindowList;->mArray:[Lcom/android/server/wm/InputWindow;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/server/wm/InputWindow;->recycle()V

    goto :goto_12

    .line 57
    :cond_1e
    iget-object v1, p0, Lcom/android/server/wm/InputWindowList;->mArray:[Lcom/android/server/wm/InputWindow;

    const/4 v2, 0x0

    aput-object v2, v1, v3

    goto :goto_5
.end method

.method public toNullTerminatedArray()[Lcom/android/server/wm/InputWindow;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/server/wm/InputWindowList;->mArray:[Lcom/android/server/wm/InputWindow;

    return-object v0
.end method

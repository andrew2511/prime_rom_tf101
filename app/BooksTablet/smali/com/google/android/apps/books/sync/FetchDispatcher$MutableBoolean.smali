.class final Lcom/google/android/apps/books/sync/FetchDispatcher$MutableBoolean;
.super Ljava/lang/Object;
.source "FetchDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/sync/FetchDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MutableBoolean"
.end annotation


# instance fields
.field private mValue:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-boolean p1, p0, Lcom/google/android/apps/books/sync/FetchDispatcher$MutableBoolean;->mValue:Z

    .line 139
    return-void
.end method


# virtual methods
.method public booleanValue()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/google/android/apps/books/sync/FetchDispatcher$MutableBoolean;->mValue:Z

    return v0
.end method

.method public setValue(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/google/android/apps/books/sync/FetchDispatcher$MutableBoolean;->mValue:Z

    .line 147
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/google/android/apps/books/sync/FetchDispatcher$MutableBoolean;->mValue:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

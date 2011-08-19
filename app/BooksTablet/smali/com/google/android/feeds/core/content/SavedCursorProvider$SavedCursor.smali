.class interface abstract Lcom/google/android/feeds/core/content/SavedCursorProvider$SavedCursor;
.super Ljava/lang/Object;
.source "SavedCursorProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/feeds/core/content/SavedCursorProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "SavedCursor"
.end annotation


# virtual methods
.method public abstract forceClose()V
.end method

.method public abstract get()Landroid/database/Cursor;
.end method

.method public abstract getType(Landroid/content/ContentResolver;)Ljava/lang/String;
.end method

.method public abstract getUid()I
.end method

.method public abstract reopen()V
.end method
